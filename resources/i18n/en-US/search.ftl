# =============================================================================
# search.ftl — Search, command palette, slash command strings
# =============================================================================
# Message IDs: search-{id}
# Used in app/src/search/*.rs
# =============================================================================

## -- Data source display names ------------------------------------------------

search-source-history = history
search-source-workflows = workflows
search-source-prompts = prompts
search-source-notebooks = notebooks
search-source-plans = plans
search-source-ai-suggestions = AI command suggestions
search-source-actions = actions
search-source-sessions = sessions
search-source-tabs = tabs
search-source-conversations = conversations
search-source-launch-configs = launch configurations
search-source-warp-drive = Warp Drive
search-source-env-vars = environment variables
search-source-prompt-history = prompt history
search-source-files = files
search-source-commands = commands
search-source-blocks = blocks
search-source-code = code
search-source-rules = rules
search-source-repos = repos
search-source-diff-sets = diff sets
search-source-slash-commands = slash commands
search-source-historical-convs = historical conversations
search-source-skills = skills
search-source-base-models = base models
search-source-terminal-models = full terminal use models
search-source-cwd-convs = current directory conversations
search-source-diffs = Diffs
search-source-docs = Docs
search-source-tasks = Past tasks
search-source-servers = Servers and integrations
search-source-terminal = Terminal
search-source-web = Web
search-source-recent-diff = Most recent diff
search-source-recent-block = Most recent block

## -- Data source placeholders --------------------------------------------------

search-placeholder-history = Search history
search-placeholder-workflows = Search workflows
search-placeholder-prompts = Search prompts
search-placeholder-notebooks = Search notebooks
search-placeholder-plans = Search plans
search-placeholder-example = e.g. replace string in file
search-placeholder-actions = Search actions
search-placeholder-sessions = Search sessions
search-placeholder-tabs = Search tabs
search-placeholder-conversations = Search conversations
search-placeholder-historical-convs = Search historical conversations
search-placeholder-launch-configs = Search launch configurations
search-placeholder-warp-drive = Search objects in drive
search-placeholder-env-vars = Search environment variables
search-placeholder-prompt-history = Search prompt history
search-placeholder-files = Search files
search-placeholder-commands = Search commands
search-placeholder-blocks = Search blocks
search-placeholder-code-symbols = Search code symbols
search-placeholder-rules = Search AI rules
search-placeholder-repos = Search code repos
search-placeholder-diff-sets = Search diff sets
search-placeholder-slash-commands = Search static slash commands
search-placeholder-skills = Search skills
search-placeholder-base-models = Search base models
search-placeholder-terminal-models = Search full terminal use models
search-placeholder-cwd-convs = Search conversations in current directory

## -- Common search UI strings --------------------------------------------------

search-no-results = No results found.
search-loading = Loading...
search-indexing = Code symbols indexing...
search-error-results = Error finding results
search-upgrade = Upgrade
search-out-of-credits = Looks like you're out of credits. Contact a team admin to upgrade for more credits.
search-not-visible = Not visible to other users

## -- Command search ------------------------------------------------------------

search-command-placeholder = Search your history, workflows, and more
search-secret-placeholder = Search for a secret
search-reference-placeholder = Search for a reference
search-ai-suggest = Ask Warp AI for command suggestions
search-ai-translate = Translate into shell command using Warp AI
search-ai-no-results = No results found. Please try again with a more specific query.
search-ai-error = Something went wrong. Please try again.
search-ai-out-of-credits = Looks like you're out of AI credits. Please try again later.
search-ai-error-fallback = Something went wrong. Please try again.
search-credits-prefix = Looks like you're out of credits.
search-credits-suffix =  for more credits.

## -- New session options -------------------------------------------------------

search-new-tab = Create New Tab
search-new-window = Create New Window
search-split-down = Split Pane Down
search-split-right = Split Pane Right
search-split-up = Split Pane Up
search-split-left = Split Pane Left
search-new-tab-shell = Create New Tab: { $shell }
search-new-window-shell = Create New Window: { $shell }
search-split-pane-shell = Split Pane { $direction }: { $shell }

## -- Navigation search items ---------------------------------------------------

search-status-running = Running...
search-status-completed-hour = Completed over 1 hour ago
search-status-completed-minute = { $mins ->
    [one] Completed { $mins } minute ago
   *[other] Completed { $mins } minutes ago
}
search-status-no-timestamp = No timestamp found

## -- Zero state ----------------------------------------------------------------

search-section-recent = Recent
search-section-suggested = Suggested

## -- Time descriptions ---------------------------------------------------------

search-just-now = Just now
search-minutes-ago = { $count ->
    [one] { $count } minute ago
   *[other] { $count } minutes ago
}
search-hours-ago = { $count ->
    [one] { $count } hour ago
   *[other] { $count } hours ago
}
search-days-ago = { $count ->
    [one] { $count } day ago
   *[other] { $count } days ago
}

## -- Diff set descriptions -----------------------------------------------------

search-diff-uncommitted = Uncommitted changes
search-diff-vs-main = Changes vs. main branch
search-diff-vs-branch = Changes vs. { $branch }
search-diff-uncommitted-desc = All uncommitted changes in the working directory
search-diff-vs-main-desc = All changes compared to the main branch
search-diff-vs-branch-desc = All changes compared to { $branch }

## -- Slash command descriptions ------------------------------------------------

search-slash-agent = Start a new conversation
search-slash-cloud-agent = Start a new cloud agent conversation
search-slash-mcp = Add a new MCP server via the MCP settings page
search-slash-pr-comments = Pull GitHub PR review comments
search-slash-env = Create an Oz environment (Docker image + repos) via guided setup
search-slash-docker = Create a new docker sandbox terminal session
search-slash-create-project = Have Oz walk you through creating a new coding project
search-slash-skill = Open a skill's markdown file in Warp's built-in editor
search-slash-invoke-skill = Invoke a skill
search-slash-add-prompt = Add new Agent prompt
search-slash-add-rule = Add a new global rule for the agent
search-slash-edit = Open a file in Warp's code editor
search-slash-rename-tab = Rename the current tab
search-slash-color-tab = Set the color of the current tab
search-slash-fork = Fork the current conversation in a new pane or a new tab
search-slash-handoff = Hand off this conversation to a cloud agent
search-slash-review = Open code review
search-slash-index = Index this codebase
search-slash-agents-md = Index this codebase and generate an AGENTS.md file
search-slash-rules = Open the project rules file (AGENTS.md)
search-slash-mcp-servers = Open MCP servers
search-slash-settings = Open settings file (TOML)
search-slash-changelog = Open the latest changelog
search-slash-feedback = Send feedback
search-slash-switch-repo = Switch to another indexed repository
search-slash-view-rules = View all of your global and project rules
search-slash-new-conv = Start a new conversation (alias for /agent)
search-slash-base-model = Switch the base agent model
search-slash-host = Switch the cloud agent execution host
search-slash-harness = Switch the cloud agent harness
search-slash-environment = Switch the cloud agent environment
search-slash-profile = Switch the active execution profile
search-slash-plan = Prompt the agent to do some research and create a plan for a task
search-slash-multi-agent = Break a task into subtasks and run them in parallel with multiple agents
search-slash-compact = Free up context by summarizing convo history
search-slash-compact-send = Compact conversation and then send a follow-up prompt
search-slash-queue = Queue a prompt to send after the agent finishes responding
search-slash-fork-compact = Fork current conversation and compact it in the forked copy
search-slash-fork-from = Fork conversation from a specific query
search-slash-continue-local = Continue this cloud conversation locally
search-slash-billing = Open billing and usage settings
search-slash-remote-control = Start remote control for this session
search-slash-credits = Toggle credit usage details
search-slash-history = Open conversation history
search-slash-saved-prompts = Search saved prompts
search-slash-rewind = Rewind to a previous point in the conversation
search-slash-export-clipboard = Export current conversation to clipboard in markdown format
search-slash-export-file = Export current conversation to a markdown file

## -- Welcome palette -----------------------------------------------------------

search-add-repo = Add repository
search-add-repo-keystroke = Add repository { $keystroke }
search-terminal-session = Terminal session
search-terminal-session-keystroke = Terminal session { $keystroke }
search-welcome-placeholder = Code, build, or search for anything...
search-command-search-title = Command Search
search-looking-for = I'm looking for...
search-example-queries = Example queries
search-dir-down = Down
search-dir-right = Right
search-dir-up = Up
search-dir-left = Left

## -- Accessibility labels -------------------------------------------------------

search-untitled = Untitled
search-notebook-a11y-label = Notebook: { $title }
search-env-var-a11y-label = Environment Variables: { $title }
search-loading-suggestions = Loading { $filter } suggestions
search-selected = Selected { $label }.

## -- Additional search ------------------------------------------------

search-ask-warp-ai-suggestions = Ask Warp AI for suggestions
search-translate-with-warp-ai = Translate with Warp AI
search-command-search-a11y-desc = Search your history, workflows, and more.  Use the Up and Down arrows to browse search results after typing.  Press Enter to accept a selected result, inserting it into the terminal input.  Press Escape to close.

## -- Additional hardcoded strings from search modules ---

search-block-no-output = No output
search-rule-label = Rule
search-code-search-failed = Code search failed
search-file-directory-label = Directory: { $path }
search-file-file-label = File: { $path }
search-file-navigate-directory = Press Enter to navigate to this directory
search-file-open-file = Press Enter to open this file
search-create-file-display = Create { $file_name }…
search-create-file-a11y-label = Create file: { $file_name }
search-create-file-a11y-help = Press Enter to create { $file_name } in the current directory
search-diff-uncommitted = Uncommitted changes
search-diff-vs-main = Changes vs. main branch
search-diff-vs-branch = Changes vs. { $branch }
search-diff-uncommitted-desc = All uncommitted changes in the working directory
search-diff-vs-main-desc = All changes compared to the main branch
search-diff-vs-branch-desc = All changes compared to { $branch }

## -- Category display names for AI Context Menu ---

search-category-files = Files and folders
search-category-commands = Commands
search-category-blocks = Blocks
search-category-workflows = Workflows
search-category-notebooks = Notebooks
search-category-plans = Plans
search-category-diffs = Diffs
search-category-docs = Docs
search-category-tasks = Past tasks
search-category-rules = Rules
search-category-servers = Servers and integrations
search-category-terminal = Terminal
search-category-web = Web
search-category-recent-diff = Most recent diff
search-category-recent-block = Most recent block
search-category-code = Code
search-category-diff-sets = Diff sets
search-category-conversations = Conversations
search-category-skills = Skills

## -- Conversation section titles ---

search-section-active-pane = Active pane conversations
search-section-other-active = Other active conversations
search-section-past = Past conversations

## -- Conversation action strings ---

search-fork-current-conversation = Fork current conversation
search-fork-conversation-tooltip = Fork conversation
search-new-conversation = New conversation

## -- Navigation status strings ---

search-nav-completed = Completed
search-nav-empty-session = Empty Session

## -- Command palette strings ---

search-palette-placeholder = Search for a command
search-palette-no-results = No results found

## -- Command palette accessibility labels ---

search-a11y-conversation-label = Conversation: { $title }
search-a11y-conversation-nav = Press enter to navigate to conversation "{ $title }".
search-a11y-fork-conversation = Press enter to fork the current conversation into a new conversation.
search-a11y-new-conversation = Press enter to create a new conversation.
search-a11y-launch-config-selected = Selected { $name }.
search-a11y-launch-config-help = Press enter to use this launch configuration.
search-a11y-session-selected = Selected { $prompt }. { $description }.
search-a11y-session-help = Press enter to navigate to this session.
search-a11y-new-session-selected = Selected { $description }.
search-a11y-new-session-help = Press enter to launch this session.
search-a11y-repo-label = Repo: { $path }
search-a11y-section-label = Section: { $title }
search-a11y-tab-selected = Selected tab: { $title }.
search-a11y-tab-help = Press enter to navigate to tab: { $title }.
search-a11y-workflow-label = Workflow: { $name }

## -- Command palette toast messages ---

search-toast-cannot-switch-conv = Cannot switch conversations while agent is monitoring a command.
search-toast-cannot-start-conv = Cannot start a new conversation while agent is monitoring a command.

## -- Command search result accessibility ---

search-result-executed = Result executed
search-navigate-output = Press Cmd-Up to navigate to the command's output.
search-result-accepted = Result accepted.
search-edit-command-hint = You can edit the command here before pressing Enter to execute it.

## -- Command search upgrade link ---

search-upgrade-label = Upgrade

## -- Command search login-gated feature ---

search-upgrade-ai-usage = Upgrade AI Usage

## -- Double-prefix aliases for additional search strings ---

search-search-block-no-output = { search-block-no-output }
search-search-rule-label = { search-rule-label }
search-search-code-search-failed = { search-code-search-failed }
search-search-file-directory-label = { search-file-directory-label }
search-search-file-file-label = { search-file-file-label }
search-search-file-navigate-directory = { search-file-navigate-directory }
search-search-file-open-file = { search-file-open-file }
search-search-create-file-display = { search-create-file-display }
search-search-create-file-a11y-label = { search-create-file-a11y-label }
search-search-create-file-a11y-help = { search-create-file-a11y-help }
search-search-notebook-a11y-label = { search-notebook-a11y-label }
search-search-env-var-a11y-label = { search-env-var-a11y-label }
search-search-command-search-a11y-desc = { search-command-search-a11y-desc }
search-search-diff-uncommitted = { search-diff-uncommitted }
search-search-diff-vs-main = { search-diff-vs-main }
search-search-diff-vs-branch = { search-diff-vs-branch }
search-search-diff-uncommitted-desc = { search-diff-uncommitted-desc }
search-search-diff-vs-main-desc = { search-diff-vs-main-desc }
search-search-diff-vs-branch-desc = { search-diff-vs-branch-desc }
search-search-category-files = { search-category-files }
search-search-category-commands = { search-category-commands }
search-search-category-blocks = { search-category-blocks }
search-search-category-workflows = { search-category-workflows }
search-search-category-notebooks = { search-category-notebooks }
search-search-category-plans = { search-category-plans }
search-search-category-diffs = { search-category-diffs }
search-search-category-docs = { search-category-docs }
search-search-category-tasks = { search-category-tasks }
search-search-category-rules = { search-category-rules }
search-search-category-servers = { search-category-servers }
search-search-category-terminal = { search-category-terminal }
search-search-category-web = { search-category-web }
search-search-category-recent-diff = { search-category-recent-diff }
search-search-category-recent-block = { search-category-recent-block }
search-search-category-code = { search-category-code }
search-search-category-diff-sets = { search-category-diff-sets }
search-search-category-conversations = { search-category-conversations }
search-search-category-skills = { search-category-skills }
search-search-section-active-pane = { search-section-active-pane }
search-search-section-other-active = { search-section-other-active }
search-search-section-past = { search-section-past }
search-search-fork-current-conversation = { search-fork-current-conversation }
search-search-fork-conversation-tooltip = { search-fork-conversation-tooltip }
search-search-new-conversation = { search-new-conversation }
search-search-nav-completed = { search-nav-completed }
search-search-nav-empty-session = { search-nav-empty-session }
search-search-palette-placeholder = { search-palette-placeholder }
search-search-palette-no-results = { search-palette-no-results }
search-search-a11y-conversation-label = { search-a11y-conversation-label }
search-search-a11y-conversation-nav = { search-a11y-conversation-nav }
search-search-a11y-fork-conversation = { search-a11y-fork-conversation }
search-search-a11y-new-conversation = { search-a11y-new-conversation }
search-search-a11y-launch-config-selected = { search-a11y-launch-config-selected }
search-search-a11y-launch-config-help = { search-a11y-launch-config-help }
search-search-a11y-session-selected = { search-a11y-session-selected }
search-search-a11y-session-help = { search-a11y-session-help }
search-search-a11y-new-session-selected = { search-a11y-new-session-selected }
search-search-a11y-new-session-help = { search-a11y-new-session-help }
search-search-a11y-repo-label = { search-a11y-repo-label }
search-search-a11y-section-label = { search-a11y-section-label }
search-search-a11y-tab-selected = { search-a11y-tab-selected }
search-search-a11y-tab-help = { search-a11y-tab-help }
search-search-a11y-workflow-label = { search-a11y-workflow-label }
search-search-toast-cannot-switch-conv = { search-toast-cannot-switch-conv }
search-search-toast-cannot-start-conv = { search-toast-cannot-start-conv }
search-search-result-executed = { search-result-executed }
search-search-navigate-output = { search-navigate-output }
search-search-result-accepted = { search-result-accepted }
search-search-edit-command-hint = { search-edit-command-hint }
search-search-upgrade-label = { search-upgrade-label }
search-search-upgrade-ai-usage = { search-upgrade-ai-usage }
