"""Generate disposable A4 entry points and compile topic collections."""
import argparse
from concurrent.futures import ThreadPoolExecutor
import json
from pathlib import Path
import re
import subprocess


def generate_previews(root):
    collections = root / '真题分类汇编'
    sources = sorted(p for p in collections.rglob('*.typ')
                     if 'preview' not in p.relative_to(collections).parts
                     and p.stem.endswith(('-题目', '-解析')))
    outputs = {}
    for source in sources:
        topic, kind = source.stem.rsplit('-', 1)
        if source.name in outputs:
            raise ValueError(f'Duplicate collection entry point: {source.name}')
        counterpart = source.with_name(f'{topic}-{"解析" if kind == "题目" else "题目"}.typ')
        if not counterpart.is_file():
            raise ValueError(f'Missing collection counterpart: {counterpart}')
        title = '积分分类汇编' if topic in ('不定积分', '定积分') else topic + '分类汇编'
        subject = topic + '汇编' if topic in ('不定积分', '定积分') else topic
        if kind == '解析' and topic in ('不定积分', '定积分', '幂级数展开'):
            subject += '（含解析）'
        quote = lambda s: json.dumps(s, ensure_ascii=False)
        include = '../' + source.relative_to(collections).as_posix()
        outputs[source.name] = (
            '#import "../template.typ": collection\n'
            f'#show: collection.with(title: {quote(title)}, subject: {quote(subject)})\n'
            f'#include {quote(include)}\n')
    if not outputs:
        raise ValueError('No collection sources found')
    previews = collections / 'preview'
    previews.mkdir(parents=True, exist_ok=True)
    for stale in previews.glob('*.typ'):
        if stale.name not in outputs:
            stale.unlink()
    for name, text in outputs.items():
        (previews / name).write_text(text)
    return sorted(previews / name for name in outputs)


def main():
    parser = argparse.ArgumentParser()
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    root = Path.cwd()
    sources = generate_previews(root)

    def build(source):
        include = re.search(r'#include "([^"\n]+)"', source.read_text())
        content = (source.parent / include.group(1)).resolve()
        group = content.relative_to(root / '真题分类汇编').parts[0]
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
