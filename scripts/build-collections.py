"""Compile self-contained A4 topic collections."""
import argparse
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
import subprocess


def collection_sources(root):
    collections = root / '真题分类汇编'
    sources = sorted(p for p in collections.rglob('*.typ')
                     if p.stem.endswith(('-题目', '-解析')))
    outputs = set()
    for source in sources:
        topic, kind = source.stem.rsplit('-', 1)
        target = source.relative_to(collections).parts[0], source.name
        if target in outputs:
            raise ValueError(f'Duplicate collection output: {source.name}')
        counterpart = source.with_name(f'{topic}-{"解析" if kind == "题目" else "题目"}.typ')
        if not counterpart.is_file():
            raise ValueError(f'Missing collection counterpart: {counterpart}')
        outputs.add(target)
    if not sources:
        raise ValueError('No collection sources found')
    return sources


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    root = Path.cwd()
    sources = collection_sources(root)

    def build(source):
        group = source.relative_to(root / '真题分类汇编').parts[0]
        target = args.output / group / (source.stem + '.pdf')
        target.parent.mkdir(parents=True, exist_ok=True)
        subprocess.run(['typst', 'compile', '--ignore-system-fonts', '--root', str(root),
                        str(source), str(target)], check=True, capture_output=True)
        return str(target.relative_to(args.output))

    with ThreadPoolExecutor(max_workers=4) as pool:
        for target in pool.map(build, sources):
            print(target, flush=True)


if __name__ == '__main__':
    main()
