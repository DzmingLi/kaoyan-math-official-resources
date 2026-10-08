"""Compile self-contained papers that import the shared exam template."""
import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
import hashlib
import json
from pathlib import Path
import subprocess
import sys
import zipfile

ROOTS = ('past-exams',)


def sources(root):
    return sorted(p for group in ROOTS for p in (root / group).rglob('*.typ')
                  if p.name.endswith(('-题目.typ', '-解析.typ'))
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
        stem = '--'.join(relative.with_suffix('').parts)
        target = output / (stem + '.pdf')
        result = subprocess.run(['typst', 'compile', '--ignore-system-fonts', '--root', str(root), str(source), str(target)], capture_output=True, text=True)
        if result.returncode:
            raise RuntimeError(f'{relative}\n{result.stderr}')
        return {'source': relative.as_posix(), 'pdf': target.name,
                'sha256': hashlib.sha256(target.read_bytes()).hexdigest()}

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
    records.sort(key=lambda r: r['source'])
    (output / 'manifest.json').write_text(json.dumps(records, ensure_ascii=False, indent=2) + '\n')
    if not args.only:
        for group in ROOTS:
            with zipfile.ZipFile(output / (group + '.zip'), 'w', compression=zipfile.ZIP_DEFLATED) as archive:
                for record in records:
                    if record['source'].startswith(group + '/'):
                        info = zipfile.ZipInfo(record['pdf'], date_time=(1980, 1, 1, 0, 0, 0))
                        info.compress_type = zipfile.ZIP_DEFLATED
                        info.external_attr = 0o100644 << 16
                        archive.writestr(info, (output / record['pdf']).read_bytes())
    checksums = []
    for file in sorted(output.iterdir()):
        if file.is_file() and file.name != 'SHA256SUMS':
            checksums.append(f'{hashlib.sha256(file.read_bytes()).hexdigest()}  {file.name}')
    (output / 'SHA256SUMS').write_text('\n'.join(checksums) + '\n')
    print(f'Built {len(records)} PDFs in {output}', flush=True)


if __name__ == '__main__':
    main()
