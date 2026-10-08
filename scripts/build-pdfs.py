"""Compile self-contained papers that import the shared exam template."""
import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import zipfile

from booklet import PRINTING_INSTRUCTIONS, build_booklet

ROOTS = ('历年真题',)
SUBJECTS = {'数学一试卷': '1', '数学二试卷': '2', '数学三试卷': '3',
            '数学四试卷': '4', '数学五试卷': '5', '数学MBA试卷': 'mba'}


def sources(root):
    return sorted(p for group in ROOTS for p in (root / group).rglob('*.typ')
                  if p.stem.removesuffix('参考解答') in SUBJECTS
                  and not {'preview', 'backups', '.build'}.intersection(p.relative_to(root).parts))


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--root', type=Path, default=Path.cwd())
    parser.add_argument('--output', type=Path, required=True)
    parser.add_argument('--jobs', type=int, default=4)
    parser.add_argument('--only', help='Compile one repository-relative source for preview')
    args = parser.parse_args()
    root = args.root.resolve()
    output = args.output.resolve()
    output.mkdir(parents=True, exist_ok=True)
    selected = sources(root)
    if args.only:
        selected = [p for p in selected if p.relative_to(root).as_posix() == args.only]
        if len(selected) != 1:
            parser.error('--only must identify one supported source')
    if not selected:
        parser.error('No sources found')

    def build(source):
        relative = source.relative_to(root)
        paper = source.stem.removesuffix('参考解答')
        suffix = '-answers' if source.stem.endswith('参考解答') else ''
        stem = f'{relative.parts[1]}-math{SUBJECTS[paper]}{suffix}'
        target = output / (stem + '.pdf')
        result = subprocess.run(['typst', 'compile', '--ignore-system-fonts', '--root', str(root), str(source), str(target)], capture_output=True, text=True)
        if result.returncode:
            raise RuntimeError(f'{relative}\n{result.stderr}')
        print_target = output / (stem + '-print.pdf')
        layout = build_booklet(target, print_target)
        return {'source': relative.as_posix(), 'pdf': target.name,
                'sha256': hashlib.sha256(target.read_bytes()).hexdigest(),
                'booklet': {'pdf': print_target.name,
                            'sha256': hashlib.sha256(print_target.read_bytes()).hexdigest(),
                            **layout}}

    records = []
    failed = False
    with ThreadPoolExecutor(max_workers=max(1, args.jobs)) as executor:
        futures = {executor.submit(build, source): source for source in selected}
        for future in as_completed(futures):
            try:
                record = future.result()
                records.append(record)
                if len(records) % 25 == 0 or len(records) == len(selected):
                    print(f'Compiled {len(records)}/{len(selected)}', flush=True)
            except Exception as error:
                print(error, file=sys.stderr, flush=True)
                failed = True
    if failed:
        raise SystemExit('Build failed; no release manifest or archives produced.')
    if args.only:
        print(f'Preview built in {output}; release metadata unchanged.', flush=True)
        return
    records.sort(key=lambda r: r['source'])
    (output / 'manifest.json').write_text(json.dumps(records, ensure_ascii=False, indent=2) + '\n')
    (output / 'PRINTING.txt').write_text(PRINTING_INSTRUCTIONS, encoding='utf-8')
    managed = [r['pdf'] for r in records] + [r['booklet']['pdf'] for r in records]
    managed += ['manifest.json', 'PRINTING.txt']
    for printing in (False, True):
        archive_name = 'past-exams' + ('-print' if printing else '') + '.zip'
        managed.append(archive_name)
        with zipfile.ZipFile(output / archive_name, 'w', compression=zipfile.ZIP_DEFLATED) as archive:
            for record in records:
                filename = record['booklet']['pdf'] if printing else record['pdf']
                info = zipfile.ZipInfo(filename, date_time=(1980, 1, 1, 0, 0, 0))
                info.compress_type = zipfile.ZIP_DEFLATED
                info.external_attr = 0o100644 << 16
                archive.writestr(info, (output / filename).read_bytes())
            if printing:
                info = zipfile.ZipInfo('PRINTING.txt', date_time=(1980, 1, 1, 0, 0, 0))
                info.compress_type = zipfile.ZIP_DEFLATED
                info.external_attr = 0o100644 << 16
                archive.writestr(info, PRINTING_INSTRUCTIONS.encode('utf-8'))
    checksums = [f'{hashlib.sha256((output / name).read_bytes()).hexdigest()}  {name}' for name in sorted(managed)]
    (output / 'SHA256SUMS').write_text('\n'.join(checksums) + '\n')
    print(f'Built {len(records)} reading PDFs and {len(records)} booklet PDFs in {output}', flush=True)


if __name__ == '__main__':
    main()
