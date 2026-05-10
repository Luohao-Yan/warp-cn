# =============================================================================
# code_editor.ftl — Code editor, diff, and code review strings
# =============================================================================
# Message IDs: code-{id}
# Used in app/src/code/*.rs
# =============================================================================

## -- File tree ----------------------------------------------------------------

code-file-tree-delete = Delete
code-file-tree-rename = Rename
code-file-tree-new-file = New File
code-file-tree-new-folder = New Folder
code-file-tree-reveal-in-finder = Reveal in Finder
code-file-tree-copy-path = Copy Path

## -- Editor -------------------------------------------------------------------

code-editor-delete-label = Delete
code-editor-save-label = Save
code-editor-undo-label = Undo
code-editor-redo-label = Redo
code-editor-find-label = Find
code-editor-replace-label = Replace
code-editor-go-to-line = Go to Line
code-editor-select-all = Select All

## -- Diff view ----------------------------------------------------------------

code-diff-added-lines = { $count ->
    [one] { $count } addition
    *[other] { $count } additions
}
code-diff-removed-lines = { $count ->
    [one] { $count } deletion
    *[other] { $count } deletions
}
code-diff-title = Code Diff

## -- Comments -----------------------------------------------------------------

code-comment-add = Add comment
code-comment-edit = Edit comment
code-comment-delete = Delete comment
code-comment-resolve = Resolve
code-comment-unresolve = Unresolve
code-comment-cancel-button = Cancel
code-comment-save-button = Save
code-comment-update-button = Update
code-comment-placeholder = Write a comment…

## -- Code review --------------------------------------------------------------

code-review-approve = Approve
code-review-request-changes = Request changes
code-review-comment = Comment
code-review-close = Close review
code-review-open = Open review