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

code-review-uncommitted-changes = Uncommitted changes

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

## -- Double-prefix aliases --

code_review-code-review-outdated = { code-review-outdated }
code_review-code-review-from-github = { code-review-from-github }
code_review-code-review-comment = { code-review-comment }
code_review-code-review-undo = { code-review-undo }

code_review-code-review-hide-file-navigation = { code-review-hide-file-navigation }
code_review-code-review-show-file-navigation = { code-review-show-file-navigation }

code_review-code-review-cannot-discard-while-git-operation = { code-review-cannot-discard-while-git-operation }
code_review-code-review-no-changes-to-discard = { code-review-no-changes-to-discard }

code_review-code-review-discard-uncommitted-changes-title = { code-review-discard-uncommitted-changes-title }
code_review-code-review-discard-file-uncommitted-changes-title = { code-review-discard-file-uncommitted-changes-title }
code_review-code-review-discard-all-changes-title = { code-review-discard-all-changes-title }
code_review-code-review-discard-file-all-changes-title = { code-review-discard-file-all-changes-title }

code_review-code-review-discard-uncommitted-desc = { code-review-discard-uncommitted-desc }
code_review-code-review-discard-file-uncommitted-desc = { code-review-discard-file-uncommitted-desc }
code_review-code-review-discard-all-changes-no-branch-desc = { code-review-discard-all-changes-no-branch-desc }
code_review-code-review-discard-file-no-branch-desc = { code-review-discard-file-no-branch-desc }
code_review-code-review-discard-file-branch-desc = { code-review-discard-file-branch-desc }

code_review-code-review-discard-changes = { code-review-discard-changes }
code_review-code-review-open-file = { code-review-open-file }
code_review-code-review-add-file-diff-context = { code-review-add-file-diff-context }
code_review-code-review-copy-file-path = { code-review-copy-file-path }

code_review-code-review-loading-open-changes = { code-review-loading-open-changes }
code_review-code-review-error-loading-diffs = { code-review-error-loading-diffs }
code_review-code-review-retry = { code-review-retry }
code_review-code-review-cannot-detect-diffs = { code-review-cannot-detect-diffs }
code_review-code-review-track-changes-hint = { code-review-track-changes-hint }

code_review-code-review-comments-sent-to-agent = { code-review-comments-sent-to-agent }
code_review-code-review-could-not-submit-comments = { code-review-could-not-submit-comments }
code_review-code-review-diff-removed = { code-review-diff-removed }
code_review-code-review-cannot-attach-context-terminal = { code-review-cannot-attach-context-terminal }
code_review-code-review-cannot-attach-diff-no-input = { code-review-cannot-attach-diff-no-input }

code_review-code-review-no-file-selected = { code-review-no-file-selected }
code_review-code-review-no-files-to-discard = { code-review-no-files-to-discard }

code_review-code-review-commit = { code-review-commit }
code_review-code-review-push = { code-review-push }
code_review-code-review-create-pr = { code-review-create-pr }
code_review-code-review-publish = { code-review-publish }
code_review-code-review-view-pr = { code-review-view-pr }
code_review-code-review-no-changes-to-commit = { code-review-no-changes-to-commit }
code_review-code-review-no-git-actions = { code-review-no-git-actions }
code_review-code-review-refreshing-pr-info = { code-review-refreshing-pr-info }

code_review-code-review-show-saved-comment = { code-review-show-saved-comment }
code_review-code-review-add-comment = { code-review-add-comment }

code_review-code-review-reviewing-code-changes = { code-review-reviewing-code-changes }

code_review-code-review-file-renamed-without-changes = { code-review-file-renamed-without-changes }
code_review-code-review-new-empty-file = { code-review-new-empty-file }
code_review-code-review-repo-initialized-with-file = { code-review-repo-initialized-with-file }

code_review-code-review-uncommitted-changes = { code-review-uncommitted-changes }
code_review-code-review-diff-too-large = { code-review-diff-too-large }
code_review-code-review-binary-file = { code-review-binary-file }
code_review-code-review-unable-to-load-file = { code-review-unable-to-load-file }
code_review-code-review-unsaved-changes-tooltip = { code-review-unsaved-changes-tooltip }
code_review-code-review-file-level-cannot-edit = { code-review-file-level-cannot-edit }
code_review-code-review-outdated-cannot-edit = { code-review-outdated-cannot-edit }
code_review-code-review-no-non-outdated-comments = { code-review-no-non-outdated-comments }
code_review-code-review-send-comments-to-cli = { code-review-send-comments-to-cli }
code_review-code-review-ai-must-be-enabled = { code-review-ai-must-be-enabled }
code_review-code-review-agent-requires-credits = { code-review-agent-requires-credits }
code_review-code-review-all-terminals-busy = { code-review-all-terminals-busy }
code_review-code-review-send-comments-to-agent = { code-review-send-comments-to-agent }
code_review-code-review-add-diff-set-as-context = { code-review-add-diff-set-as-context }
code_review-code-review-reviewing-open-changes = { code-review-reviewing-open-changes }
code_review-code-review-save-all-unsaved-files = { code-review-save-all-unsaved-files }
code_review-code-review-show-find-bar = { code-review-show-find-bar }

code_review-code-review-changes = { code-review-changes }
code_review-code-review-include-unstaged = { code-review-include-unstaged }
code_review-code-review-commit-message = { code-review-commit-message }
code_review-code-review-branch = { code-review-branch }
code_review-code-review-included-commits = { code-review-included-commits }
