"""Use NEU's four faces for ordinary math glyphs; retain native NewCM stretch glyphs.

Requires fontTools. Original fonts are read only; the generated font is local cache.
"""
import argparse
import unicodedata
from pathlib import Path
from fontTools.ttLib import TTFont
from fontTools.pens.boundsPen import BoundsPen
from fontTools.pens.transformPen import TransformPen
from fontTools.pens.qu2cuPen import Qu2CuPen
from fontTools.pens.t2CharStringPen import T2CharStringPen

parser = argparse.ArgumentParser()
parser.add_argument('--source-dir', type=Path, required=True)
parser.add_argument('--base-font', type=Path, required=True)
parser.add_argument('--output', type=Path, required=True)
args = parser.parse_args()
files = {
    'regular': 'NEU-BZ-S92.TTF',
    'italic': 'NEU-BZ-S92 Italic.ttf',
    'bold': 'NEU-BZ-S92 Bold.ttf',
    'bolditalic': 'NEU-BZ-S92 Bold Italic.ttf',
}
faces = {key: TTFont(args.source_dir / name) for key, name in files.items()}
cmaps = {key: font.getBestCmap() for key, font in faces.items()}
sets = {key: font.getGlyphSet() for key, font in faces.items()}
font = TTFont(args.base_font, recalcTimestamp=False)
cmap = font.getBestCmap()
charstrings = font['CFF '].cff.topDictIndex[0].CharStrings
upem = font['head'].unitsPerEm
axis = font['MATH'].table.MathConstants.AxisHeight.Value
# NEU's letter proportions make the inherited 74% scripts look oversized.
font['MATH'].table.MathConstants.ScriptPercentScaleDown = 65
font['MATH'].table.MathConstants.ScriptScriptPercentScaleDown = 48
# Font encodings contain legacy and private-use slots: use only explicit Unicode.
plain = set(map(ord, 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789'))
plain.update(range(0x391, 0x3aa))
plain.update(range(0x3b1, 0x3ca))
plain.update(map(ord, 'ϑϕϖϱϵϰ∂∇'))
symbols = set(map(ord, '+−=<>±×÷!,:;.()[]{}|∀∃∅∈∉∋∏∑∓∗∘∙∝∞∠∣∥∧∨∩∪∫∬∭∮∴∵∼≃≅≈≠≡≤≥≪≫⊂⊃⊆⊇⊕⊗⊙⊥⋅⋯⋮⋱'))
axis_symbols = symbols - set(map(ord, '!,:;.'))
compact_symbols = set(map(ord, '+−=<>±×÷∓≠≡≤≥≈'))
replaced = {}
metrics = {}

def bounds(glyphset, name):
    pen = BoundsPen(glyphset)
    glyphset[name].draw(pen)
    return pen.bounds

# Every native stretch base, size variant and assembly part stays untouched.
variants = font['MATH'].table.MathVariants
native_stretch = set()
for direction in ('Vert', 'Horiz'):
    coverage = getattr(variants, direction + 'GlyphCoverage')
    if coverage:
        native_stretch.update(coverage.glyphs)
    for construction in getattr(variants, direction + 'GlyphConstruction'):
        native_stretch.update(r.VariantGlyph for r in construction.MathGlyphVariantRecord)
        if construction.GlyphAssembly:
            native_stretch.update(r.glyph for r in construction.GlyphAssembly.PartRecords)


def replace(name, face, codepoint):
    source = cmaps[face].get(codepoint)
    if source is None:
        return
    gs = sets[face]
    box = bounds(gs, source)
    if box is None:
        return
    x0, y0, x1, y1 = box
    scale = upem / faces[face]['head'].unitsPerEm
    if codepoint in compact_symbols:
        # The legacy operator slots use nearly full-em ink widths. Match the
        # source syllabus' proportions without changing the italic letters.
        scale = 0.62 * upem / (x1 - x0)
    advance = faces[face]['hmtx'][source][0] * scale
    dx = 0
    dy = 0
    if codepoint in axis_symbols:
        # Discard legacy full-width padding and align signs to the math axis.
        bearing = 35
        dx = bearing - x0 * scale
        advance = (x1 - x0) * scale + 2 * bearing
        dy = axis - (y0 + y1) / 2 * scale
    width = round(advance)
    pen = T2CharStringPen(width, gs)
    convert = Qu2CuPen(pen, max_err=0.5, all_cubic=True)
    gs[source].draw(TransformPen(convert, (scale, 0, 0, scale, dx, dy)))
    result = pen.getCharString(private=charstrings[name].private, globalSubrs=charstrings.globalSubrs)
    charstrings[name] = result
    font['hmtx'][name] = (width, round(x0 * scale + dx))
    metrics[name] = (round(x1 * scale + dx), width, round((x0 + x1) / 2 * scale + dx))
    replaced[name] = {'face': face, 'unicode': f'U+{codepoint:04X}', 'source_glyph': source}

for cp, name in cmap.items():
    if name in native_stretch:
        continue
    face = 'regular'
    base = cp
    if 0x1d400 <= cp <= 0x1d7ff:
        description = unicodedata.name(chr(cp), '')
        if description.startswith('MATHEMATICAL BOLD ITALIC '):
            face = 'bolditalic'
        elif description.startswith('MATHEMATICAL ITALIC '):
            face = 'italic'
        elif description.startswith('MATHEMATICAL BOLD ') and not any(s in description for s in ('SCRIPT', 'FRAKTUR', 'SANS-SERIF')):
            face = 'bold'
        else:
            continue
        decoded = unicodedata.normalize('NFKD', chr(cp))
        if len(decoded) != 1:
            continue
        base = ord(decoded)
    elif cp == 0x210e:  # Unicode's legacy mathematical italic h.
        face, base = 'italic', ord('h')
    elif cp not in plain | symbols:
        continue
    replace(name, face, base)

info = font['MATH'].table.MathGlyphInfo
corrections = info.MathItalicsCorrectionInfo
if corrections:
    for name, record in zip(corrections.Coverage.glyphs, corrections.ItalicsCorrection):
        if name in metrics:
            ink_right, advance, _ = metrics[name]
            record.Value = max(0, ink_right - advance)
accents = info.MathTopAccentAttachment
if accents:
    for name, record in zip(accents.TopAccentCoverage.glyphs, accents.TopAccentAttachment):
        if name in metrics:
            record.Value = metrics[name][2]
# Font selection uses this new family; four math styles are Unicode glyph ranges.
for record in list(font['name'].names):
    if record.nameID in (1, 2, 3, 4, 6, 16, 17):
        font['name'].names.remove(record)
values = {1: 'NEU-BZ-S92 Math', 2: 'Regular', 3: 'NEU-BZ-S92-Math-local-1', 4: 'NEU-BZ-S92 Math', 6: 'NEU-BZ-S92-Math', 16: 'NEU-BZ-S92 Math', 17: 'Regular'}
for nid, value in values.items():
    font['name'].setName(value, nid, 3, 1, 0x409)
top = font['CFF '].cff.topDictIndex[0]
top.FamilyName = 'NEU-BZ-S92 Math'
top.FullName = 'NEU-BZ-S92 Math'
font['CFF '].cff.fontNames = ['NEU-BZ-S92-Math']
args.output.parent.mkdir(parents=True, exist_ok=True)
font.save(args.output)
print(f'{len(replaced)} NEU glyphs installed in {args.output}; native NewCM stretch glyphs retained')
