#!/usr/bin/env python3
"""Migrate appearance_page.rs visible strings to tr!()"""
import re

fpath = "app/src/settings_view/appearance_page.rs"
with open(fpath) as f:
    content = f.read()

# Map string values to (domain, id)
mapping = {
    '"Font size (px)".to_string()': 'crate::tr!("appearance", "font-size")',
    '"Line height".to_string()': 'crate::tr!("appearance", "line-height")',
    '"Font weight".to_string()': 'crate::tr!("appearance", "font-weight")',
    '"Agent font".to_string()': 'crate::tr!("appearance", "agent-font")',
    '"Notebook font size".to_string()': 'crate::tr!("appearance", "notebook-font-size")',
    '"Terminal font".to_string()': 'crate::tr!("appearance", "terminal-font")',
    '"Background opacity".to_string()': 'crate::tr!("appearance", "background-opacity")',
    '"Create your own custom theme".to_string()': 'crate::tr!("appearance", "create-custom-theme")',
    '"Zoom level".to_string()': 'crate::tr!("appearance", "zoom-level")',
    # Skip: "Current theme" is in a &str return context
    # Strings used as labels that tr!() can replace
    '"Compact mode"': None,  # ToggleSettingActionPair - needs &str, skip
    '"Dim inactive panes"': None,
    '"Focus follows mouse"': None,
}

count = 0
for old, new in mapping.items():
    if new is None:
        continue
    if old in content:
        content = content.replace(old, new, 1)
        count += 1
        print(f"  Replaced: {old[:40]}...")

with open(fpath, 'w') as f:
    f.write(content)
print(f"Total: {count} replacements")
