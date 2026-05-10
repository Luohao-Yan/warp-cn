#!/usr/bin/env python3
"""Export .ftl translations to .json files."""
import os, re, json

for locale in ['en-US', 'zh-CN', 'ja']:
    base = f'resources/i18n/{locale}'
    if not os.path.isdir(base):
        continue
    result = {}
    for fname in sorted(os.listdir(base)):
        if not fname.endswith('.ftl'):
            continue
        domain = fname.replace('.ftl', '')
        with open(os.path.join(base, fname)) as f:
            for line in f:
                line = line.strip()
                m = re.match(r'^([a-zA-Z][a-zA-Z0-9_-]+)\s*=\s*(.+)$', line)
                if m:
                    msg_id, value = m.group(1), m.group(2).strip()
                    result[msg_id] = value
    with open(f'resources/i18n/{locale}.json', 'w') as f:
        json.dump(result, f, ensure_ascii=False, indent=2)
    print(f'{locale}.json: {len(result)} entries')
