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

slash-commands-slash-command-requires-ai = { $name } requires AI to be enabled
slash-commands-slash-command-file-not-found = File not found: { $path }
slash-commands-slash-command-no-conversation-export = No active conversation to export

## -- Double-prefix aliases --------------------------------------------------

## -- Missing keys added for i18n completeness --

slash-commands-slash-command-desc = Search commands and workflows

## -- Slash command toast/error strings --

slash-rename-tab-missing-name = Please provide a tab name after /rename-tab
slash-set-tab-color-missing = Please provide a color after /set-tab-color ({$options})
slash-unknown-tab-color = Unknown tab color '{$arg}'. Use one of: {$options}.
slash-create-project-missing-desc = Please describe the project you want to create after /create-new-project
slash-open-file-unsupported = The /open-file command is not supported in this build
slash-export-clipboard-success = Conversation exported to clipboard
slash-export-file-unsupported-web = Export conversation to file unsupported in web
slash-session-already-shared = Session is already being shared
slash-cost-no-active-conversation = Cannot show conversation cost: no active conversation
slash-cost-conversation-empty = Cannot show conversation cost: conversation is empty
slash-cost-conversation-in-progress = Cannot show conversation cost: conversation is in progress
slash-handoff-no-source-content = Nothing to hand off -- start a conversation first.
slash-fork-requires-active-conversation = /fork requires an active conversation
slash-continue-locally-requires-active = /continue-locally requires an active conversation
slash-fork-and-compact-requires-active = /fork-and-compact requires an active conversation
slash-compact-and-requires-active = /compact-and requires an active conversation
slash-queue-requires-active = /queue requires an active conversation
slash-queue-requires-prompt = /queue requires a prompt argument
slash-tooltip-continue-locally = Continue locally
slash-tooltip-fork-conversation = Fork conversation

## -- Additional slash command strings --

slash-cannot-start-while-running = cannot start new conversation while terminal command is running
slash-rename-conversation-requires-active = /rename-conversation requires an active conversation

## -- Section header strings --

section-commands = Commands
section-skills = Skills
section-prompts = Prompts

## -- Search item strings --

slash-or =  or
