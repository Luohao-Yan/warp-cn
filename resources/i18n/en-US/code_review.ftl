# =============================================================================
# code_review.ftl — Code review view strings
# =============================================================================
# Message IDs: code_review-{id}
# =============================================================================

## -- Comment rendering strings --

code-review-outdated = Outdated
code-review-from-github = From GitHub
code-review-comment = Review Comment

code-review-undo = Undo

## -- File navigation strings --

code-review-hide-file-navigation = Hide file navigation
code-review-show-file-navigation = Show file navigation

## -- Discard dialog strings --

code-review-cannot-discard-while-git-operation = Cannot discard changes while a git operation (merge, rebase, etc.) is in progress
code-review-no-changes-to-discard = No changes to discard

code-review-discard-uncommitted-changes-title = Discard uncommitted changes?
code-review-discard-file-uncommitted-changes-title = Discard all uncommitted changes to file?
code-review-discard-all-changes-title = Discard all changes?
code-review-discard-file-all-changes-title = Discard all changes to file?

code-review-discard-uncommitted-desc = You're about to discard all local changes that haven't been committed.
code-review-discard-file-uncommitted-desc = This will restore this file to the last committed version and discard local edits.
code-review-discard-all-changes-no-branch-desc = You're about to discard all committed and uncommitted changes.
code-review-discard-file-no-branch-desc = This will restore this file to the main branch version and discard all committed and uncommitted edits.
code-review-discard-file-branch-desc = This will reset this file to the { $branch } branch version and discard all committed and uncommitted edits.

code-review-discard-changes = Discard changes
code-review-open-file = Open file
code-review-add-file-diff-context = Add file diff as context
code-review-copy-file-path = Copy file path

## -- Loading / error / empty states --

code-review-loading-open-changes = Loading open changes...
code-review-error-loading-diffs = Error loading diffs
code-review-retry =  Retry
code-review-cannot-detect-diffs = Cannot detect diffs for this folder
code-review-track-changes-hint = As you or the Agent make changes, you'll be able to track them here.

## -- Toast messages --

code-review-comments-sent-to-agent = Comments sent to agent
code-review-could-not-submit-comments = Could not submit comments to the agent
code-review-diff-removed = Diff removed
code-review-cannot-attach-context-terminal = Cannot attach context when terminal is running
code-review-cannot-attach-diff-no-input = Cannot attach diff while input is not available

## -- Discard dialog file list --

code-review-no-file-selected = No file selected
code-review-no-files-to-discard = No files to discard

## -- Git operations header --

code-review-commit = Commit
code-review-push = Push
code-review-create-pr = Create PR
code-review-publish = Publish
code-review-view-pr = PR #{ $number }
code-review-no-changes-to-commit = No changes to commit
code-review-no-git-actions = No git actions available
code-review-refreshing-pr-info = Refreshing PR info

## -- Header menu items --

code-review-show-saved-comment = Show saved comment
code-review-add-comment = Add comment

## -- Header content --

code-review-reviewing-code-changes = Reviewing code changes

## -- Diff content empty states --

code-review-file-renamed-without-changes = File renamed without changes
code-review-new-empty-file = New empty file

## -- Zero state --

code-review-repo-initialized-with-file = Repo is initialized with a { $file_name } file.

## -- Diff selector / branch list --

## -- Diff content messages --

code-review-diff-too-large = Diff is too large to render
code-review-binary-file = Binary file - no diff available
code-review-unable-to-load-file = Unable to load file content

## -- Unsaved changes tooltip --

code-review-unsaved-changes-tooltip = This file has unsaved changes. { $shortcut } to save

## -- Comment edit/disabled tooltips --

code-review-file-level-cannot-edit = File-level comments currently can't be edited.
code-review-outdated-cannot-edit = Outdated comments can't be edited.

## -- Send button tooltips --

code-review-no-non-outdated-comments = No non-outdated comments to send
code-review-send-comments-to-cli = Send diff comments to { $label }
code-review-ai-must-be-enabled = AI must be enabled to send comments to Agent
code-review-agent-requires-credits = Agent code review requires AI credits
code-review-all-terminals-busy = All terminals are busy
code-review-send-comments-to-agent = Send diff comments to Agent

## -- Add context button --

code-review-add-diff-set-as-context = Add diff set as context

## -- Header text --

code-review-reviewing-open-changes = Reviewing open changes

## -- Uncommitted changes label --

code-review-uncommitted-changes = Uncommitted changes

## -- Code review additional bindings --

code-review-save-all-unsaved-files = Save all unsaved files in code review
code-review-show-find-bar = Show find bar in code review

code-review-changes = Changes
code-review-include-unstaged = Include unstaged
code-review-commit-message = Commit message
code-review-branch = Branch
code-review-included-commits = Included commits

## -- Commit mode placeholder ---------------------------------------------------

code-review-commit-placeholder = Enter a commit message

## -- Double-prefix aliases --

## -- Git dialog / action button strings (migrated from legacy JSON) --

code-review-add-diff-set-context = Add diff set as context
code-review-approve = Approve
code-review-authentication-failed = Authentication failed. Check your Git credentials.
code-review-branch-published = Branch successfully published.
code-review-cancel = Cancel
code-review-changes-committed-and-pushed = Changes committed and pushed.
code-review-changes-pushed = Changes successfully pushed.
code-review-changes-successfully-committed = Changes successfully committed.
code-review-close = Close review
code-review-commit-and-create-pr = Commit and create PR
code-review-commit-and-publish = Commit and publish
code-review-commit-and-push = Commit and push
code-review-commit-your-changes = Commit your changes
code-review-committing = Committing…
code-review-confirm = Confirm
code-review-copy-text = Copy text
code-review-create-pull-request = Create pull request
code-review-creating = Creating…
code-review-discard-all = Discard all
code-review-edit = Edit
code-review-enter-commit-message = Enter a commit message
code-review-generating-message = Generating commit message…
code-review-gh-cli-not-authenticated = GitHub CLI not authenticated. Run `gh auth login`.
code-review-gh-cli-not-installed = GitHub CLI (gh) not installed. See https://cli.github.com/
code-review-git-identity-not-configured = Git identity not configured. Set user.name and user.email.
code-review-git-operation-failed = Git operation failed.
code-review-initialize-codebase = Initialize codebase
code-review-initialize-codebase-tooltip = Enables codebase indexing and WARP.md
code-review-network-error = Network error. Check your connection.
code-review-no-remote-configured = No remote configured for this branch.
code-review-open = Open review
code-review-open-pr = Open PR
code-review-open-repository = Open repository
code-review-open-repository-tooltip = Navigate to a repo and initialize it for coding
code-review-pr-created = PR successfully created.
code-review-publish-branch = Publish branch
code-review-publishing = Publishing…
code-review-push-changes = Push changes
code-review-pushing = Pushing…
code-review-remote-has-new-changes = Remote has new changes — pull before pushing.
code-review-remote-repository-not-found = Remote repository not found.
code-review-remove = Remove
code-review-request-changes = Request changes
code-review-send-to-agent = Send to Agent
code-review-type-commit-message = Type a commit message
code-review-view-in-github = View in GitHub

## -- Keybinding descriptions --------------------------------------------------

code-review-toggle-file-navigation-in-code-review = Toggle file navigation in code review
