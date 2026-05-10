#!/usr/bin/env python3
"""
Apply i18n string replacements to source files.

This script modifies files in-place. It excludes known false positives.
"""

import os, re
from collections import defaultdict

I18N_DIR = "resources/i18n/en-US"
APP_SRC_DIR = "app/src"

# Files to skip entirely (known false positives)
SKIP_FILES = {
    "app/src/terminal/view/init.rs",
    "app/src/settings_view/main_page.rs",
    "app/src/settings_view/privacy_page.rs",
    "app/src/settings_view/appearance_page.rs",
    "app/src/workspace/lightbox_view.rs",
    "app/src/workspace/view/launch_modal/mod.rs",
    "app/src/terminal/ssh/install_tmux.rs",
    "app/src/ai/blocklist/inline_action/ask_user_question_view.rs",
}

# Files that should be excluded from specific string replacements
EXCLUDE_STRING = {
    # filepath -> set of strings to NOT replace in that file
}

DOMAIN_PREFERENCE = [
    "common", "settings", "workspace", "terminal", "auth",
    "ai_assistant", "code_editor", "keybindings", "menus",
    "notifications", "onboarding", "errors",
]

# Build FTL mapping
ftl_by_value = defaultdict(list)
for fname in sorted(os.listdir(I18N_DIR)):
    if not fname.endswith(".ftl"):
        continue
    domain = fname.replace(".ftl", "")
    with open(os.path.join(I18N_DIR, fname)) as f:
        for line in f:
            line = line.strip()
            m = re.match(r"^([a-zA-Z][a-zA-Z0-9_-]+)\s*=\s*(.+)$", line)
            if m:
                msg_id, value = m.group(1), m.group(2).strip()
                if "{" not in value:
                    ftl_by_value[value.lower().strip("…")].append((domain, msg_id, value))

def best_match(value):
    key = value.lower().strip("…")
    candidates = ftl_by_value.get(key, [])
    if not candidates:
        return None
    for domain in DOMAIN_PREFERENCE:
        for d, mid, _ in candidates:
            if d == domain:
                return (d, mid)
    d, mid, _ = candidates[0]
    return (d, mid)

SAFE_PATTERNS = [
    "Text::new(", "Text::new_inline(",
    "ActionButton::new(", "ActionButton",
    "MenuItemFields::new(",
    "button::Content::Label(",
    "ModalButton::for_app(",
    ".with_text_label(", ".with_centered_text_label(",
    ".set_placeholder_text(",
    "EditableBinding::new(",
    "with_tooltip(",
    "render_button(",
    'set_label("',
    'write_str("',
    # Settings page common patterns
    "render_sub_header(",
    "Category::new(",
    "render_dropdown_item(",
    "render_dropdown_item_label(",
    "render_body_item(",
    "render_body_item_label(",
    "PageType::new_uncategorized(",
    "SettingsNavItem::Page(",
    "SettingsNavItem::Umbrella(",
    "SettingsSection::",
    "SettingsUmbrella::new(",
    "BindingDescription::new(",
    'FixedBinding::empty("',
    "FixedBinding::new(",
    # Settings widget patterns
    "Setting::new(",
    ".with_description(",
    ".with_label(",
    "ToggleSettingActionPair::new(",
    "SettingActionPairDescriptions::new(",
]

# Collect all replacements
all_replacements = []

for root, dirs, files in os.walk(APP_SRC_DIR):
    for fname in files:
        if not fname.endswith(".rs"):
            continue
        fpath = os.path.join(root, fname)
        rel = os.path.relpath(fpath)
        
        if rel in SKIP_FILES:
            print(f"SKIP (excluded): {rel}", file=__import__('sys').stderr)
            continue
        
        if any(part in fpath for part in ["/tests/", "/test_util/"]):
            continue
        base = os.path.basename(fpath)
        if base.endswith("_tests.rs") or base.endswith("_test.rs"):
            continue
        
        with open(fpath) as f:
            content = f.read()
        
        # Track replacements for this file to avoid double-processing
        file_replacements = []
        
        for m in re.finditer(r'"([^"]{3,})"', content):
            text = m.group(1)
            start = m.start()
            
            if text.lower() in {"file"}:
                continue
                
            before = content[max(0, start - 120):start]
            is_ui = any(p in before for p in SAFE_PATTERNS)
            if not is_ui:
                continue
            if "tr!" in before:
                continue
            
            match = best_match(text)
            if match is None:
                continue
            domain, msg_id = match
            old_str = f'"{text}"'
            new_str = f'crate::tr!("{domain}", "{msg_id}")'
            
            if old_str not in content:
                continue
            if new_str in content:
                continue
            
            file_replacements.append((old_str, new_str))
        
        if file_replacements:
            # Apply all replacements to this file
            new_content = content
            for old_str, new_str in file_replacements:
                new_content = new_content.replace(old_str, new_str, 1)
            
            with open(fpath, 'w') as f:
                f.write(new_content)
            
            for old_str, new_str in file_replacements:
                print(f"  {rel}: {old_str} -> {new_str}", file=__import__('sys').stderr)
            
            all_replacements.extend([(rel, *r) for r in file_replacements])

print(f"\nApplied {len(all_replacements)} replacements across {len(set(r[0] for r in all_replacements))} files", file=__import__('sys').stderr)
