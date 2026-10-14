"""Compile A4 topic previews, grouped by their top-level collection folder."""
import argparse
from concurrent.futures import ThreadPoolExecutor
from pathlib import Path
import re
import subprocess


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    root = Path.cwd()
    previews = root / 'topic-collections' / 'preview'

    def build(source):
        include = re.search(r'#include "([^"\n]+)"', source.read_text())
        content = (source.parent / include.group(1)).resolve()
        group = content.relative_to(root / 'topic-collections').parts[0]
        target = args.output / group / (source.stem + '.pdf')
        target.parent.mkdir(parents=True, exist_ok=True)
        subprocess.run(['typst', 'compile', '--ignore-system-fonts', '--root', str(root),
                        str(source), str(target)], check=True, capture_output=True)
        return str(target.relative_to(args.output))

    sources = sorted(p for p in previews.glob('*.typ') if p.name != 'template.typ')
    if not sources:
        raise SystemExit('No collection previews found')
    with ThreadPoolExecutor(max_workers=4) as pool:
        for target in pool.map(build, sources):
            print(target, flush=True)


if __name__ == '__main__':
    main()
