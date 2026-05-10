#!/usr/bin/env python3
"""
Migration script: replace hardcoded UI strings with crate::tr!().

Preference rules:
  - common domain preferred for generic strings (Cancel, Save, Delete...)
  - domain-specific only when context clearly matches
  - skip single-word strings that are likely programming identifiers
"""

import os, re, sys
from collections import defaultdict

I18N_DIR = "resources/i18n/en-US"
APP_SRC_DIR = "app/src"

DOMAIN_PREFERENCE = [
    "common", "settings", "workspace", "terminal", "auth",
    "ai_assistant", "code_editor", "keybindings", "menus",
    "notifications", "onboarding", "errors",
]

# ---------------------------------------------------------------------------
# Build FTL mapping: value_lower -> list of (domain, id)
# ---------------------------------------------------------------------------

ftl_by_value = defaultdict(list)

for fname in sorted(os.listdir(I18N_DIR)):
    if not fname.endswith(".ftl"):
        continue
    domain = fname.replace(".ftl", "")
    path = os.path.join(I18N_DIR, fname)
    with open(path) as f:
        for line in f:
            line = line.strip()
            m = re.match(r"^([a-zA-Z][a-zA-Z0-9_-]+)\s*=\s*(.+)$", line)
            if m:
                msg_id, value = m.group(1), m.group(2).strip()
                if "{" not in value:
                    ftl_by_value[value.lower().strip("…")].append((domain, msg_id, value))

def best_match(value):
    """Pick the best domain for a given string value."""
    key = value.lower().strip("…")
    candidates = ftl_by_value.get(key, [])
    if not candidates:
        return None
    # Prefer common domain
    for domain in DOMAIN_PREFERENCE:
        for d, mid, _ in candidates:
            if d == domain:
                return (d, mid)
    # Fallback: first candidate
    d, mid, _ = candidates[0]
    return (d, mid)

# ---------------------------------------------------------------------------
# Scan files
# ---------------------------------------------------------------------------

skip_files = {
    # Files that are test-only
    "ai_tests.rs", "init_tests.rs", "mod_test.rs", "app_state_tests.rs",
    "onboarding_tests.rs", "keyboard_test.rs", "menu_test.rs",
    "root_view_tests.rs", "safe_triangle_tests.rs",
    "app_id_test.rs", "prefix_test.rs", "keymap_test.rs",
    "schema_validation_tests.rs",
}
skip_dirs = {"/tests/", "/test_util/", "target/"}

def should_skip(path):
    for d in skip_dirs:
        if d in path: return True
    base = os.path.basename(path)
    if base in skip_files: return True
    if base.endswith("_tests.rs") or base.endswith("_test.rs"): return True
    return False

# Known UI patterns that are safe to translate
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
]

# Strings that should be skipped even in UI context
SKIP_VALUES = {"file"}  # too ambiguous

replacements = []

for root, dirs, files in os.walk(APP_SRC_DIR):
    for fname in files:
        if not fname.endswith(".rs"):
            continue
        fpath = os.path.join(root, fname)
        if should_skip(fpath):
            continue

        with open(fpath) as f:
            content = f.read()

        # Skip files that already use tr!
        if "use crate::tr" in content or "crate::tr!" in content:
            # But we can still add more tr! calls
            pass

        for m in re.finditer(r'"([^"]{3,})"', content):
            text = m.group(1)
            start = m.start()

            # Guard: skip ambiguous values
            if text.lower() in SKIP_VALUES:
                continue

            # Guard: must be in UI-context
            before = content[max(0, start - 120):start]
            is_ui = any(p in before for p in SAFE_PATTERNS)
            if not is_ui:
                continue

            # Guard: skip if already migrated
            tr_pattern = f'tr!'
            if tr_pattern in before:
                continue

            match = best_match(text)
            if match is None:
                continue
            domain, msg_id = match
            old_str = f'"{text}"'
            new_str = f'crate::tr!("{domain}", "{msg_id}")'

            if old_str not in content:
                continue

            replacements.append((fpath, old_str, new_str, text, domain))
            content = content.replace(old_str, new_str, 1)

# Group by file
by_file = defaultdict(list)
for fpath, old_str, new_str, text, domain in replacements:
    by_file[fpath].append((old_str, new_str, text, domain))

total = len(replacements)
print(f"TOTAL: {total} replacements across {len(by_file)} files\n", file=sys.stderr)

for fpath, changes in sorted(by_file.items()):
    rel = os.path.relpath(fpath)
    print(f"# {rel}")
    print(f"# Replacement count: {len(changes)}")
    for old_str, new_str, text, domain in changes:
        print(f"- {old_str}  =>  {new_str}")
    print()
