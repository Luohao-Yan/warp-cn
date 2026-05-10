#!/usr/bin/env python3
"""Fix tr!() calls that duplicate domain prefix in the id."""
import os, re, subprocess

# All domains used with tr!()
domains = ["common", "settings", "workspace", "terminal", "ai_assistant",
           "code_editor", "keybindings", "menus", "notifications", "errors",
           "onboarding", "auth"]

# Walk all .rs files and fix tr!("domain", "domain-...") -> tr!("domain", "...")
src_dir = "app/src"
fixed = 0
for root, dirs, files in os.walk(src_dir):
    for fname in files:
        if not fname.endswith(".rs"):
            continue
        fpath = os.path.join(root, fname)
        with open(fpath) as f:
            content = f.read()
        new_content = content
        for domain in domains:
            # Replace tr!("domain", "domain-key...") -> tr!("domain", "key...")
            pattern = f'tr!("{domain}", "{domain}-'
            replacement = f'tr!("{domain}", "'
            if pattern in new_content:
                new_content = new_content.replace(pattern, replacement)
        if new_content != content:
            with open(fpath, 'w') as f:
                f.write(new_content)
            fixed += 1
            print(f"  Fixed: {fpath}", file=__import__('sys').stderr)

print(f"Fixed {fixed} files", file=__import__('sys').stderr)
