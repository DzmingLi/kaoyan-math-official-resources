"""Compile self-contained papers that import the shared exam template."""
import argparse
from concurrent.futures import ThreadPoolExecutor, as_completed
from pathlib import Path
import subprocess
import sys

from booklet import build_booklet

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
        build_booklet(target, print_target)
        return target.name, print_target.name

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
        raise SystemExit('Build failed.')
    print(f'Built {len(records)} reading PDFs and {len(records)} booklet PDFs in {output}', flush=True)


if __name__ == '__main__':
    main()
