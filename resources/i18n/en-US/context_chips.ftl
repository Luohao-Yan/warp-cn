# =============================================================================
# context_chips.ftl — Context chip labels and descriptions
# =============================================================================
# Message IDs: context_chips-{id}
# =============================================================================

## -- Chip titles ---------------------------------------------------------------

context-chips-working-directory = Working Directory
context-chips-user = User
context-chips-host = Host
context-chips-python-virtualenv = Python Virtualenv
context-chips-conda-environment = Conda Environment
context-chips-node-version = Node.js Version
context-chips-date = Date
context-chips-time-12 = Time (12-hour format)
context-chips-time-24 = Time (24-hour format)
context-chips-git-branch = Git Branch
context-chips-git-diff-stats = Git Diff Stats
context-chips-github-pull-request = GitHub Pull Request
context-chips-kubernetes-context = Kubernetes Context
context-chips-svn-branch = Svn Branch
context-chips-svn-uncommitted-file-count = Svn Uncommitted File Count
context-chips-remote-login = Remote Login
context-chips-subshell = subshell
context-chips-agent-plan-and-todo-list = Agent Plan and Todo List

## -- Chip disabled reasons -----------------------------------------------------

context-chips-requires-local-session = Requires a local session
context-chips-requires-github-cli = Requires the GitHub CLI
context-chips-requires-command = Requires the `{ $command }` command

## -- Chip display prefixes -----------------------------------------------------

context-chips-git-prefix = git:({ $value })
context-chips-svn-prefix = svn:({ $value })
context-chips-svn-dirty-prefix = ±{ $value }
context-chips-k8s-prefix = ⎈ { $value }

## -- Git diff stats display ----------------------------------------------------

context-chips-git-diff-stats = { $files } • +{ $added } -{ $removed }

## -- Copy menu -----------------------------------------------------------------

context-chips-copy-chip = Copy { $title }

## -- Display chip strings ------------------------------------------------------

context-chips-monthly-ai-credits-reset = Monthly AI credits reset!
context-chips-uninstall-node-install-nvm = Uninstall existing Node.js installation and install nvm for me
context-chips-branch-already-checked-out = Branch '{ $branch }' is already checked out in another worktree, but Warp couldn't find its path.
context-chips-parent-directory = .. (Parent Directory)

## -- Display menu strings ------------------------------------------------------

context-chips-search-directories = Search directories...
context-chips-search-branches = Search branches...
context-chips-search-environments = Search environments...
context-chips-no-results = No results
context-chips-no-results-found = No results found
context-chips-sidecar-name = Name:
context-chips-sidecar-id = ID:
context-chips-sidecar-image = Image:
context-chips-sidecar-repos = Repos:
context-chips-sidecar-none = (none)

## -- Double-prefix aliases for tr!() calls that include domain prefix ----------
