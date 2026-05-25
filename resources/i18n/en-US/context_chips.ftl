# =============================================================================
# context_chips.ftl — Context chip labels and descriptions
# =============================================================================
# Message IDs: context_chips-{id}
# =============================================================================

## -- Chip titles ---------------------------------------------------------------

context_chips-working-directory = Working Directory
context_chips-user = User
context_chips-host = Host
context_chips-python-virtualenv = Python Virtualenv
context_chips-conda-environment = Conda Environment
context_chips-node-version = Node.js Version
context_chips-date = Date
context_chips-time-12 = Time (12-hour format)
context_chips-time-24 = Time (24-hour format)
context_chips-git-branch = Git Branch
context_chips-git-diff-stats = Git Diff Stats
context_chips-github-pull-request = GitHub Pull Request
context_chips-kubernetes-context = Kubernetes Context
context_chips-svn-branch = Svn Branch
context_chips-svn-uncommitted-file-count = Svn Uncommitted File Count
context_chips-remote-login = Remote Login
context_chips-subshell = subshell
context_chips-agent-plan-and-todo-list = Agent Plan and Todo List

## -- Chip disabled reasons -----------------------------------------------------

context_chips-requires-local-session = Requires a local session
context_chips-requires-github-cli = Requires the GitHub CLI
context_chips-requires-command = Requires the `{ $command }` command

## -- Chip display prefixes -----------------------------------------------------

context_chips-git-prefix = git:({ $value })
context_chips-svn-prefix = svn:({ $value })
context_chips-svn-dirty-prefix = ±{ $value }
context_chips-k8s-prefix = ⎈ { $value }

## -- Git diff stats display ----------------------------------------------------

context_chips-git-diff-stats = { $files } • +{ $added } -{ $removed }

## -- Copy menu -----------------------------------------------------------------

context_chips-copy-chip = Copy { $title }

## -- Display chip strings ------------------------------------------------------

context_chips-monthly-ai-credits-reset = Monthly AI credits reset!
context_chips-uninstall-node-install-nvm = Uninstall existing Node.js installation and install nvm for me
context_chips-branch-already-checked-out = Branch '{ $branch }' is already checked out in another worktree, but Warp couldn't find its path.
context_chips-parent-directory = .. (Parent Directory)

## -- Display menu strings ------------------------------------------------------

context_chips-search-directories = Search directories...
context_chips-search-branches = Search branches...
context_chips-search-environments = Search environments...
context_chips-no-results = No results
context_chips-no-results-found = No results found
context_chips-sidecar-name = Name:
context_chips-sidecar-id = ID:
context_chips-sidecar-image = Image:
context_chips-sidecar-repos = Repos:
context_chips-sidecar-none = (none)

## -- Double-prefix aliases for tr!() calls that include domain prefix ----------

context_chips-context_chips-working-directory = { context_chips-working-directory }
context_chips-context_chips-user = { context_chips-user }
context_chips-context_chips-host = { context_chips-host }
context_chips-context_chips-python-virtualenv = { context_chips-python-virtualenv }
context_chips-context_chips-conda-environment = { context_chips-conda-environment }
context_chips-context_chips-node-version = { context_chips-node-version }
context_chips-context_chips-date = { context_chips-date }
context_chips-context_chips-time-12 = { context_chips-time-12 }
context_chips-context_chips-time-24 = { context_chips-time-24 }
context_chips-context_chips-git-branch = { context_chips-git-branch }
context_chips-context_chips-git-diff-stats = { context_chips-git-diff-stats }
context_chips-context_chips-github-pull-request = { context_chips-github-pull-request }
context_chips-context_chips-kubernetes-context = { context_chips-kubernetes-context }
context_chips-context_chips-svn-branch = { context_chips-svn-branch }
context_chips-context_chips-svn-uncommitted-file-count = { context_chips-svn-uncommitted-file-count }
context_chips-context_chips-remote-login = { context_chips-remote-login }
context_chips-context_chips-subshell = { context_chips-subshell }
context_chips-context_chips-agent-plan-and-todo-list = { context_chips-agent-plan-and-todo-list }
context_chips-context_chips-requires-local-session = { context_chips-requires-local-session }
context_chips-context_chips-requires-github-cli = { context_chips-requires-github-cli }
context_chips-context_chips-monthly-ai-credits-reset = { context_chips-monthly-ai-credits-reset }
context_chips-context_chips-uninstall-node-install-nvm = { context_chips-uninstall-node-install-nvm }
context_chips-context_chips-parent-directory = { context_chips-parent-directory }
context_chips-context_chips-search-directories = { context_chips-search-directories }
context_chips-context_chips-search-branches = { context_chips-search-branches }
context_chips-context_chips-search-environments = { context_chips-search-environments }
context_chips-context_chips-no-results = { context_chips-no-results }
context_chips-context_chips-no-results-found = { context_chips-no-results-found }
context_chips-context_chips-sidecar-name = { context_chips-sidecar-name }
context_chips-context_chips-sidecar-id = { context_chips-sidecar-id }
context_chips-context_chips-sidecar-image = { context_chips-sidecar-image }
context_chips-context_chips-sidecar-repos = { context_chips-sidecar-repos }
context_chips-context_chips-sidecar-none = { context_chips-sidecar-none }
