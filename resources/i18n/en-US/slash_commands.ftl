# =============================================================================
# slash_commands.ftl — Slash command strings
# =============================================================================
# Message IDs: slash-commands-{id}
# Used in app/src/search/slash_command_menu/static_commands/commands.rs
# =============================================================================

## -- Conversation commands ---------------------------------------------------

slash-commands-start-new-conversation = Start a new conversation
slash-commands-start-new-conversation-alias = Start a new conversation (alias for /agent)
slash-commands-start-new-cloud-agent-conversation = Start a new cloud agent conversation
slash-commands-fork-conversation = Fork the current conversation in a new pane or a new tab
slash-commands-fork-from-query = Fork conversation from a specific query
slash-commands-fork-and-compact = Fork current conversation and compact it in the forked copy
slash-commands-continue-locally = Continue this cloud conversation locally
slash-commands-handoff-to-cloud = Hand off this conversation to a cloud agent
slash-commands-compact-free-context = Free up context by summarizing convo history
slash-commands-compact-and-follow-up = Compact conversation and then send a follow-up prompt
slash-commands-queue-prompt = Queue a prompt to send after the agent finishes responding
slash-commands-rewind-conversation = Rewind to a previous point in the conversation
slash-commands-open-conversation-history = Open conversation history

## -- Project / codebase commands --------------------------------------------

slash-commands-index-codebase = Index this codebase
slash-commands-index-and-generate-agents-md = Index this codebase and generate an AGENTS.md file
slash-commands-open-project-rules = Open the project rules file (AGENTS.md)
slash-commands-switch-indexed-repo = Switch to another indexed repository
slash-commands-open-code-review = Open code review

## -- Agent configuration commands -------------------------------------------

slash-commands-switch-base-model = Switch the base agent model
slash-commands-switch-cloud-host = Switch the cloud agent execution host
slash-commands-switch-cloud-harness = Switch the cloud agent harness
slash-commands-switch-cloud-environment = Switch the cloud agent environment
slash-commands-switch-execution-profile = Switch the active execution profile
slash-commands-prompt-research-and-plan = Prompt the agent to do some research and create a plan for a task
slash-commands-orchestrate-subtasks = Break a task into subtasks and run them in parallel with multiple agents

## -- Skill / prompt / rule commands -----------------------------------------

slash-commands-open-file-in-editor = Open a file in Warp's code editor
slash-commands-open-skill-file = Open a skill's markdown file in Warp's built-in editor
slash-commands-invoke-skill = Invoke a skill
slash-commands-add-agent-prompt = Add new Agent prompt
slash-commands-add-global-rule = Add a new global rule for the agent
slash-commands-view-all-rules = View all of your global and project rules
slash-commands-search-saved-prompts = Search saved prompts

## -- MCP commands -----------------------------------------------------------

slash-commands-add-mcp-server = Add a new MCP server via the MCP settings page
slash-commands-open-mcp-servers = Open MCP servers

## -- Environment / sandbox commands -----------------------------------------

slash-commands-create-oz-environment = Create an Oz environment (Docker image + repos) via guided setup
slash-commands-create-docker-sandbox = Create a new docker sandbox terminal session
slash-commands-walk-through-new-project = Have Oz walk you through creating a new coding project

## -- Settings / billing commands --------------------------------------------

slash-commands-open-settings-toml = Open settings file (TOML)
slash-commands-open-billing-usage = Open billing and usage settings
slash-commands-toggle-credit-usage = Toggle credit usage details
slash-commands-open-latest-changelog = Open the latest changelog

## -- Feedback / PR commands -------------------------------------------------

slash-commands-send-feedback = Send feedback
slash-commands-pull-pr-comments = Pull GitHub PR review comments

## -- Export commands ---------------------------------------------------------

slash-commands-export-clipboard-markdown = Export current conversation to clipboard in markdown format
slash-commands-export-markdown-file = Export current conversation to a markdown file

## -- Remote control ---------------------------------------------------------

slash-commands-start-remote-control = Start remote control for this session

## -- Tab commands -----------------------------------------------------------

slash-commands-rename-current-tab = Rename the current tab
slash-commands-set-tab-color = Set the color of the current tab

## -- Binding description --

slash-commands-binding-desc = Slash command: { $name }

slash-command-requires-ai = { $name } requires AI to be enabled
slash-command-file-not-found = File not found: { $path }
slash-command-no-conversation-export = No active conversation to export

## -- Double-prefix aliases --------------------------------------------------

slash_commands-slash-commands-binding-desc = { slash-commands-binding-desc }
slash_commands-slash-commands-open-file-in-editor = { slash-commands-open-file-in-editor }
slash-commands-slash-commands-start-new-conversation = { slash-commands-start-new-conversation }
slash-commands-slash-commands-start-new-conversation-alias = { slash-commands-start-new-conversation-alias }
slash-commands-slash-commands-start-new-cloud-agent-conversation = { slash-commands-start-new-cloud-agent-conversation }
slash-commands-slash-commands-fork-conversation = { slash-commands-fork-conversation }
slash-commands-slash-commands-fork-from-query = { slash-commands-fork-from-query }
slash-commands-slash-commands-fork-and-compact = { slash-commands-fork-and-compact }
slash-commands-slash-commands-continue-locally = { slash-commands-continue-locally }
slash-commands-slash-commands-handoff-to-cloud = { slash-commands-handoff-to-cloud }
slash-commands-slash-commands-compact-free-context = { slash-commands-compact-free-context }
slash-commands-slash-commands-compact-and-follow-up = { slash-commands-compact-and-follow-up }
slash-commands-slash-commands-queue-prompt = { slash-commands-queue-prompt }
slash-commands-slash-commands-rewind-conversation = { slash-commands-rewind-conversation }
slash-commands-slash-commands-open-conversation-history = { slash-commands-open-conversation-history }
slash-commands-slash-commands-index-codebase = { slash-commands-index-codebase }
slash-commands-slash-commands-index-and-generate-agents-md = { slash-commands-index-and-generate-agents-md }
slash-commands-slash-commands-open-project-rules = { slash-commands-open-project-rules }
slash-commands-slash-commands-switch-indexed-repo = { slash-commands-switch-indexed-repo }
slash-commands-slash-commands-open-code-review = { slash-commands-open-code-review }
slash-commands-slash-commands-switch-base-model = { slash-commands-switch-base-model }
slash-commands-slash-commands-switch-cloud-host = { slash-commands-switch-cloud-host }
slash-commands-slash-commands-switch-cloud-harness = { slash-commands-switch-cloud-harness }
slash-commands-slash-commands-switch-cloud-environment = { slash-commands-switch-cloud-environment }
slash-commands-slash-commands-switch-execution-profile = { slash-commands-switch-execution-profile }
slash-commands-slash-commands-prompt-research-and-plan = { slash-commands-prompt-research-and-plan }
slash-commands-slash-commands-orchestrate-subtasks = { slash-commands-orchestrate-subtasks }
slash-commands-slash-commands-open-skill-file = { slash-commands-open-skill-file }
slash-commands-slash-commands-invoke-skill = { slash-commands-invoke-skill }
slash-commands-slash-commands-add-agent-prompt = { slash-commands-add-agent-prompt }
slash-commands-slash-commands-add-global-rule = { slash-commands-add-global-rule }
slash-commands-slash-commands-view-all-rules = { slash-commands-view-all-rules }
slash-commands-slash-commands-search-saved-prompts = { slash-commands-search-saved-prompts }
slash-commands-slash-commands-add-mcp-server = { slash-commands-add-mcp-server }
slash-commands-slash-commands-open-mcp-servers = { slash-commands-open-mcp-servers }
slash-commands-slash-commands-create-oz-environment = { slash-commands-create-oz-environment }
slash-commands-slash-commands-create-docker-sandbox = { slash-commands-create-docker-sandbox }
slash-commands-slash-commands-walk-through-new-project = { slash-commands-walk-through-new-project }
slash-commands-slash-commands-open-settings-toml = { slash-commands-open-settings-toml }
slash-commands-slash-commands-open-billing-usage = { slash-commands-open-billing-usage }
slash-commands-slash-commands-toggle-credit-usage = { slash-commands-toggle-credit-usage }
slash-commands-slash-commands-open-latest-changelog = { slash-commands-open-latest-changelog }
slash-commands-slash-commands-send-feedback = { slash-commands-send-feedback }
slash-commands-slash-commands-pull-pr-comments = { slash-commands-pull-pr-comments }
slash-commands-slash-commands-export-clipboard-markdown = { slash-commands-export-clipboard-markdown }
slash-commands-slash-commands-export-markdown-file = { slash-commands-export-markdown-file }
slash-commands-slash-commands-start-remote-control = { slash-commands-start-remote-control }
slash-commands-slash-commands-rename-current-tab = { slash-commands-rename-current-tab }
slash-commands-slash-commands-set-tab-color = { slash-commands-set-tab-color }
slash_commands-slash-command-requires-ai = { slash-command-requires-ai }
slash_commands-slash-command-file-not-found = { slash-command-file-not-found }
slash_commands-slash-command-no-conversation-export = { slash-command-no-conversation-export }
