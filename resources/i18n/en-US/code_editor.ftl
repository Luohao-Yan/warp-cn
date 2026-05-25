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

## -- Go to line ----------------------------------------------------------------

code-goto-line-placeholder = Line number:Column

## -- Diff menu -----------------------------------------------------------------

code-editor-search-diff-placeholder = Search diff sets or branches to compare…
code-editor-no-matches = No matches
code-editor-restore = Restore
code-editor-maximize = Maximize

## -- Code review menu items ---------------------------------------------------

code-review-commit = Commit
code-review-push = Push
code-review-publish = Publish
code-review-create-pr = Create PR
code-review-add-diff-set-context = Add diff set as context
code-review-discard-all = Discard all
code-review-copy-text = Copy text
code-review-edit = Edit
code-review-view-in-github = View in GitHub
code-review-remove = Remove
code-review-send-to-agent = Send to Agent

## -- Code review additional strings -------------------------------------------

code-review-confirm = Confirm
code-review-commit-your-changes = Commit your changes
code-review-publish-branch = Publish branch
code-review-push-changes = Push changes
code-review-create-pull-request = Create pull request
code-review-commit-and-push = Commit and push
code-review-commit-and-publish = Commit and publish
code-review-commit-and-create-pr = Commit and create PR
code-review-enter-commit-message = Enter a commit message
code-review-changes = Changes
code-review-include-unstaged = Include unstaged
code-review-commit-message = Commit message
code-review-generating-message = Generating commit message…
code-review-type-commit-message = Type a commit message
code-review-committing = Committing…
code-review-changes-successfully-committed = Changes successfully committed.
code-review-changes-committed-and-pushed = Changes committed and pushed.
code-review-no-changes-to-commit = No changes to commit.
code-review-git-identity-not-configured = Git identity not configured. Set user.name and user.email.
code-review-remote-has-new-changes = Remote has new changes — pull before pushing.
code-review-no-remote-configured = No remote configured for this branch.
code-review-authentication-failed = Authentication failed. Check your Git credentials.
code-review-network-error = Network error. Check your connection.
code-review-remote-repository-not-found = Remote repository not found.
code-review-gh-cli-not-installed = GitHub CLI (gh) not installed. See https://cli.github.com/
code-review-gh-cli-not-authenticated = GitHub CLI not authenticated. Run `gh auth login`.
code-review-git-operation-failed = Git operation failed.
code-review-branch = Branch

## -- Code review view additional strings -----------------------------------------

code-review-undo = Undo
code-review-discard-changes = Discard changes
code-review-cancel = Cancel
code-review-initialize-codebase = Initialize codebase
code-review-initialize-codebase-tooltip = Enables codebase indexing and WARP.md
code-review-open-repository = Open repository
code-review-open-repository-tooltip = Navigate to a repo and initialize it for coding
code-review-show-file-navigation = Show file navigation

## -- Push dialog strings ---------------------------------------------------------

code-review-publishing = Publishing…
code-review-pushing = Pushing…
code-review-branch-published = Branch successfully published.
code-review-changes-pushed = Changes successfully pushed.

## -- PR dialog strings -----------------------------------------------------------

code-review-creating = Creating…
code-review-open-pr = Open PR
code-review-pr-created = PR successfully created.

## -- review- prefixed entries (tr!("code_editor", "review-...")) ---------------

review-authentication-failed = Authentication failed. Check your Git credentials.
review-gh-cli-not-authenticated = GitHub CLI not authenticated. Run `gh auth login`.
review-gh-cli-not-installed = GitHub CLI (gh) not installed. See https://cli.github/
review-remote-repository-not-found = Remote repository not found.
review-branch-published = Branch successfully published.
review-cancel = Cancel
review-changes-committed-and-pushed = Changes committed and pushed.
review-changes-pushed = Changes successfully pushed.
review-comment-count = { $count ->
    [one] { $count } comment
   *[other] { $count } comments
}
review-commit = Commit
review-commit-and-create-pr = Commit and create PR
review-commit-and-publish = Commit and publish
review-commit-and-push = Commit and push
review-committing = Committing…
review-confirm = Confirm
review-create-pull-request = Create pull request
review-creating = Creating…
review-discard-all = Discard all
review-discard-changes = Discard changes
review-generating-commit-message = Generating commit message…
review-git-identity-not-configured = Git identity not configured. Set user.name and user.email.
review-git-operation-failed = Git operation failed.
review-initialize-codebase = Initialize codebase
review-initialize-codebase-tooltip = Enables codebase indexing and WARP.md
review-network-error = Network error. Check your connection.
review-no-changes-to-commit = No changes to commit.
review-no-remote-configured = No remote configured for this branch.
review-open-pr = Open PR
review-open-repository = Open repository
review-open-repository-tooltip = Navigate to a repo and initialize it for coding
review-pr-created = PR successfully created.
review-publish-branch = Publish branch
review-publishing = Publishing…
review-push-changes = Push changes
review-pushing = Pushing…
review-remote-has-new-changes = Remote has new changes — pull before pushing.
review-show-file-navigation = Show file navigation
review-type-commit-message = Type a commit message
review-undo = Undo
review-changes-successfully-committed = Changes successfully committed.

## -- Additional code review view strings -------------------------------------------

code-no-open-changes = No open changes
code-stash-changes = Stash changes
code-previous = Previous

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

code_editor-code-comment-add = { code-comment-add }
code_editor-code-comment-cancel-button = { code-comment-cancel-button }
code_editor-code-editor-go-to-line = { code-editor-go-to-line }
code_editor-code-editor-maximize = { code-editor-maximize }
code_editor-code-editor-no-matches = { code-editor-no-matches }
code_editor-code-editor-restore = { code-editor-restore }
code_editor-code-editor-search-diff-placeholder = { code-editor-search-diff-placeholder }
code_editor-code-file-tree-copy-path = { code-file-tree-copy-path }
code_editor-code-goto-line-placeholder = { code-goto-line-placeholder }
code_editor-code-review-add-diff-set-context = { code-review-add-diff-set-context }
code_editor-code-review-approve = { code-review-approve }
code_editor-code-review-comment = { code-review-comment }
code_editor-code-review-commit = { code-review-commit }
code_editor-code-review-copy-text = { code-review-copy-text }
code_editor-code-review-create-pr = { code-review-create-pr }
code_editor-code-review-discard-all = { code-review-discard-all }
code_editor-code-review-edit = { code-review-edit }
code_editor-code-review-publish = { code-review-publish }
code_editor-code-review-push = { code-review-push }
code_editor-code-review-remove = { code-review-remove }
code_editor-code-review-send-to-agent = { code-review-send-to-agent }
code_editor-code-review-view-in-github = { code-review-view-in-github }
code_editor-review-authentication-failed = { review-authentication-failed }
code_editor-review-branch-published = { review-branch-published }
code_editor-review-cancel = { review-cancel }
code_editor-review-changes-committed-and-pushed = { review-changes-committed-and-pushed }
code_editor-review-changes-pushed = { review-changes-pushed }
code_editor-review-changes-successfully-committed = { review-changes-successfully-committed }
code_editor-review-comment-count = { review-comment-count }
code_editor-review-commit = { review-commit }
code_editor-review-commit-and-create-pr = { review-commit-and-create-pr }
code_editor-review-commit-and-publish = { review-commit-and-publish }
code_editor-review-commit-and-push = { review-commit-and-push }
code_editor-review-committing = { review-committing }
code_editor-review-confirm = { review-confirm }
code_editor-review-create-pull-request = { review-create-pull-request }
code_editor-review-creating = { review-creating }
code_editor-review-discard-all = { review-discard-all }
code_editor-review-discard-changes = { review-discard-changes }
code_editor-review-generating-commit-message = { review-generating-commit-message }
code_editor-review-git-identity-not-configured = { review-git-identity-not-configured }
code_editor-review-git-operation-failed = { review-git-operation-failed }
code_editor-review-initialize-codebase = { review-initialize-codebase }
code_editor-review-initialize-codebase-tooltip = { review-initialize-codebase-tooltip }
code_editor-review-network-error = { review-network-error }
code_editor-review-no-changes-to-commit = { review-no-changes-to-commit }
code_editor-review-no-remote-configured = { review-no-remote-configured }
code_editor-review-open-pr = { review-open-pr }
code_editor-review-open-repository = { review-open-repository }
code_editor-review-open-repository-tooltip = { review-open-repository-tooltip }
code_editor-review-pr-created = { review-pr-created }
code_editor-review-publish-branch = { review-publish-branch }
code_editor-review-publishing = { review-publishing }
code_editor-review-push-changes = { review-push-changes }
code_editor-review-pushing = { review-pushing }
code_editor-review-remote-has-new-changes = { review-remote-has-new-changes }
code_editor-review-remote-repository-not-found = { review-remote-repository-not-found }
code_editor-review-gh-cli-not-installed = { review-gh-cli-not-installed }
code_editor-review-gh-cli-not-authenticated = { review-gh-cli-not-authenticated }
code_editor-review-show-file-navigation = { review-show-file-navigation }
code_editor-review-type-commit-message = { review-type-commit-message }
code_editor-review-undo = { review-undo }
code_editor-code-no-open-changes = { code-no-open-changes }
code_editor-code-previous = { code-previous }
code_editor-code-stash-changes = { code-stash-changes }

## -- Additional code editor strings --
code-hunk = Hunk:

## -- Preserve case tooltip --
code-preserve-case-tooltip = Preserve case

## -- Find bar accessibility strings --
code-find-result-of = Result { $match_index } of { $match_count }.
code-find-no-results = No results.
code-find-use-enter-navigate = Use enter and shift-enter to navigate between matches. Escape to quit.
code-find-bar-description = Find bar for searching text in the editor.
code-find-bar-with-matches = Find bar with { $count } matches found. Currently on match { $current } of { $total }.
code-find-replace-field-focused = Replace field focused. Type replacement text, press Enter to replace current match, Tab to return to find field. Use up/down arrows to navigate matches, Escape to close.
code-find-field-focused = Find field focused. Type to search text. Use Enter and Shift-Enter or up/down arrows to navigate between matches. Press Escape to close find bar.
code-find-replace-success = Successfully replaced match. Selected match is { $match_index } of { $remaining_matches }
code-find-replace-continue = Continue pressing Enter to replace more matches, or use up/down arrows to navigate.
code-find-replace-last = Successfully replaced the last match.

## -- Comment editor strings --
code-review-update-button = Update
code-review-comment = Comment
code-comment-imported-from-github = Comment imported from GitHub

## -- Double-prefix aliases for new code_editor strings --
code_editor-code-hunk = { code-hunk }
code_editor-code-preserve-case-tooltip = { code-preserve-case-tooltip }
code_editor-code-find-no-results = { code-find-no-results }
code_editor-code-find-use-enter-navigate = { code-find-use-enter-navigate }
code_editor-code-find-bar-description = { code-find-bar-description }
code_editor-code-find-replace-field-focused = { code-find-replace-field-focused }
code_editor-code-find-field-focused = { code-find-field-focused }
code_editor-code-find-replace-continue = { code-find-replace-continue }
code_editor-code-find-replace-last = { code-find-replace-last }
code_editor-code-review-update-button = { code-review-update-button }
code_editor-code-review-comment = { code-review-comment }
code_editor-code-comment-imported-from-github = { code-comment-imported-from-github }
code_editor-code-find-result-of = { code-find-result-of }
code_editor-code-find-bar-with-matches = { code-find-bar-with-matches }
