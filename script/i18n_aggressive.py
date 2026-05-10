#!/usr/bin/env python3
"""Aggressive i18n migration for settings_view files.
Reads all string literals, auto-adds FTL entries, and replaces with tr!()."""

import os, re, sys
from collections import defaultdict

SETTINGS_DIR = "app/src/settings_view"
FTL_EN = "resources/i18n/en-US"
FTL_ZH = "resources/i18n/zh-CN"

# Strings that should NEVER be replaced (internal identifiers, test names, etc.)
SKIP_STRINGS = {
    # View/struct names
    "AboutPage", "AppearanceSettingsPage", "FeaturesPage",
    "AgentAssistedEnvironmentModal", "KeybindingsPageView",
    "SettingsPageView", "SettingsAction",
    # Enum values / debug identifiers
    "Activation_Hotkey_Enabled", "Allow_Native_Wayland",
    "Alias_Expansion_Enabled", "Autocomplete_Symbols",
    "Autosuggestions_Enabled", "NLD_In_Terminal",
    # File paths / keys
    "ActivationKeybindEditorCancel", "ActivationKeybindEditorSave",
    "ActivationKeybindEditorClicked", "ActivationKeystrokeDefined",
    "AgentMCPServers", "AgentProfiles",
    "ActiveAgentView", "ActiveInlineAgentView",
}

# Domain for settings strings
DOMAIN = "settings"

# Step 1: Collect all string literals from settings_view .rs files
found_strings = defaultdict(list)  # string -> [(file, line)]

for fname in sorted(os.listdir(SETTINGS_DIR)):
    if not fname.endswith(".rs") or fname.endswith("_tests.rs") or fname.endswith("_test.rs"):
        continue
    fpath = os.path.join(SETTINGS_DIR, fname)
    with open(fpath) as f:
        for i, line in enumerate(f, 1):
            for m in re.finditer(r'"([A-Z][A-Za-z0-9_ /:,.!?(){}@\-\']{4,})"', line):
                text = m.group(1)
                if text in SKIP_STRINGS:
                    continue
                if text.startswith("http") or text.startswith("file"):
                    continue
                if "{" in text:
                    continue  # Skip format strings
                found_strings[text].append((fpath, i))

print(f"Found {len(found_strings)} unique candidate strings", file=sys.stderr)

# Step 2: Add missing entries to en-US and zh-CN settings.ftl
# For en-US, the value is the string itself
# For zh-CN, we leave a placeholder comment

def add_ftl_entry(ftl_path, msg_id, value):
    """Add a FTL entry if it doesn't already exist."""
    if not os.path.exists(ftl_path):
        return False
    content = open(ftl_path).read()
    # Check if entry already exists
    if f"\n{msg_id} = " in content or f"\n{msg_id} =" in content:
        return False
    # Also check at start of file
    if content.startswith(f"{msg_id} = "):
        return False
    with open(ftl_path, 'a') as f:
        f.write(f"{msg_id} = {value}\n")
    return True

added_count = 0
for text in sorted(found_strings.keys()):
    # Create a message ID from the text
    msg_id = text.lower().replace(" ", "-").replace(":", "").replace("'", "")
    msg_id = re.sub(r'[^a-z0-9_-]', '', msg_id)
    msg_id = f"{DOMAIN}-{msg_id}"
    
    if add_ftl_entry(os.path.join(FTL_EN, "settings.ftl"), msg_id, text):
        added_count += 1
    # For zh-CN, add placeholder with English as comment
    zh_path = os.path.join(FTL_ZH, "settings.ftl")
    if os.path.exists(zh_path):
        zh_content = open(zh_path).read()
        if f"\n{msg_id} = " not in zh_content and not zh_content.startswith(f"{msg_id} = "):
            with open(zh_path, 'a') as f:
                f.write(f"# {text}\n{msg_id} = {text}\n")

print(f"Added {added_count} new FTL entries to en-US settings.ftl", file=sys.stderr)

# Step 3: Replace strings in source files with tr!() calls
# Only replace strings that match exactly and appear in safe contexts
replacements = 0
for fpath, lines in found_strings.items():
    pass  # We'll do this per-file below

# Group by file
file_strings = defaultdict(list)
for text, locations in found_strings.items():
    for fpath, lineno in locations:
        file_strings[fpath].append((text, lineno))

# Process each file
for fpath, strings in sorted(file_strings.items()):
    with open(fpath) as f:
        content = f.read()
    
    new_content = content
    file_changed = False
    
    for text, lineno in strings:
        # Skip strings that already have tr! nearby
        old_str = f'"{text}"'
        new_str = f'crate::tr!("{DOMAIN}", "{DOMAIN}-{text.lower().replace(" ", "-")}")'
        
        # Check if this is a safe replacement context
        # Use a simpler heuristic: skip if in test, skip if already has tr!
        # Only replace first occurrence
        if old_str in new_content and f'tr!("{DOMAIN}"' not in new_content[max(0, new_content.index(old_str)-200):new_content.index(old_str)]:
            new_content = new_content.replace(old_str, new_str, 1)
            file_changed = True
            replacements += 1
    
    if file_changed:
        with open(fpath, 'w') as f:
            f.write(new_content)

print(f"Applied {replacements} replacements", file=sys.stderr)
