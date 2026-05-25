# =============================================================================
# editor.ftl — Editor keybinding descriptions and UI strings
# =============================================================================
# Message IDs: editor-{id}
# Used in app/src/editor/*.rs
# =============================================================================

## -- Fixed binding descriptions ------------------------------------------------

editor-copy = Copy
editor-cut = Cut
editor-paste = Paste
editor-undo = Undo
editor-redo = Redo

## -- Editable binding descriptions (keybindings settings) ----------------------

editor-select-one-word-left = Select one word to the left
editor-select-one-word-right = Select one word to the right
editor-select-one-char-left = Select one character to the left
editor-select-one-char-right = Select one character to the right
editor-select-up = Select up
editor-select-down = Select down
editor-select-all = Select all
editor-select-to-line-start = Select to start of line
editor-select-to-line-end = Select to end of line
editor-copy-and-clear-lines = Copy and clear selected lines
editor-add-selection-next-occurrence = Add selection for next occurrence
editor-select-to-line-end-title = Select To Line End
editor-select-to-line-start-title = Select To Line Start
editor-move-cursor-up = Move cursor up
editor-move-cursor-down = Move cursor down
editor-move-cursor-left = Move cursor left
editor-move-cursor-right = Move cursor right
editor-move-to-line-start = Move to start of line
editor-move-to-line-end = Move to end of line
editor-end = End
editor-move-cursor-bottom = Move cursor to the bottom
editor-move-cursor-top = Move cursor to the top
editor-select-and-move-top = Select and move to the top
editor-select-and-move-bottom = Select and move to the bottom
editor-move-forward-one-word = Move forward one word
editor-move-backward-one-word = Move backward one word
editor-move-paragraph-start = Move to the start of the paragraph
editor-move-paragraph-end = Move to the end of the paragraph
editor-move-buffer-start = Move to the start of the buffer
editor-move-buffer-end = Move to the end of the buffer
editor-remove-previous-char = Remove the previous character
editor-cut-word-left = Cut word left
editor-delete-word-left = Delete word left
editor-cut-word-right = Cut word right
editor-delete-word-right = Delete word right
editor-clear-selected-lines = Clear selected lines
editor-cut-all-right = Cut all right
editor-delete-all-right = Delete all right
editor-delete-all-left = Delete all left
editor-insert-newline = Insert newline
editor-fold = Fold
editor-unfold = Unfold
editor-fold-selected-ranges = Fold selected ranges
editor-insert-last-word-prev-cmd = Insert last word of previous command
editor-move-backward-one-word-title = Move Backward One Word
editor-move-forward-one-word-title = Move Forward One Word
editor-move-backward-one-subword = Move Backward One Subword
editor-move-forward-one-subword = Move Forward One Subword
editor-select-one-subword-left = Select one subword to the left
editor-select-one-subword-right = Select one subword to the right
editor-accept-autosuggestion = Accept autosuggestion
editor-inspect-command = Inspect Command
editor-clear-command-editor = Clear command editor
editor-add-cursor-above = Add cursor above
editor-add-cursor-below = Add cursor below

## -- Tooltips ------------------------------------------------------------------

editor-search-files-directories = Search files and directories

## -- Image error messages ------------------------------------------------------

editor-model-no-image-support = The selected model does not support images as context.
editor-image-unsupported-single = Image cannot be attached - supported types are PNG, JPG, GIF, WEBP.
editor-image-unsupported-one = 1 image wasn't attached - supported types are PNG, JPG, GIF, WEBP.
editor-image-unsupported-many = { $count } images weren't attached - supported types are PNG, JPG, GIF, WEBP.
editor-image-read-error-single = Image cannot be attached - failed to read file.
editor-image-read-error-one = 1 image wasn't attached - failed to read file.
editor-image-read-error-many = { $count } images weren't attached - failed to read files.
editor-image-too-large-single = Image cannot be attached - file is too large.
editor-image-too-large-one = 1 image wasn't attached — file is too large.
editor-image-too-large-many = { $count } images weren't attached — files are too large.
editor-image-processing-error-single = Image cannot be attached - error processing.
editor-image-processing-error-one = 1 image wasn't attached - error processing.
editor-image-processing-error-many = { $count } images weren't attached - error processing.
editor-limit-per-query = limit is { $count } per query
editor-limit-per-conversation = limit is { $count } per conversation
editor-image-not-attached = 1 image wasn't attached - { $reason }.
editor-images-not-attached = { $count } images weren't attached - { $reason }.

## -- Keybinding descriptions -------------------------------------------------

editor-insert-nonexpanding-space = Insert non-expanding space
editor-exit-vim-insert-mode = Exit Vim insert mode

## -- Autosuggestion UI -------------------------------------------------------

editor-custom-ellipsis = Custom...
editor-change-keybinding = Change keybinding
editor-ignore-suggestion = Ignore this suggestion

## -- Image context tooltips --------------------------------------------------

editor-image-unsupported-model = Image attachment isn't supported by this model
editor-image-loading = Loading...
editor-image-limit-per-query = Image attachment is disabled — limit is { $count } per query
editor-image-limit-per-conversation = Image attachment is disabled — limit is { $count } per conversation
editor-attach-images = Attach images

## -- Voice input --------------------------------------------------------------

editor-voice-limit-hit = You have hit the limit for Voice requests. Your limit will be refreshed as a part of your next cycle.
editor-voice-error = An error occurred while processing your voice input.

## -- Accept autosuggestion keybinding strings ------------------------------------

editor-custom-keybinding = Custom...
editor-change-keybinding-tooltip = Change keybinding

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

editor-editor-change-keybinding-tooltip = { editor-change-keybinding-tooltip }
editor-editor-custom-ellipsis = { editor-custom-ellipsis }
editor-editor-accept-autosuggestion = { editor-accept-autosuggestion }
editor-editor-add-cursor-above = { editor-add-cursor-above }
editor-editor-add-cursor-below = { editor-add-cursor-below }
editor-editor-add-selection-next-occurrence = { editor-add-selection-next-occurrence }
editor-editor-clear-command-editor = { editor-clear-command-editor }
editor-editor-clear-selected-lines = { editor-clear-selected-lines }
editor-editor-copy-and-clear-lines = { editor-copy-and-clear-lines }
editor-editor-cut-all-right = { editor-cut-all-right }
editor-editor-cut-word-left = { editor-cut-word-left }
editor-editor-cut-word-right = { editor-cut-word-right }
editor-editor-delete-all-left = { editor-delete-all-left }
editor-editor-delete-all-right = { editor-delete-all-right }
editor-editor-delete-word-left = { editor-delete-word-left }
editor-editor-delete-word-right = { editor-delete-word-right }
editor-editor-end = { editor-end }
editor-editor-exit-vim-insert-mode = { editor-exit-vim-insert-mode }
editor-editor-fold = { editor-fold }
editor-editor-fold-selected-ranges = { editor-fold-selected-ranges }
editor-editor-insert-last-word-prev-cmd = { editor-insert-last-word-prev-cmd }
editor-editor-insert-newline = { editor-insert-newline }
editor-editor-insert-nonexpanding-space = { editor-insert-nonexpanding-space }
editor-editor-inspect-command = { editor-inspect-command }
editor-editor-move-backward-one-subword = { editor-move-backward-one-subword }
editor-editor-move-backward-one-word = { editor-move-backward-one-word }
editor-editor-move-backward-one-word-title = { editor-move-backward-one-word-title }
editor-editor-move-buffer-end = { editor-move-buffer-end }
editor-editor-move-buffer-start = { editor-move-buffer-start }
editor-editor-move-cursor-bottom = { editor-move-cursor-bottom }
editor-editor-move-cursor-down = { editor-move-cursor-down }
editor-editor-move-cursor-left = { editor-move-cursor-left }
editor-editor-move-cursor-right = { editor-move-cursor-right }
editor-editor-move-cursor-top = { editor-move-cursor-top }
editor-editor-move-cursor-up = { editor-move-cursor-up }
editor-editor-move-forward-one-subword = { editor-move-forward-one-subword }
editor-editor-move-forward-one-word = { editor-move-forward-one-word }
editor-editor-move-forward-one-word-title = { editor-move-forward-one-word-title }
editor-editor-move-paragraph-end = { editor-move-paragraph-end }
editor-editor-move-paragraph-start = { editor-move-paragraph-start }
editor-editor-move-to-line-end = { editor-move-to-line-end }
editor-editor-move-to-line-start = { editor-move-to-line-start }
editor-editor-remove-previous-char = { editor-remove-previous-char }
editor-editor-select-all = { editor-select-all }
editor-editor-select-and-move-bottom = { editor-select-and-move-bottom }
editor-editor-select-and-move-top = { editor-select-and-move-top }
editor-editor-select-down = { editor-select-down }
editor-editor-select-one-char-left = { editor-select-one-char-left }
editor-editor-select-one-char-right = { editor-select-one-char-right }
editor-editor-select-one-subword-left = { editor-select-one-subword-left }
editor-editor-select-one-subword-right = { editor-select-one-subword-right }
editor-editor-select-one-word-left = { editor-select-one-word-left }
editor-editor-select-one-word-right = { editor-select-one-word-right }
editor-editor-select-to-line-end = { editor-select-to-line-end }
editor-editor-select-to-line-end-title = { editor-select-to-line-end-title }
editor-editor-select-to-line-start = { editor-select-to-line-start }
editor-editor-select-to-line-start-title = { editor-select-to-line-start-title }
editor-editor-select-up = { editor-select-up }
editor-editor-unfold = { editor-unfold }
