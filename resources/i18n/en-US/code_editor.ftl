# =============================================================================
# code_editor.ftl — Code editor, diff, and code review strings
# =============================================================================
# Message IDs: code-{id}
# Used in app/src/code/*.rs
# =============================================================================

## -- File tree ----------------------------------------------------------------

code-editor-code-file-tree-delete = Delete
code-editor-code-file-tree-rename = Rename
code-editor-code-file-tree-new-file = New File
code-editor-code-file-tree-new-folder = New Folder
code-editor-code-file-tree-reveal-in-finder = Reveal in Finder
code-editor-code-file-tree-copy-path = Copy Path

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

code-editor-code-diff-added-lines = { $count ->
    [one] { $count } addition
    *[other] { $count } additions
}
code-editor-code-diff-removed-lines = { $count ->
    [one] { $count } deletion
    *[other] { $count } deletions
}
code-editor-code-diff-title = Code Diff

## -- Comments -----------------------------------------------------------------

code-editor-code-comment-add = Add comment
code-editor-code-comment-edit = Edit comment
code-editor-code-comment-delete = Delete comment
code-editor-code-comment-resolve = Resolve
code-editor-code-comment-unresolve = Unresolve
code-editor-code-comment-cancel-button = Cancel
code-editor-code-comment-save-button = Save
code-editor-code-comment-update-button = Update
code-editor-code-comment-placeholder = Write a comment…

## -- Code review --------------------------------------------------------------

code-editor-code-review-approve = Approve
code-editor-code-review-request-changes = Request changes
code-editor-code-review-comment = Comment
code-editor-code-review-close = Close review
code-editor-code-review-open = Open review

## -- Go to line ----------------------------------------------------------------

code-editor-code-goto-line-placeholder = Line number:Column

## -- Diff menu -----------------------------------------------------------------

code-editor-search-diff-placeholder = Search diff sets or branches to compare…
code-editor-no-matches = No matches
code-editor-restore = Restore
code-editor-maximize = Maximize

## -- Code review menu items ---------------------------------------------------

code-editor-code-review-commit = Commit
code-editor-code-review-push = Push
code-editor-code-review-publish = Publish
code-editor-code-review-create-pr = Create PR
code-editor-code-review-add-diff-set-context = Add diff set as context
code-editor-code-review-discard-all = Discard all
code-editor-code-review-copy-text = Copy text
code-editor-code-review-edit = Edit
code-editor-code-review-view-in-github = View in GitHub
code-editor-code-review-remove = Remove
code-editor-code-review-send-to-agent = Send to Agent

## -- Code review additional strings -------------------------------------------

code-editor-code-review-confirm = Confirm
code-editor-code-review-commit-your-changes = Commit your changes
code-editor-code-review-publish-branch = Publish branch
code-editor-code-review-push-changes = Push changes
code-editor-code-review-create-pull-request = Create pull request
code-editor-code-review-commit-and-push = Commit and push
code-editor-code-review-commit-and-publish = Commit and publish
code-editor-code-review-commit-and-create-pr = Commit and create PR
code-editor-code-review-enter-commit-message = Enter a commit message
code-editor-code-review-changes = Changes
code-editor-code-review-include-unstaged = Include unstaged
code-editor-code-review-commit-message = Commit message
code-editor-code-review-generating-message = Generating commit message…
code-editor-code-review-type-commit-message = Type a commit message
code-editor-code-review-committing = Committing…
code-editor-code-review-changes-successfully-committed = Changes successfully committed.
code-editor-code-review-changes-committed-and-pushed = Changes committed and pushed.
code-editor-code-review-no-changes-to-commit = No changes to commit.
code-editor-code-review-git-identity-not-configured = Git identity not configured. Set user.name and user.email.
code-editor-code-review-remote-has-new-changes = Remote has new changes — pull before pushing.
code-editor-code-review-no-remote-configured = No remote configured for this branch.
code-editor-code-review-authentication-failed = Authentication failed. Check your Git credentials.
code-editor-code-review-network-error = Network error. Check your connection.
code-editor-code-review-remote-repository-not-found = Remote repository not found.
code-editor-code-review-gh-cli-not-installed = GitHub CLI (gh) not installed. See https://cli.github.com/
code-editor-code-review-gh-cli-not-authenticated = GitHub CLI not authenticated. Run `gh auth login`.
code-editor-code-review-git-operation-failed = Git operation failed.
code-editor-code-review-branch = Branch

## -- Code review view additional strings -----------------------------------------

code-editor-code-review-undo = Undo
code-editor-code-review-discard-changes = Discard changes
code-editor-code-review-cancel = Cancel
code-editor-code-review-initialize-codebase = Initialize codebase
code-editor-code-review-initialize-codebase-tooltip = Enables codebase indexing and WARP.md
code-editor-code-review-open-repository = Open repository
code-editor-code-review-open-repository-tooltip = Navigate to a repo and initialize it for coding
code-editor-code-review-show-file-navigation = Show file navigation

## -- Push dialog strings ---------------------------------------------------------

code-editor-code-review-publishing = Publishing…
code-editor-code-review-pushing = Pushing…
code-editor-code-review-branch-published = Branch successfully published.
code-editor-code-review-changes-pushed = Changes successfully pushed.

## -- PR dialog strings -----------------------------------------------------------

code-editor-code-review-creating = Creating…
code-editor-code-review-open-pr = Open PR
code-editor-code-review-pr-created = PR successfully created.

## -- review- prefixed entries (tr!("code_editor", "review-...")) ---------------

code-editor-review-authentication-failed = Authentication failed. Check your Git credentials.
code-editor-review-gh-cli-not-authenticated = GitHub CLI not authenticated. Run `gh auth login`.
code-editor-review-gh-cli-not-installed = GitHub CLI (gh) not installed. See https://cli.github/
code-editor-review-remote-repository-not-found = Remote repository not found.
code-editor-review-branch-published = Branch successfully published.
code-editor-review-cancel = Cancel
code-editor-review-changes-committed-and-pushed = Changes committed and pushed.
code-editor-review-changes-pushed = Changes successfully pushed.
code-editor-review-comment-count = { $count ->
    [one] { $count } comment
   *[other] { $count } comments
}
code-editor-review-commit = Commit
code-editor-review-commit-and-create-pr = Commit and create PR
code-editor-review-commit-and-publish = Commit and publish
code-editor-review-commit-and-push = Commit and push
code-editor-review-committing = Committing…
code-editor-review-confirm = Confirm
code-editor-review-create-pull-request = Create pull request
code-editor-review-creating = Creating…
code-editor-review-discard-all = Discard all
code-editor-review-discard-changes = Discard changes
code-editor-review-generating-commit-message = Generating commit message…
code-editor-review-git-identity-not-configured = Git identity not configured. Set user.name and user.email.
code-editor-review-git-operation-failed = Git operation failed.
code-editor-review-initialize-codebase = Initialize codebase
code-editor-review-initialize-codebase-tooltip = Enables codebase indexing and WARP.md
code-editor-review-network-error = Network error. Check your connection.
code-editor-review-no-changes-to-commit = No changes to commit.
code-editor-review-no-remote-configured = No remote configured for this branch.
code-editor-review-open-pr = Open PR
code-editor-review-open-repository = Open repository
code-editor-review-open-repository-tooltip = Navigate to a repo and initialize it for coding
code-editor-review-pr-created = PR successfully created.
code-editor-review-publish-branch = Publish branch
code-editor-review-publishing = Publishing…
code-editor-review-push-changes = Push changes
code-editor-review-pushing = Pushing…
code-editor-review-remote-has-new-changes = Remote has new changes — pull before pushing.
code-editor-review-show-file-navigation = Show file navigation
code-editor-review-type-commit-message = Type a commit message
code-editor-review-undo = Undo
code-editor-review-changes-successfully-committed = Changes successfully committed.

## -- Additional code review view strings -------------------------------------------

code-editor-code-no-open-changes = No open changes
code-editor-code-stash-changes = Stash changes
code-editor-code-previous = Previous

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

## -- Additional code editor strings --
code-editor-code-hunk = Hunk:

## -- Preserve case tooltip --
code-editor-code-preserve-case-tooltip = Preserve case

## -- Find bar accessibility strings --
code-editor-code-find-result-of = Result { $match_index } of { $match_count }.
code-editor-code-find-no-results = No results.
code-editor-code-find-use-enter-navigate = Use enter and shift-enter to navigate between matches. Escape to quit.
code-editor-code-find-bar-description = Find bar for searching text in the editor.
code-editor-code-find-bar-with-matches = Find bar with { $count } matches found. Currently on match { $current } of { $total }.
code-editor-code-find-replace-field-focused = Replace field focused. Type replacement text, press Enter to replace current match, Tab to return to find field. Use up/down arrows to navigate matches, Escape to close.
code-editor-code-find-field-focused = Find field focused. Type to search text. Use Enter and Shift-Enter or up/down arrows to navigate between matches. Press Escape to close find bar.
code-editor-code-find-replace-success = Successfully replaced match. Selected match is { $match_index } of { $remaining_matches }
code-editor-code-find-replace-continue = Continue pressing Enter to replace more matches, or use up/down arrows to navigate.
code-editor-code-find-replace-last = Successfully replaced the last match.

## -- Comment editor strings --
code-editor-code-review-update-button = Update
code-editor-code-review-comment = Comment
code-editor-code-comment-imported-from-github = Comment imported from GitHub

## -- Double-prefix aliases for new code_editor strings --
