# =============================================================================
# notebooks.ftl — Notebook / plan UI strings
# =============================================================================
# Message IDs: notebooks-{id}
# Domain: "notebooks"
# =============================================================================

## -- Block types (block insertion menu & omnibar) -----------------------------

notebooks-block-text = Text
notebooks-block-command = Command
notebooks-block-bulleted-list = Bulleted list
notebooks-block-numbered-list = Numbered list
notebooks-block-code = Code
notebooks-block-to-do-list = To-do list
notebooks-block-embed = Embed
notebooks-block-divider = Divider

## -- Block header labels (h1–h6) ---------------------------------------------

notebooks-block-header-1 = H1
notebooks-block-header-2 = H2
notebooks-block-header-3 = H3
notebooks-block-header-4 = H4
notebooks-block-header-5 = H5
notebooks-block-header-6 = H6

## -- Editor / omnibar ---------------------------------------------------------

notebooks-insert-block = Insert block
notebooks-copy = Copy
notebooks-run-in-terminal = Run in terminal
notebooks-edit = Edit
notebooks-raw = Raw
notebooks-rendered = Rendered
notebooks-mermaid-lang = Mermaid

## -- Link editor ---------------------------------------------------------------

notebooks-link-text = Text
notebooks-link-url = Link (web or file)
notebooks-apply-link = Apply link

## -- Find bar ------------------------------------------------------------------

notebooks-no-matches = No matches
notebooks-enable-regex-search = Enable regex search
notebooks-disable-regex-search = Disable regex search
notebooks-enable-case-sensitive-search = Enable case-sensitive search
notebooks-disable-case-sensitive-search = Disable case-sensitive search
notebooks-focus-next-match = Focus next match
notebooks-focus-previous-match = Focus previous match
notebooks-close-find-bar = Close find bar

## -- Details bar ---------------------------------------------------------------

notebooks-sign-in-to-edit = Sign in to edit
notebooks-viewing = Viewing
notebooks-editing = Editing
notebooks-other-user = Other user
notebooks-is-editing = {$editor} is editing

## -- Notebook view --------------------------------------------------------------

notebooks-untitled = Untitled
notebooks-notebook-was-moved-to-trash = Notebook was moved to trash
notebooks-you-no-longer-have-access = You no longer have access to this notebook
notebooks-restore = Restore
notebooks-restore-notebook-from-trash = Restore notebook from trash
notebooks-copy-to-personal = Copy to Personal
notebooks-copy-notebook-contents-into-personal-workspace = Copy notebook contents into your personal workspace
notebooks-copy-all = Copy All
notebooks-copy-notebook-contents-to-clipboard = Copy notebook contents to your clipboard
notebooks-refresh = Refresh
notebooks-refresh-notebook = Refresh notebook

## -- Conflict / feature-not-available banners ----------------------------------

notebooks-conflict-resolution-message = This notebook could not be saved because changes were made while you were editing. Please copy your work and refresh.
notebooks-feature-not-available-message = This notebook could not be saved to the server because the feature is temporarily unavailable. The changes are saved locally. Please retry later.

## -- Secret redaction toast -----------------------------------------------------

notebooks-cannot-save-content-secrets = This notebook cannot be saved because its content contains secrets
notebooks-cannot-save-title-secrets = This notebook cannot be saved because its title contains secrets

## -- Overflow menu items --------------------------------------------------------

notebooks-copy-link = Copy link
notebooks-link-copied-to-clipboard = Link copied to clipboard
notebooks-open-on-desktop = Open on Desktop
notebooks-duplicate = Duplicate
notebooks-export = Export
notebooks-trash = Trash
notebooks-attach-to-active-session = Attach to active session
notebooks-move-to-space = Move to {$space_name}

## -- File notebook view ---------------------------------------------------------

notebooks-could-not-read = Could not read {$file_name}
notebooks-try-again = Try again
notebooks-loading-file = Loading {$file_name}...
notebooks-missing-source-file = Missing source file
notebooks-refresh-file = Refresh file
notebooks-open-in-editor = Open in editor
notebooks-copy-file-path = Copy file path
notebooks-unnamed = Unnamed
notebooks-notebook = {$title} notebook

## -- Keybinding labels ----------------------------------------------------------

notebooks-increase-notebook-font-size = Increase notebook font size
notebooks-decrease-notebook-font-size = Decrease notebook font size
notebooks-reset-notebook-font-size = Reset notebook font size
notebooks-focus-terminal-input-from-notebook = Focus Terminal Input from Notebook
notebooks-focus-terminal-input-from-file = Focus Terminal Input from File
notebooks-reload-file = Reload file
notebooks-increase-font-size = Increase font size
notebooks-decrease-font-size = Decrease font size

## -- Rich-text editor keybinding labels -----------------------------------------

notebooks-find-in-notebook = Find in Notebook
notebooks-toggle-regular-expression-search = Toggle regular expression search
notebooks-toggle-case-sensitive-search = Toggle case-sensitive search
notebooks-toggle-bold-styling = Toggle bold styling
notebooks-toggle-italic-styling = Toggle italic styling
notebooks-toggle-strikethrough-styling = Toggle strikethrough styling
notebooks-toggle-inline-code-styling = Toggle inline code styling
notebooks-toggle-underline-styling = Toggle underline styling
notebooks-create-or-edit-link = Create or edit link
notebooks-de-select-shell-commands = De-select shell commands
notebooks-select-shell-command-at-cursor = Select shell command at cursor
notebooks-select-previous-command = Select previous command
notebooks-select-next-command = Select next command
notebooks-run-selected-commands = Run selected commands
notebooks-remove-link = Remove link
notebooks-convert-to-block = Convert to {$block_label}

## -- Model type name ------------------------------------------------------------

notebooks-model-type-plan = Plan
notebooks-model-type-notebook = Notebook

## -- Accessibility --------------------------------------------------------------

notebooks-enable-regex-search-a11y = Enable regex search
notebooks-disable-regex-search-a11y = Disable regex search
notebooks-enable-case-sensitive-search-a11y = Enable case-sensitive search
notebooks-disable-case-sensitive-search-a11y = Disable case-sensitive search

## -- Split pane context menu items ---------------------------------------------

notebooks-split-pane-right = Split pane right
notebooks-split-pane-left = Split pane left
notebooks-split-pane-down = Split pane down
notebooks-split-pane-up = Split pane up

## -- Link secondary actions -----------------------------------------------------

notebooks-new-session = New session
notebooks-open-a-new-terminal-session-in-this-directory = Open a new terminal session in this directory
notebooks-open-in-terminal-session = Open in terminal session
notebooks-open-in-editor-label = Open in editor
notebooks-edit-markdown-file = Edit Markdown file

## -- Link error messages --------------------------------------------------------

notebooks-file-not-found = File not found
notebooks-no-base-directory = No base directory
notebooks-broken-file-link = Broken file link

## -- Rich-text editor keybinding labels (detailed) -----------------------------

notebooks-copy-binding = Copy
notebooks-paste-binding = Paste
notebooks-cut-binding = Cut
notebooks-undo-binding = Undo
notebooks-redo-binding = Redo
notebooks-move-backward-one-word = Move Backward One Word
notebooks-move-forward-one-word = Move Forward One Word
notebooks-move-forward-one-word-lower = Move forward one word
notebooks-move-backward-one-word-lower = Move backward one word
notebooks-move-cursor-up = Move cursor up
notebooks-move-cursor-down = Move cursor down
notebooks-move-cursor-left = Move cursor left
notebooks-move-cursor-right = Move cursor right
notebooks-move-to-paragraph-start = Move to start of paragraph
notebooks-move-to-paragraph-end = Move to end of paragraph
notebooks-end = End
notebooks-select-one-word-left = Select one word to the left
notebooks-select-one-word-right = Select one word to the right
notebooks-select-one-character-left = Select one character to the left
notebooks-select-one-character-right = Select one character to the right
notebooks-select-up = Select up
notebooks-select-down = Select down
notebooks-select-to-paragraph-start = Select to start of paragraph
notebooks-select-to-paragraph-end = Select to end of paragraph
notebooks-select-to-line-end = Select To Line End
notebooks-select-to-line-start = Select To Line Start
notebooks-remove-previous-character = Remove the previous character
notebooks-cut-word-left = Cut word left
notebooks-delete-word-left = Delete word left
notebooks-cut-word-right = Cut word right
notebooks-delete-word-right = Delete word right
notebooks-cut-all-left = Cut all left
notebooks-delete-all-left = Delete all left
notebooks-cut-all-right = Cut all right
notebooks-delete-all-right = Delete all right
notebooks-toggle-debug-mode = Toggle rich-text debug mode
notebooks-copy-rich-text-buffer = Copy rich-text buffer
notebooks-copy-rich-text-selection = Copy rich-text selection
notebooks-log-editor-state = Log editor state

## -- Link tooltip ---------------------------------------------------------------

notebooks-copy-link-tooltip = Copy link
notebooks-edit-link-button = Edit
notebooks-link-copied-toast = Link copied

## -- File path tooltip ----------------------------------------------------------

notebooks-open-folder = Open folder
notebooks-open-file = Open file
notebooks-open-in-warp = Open in Warp

## -- Accessibility (editor view) -----------------------------------------------

notebooks-pasting-a11y = Pasting: {$content}
notebooks-edit-link-a11y = Edit Link
notebooks-copy-link-a11y = Copy Link
notebooks-open-link-a11y = Open link: {$url}
notebooks-secondary-click-a11y = Secondary click on {$url}
notebooks-delete-line-left-a11y = Delete line left
notebooks-delete-line-right-a11y = Delete line right
notebooks-delete-word-left-a11y = Delete word left
notebooks-delete-word-right-a11y = Delete word right
notebooks-cut-line-left-a11y = Cut line left
notebooks-cut-line-right-a11y = Cut line right
notebooks-cut-word-left-a11y = Cut word left
notebooks-cut-word-right-a11y = Cut word right
notebooks-show-character-palette-a11y = Show character palette
notebooks-show-find-bar-a11y = Show find bar
notebooks-open-block-insertion-menu-a11y = Open block-insertion menu
notebooks-open-embedded-object-search-a11y = Open embedded object search menu
notebooks-insert-block-a11y = Insert {$block_label} block
notebooks-de-select-command-a11y = De-select command
notebooks-switch-selecting-commands-to-text-a11y = Switch from selecting commands to selecting text
notebooks-change-code-block-lang-a11y = Change code block language to {$code_block_type}
notebooks-copy-code-block-a11y = Copy code block
notebooks-toggle-task-list-a11y = Toggle task list

## -- File notebook strings ------------------------------------------------------

notebooks-command-from = Command from {$location_name}
notebooks-move-to-space-prefix = Move to {""}

## -- Notebook additional bindings --

notebooks-increase-font-size = Increase notebook font size
notebooks-decrease-font-size = Decrease notebook font size
notebooks-reset-font-size = Reset notebook font size
notebooks-focus-terminal-input-from-notebook = Focus Terminal Input from Notebook
notebooks-focus-terminal-input-from-file = Focus Terminal Input from File
notebooks-reload-file = Reload file
notebooks-link-copied = Link copied

## -- Primary keys for migrated UI strings --

notebooks-restore-from-trash-tooltip = Restore notebook from trash
notebooks-copy-notebook-contents-tooltip = Copy notebook contents to your clipboard
notebooks-copy-notebook-contents-to-personal-tooltip = Copy notebook contents into your personal workspace

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

notebooks-notebooks-apply-link = { notebooks-apply-link }
notebooks-notebooks-attach-to-active-session = { notebooks-attach-to-active-session }
notebooks-notebooks-block-divider = { notebooks-block-divider }
notebooks-notebooks-block-embed = { notebooks-block-embed }
notebooks-notebooks-copy-all = { notebooks-copy-all }
notebooks-notebooks-copy-file-path = { notebooks-copy-file-path }
notebooks-notebooks-copy-link = { notebooks-copy-link }
notebooks-notebooks-copy-to-personal = { notebooks-copy-to-personal }
notebooks-notebooks-duplicate = { notebooks-duplicate }
notebooks-notebooks-edit = { notebooks-edit }
notebooks-notebooks-export = { notebooks-export }
notebooks-notebooks-link-text = { notebooks-link-text }
notebooks-notebooks-link-url = { notebooks-link-url }
notebooks-notebooks-open-in-editor = { notebooks-open-in-editor }
notebooks-notebooks-open-on-desktop = { notebooks-open-on-desktop }
notebooks-notebooks-refresh-file = { notebooks-refresh-file }
notebooks-notebooks-restore = { notebooks-restore }
notebooks-notebooks-split-pane-down = { notebooks-split-pane-down }
notebooks-notebooks-split-pane-left = { notebooks-split-pane-left }
notebooks-notebooks-split-pane-right = { notebooks-split-pane-right }
notebooks-notebooks-split-pane-up = { notebooks-split-pane-up }
notebooks-notebooks-trash = { notebooks-trash }
notebooks-notebooks-untitled = { notebooks-untitled }
notebooks-notebooks-missing-source-file = { notebooks-missing-source-file }
notebooks-notebooks-move-to-space = { notebooks-move-to-space }
notebooks-notebooks-editing = { notebooks-editing }
notebooks-notebooks-viewing = { notebooks-viewing }

## -- Additional notebook strings --

notebooks-conflict-resolution-message = This notebook could not be saved because changes were made while you were editing. Please copy your work and refresh.
notebooks-refresh-notebook = Refresh notebook
notebooks-remove-link-a11y = Remove link
notebooks-convert-to-block-a11y = Convert to { $block_label }
notebooks-enable-regex-search-a11y = Enable regex search
notebooks-disable-regex-search-a11y = Disable regex search
notebooks-enable-case-sensitive-search-a11y = Enable case-sensitive search
notebooks-disable-case-sensitive-search-a11y = Disable case-sensitive search
notebooks-focus-next-match-a11y = Focus next match
notebooks-focus-previous-match-a11y = Focus previous match
notebooks-close-find-bar-a11y = Close find bar

## -- Double-prefix aliases for additional notebook strings --

notebooks-notebooks-conflict-resolution-message = { notebooks-conflict-resolution-message }
notebooks-notebooks-refresh-notebook = { notebooks-refresh-notebook }
notebooks-notebooks-remove-link-a11y = { notebooks-remove-link-a11y }
notebooks-notebooks-convert-to-block-a11y = { notebooks-convert-to-block-a11y }
notebooks-notebooks-enable-regex-search-a11y = { notebooks-enable-regex-search-a11y }
notebooks-notebooks-disable-regex-search-a11y = { notebooks-disable-regex-search-a11y }
notebooks-notebooks-enable-case-sensitive-search-a11y = { notebooks-enable-case-sensitive-search-a11y }
notebooks-notebooks-disable-case-sensitive-search-a11y = { notebooks-disable-case-sensitive-search-a11y }
notebooks-notebooks-focus-next-match-a11y = { notebooks-focus-next-match-a11y }
notebooks-notebooks-focus-previous-match-a11y = { notebooks-focus-previous-match-a11y }
notebooks-notebooks-close-find-bar-a11y = { notebooks-close-find-bar-a11y }
notebooks-notebooks-copy-rich-text-buffer = { notebooks-copy-rich-text-buffer }
notebooks-notebooks-copy-rich-text-selection = { notebooks-copy-rich-text-selection }
notebooks-notebooks-create-or-edit-link = { notebooks-create-or-edit-link }
notebooks-notebooks-cut-all-left = { notebooks-cut-all-left }
notebooks-notebooks-cut-all-right = { notebooks-cut-all-right }
notebooks-notebooks-cut-word-left = { notebooks-cut-word-left }
notebooks-notebooks-cut-word-right = { notebooks-cut-word-right }
notebooks-notebooks-de-select-shell-commands = { notebooks-de-select-shell-commands }
notebooks-notebooks-delete-all-left = { notebooks-delete-all-left }
notebooks-notebooks-delete-all-right = { notebooks-delete-all-right }
notebooks-notebooks-delete-word-left = { notebooks-delete-word-left }
notebooks-notebooks-delete-word-right = { notebooks-delete-word-right }
notebooks-notebooks-edit = { notebooks-edit }
notebooks-notebooks-end = { notebooks-end }
notebooks-notebooks-find-in-notebook = { notebooks-find-in-notebook }
notebooks-notebooks-focus-next-match = { notebooks-focus-next-match }
notebooks-notebooks-focus-previous-match = { notebooks-focus-previous-match }
notebooks-notebooks-log-editor-state = { notebooks-log-editor-state }
notebooks-notebooks-move-backward-one-word = { notebooks-move-backward-one-word }
notebooks-notebooks-move-backward-one-word-lower = { notebooks-move-backward-one-word-lower }
notebooks-notebooks-move-cursor-down = { notebooks-move-cursor-down }
notebooks-notebooks-move-cursor-left = { notebooks-move-cursor-left }
notebooks-notebooks-move-cursor-right = { notebooks-move-cursor-right }
notebooks-notebooks-move-cursor-up = { notebooks-move-cursor-up }
notebooks-notebooks-move-forward-one-word = { notebooks-move-forward-one-word }
notebooks-notebooks-move-forward-one-word-lower = { notebooks-move-forward-one-word-lower }
notebooks-notebooks-move-to-paragraph-end = { notebooks-move-to-paragraph-end }
notebooks-notebooks-move-to-paragraph-start = { notebooks-move-to-paragraph-start }
notebooks-notebooks-remove-previous-character = { notebooks-remove-previous-character }
notebooks-notebooks-run-selected-commands = { notebooks-run-selected-commands }
notebooks-notebooks-select-down = { notebooks-select-down }
notebooks-notebooks-select-next-command = { notebooks-select-next-command }
notebooks-notebooks-select-one-character-left = { notebooks-select-one-character-left }
notebooks-notebooks-select-one-character-right = { notebooks-select-one-character-right }
notebooks-notebooks-select-one-word-left = { notebooks-select-one-word-left }
notebooks-notebooks-select-one-word-right = { notebooks-select-one-word-right }
notebooks-notebooks-select-previous-command = { notebooks-select-previous-command }
notebooks-notebooks-select-shell-command-at-cursor = { notebooks-select-shell-command-at-cursor }
notebooks-notebooks-select-to-line-end = { notebooks-select-to-line-end }
notebooks-notebooks-select-to-line-start = { notebooks-select-to-line-start }
notebooks-notebooks-select-to-paragraph-end = { notebooks-select-to-paragraph-end }
notebooks-notebooks-select-to-paragraph-start = { notebooks-select-to-paragraph-start }
notebooks-notebooks-select-up = { notebooks-select-up }
notebooks-notebooks-toggle-case-sensitive-search = { notebooks-toggle-case-sensitive-search }
notebooks-notebooks-toggle-debug-mode = { notebooks-toggle-debug-mode }
notebooks-notebooks-toggle-inline-code-styling = { notebooks-toggle-inline-code-styling }
notebooks-notebooks-toggle-regular-expression-search = { notebooks-toggle-regular-expression-search }
notebooks-notebooks-toggle-strikethrough-styling = { notebooks-toggle-strikethrough-styling }
notebooks-notebooks-toggle-underline-styling = { notebooks-toggle-underline-styling }
notebooks-notebooks-increase-font-size = { notebooks-increase-font-size }
notebooks-notebooks-decrease-font-size = { notebooks-decrease-font-size }
notebooks-notebooks-reset-font-size = { notebooks-reset-font-size }
notebooks-notebooks-focus-terminal-input-from-notebook = { notebooks-focus-terminal-input-from-notebook }
notebooks-notebooks-focus-terminal-input-from-file = { notebooks-focus-terminal-input-from-file }
notebooks-notebooks-reload-file = { notebooks-reload-file }
notebooks-notebooks-cannot-save-content-secrets = { notebooks-cannot-save-content-secrets }
notebooks-notebooks-cannot-save-title-secrets = { notebooks-cannot-save-title-secrets }
notebooks-notebooks-link-copied-to-clipboard = { notebooks-link-copied-to-clipboard }
notebooks-notebooks-link-copied = { notebooks-link-copied }

## -- Additional file notebook and editor strings -----------------------------------

notebooks-command-from = Command from { $location_name }
notebooks-could-not-read = Could not read { $name }
notebooks-loading-file = Loading { $name }...
notebooks-editor-is-editing = { $editor } is editing
notebooks-pasting-a11y = Pasting: { $content }
notebooks-copy-link-a11y = Copy Link
notebooks-open-link-a11y = Open link: { $url }
notebooks-secondary-click-a11y = Secondary click on { $url }
notebooks-modifier-click-a11y = [{ $modifier } Click]
notebooks-insert-block-a11y = Insert { $block } block
notebooks-change-lang-a11y = Change code block language to { $language }
notebooks-copy-code-block-a11y = Copy code block
notebooks-open-embed-search-a11y = Open embedded object search menu

## -- Double-prefix aliases for additional file notebook and editor strings ----------

notebooks-notebooks-command-from = Command from { $location_name }
notebooks-notebooks-could-not-read = Could not read { $name }
notebooks-notebooks-loading-file = Loading { $name }...
notebooks-notebooks-editor-is-editing = { $editor } is editing
notebooks-notebooks-pasting-a11y = Pasting: { $content }
notebooks-notebooks-copy-link-a11y = { notebooks-copy-link-a11y }
notebooks-notebooks-open-link-a11y = Open link: { $url }
notebooks-notebooks-secondary-click-a11y = Secondary click on { $url }
notebooks-notebooks-modifier-click-a11y = [{ $modifier } Click]
notebooks-notebooks-insert-block-a11y = Insert { $block } block
notebooks-notebooks-change-lang-a11y = Change code block language to { $language }
notebooks-notebooks-copy-code-block-a11y = { notebooks-copy-code-block-a11y }
notebooks-notebooks-open-embed-search-a11y = { notebooks-open-embed-search-a11y }

## -- Double-prefix aliases for migrated UI strings --

notebooks-notebooks-restore-from-trash-tooltip = { notebooks-restore-from-trash-tooltip }
notebooks-notebooks-copy-notebook-contents-tooltip = { notebooks-copy-notebook-contents-tooltip }
notebooks-notebooks-copy-notebook-contents-to-personal-tooltip = { notebooks-copy-notebook-contents-to-personal-tooltip }
