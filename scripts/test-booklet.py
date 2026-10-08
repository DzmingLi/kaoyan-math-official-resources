"""Regression tests for page order, vector fidelity and release integration."""

from pathlib import Path
import runpy
import tempfile
import unittest

from pypdf import PdfReader, PdfWriter
from pypdf.generic import DecodedStreamObject, DictionaryObject, NameObject, RectangleObject

from booklet import PAGE_HEIGHT, PAGE_WIDTH, SHEET_HEIGHT, SHEET_WIDTH, build_booklet, page_order


def reading_pdf(path, count, *, width=PAGE_WIDTH, height=PAGE_HEIGHT, crop=False, rotate=False):
    writer = PdfWriter()
    font = DictionaryObject({
        NameObject('/Type'): NameObject('/Font'),
        NameObject('/Subtype'): NameObject('/Type1'),
        NameObject('/BaseFont'): NameObject('/Helvetica'),
    })
    for number in range(1, count + 1):
        page = writer.add_blank_page(width=width, height=height)
        page[NameObject('/Resources')] = DictionaryObject({
            NameObject('/Font'): DictionaryObject({NameObject('/F1'): font}),
        })
        content = DecodedStreamObject()
        content.set_data(f'BT /F1 10 Tf 20 30 Td (P{number:03d}) Tj ET\n'.encode('ascii'))
        page[NameObject('/Contents')] = content
        if crop:
            page.cropbox = RectangleObject((10, 10, width - 10, height - 10))
        if rotate:
            page.rotate(90)
    writer.write(path)


class PageOrderTests(unittest.TestCase):
    def test_eight_page_booklet(self):
        self.assertEqual(page_order(8), [(7, 0), (1, 6), (5, 2), (3, 4)])

    def test_cover_blank_belongs_behind_cover(self):
        self.assertEqual(page_order(7, cover_back_blank=True),
                         [(6, 0), (None, 5), (4, 1), (2, 3)])

    def test_padding_and_exactly_one_copy_of_each_reading_page(self):
        for count in range(1, 41):
            for cover_blank in (False, True):
                with self.subTest(count=count, cover_blank=cover_blank):
                    order = page_order(count, cover_back_blank=cover_blank)
                    pages = [page for pair in order for page in pair]
                    self.assertEqual(len(pages) % 4, 0)
                    self.assertEqual(sorted(p for p in pages if p is not None), list(range(count)))
                    self.assertEqual(len(pages), ((count + int(cover_blank) + 3) // 4) * 4)

    def test_no_empty_booklet(self):
        for count in (0, -1):
            with self.assertRaises(ValueError):
                page_order(count)


class BookletPDFTests(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.root = Path(self.tmp.name)
        self.source = self.root / 'reading.pdf'
        self.target = self.root / 'booklet.pdf'

    def tearDown(self):
        self.tmp.cleanup()

    def test_vector_pages_and_print_preferences(self):
        reading_pdf(self.source, 4)
        original = self.source.read_bytes()
        layout = build_booklet(self.source, self.target)
        self.assertEqual(self.source.read_bytes(), original)
        self.assertEqual(layout['page_order'], [[4, 1], [2, 3]])
        self.assertEqual(layout['sheets'], 1)
        self.assertEqual(layout['padding_blank_pages'], 0)
        reader = PdfReader(self.target)
        self.assertEqual(len(reader.pages), 2)
        for page, expected in zip(reader.pages, [('P004', 'P001'), ('P002', 'P003')]):
            self.assertAlmostEqual(float(page.mediabox.width), SHEET_WIDTH, places=4)
            self.assertAlmostEqual(float(page.mediabox.height), SHEET_HEIGHT, places=4)
            text = page.extract_text()
            self.assertTrue(text.index(expected[0]) < text.index(expected[1]))
            resources = page['/Resources']
            self.assertTrue(resources['/Font'])
            self.assertFalse(resources.get('/XObject'))
            transforms = [operands for operands, op in page.get_contents().operations if op == b'cm']
            self.assertEqual(len(transforms), 2)
            for transform in transforms:
                self.assertEqual(list(transform[:4]), [1, 0, 0, 1])
        prefs = reader.trailer['/Root']['/ViewerPreferences']
        self.assertEqual(prefs['/Duplex'], '/DuplexFlipShortEdge')
        self.assertEqual(prefs['/PrintScaling'], '/None')

    def test_cover_and_end_blanks_are_print_only(self):
        reading_pdf(self.source, 4)
        layout = build_booklet(self.source, self.target, cover_back_blank=True)
        self.assertEqual(layout['page_order'], [[None, 1], [None, None], [None, 2], [3, 4]])
        self.assertEqual(layout['reading_pages'], 4)
        self.assertEqual(layout['padding_blank_pages'], 3)
        self.assertEqual(layout['printed_sides'], 4)
        self.assertEqual(len(PdfReader(self.source).pages), 4)
        self.assertFalse(PdfReader(self.target).pages[1].extract_text().strip())

    def test_reproducible_output(self):
        reading_pdf(self.source, 7)
        build_booklet(self.source, self.target, cover_back_blank=True)
        other = self.root / 'again.pdf'
        build_booklet(self.source, other, cover_back_blank=True)
        self.assertEqual(self.target.read_bytes(), other.read_bytes())

    def test_refuse_overwriting_reading_pdf(self):
        reading_pdf(self.source, 4)
        original = self.source.read_bytes()
        with self.assertRaises(ValueError):
            build_booklet(self.source, self.source)
        self.assertEqual(self.source.read_bytes(), original)

    def test_refuse_mismatched_pages_without_changing_source(self):
        for kwargs in ({'width': 200}, {'crop': True}, {'rotate': True}):
            with self.subTest(kwargs=kwargs):
                reading_pdf(self.source, 1, **kwargs)
                original = self.source.read_bytes()
                with self.assertRaises(ValueError):
                    build_booklet(self.source, self.target)
                self.assertEqual(self.source.read_bytes(), original)


class ReleaseTests(unittest.TestCase):
    def test_reading_and_print_assets_are_both_expected(self):
        module = runpy.run_path(str(Path(__file__).with_name('publish-release.py')))
        records = [{'pdf': 'reading.pdf', 'booklet': {'pdf': 'booklet.pdf'}}]
        self.assertEqual(module['release_files'](records), {
            'reading.pdf', 'booklet.pdf', 'manifest.json', 'PRINTING.txt',
            'past-exams.zip', 'past-exams-print.zip',
        })


if __name__ == '__main__':
    unittest.main(verbosity=2)
