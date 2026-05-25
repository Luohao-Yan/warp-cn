# =============================================================================
# ai_assistant.ftl — AI assistant / agent strings
# =============================================================================
# Message IDs: ai_assistant-ai-{id}
# Used in app/src/ai_assistant/*.rs and app/src/ai/*.rs
# =============================================================================

## -- Agent mode labels --------------------------------------------------------

ai_assistant-ai-agent-mode-terminal = Terminal
ai_assistant-ai-agent-mode-agent = Agent
ai_assistant-ai-agent-mode-cloud-agent = Cloud Oz

## -- Chat / conversation ------------------------------------------------------

ai_assistant-ai-chat-placeholder = Ask anything…
ai_assistant-ai-chat-send-label = Send
ai_assistant-ai-chat-stop-label = Stop
ai_assistant-ai-chat-clear-label = Clear conversation
ai_assistant-ai-chat-thinking-label = Thinking…
ai_assistant-ai-chat-error-label = Something went wrong. Please try again.
ai_assistant-ai-chat-retry-label = Retry
ai_assistant-ai-chat-copy-response = Copy response
ai_assistant-ai-chat-insert-response = Insert into terminal
ai_assistant-ai-chat-new-conversation = New conversation

## -- Model selection ----------------------------------------------------------

ai_assistant-ai-model-select-label = Model:
ai_assistant-ai-model-fast-label = Fast
ai_assistant-ai-model-smart-label = Smart
ai_assistant-ai-model-custom-label = Custom

## -- Context chips -----------------------------------------------------------

ai_assistant-ai-context-add-file = Add file
ai_assistant-ai-context-add-folder = Add folder
ai_assistant-ai-context-add-web = Add web page
ai_assistant-ai-context-attached-files = Attached files
ai_assistant-ai-context-clear-all = Clear all

## -- Autodetection -----------------------------------------------------------

ai_assistant-ai-natural-language-enabled = Natural language detection enabled
ai_assistant-ai-natural-language-disabled = Natural language detection disabled
ai_assistant-ai-command-denylist-hint = Commands excluded from AI autodetection

## -- Agent management view filter labels and options --------------------------

ai_assistant-ai-filter-status-label = Status
ai_assistant-ai-filter-status-all = All
ai_assistant-ai-filter-status-working = Working
ai_assistant-ai-filter-status-done = Done
ai_assistant-ai-filter-status-failed = Failed
ai_assistant-ai-filter-source-label = Source
ai_assistant-ai-filter-created-on-label = Created on
ai_assistant-ai-filter-has-artifact-label = Has artifact
ai_assistant-ai-filter-harness-label = Harness
ai_assistant-ai-filter-environment-label = Environment
ai_assistant-ai-filter-created-by-label = Created by
ai_assistant-ai-filter-last-24-hours = Last 24 hours
ai_assistant-ai-filter-past-3-days = Past 3 days
ai_assistant-ai-filter-last-week = Last week
ai_assistant-ai-filter-pull-request = Pull Request
ai_assistant-ai-filter-plan = Plan
ai_assistant-ai-filter-screenshot = Screenshot
ai_assistant-ai-filter-file = File
ai_assistant-ai-filter-unknown = Unknown
ai_assistant-ai-filter-clear-filters = Clear filters
ai_assistant-ai-filter-clear-all = Clear all
ai_assistant-ai-filter-no-results = No results match your filters
ai_assistant-ai-filter-all = All
ai_assistant-ai-filter-none = None
ai_assistant-ai-environment-label = Environment

## -- AI document view overflow menu items -----------------------------------

ai_assistant-ai-doc-copy-link = Copy link
ai_assistant-ai-doc-show-in-warp-drive = Show in Warp Drive
ai_assistant-ai-doc-save-as-markdown = Save as markdown file
ai_assistant-ai-doc-attach-to-active-session = Attach to active session
ai_assistant-ai-doc-copy-plan-id = Copy plan ID

## -- Misc ---------------------------------------------------------------------

ai_assistant-ai-os-not-available = An AI provider is not available on this operating system
ai_assistant-ai-provider-not-configured = AI provider not configured
ai_assistant-ai-configure-provider = Configure AI provider
ai-invalid-file-name = Invalid File Name
ai-review-comment = Review Comment
ai-invalid-api-key-for-provider = Invalid API key for { $provider }

## -- Agent management view / ActionButtons -------------------------------------

ai_assistant-ai-all = All
ai_assistant-ai-all-tooltip = View your agent tasks plus all shared team tasks
ai_assistant-ai-personal = Personal
ai_assistant-ai-personal-tooltip = View agent tasks you created
ai_assistant-ai-view-agents = View Agents
ai_assistant-ai-clear-filters = Clear filters
ai_assistant-ai-clear-all = Clear all
ai_assistant-ai-search = Search
ai_assistant-ai-new-agent = New agent
ai_assistant-ai-unknown = Unknown
ai_assistant-ai-get-started = Get started
ai_assistant-ai-visit-oz = Visit Oz
ai_assistant-ai-runs = Runs
ai_assistant-ai-loading-agents = Loading agents...
ai_assistant-ai-no-filter-results = No results matched your filters
ai_assistant-ai-created-on = Created on
ai_assistant-ai-has-artifact = Has artifact
ai_assistant-ai-pull-request = Pull Request
ai_assistant-ai-plan = Plan
ai_assistant-ai-screenshot = Screenshot
ai_assistant-ai-file = File
ai_assistant-ai-none = None
ai_assistant-ai-last-24-hours = Last 24 hours
ai_assistant-ai-past-3-days = Past 3 days
ai_assistant-ai-last-week = Last week
ai_assistant-ai-environment = Environment
ai_assistant-ai-created-by = Created by
ai_assistant-ai-session-expired = Session expired
ai_assistant-ai-no-session-available = No session available
ai_assistant-ai-agent-label = Agent
ai_assistant-ai-executor-label = Executor
ai_assistant-ai-loading-cloud-agent-runs = Loading cloud agent runs

## -- Agent management / Notifications ------------------------------------------

ai_assistant-ai-mark-all-as-read = Mark all as read
ai_assistant-ai-notifications-title = Notifications
ai_assistant-ai-no-notifications = No notifications
ai_assistant-ai-close-tooltip = Close

## -- Cloud setup guide ---------------------------------------------------------

ai_assistant-ai-cloud-agents-getting-started = Getting started with Oz cloud agents
ai_assistant-ai-cloud-agents-subtitle = Start Oz cloud agents directly in Warp from an integration (Linear, Slack), with an event (GitHub, built-in schedule), or programmatically with the Oz SDK or CLI.
ai_assistant-ai-check-out-the = Check out the
ai_assistant-ai-oz-documentation = Oz documentation
ai_assistant-ai-to-learn-more =  to learn more.
ai_assistant-ai-quick-start-visit = Quick start: Visit oz.warp.dev for a UI-based setup experience.
ai_assistant-ai-manual-setup-create-integration = Manual setup: Create a Slack or Linear integration with the Oz CLI
ai_assistant-ai-create-an-environment = Create an environment
ai_assistant-ai-first-set-up-environment = First, set up an environment to create an integration.
ai_assistant-ai-use-warps-env-setup = Use Warp's environment setup command to have an agent help you through it.
ai_assistant-ai-visit-docs = Visit docs
ai_assistant-ai-or-supply-docker-image = Or, supply your own existing docker image.
ai_assistant-ai-create-an-integration = Create an integration
ai_assistant-ai-integrate-slack-linear = Integrate Slack or Linear to assign Warp's Agent tasks with @Warp.
ai_assistant-ai-wf-create-environment = Create Environment
ai_assistant-ai-wf-create-environment-cli = Create Environment (CLI)
ai_assistant-ai-wf-create-slack-integration = Create Slack Integration
ai_assistant-ai-wf-create-linear-integration = Create Linear Integration
ai_assistant-ai-wf-create-env-arg-repo = GitHub link or local file path of the repository
ai_assistant-ai-wf-create-env-cli-arg-name = Name of the environment
ai_assistant-ai-wf-create-env-cli-arg-image = Docker image to use for the environment
ai_assistant-ai-wf-integration-arg-env-id = ID of the environment to integrate

## -- AI document view ----------------------------------------------------------

ai_assistant-ai-show-version-history-tooltip = Show version history
ai_assistant-ai-update-agent = Update Agent
ai_assistant-ai-restore = Restore
ai_assistant-ai-save-and-sync-tooltip = Save and auto-sync this plan to your Warp Drive
ai_assistant-ai-plan-synced-message = This plan is synced to your Warp Drive and will auto save any edits you make.
ai_assistant-ai-copy-link = Copy link
ai_assistant-ai-show-in-warp-drive = Show in Warp Drive
ai_assistant-ai-save-as-markdown = Save as markdown file
ai_assistant-ai-attach-to-active-session = Attach to active session
ai_assistant-ai-copy-plan-id = Copy plan ID
ai_assistant-ai-link-copied-toast = Link copied to clipboard
ai_assistant-ai-plan-id-copied-toast = Plan ID copied to clipboard
ai_assistant-ai-planning-document = Planning document
ai_assistant-ai-untitled = Untitled

## -- Agent input footer / ActionButtons and tooltips ---------------------------

ai_assistant-ai-enable-nld-tooltip = Enable terminal command autodetection
ai_assistant-ai-disable-nld-tooltip = Disable terminal command autodetection
ai_assistant-ai-fast-forward-on-tooltip = Turn off auto-approve all agent actions
ai_assistant-ai-fast-forward-off-tooltip = Auto-approve all agent actions for this task
ai_assistant-ai-start-remote-control-tooltip = Start remote control
ai_assistant-ai-start-remote-control-login-tooltip = Log in to use /remote-control
ai_assistant-ai-voice-input-tooltip = Voice input
ai_assistant-ai-attach-file-tooltip = Attach file
ai_assistant-ai-hand-off-to-cloud-tooltip = Hand off to cloud
ai_assistant-ai-file-explorer-label = File explorer
ai_assistant-ai-file-explorer-tooltip = Open file explorer
ai_assistant-ai-rich-input-label = Rich Input
ai_assistant-ai-rich-input-tooltip = Open Rich Input
ai_assistant-ai-hide-rich-input-label = Hide Rich Input
ai_assistant-ai-hide-rich-input-tooltip = Hide Rich Input
ai_assistant-ai-open-coding-agent-settings-tooltip = Open coding agent settings
ai_assistant-ai-enable-notifications-label = Enable notifications
ai_assistant-ai-install-plugin-tooltip = Install the Warp plugin to enable rich agent notifications within Warp
ai_assistant-ai-notifications-setup-instructions-label = Notifications setup instructions
ai_assistant-ai-notifications-setup-instructions-tooltip = View instructions to install the Warp plugin
ai_assistant-ai-update-warp-plugin-label = Update Warp plugin
ai_assistant-ai-update-plugin-tooltip = A new version of the Warp plugin is available
ai_assistant-ai-plugin-update-instructions-label = Plugin update instructions
ai_assistant-ai-plugin-update-instructions-tooltip = View instructions to update the Warp plugin
ai_assistant-ai-dismiss-tooltip = Dismiss
ai_assistant-ai-stop-sharing-label = Stop sharing
ai_assistant-ai-stop-sharing-tooltip = Stop sharing
ai_assistant-ai-context-window-usage-tooltip = Context window usage

## -- Pending user query block --------------------------------------------------

ai_assistant-ai-remove-queued-prompt = Remove queued prompt
ai_assistant-ai-send-now = Send now
ai_assistant-ai-queued = Queued

## -- Block.rs ActionButton labels and tooltips ---------------------------------

ai_assistant-ai-open-in-github-tooltip = Open in GitHub
ai_assistant-ai-open-in-code-review = Open in code review
ai_assistant-ai-manage-rules = Manage rules
ai_assistant-ai-review-changes = Review changes
ai_assistant-ai-open-all-in-code-review = Open all in code review
ai_assistant-ai-dismiss-suggestion = Dismiss
ai_assistant-ai-dont-show-again = Don't show again
ai_assistant-ai-rewind = Rewind
ai_assistant-ai-rewind-tooltip = Rewind to before this block
ai_assistant-ai-cancel = Cancel
ai_assistant-ai-copied-to-clipboard = Copied to clipboard
ai_assistant-ai-thank-you-feedback = Thank you for your feedback!
ai_assistant-ai-follow-up-conversation-tooltip = Continue an existing conversation

## -- Suggested rule modal ------------------------------------------------------

ai_assistant-ai-suggested-rule-header = Suggested rule
ai_assistant-ai-add-rule = Add rule
ai_assistant-ai-edit-rule = Edit rule
ai_assistant-ai-editing-disabled-offline = Editing is disabled while offline.
ai_assistant-ai-name-label = Name
ai_assistant-ai-rule-label = Rule

## -- Summarization cancel dialog -----------------------------------------------

ai_assistant-ai-cancel-summarization = Cancel summarization
ai_assistant-ai-continue-summarization = Continue summarization

## -- Telemetry banner ----------------------------------------------------------

ai_assistant-ai-telemetry-title-existing = We've updated our telemetry policy.
ai_assistant-ai-telemetry-title-new = Help us improve Warp.
ai_assistant-ai-telemetry-description = We may collect certain console interactions to improve Warp's AI features. You can opt out at any time.
ai_assistant-ai-manage-privacy-settings = Manage privacy settings

## -- AWS Bedrock credentials error ---------------------------------------------

ai_assistant-ai-aws-auth-failed = Failed to authenticate with AWS Bedrock when using { $model_name }. Run `{ $login_command }` to refresh credentials.
ai_assistant-ai-always-run-auto = Always run automatically
ai_assistant-ai-refresh-aws-credentials = Refresh AWS Credentials
ai_assistant-ai-running-login-command = Running `{ $login_command }`...
ai_assistant-ai-configure = Configure
ai-aws-credentials-not-found = AWS credentials were not found for { $profile_reference }. Log in with the AWS CLI or update your AWS credentials configuration, then refresh.
ai-aws-credentials-timeout = Timed out while loading AWS credentials. Refresh and try again.
ai-aws-credentials-invalid-config = { $profile_reference } is invalid or incomplete in your local AWS configuration. Update your AWS profile settings and credentials, then refresh.
ai-aws-credentials-provider-error = Unable to load AWS credentials from your configured provider. Refresh your AWS login and try again.
ai-aws-credentials-unexpected-error = Unexpected error while loading AWS credentials. Refresh your AWS login and try again.
ai-aws-credentials-unable-to-load = Unable to load AWS credentials. Refresh your AWS login and try again.
ai-aws-credentials-refresh-interrupted = Credential refresh was interrupted
ai-aws-profile-reference-default = the default AWS profile
ai-aws-profile-reference-named = the AWS profile `{ $profile }`
ai-aws-profile-reference-default-capitalized = The default AWS profile
ai-aws-profile-reference-named-capitalized = The AWS profile `{ $profile }`

## -- Ask user question view ----------------------------------------------------

ai_assistant-ai-type-answer = Type your answer and press Enter
ai_assistant-ai-skip-all = Skip all
ai_assistant-ai-next = Next
ai_assistant-ai-other = Other...
ai_assistant-ai-agent-questions = Agent questions
ai_assistant-ai-questions-unavailable = Questions unavailable
ai_assistant-ai-questions-skipped = Questions skipped
ai_assistant-ai-questions-skipped-autoapprove = Questions skipped due to auto-approve
ai_assistant-ai-allow-agent-questions = Allow the agent to ask questions:
ai_assistant-ai-answered-question = Answered question
ai_assistant-ai-answered-all-questions = Answered all { $total } questions
ai_assistant-ai-skipped = Skipped

## -- Execution profile editor --------------------------------------------------

ai_assistant-ai-profile-editor-header = Profile Editor
ai_assistant-ai-profile-agent-decides = Agent decides
ai_assistant-ai-profile-always-allow = Always allow
ai_assistant-ai-profile-always-ask = Always ask
ai_assistant-ai-profile-ask-on-first-write = Ask on first write
ai_assistant-ai-profile-never = Never
ai_assistant-ai-profile-never-ask = Never ask
ai_assistant-ai-profile-ask-unless-autoapprove = Ask unless auto-approve
ai_assistant-ai-profile-frontier-unavailable = Frontier models are unavailable on the free plan. Please upgrade
ai_assistant-ai-edit-profile = Edit profile
ai_assistant-ai-delete-profile = Delete profile
ai_assistant-ai-select-mcp-servers = Select MCP servers
ai_assistant-ai-profile-eg-ls = e.g. ls .*
ai_assistant-ai-profile-eg-rm = e.g. rm .*
ai_assistant-ai-profile-eg-repo = e.g. ~/code-repos/repo
ai_assistant-ai-profile-eg-yolo = e.g. "YOLO code"

## -- Requested command ---------------------------------------------------------

ai_assistant-ai-reject = Reject
ai_assistant-ai-run = Run
ai_assistant-ai-edit-command = Edit
ai_assistant-ai-done = Done
ai_assistant-ai-generating-command = Generating command...
ai_assistant-ai-agent-monitoring-command = Agent is monitoring command...
ai_assistant-ai-agent-needs-input = The agent needs your input to continue
ai_assistant-ai-user-in-control = User in control.
ai_assistant-ai-user-stopped-agent = Paused agent. User in control.
ai_assistant-ai-user-take-control = User in control
ai_assistant-ai-agent-errored = Something went wrong with the agent. Take over control.
ai_assistant-ai-viewing-command-detail = Viewing command detail
ai_assistant-ai-viewing-mcp-tool-detail = Viewing MCP tool call detail
ai_assistant-ai-ok-run-command = OK if I run this command and read the output?
ai_assistant-ai-ok-call-mcp-tool = OK if I call this MCP tool?
ai_assistant-ai-edit-requested-command = Edit requested command
ai_assistant-ai-auto-approve = Auto-approve
ai_assistant-ai-copied-from = Copied from

## -- Code diff view ------------------------------------------------------------

ai_assistant-ai-expand = Expand
ai_assistant-ai-collapse = Collapse
ai_assistant-ai-open-config = Open config
ai_assistant-ai-no-file-name = No file name
ai_assistant-ai-file-renamed-no-changes = File renamed (no changes)
ai_assistant-ai-dont-show-banners = Don't show suggested code banners again
ai_assistant-ai-manage-banner-settings = Manage suggested code banner settings
ai-settings-ai = Settings > AI
ai_assistant-ai-settings-ai = { ai-settings-ai }
ai_assistant-ai-requested-edit = Requested edit
ai_assistant-ai-review-changes-tooltip = Review changes
ai_assistant-ai-expand-tooltip = Expand
ai_assistant-ai-collapse-tooltip = Collapse
ai_assistant-ai-edit-code-diff = Edit code diff
ai_assistant-ai-refine = Refine
ai_assistant-ai-dismiss = Dismiss
ai_assistant-ai-accept-and-continue = Accept and continue with agent
ai_assistant-ai-iterate-with-agent = Iterate with agent
ai_assistant-ai-file-new = { $file_name } (new)
ai_assistant-ai-file-deleted = { $file_name } (deleted)
ai_assistant-ai-failed-revert = Failed to revert changes to { $file_name }
ai_assistant-ai-file-suffix = file
ai_assistant-ai-renamed-suffix = (renamed)
ai_assistant-ai-deleted-file-suffix = (deleted file)

## -- Suggested unit tests ------------------------------------------------------

ai_assistant-ai-generate-tests = Generate tests
ai_assistant-ai-dismiss-tests = Dismiss
ai_assistant-ai-dont-show-suggested-banners = Don't show suggested code banners again
ai_assistant-ai-manage-suggested-settings = Settings > AI

## -- Toast messages ---------------------------------------------------------------

ai_assistant-ai-copied-branch-name = Copied branch name
ai_assistant-ai-failed-prepare-file-download = Failed to prepare file download.
ai_assistant-ai-downloaded-file = Downloaded { $filename }.
ai_assistant-ai-failed-download-file = Failed to download { $filename }.
ai_assistant-ai-plugin-install-failed-toast = Could not automatically install plugin. Please click the chip again for manual installation steps.
ai_assistant-ai-plugin-installed-restart-toast = Warp plugin installed. Please restart the session to activate.
ai_assistant-ai-plugin-updated-restart-toast = Warp plugin updated. Please restart the session to activate.
ai_assistant-ai-installing-warp-plugin = Installing Warp plugin...
ai_assistant-ai-failed-install-warp-plugin = Failed to install Warp plugin
ai_assistant-ai-updating-warp-plugin = Updating Warp plugin...
ai_assistant-ai-failed-update-warp-plugin = Failed to update Warp plugin
ai_assistant-ai-voice-microphone-access = Failed to start voice input (you may need to enable Microphone access)
ai_assistant-ai-voice-enabled-toast = Voice input is enabled. You can also press and hold the `{ $key }` key to activate voice input (configure in Settings > AI > Voice)

## -- Facts view ------------------------------------------------------------------

ai_assistant-ai-edit-api-keys = Edit API Keys
ai_assistant-ai-open-file = Open file

## -- Ask user question view ---------------------------------------------------

ai_assistant-ai-type-answer-placeholder = Type your answer and press Enter
ai_assistant-ai-select-all-that-apply =  (select all that apply)
ai_assistant-ai-questions-skipped-auto-approve = Questions skipped due to auto-approve
ai_assistant-ai-allow-agent-ask-questions = Allow the agent to ask questions:
ai_assistant-ai-prev-nav = prev
ai_assistant-ai-next-nav = next
ai_assistant-ai-answered-of-questions = Answered { $answered_count } of { $total } questions
ai_assistant-ai-skipped-answer = Skipped
ai_assistant-ai-question-prefix = Q: { $question }
ai_assistant-ai-answer-prefix = A: { $answer }

## -- Execution profile editor -------------------------------------------------

ai_assistant-ai-profile-editor = Profile Editor
ai_assistant-ai-agent-decides = Agent decides
ai_assistant-ai-always-allow = Always allow
ai_assistant-ai-always-ask = Always ask
ai_assistant-ai-ask-on-first-write = Ask on first write
ai_assistant-ai-never = Never
ai_assistant-ai-never-ask = Never ask
ai_assistant-ai-ask-unless-auto-approve = Ask unless auto-approve
ai_assistant-ai-command-allowlist-placeholder = e.g. ls .*
ai_assistant-ai-command-denylist-placeholder = e.g. rm .*
ai_assistant-ai-directory-allowlist-placeholder = e.g. ~/code-repos/repo
ai_assistant-ai-profile-name-placeholder = e.g. "YOLO code"
ai_assistant-ai-default-profile-name = Default
ai_assistant-ai-upgrade-footer = Frontier models are unavailable on free plans. Upgrade
ai_assistant-ai-upgrade-link = Upgrade

## -- Execution profile editor UI helpers -------------------------------------

ai_assistant-ai-default-profile-name-cannot-change = Default profile name cannot be changed.
ai_assistant-ai-models-section = MODELS
ai_assistant-ai-base-model = Base model
ai_assistant-ai-base-model-desc = This model serves as the primary engine behind the agent. It powers most interactions and invokes other models for tasks like planning or code generation when necessary. Warp may automatically switch to alternate models based on model availability or for auxiliary tasks such as conversation summarization.
ai_assistant-ai-context-window = Context window
ai_assistant-ai-context-window-desc = The base model's working memory — how many tokens of your conversation, code, and documents it can consider at once. Larger windows enable longer conversations and more coherent responses over bigger codebases, at the cost of higher latency and compute usage.
ai_assistant-ai-full-terminal-use-model = Full terminal use model
ai_assistant-ai-full-terminal-use-model-desc = The model used when the agent operates inside interactive terminal applications like database shells, debuggers, REPLs, or dev servers—reading live output and writing commands to the PTY.
ai_assistant-ai-computer-use-model = Computer use model
ai_assistant-ai-computer-use-model-desc = The model used when the agent takes control of your computer to interact with graphical applications through mouse movements, clicks, and keyboard input.
ai_assistant-ai-permissions-section = PERMISSIONS
ai_assistant-ai-apply-code-diffs = Apply code diffs
ai_assistant-ai-read-files = Read files
ai_assistant-ai-execute-commands = Execute commands
ai_assistant-ai-interact-with-running-commands = Interact with running commands
ai_assistant-ai-computer-use = Computer use
ai_assistant-ai-ask-questions = Ask questions
ai_assistant-ai-call-mcp-servers = Call MCP servers
ai_assistant-ai-workspace-override-tooltip = This option is enforced by your organization's settings and cannot be customized.
ai_assistant-ai-directory-allowlist = Directory allowlist
ai_assistant-ai-directory-allowlist-desc = Give the agent file access to certain directories.
ai_assistant-ai-command-allowlist = Command allowlist
ai_assistant-ai-command-allowlist-desc = Regular expressions to match commands that can be automatically executed by Oz.
ai_assistant-ai-command-denylist = Command denylist
ai_assistant-ai-command-denylist-desc = Regular expressions to match commands that Oz should always ask permission to execute.
ai_assistant-ai-mcp-allowlist = MCP allowlist
ai_assistant-ai-mcp-allowlist-desc = MCP servers that are allowed to be called by Oz.
ai_assistant-ai-mcp-denylist = MCP denylist
ai_assistant-ai-mcp-denylist-desc = MCP servers that are not allowed to be called by Oz.
ai_assistant-ai-mcp-server-fallback = MCP Server { $uuid }
ai_assistant-ai-plan-auto-sync = Plan auto-sync
ai_assistant-ai-plan-auto-sync-desc = The plans this agent creates will be automatically added and synced to Warp Drive.
ai_assistant-ai-call-web-tools = Call web tools
ai_assistant-ai-call-web-tools-desc = The agent may use web search when helpful for completing tasks.

## -- Permission descriptions --------------------------------------------------

ai_assistant-ai-permission-agent-decides-desc = The Agent chooses the safest path: acting on its own when confident, and asking for approval when uncertain.
ai_assistant-ai-permission-always-allow-desc = Give the Agent full autonomy — no manual approval ever required.
ai_assistant-ai-permission-always-ask-desc = Require explicit approval before the Agent takes any action.
ai_assistant-ai-permission-ask-on-first-write-desc = The agent will ask for permission the first time it needs to interact with a running command. After that, it will continue automatically for the rest of that command.
ai_assistant-ai-permission-write-always-ask-desc = The agent will always ask for permission to interact with a running command.
ai_assistant-ai-permission-computer-use-never-desc = Computer use tools are disabled and will not be available to the Agent.
ai_assistant-ai-permission-computer-use-always-ask-desc = Require explicit approval before the Agent uses computer use tools.
ai_assistant-ai-permission-computer-use-always-allow-desc = Give the Agent full autonomy to use computer use tools without approval.
ai_assistant-ai-permission-unknown-desc = Unknown setting.
ai_assistant-ai-permission-ask-except-auto-approve-desc = The Agent may ask a question and pause for your response, but will continue automatically when auto-approve is on.
ai_assistant-ai-permission-never-ask-desc = The Agent will not ask questions and will continue with its best judgment.
ai_assistant-ai-permission-always-ask-question-desc = The Agent may ask a question and will pause for your response even when auto-approve is on.

## -- Additional i18n strings for hardcoded UI text --------------------------------

ai_assistant-ai-accept = Accept
ai_assistant-ai-view-in-oz = View in Oz
ai_assistant-ai-view-in-oz-tooltip = View this run in the Oz web app
ai_assistant-ai-initialize-project = Initialize Project
ai_assistant-ai-delete-rule = Delete rule
ai_assistant-ai-choose-your-agent = Choose your agent
ai_assistant-ai-suggested = Suggested
ai_assistant-ai-cloud-agent = Cloud agent
ai_assistant-ai-local-agent = Local agent
ai_assistant-ai-open-conversation = Open conversation
ai_assistant-ai-cancel-task = Cancel task
ai_assistant-ai-fork-conversation = Fork conversation
ai_assistant-ai-view-details = { ai-view-details }
ai_assistant-ai-copy-link-to-run = Copy link to run
ai_assistant-ai-notif-filter-all = All tabs
ai_assistant-ai-notif-filter-unread = Unread
ai_assistant-ai-notif-filter-errors = Errors

# -- Agent type selector --
ai_assistant-ai-cloud-agent-desc = Runs autonomously in a cloud environment you choose. Best for parallel or long-running work.
ai_assistant-ai-local-agent-desc = Runs on your machine and requires supervision. Best for quick, interactive tasks.

## -- Additional AI assistant strings --
ai-feature-name = Warp AI
ai-ask-text = Ask Warp AI
ai-zero-state-script-prompt = Write a script to connect to an AWS EC2 instance.
ai-zero-state-git-prompt = How do I undo the most recent commits in git?
ai-how-do-i-fix = How do I fix this?
ai-show-examples = Show examples.
ai-enter-custom-docker-image = Enter custom Docker image name:
ai-dont-show-suggested-code-banners = Don't show me suggested code banners again
ai-rules-header = Rules
ai-rules-description = Rules enhance the agent by providing structured guidelines that help maintain consistency, enforce best practices, and adapt to specific workflows, including codebases or broader tasks.
ai-search-rules = Search rules
ai-zero-state-text = Once you add a rule, it will be shown here.
ai-zero-state-project-text = Once you generate a WARP.md rules file for a project, it will appear here.
ai-disabled-banner-text = Your rules are disabled and won't be used as context in sessions. You can
ai-disabled-banner-link-text = turn it back on
ai-disabled-banner-text-2 =  anytime.
ai-global-scope-tab = Global
ai-project-based-scope-tab = Project based
ai-rule-name-placeholder = e.g. Rust rules
ai-rule-description-placeholder = e.g. Never use unwrap in Rust
ai-refine = Refine
ai-dismiss = Dismiss
ai-accept-and-continue = Accept and continue with agent
ai-iterate-with-agent = Iterate with agent
ai-file-new = { $file_name } (new)
ai-file-deleted = { $file_name } (deleted)
ai-failed-revert = Failed to revert changes to { $file_name }
ai-file-suffix = file
ai-renamed-suffix = (renamed)
ai-deleted-file-suffix = (deleted file)

## -- Agent tip strings --

ai-tip-label = Tip:
ai-tip-slash-commands = `/` to open the slash-command menu and access quick agent actions.
ai-tip-toggle-nl-detection = <keybinding> to toggle natural language detection and switch between agent and terminal input.
ai-tip-plan = `/plan` <prompt> to create a plan for the agent before executing.
ai-tip-command-palette = <keybinding> to open the Command Palette and access Warp actions and shortcuts.
ai-tip-store-workflows = Store reusable workflows, notebooks, and prompts in your
ai-tip-redirect-agent = Enter a new prompt to redirect the agent while it's running.
ai-tip-at-context = `@` to add context from files, blocks, or Warp Drive objects to your prompt.
ai-tip-attach-block = <keybinding> to attach the prior command output as agent context.
ai-tip-init-repo = `/init` to index the repo so the agent can understand your codebase.
ai-tip-agent-profiles = Add agent profiles to customize permissions and models per session.
ai-tip-fork-conversation = Right-click a block to fork the conversation from that point.
ai-tip-copy-output = Right-click a block to copy a conversation's output.
ai-tip-drag-image = Drag an image into the pane to attach it as agent context.
ai-tip-interactive-tools = Prompt the agent to control interactive tools like node, python, postgres, gdb, or vim.
ai-tip-code-review = <keybinding> to open the code review panel and review the agent's changes.
ai-tip-add-mcp = `/add-mcp` to add an MCP server to your workspace.
ai-tip-open-mcp = `/open-mcp-servers` to view and share MCP servers with your team.
ai-tip-create-environment = `/create-environment` to turn a repo into a remote docker environment an agent can run in.
ai-tip-add-prompt = `/add-prompt` to create a reusable prompt for repeatable workflows.
ai-tip-add-rule = `/add-rule` to create a global agent rule.
ai-tip-fork = `/fork` to create a fresh copy of the current conversation, optionally with a new prompt.
ai-tip-open-code-review = `/open-code-review` to open the code review panel and inspect agent-generated diffs.
ai-tip-new = `/new` to start a new agent conversation with clean context.
ai-tip-compact = `/compact` to summarize the current conversation and free up space in the context window.
ai-tip-usage = `/usage` to show your current AI credits usage.
ai-tip-oz-command = Use the `oz` command to run an Oz agent in headless mode, useful for remote machines.
ai-tip-selected-text-context = Right-click selected text to attach it as agent context.
ai-tip-agents-md = Use `AGENTS.md` or `CLAUDE.md` to apply project-scoped rules.
ai-tip-paste-url = Paste a URL to attach that webpage as context for the agent.
ai-tip-warpify-ssh = Warpify a remote SSH session to enable Oz inside that environment.
ai-tip-switch-profiles = Switch agent profiles to quickly change models and agent permissions.
ai-tip-init-warp-md = `/init` to generate a `WARP.md` file and define project rules for the agent.
ai-tip-auto-approve = <keybinding> to auto-approve the agent's commands and diffs for the rest of the session.
ai-tip-cancel-task = <keybinding> to cancel the current agent task.
ai-warp-drive-period = Warp Drive.
ai-tip-voice-input = Hold <keybinding> to speak your prompt directly to the agent.

## -- Output view strings --

ai-conversation-summarized = Conversation summarized
ai-thought-for-duration = Thought for { $duration }
ai-searched = Searched
ai-searching = Searching
ai-conversation-label = conversation
ai-this-conversation = this conversation
ai-sorry-bad-experience-single = Sorry you had a bad experience with this interaction. We've refunded you 1 credit. We appreciate your feedback!
ai-sorry-bad-experience-plural = Sorry you had a bad experience with this interaction. We've refunded you { $count } credits. We appreciate your feedback!
ai-response-wont-count = This response won't count towards your usage.
ai-always-allow-file-access-coding = Always allow file access for coding tasks
ai-always-allow-file-access-repo = Always allow file access for this repo
ai-manage-autonomy-permissions = Manage AI Autonomy permissions
ai-search-in = Search in { $path }
ai-searching-in = Searching in { $path }
ai-no-relevant-files = No relevant files found.
ai-search-failed-not-indexed = Search in { $path } failed because the codebase isn't indexed
ai-search-failed = Search in { $path } failed
ai-search-cancelled = Search in { $path } cancelled
ai-in-path-cancelled =  in { $path } cancelled
ai-in-path =  in { $path }
ai-failed-read-files = Failed to read files
ai-open-skill = Open skill
ai-stopped-task-with-index = Stopped task { $current }/{ $total }: "{ $title }"
ai-stopped-task-with-name = Stopped task: "{ $task_name }"
ai-stopped-task = Stopped task
ai-resume-conversation = Resume conversation
ai-could-not-apply-changes = Could not apply changes to file.
ai-suggestion-edited-in-another-tab = This suggestion is being edited in another tab.
ai-new-conversation-started = New conversation started
ai-continuing-current-conversation = Continuing current conversation
ai-new-conversation-cancelled = New conversation suggestion cancelled
ai-start-a-new-conversation = Start a new conversation
ai-topic-changed = It seems like the topic changed. Would you like to make a new conversation?
ai-the-current-directory = the current directory
ai-grep-for = Grep for
ai-grepping-for = Grepping for
ai-cancelled-grep = Cancelled grep for the following patterns in { $path }
ai-grep-patterns = Grep for the following patterns in { $path }
ai-grepping-patterns = Grepping for the following patterns in { $path }
ai-search-files-match = Search for files that match
ai-finding-files-match = Finding files that match
ai-cancelled-search-files = Cancelled search for files that match the following patterns in { $path }
ai-find-files-match = Find files that match the following patterns in { $path }
ai-finding-files-match = Finding files that match the following patterns in { $path }
ai-comment-addressed = Comment addressed: "{ $content }"
ai-ok-read-mcp-resource = OK if I read this MCP resource?
ai-upload-artifact = Upload artifact: { $file_path }
ai-description-label = Description: { $description }
ai-status-uploaded = Status: uploaded artifact { $artifact_uid }
ai-status-upload-failed = Status: upload failed: { $error }
ai-uploaded-file = Uploaded file: { $filepath }
ai-view-screenshot = View screenshot
ai-ok-computer-control = OK if I use computer control for this task?
ai-references = References
ai-suggestions = Suggestions:
ai-good-response = Good response
ai-bad-response = Bad response
ai-continue-conversation = Continue conversation
ai-fork-conversation = Fork conversation
ai-show-credit-usage = Show credit usage details
ai-debug-output = Debug output
ai-listing-messages = Listing messages
ai-grepping-for-patterns = Grepping for patterns
ai-grepping-for-patterns-with-query = Grepping for patterns: { $query }
ai-reading-messages = Reading { $count } messages

## -- Static prompt suggestion strings --

ai-code-feature-or-fix-bug-in-arg1 = Code a feature or fix a bug in { $arg1 }
ai-help-code-feature-or-fix-bug-in-arg1 = Help me code a feature or fix a bug in { $arg1 }
ai-implement-feature-or-fix-bug-in-arg1 = Implement a feature or fix a bug in { $arg1 }. Ask me for all the details you need.
ai-help-create-pull-request = Help me create a pull request.
ai-help-start-new-project = Help me start a new project
ai-help-start-new-project-ask-details = Help me start a new project. Ask me for all the details you need.
ai-help-start-nodejs-project = Help me start a Node.js project
ai-help-start-nodejs-project-ask-details = Help me start a Node.js project. Ask me for all the details you need.
ai-help-create-new-react-app = Help me create a new React app
ai-help-create-new-react-app-called-arg1 = Help me create a new React app called { $arg1 }. Ask me for all the details you need.
ai-help-create-new-nextjs-app = Help me create a new Next.js app
ai-help-create-new-nextjs-app-called-arg1 = Help me create a new Next.js app called { $arg1 }. Ask me for all the details you need.
ai-help-start-rust-project-for-arg1 = Help me start a Rust project for { $arg1 }
ai-help-start-rust-project-for-arg1-ask-details = Help me start a Rust project for { $arg1 }. Ask me for all the details you need.
ai-help-start-poetry-project-for-arg1 = Help me start a Poetry project for { $arg1 }
ai-help-start-poetry-project-for-arg1-ask-details = Help me start a Poetry project for { $arg1 }. Ask me for all the details you need.
ai-help-start-django-project-for-arg1 = Help me start a Django project for { $arg1 }
ai-help-start-django-project-for-arg1-ask-details = Help me start a Django project for { $arg1 }. Ask me for all the details you need.
ai-help-start-rails-app-for-arg1 = Help me start a Rails app for { $arg1 }
ai-help-start-rails-app-for-arg1-ask-details = Help me start a Rails app for { $arg1 }. Ask me for all the details you need.
ai-help-start-gradle-maven-project = Help me start a Gradle/Maven project
ai-help-start-gradle-maven-project-ask-details = Help me start a Gradle/Maven project. Ask me for all the details you need.
ai-help-start-go-project-for-arg1 = Help me start a Go project for { $arg1 }
ai-help-start-go-project-for-arg1-ask-details = Help me start a Go project for { $arg1 }. Ask me for all the details you need.
ai-help-start-swift-project = Help me start a Swift project
ai-help-start-swift-project-ask-details = Help me start a Swift project. Ask me for all the details you need.
ai-help-start-terraform-configuration = Help me start a Terraform configuration
ai-help-start-terraform-configuration-ask-details = Help me start a Terraform configuration. Ask me for all the details you need.
ai-help-set-up-prisma-in-this-project = Help me set up Prisma in this project
ai-help-set-up-prisma-in-this-project-query = Help me set up Prisma in this project.
ai-help-install-dependencies-for-arg1 = Help me install dependencies for { $arg1 }.
ai-help-set-up-new-ruby-project = Help me set up a new Ruby project
ai-help-set-up-new-ruby-project-ask-details = Help me set up a new Ruby project. Ask me for all the details you need.
ai-help-set-up-modelfile-for-arg1 = Help me set up a Modelfile for { $arg1 }.
ai-help-understand-resource-utilization-in-cluster = Help me understand resource utilization in my cluster.
ai-help-inspect-kubernetes-resources = Help me inspect Kubernetes resources.
ai-help-manage-running-containers = Help me manage running containers.
ai-help-manage-docker-images = Help me manage Docker images.
ai-help-manage-troubleshoot-arg1-docker-compose = Help me manage or troubleshoot { $arg1 } with Docker Compose
ai-help-manage-troubleshoot-arg1-docker-compose-query = Help me manage or troubleshoot { $arg1 } with Docker Compose.
ai-help-configure-containers-to-use-arg1 = Help me configure containers to use { $arg1 }.
ai-help-set-up-customize-vagrant-box-arg1 = Help me set up or customize a Vagrant box { $arg1 }.
ai-help-provision-environment-troubleshoot-vagrant = Help me provision my environment or troubleshoot Vagrant startup.
ai-help-search-code-across-files-for-arg1 = Help me search code across files for { $arg1 }.
ai-help-search-code-across-files-with-arg1 = Help me search code across files with { $arg1 }.
ai-walk-me-through-generating-ssh-key = Walk me through generating an SSH key.

## -- AI assistant panel hardcoded UI strings --

ai_assistant-zero-state-help-text = Shift + ctrl + space a block or text selection to ask Warp AI.
ai_assistant-zero-state-files-prompt = How do I find all files containing specific text?
ai_assistant-init-placeholder-text =  Ask a question...
ai_assistant-followup-placeholder-text =  Type a response or click one above...
ai_assistant-restart-button-text = Restart
ai_assistant-close-warp-ai = Close Warp AI
ai_assistant-focus-terminal-input-from-warp-ai = Focus Terminal Input From Warp AI
ai_assistant-restart-warp-ai = Restart Warp AI
ai_assistant-explain-the-following = Explain the following:\n
ai_assistant-what-should-i-do-next = \nWhat should I do next?
ai_assistant-how-do-i-fix-this-block = \nHow do I fix this?
ai_assistant-i-ran-the-command = I ran the command: `
ai_assistant-and-got-the-following-output = ` and got the following output:\n
ai_assistant-character-limit-exceeded = Character limit exceeded.
ai_assistant-copy-transcript-to-clipboard = Copy transcript to clipboard
ai_assistant-generating-answer = Generating answer...
ai_assistant-ai-responses-can-be-inaccurate = AI responses can be inaccurate.
ai_assistant-warp-ai-might-forget-earlier-answers = Warp AI might forget earlier answers as conversations get long.
ai_assistant-copy-code-to-clipboard = Copy code to clipboard [Cmd + C]
ai_assistant-insert-code-into-terminal-input = Insert code into terminal input [Cmd + Enter]
ai_assistant-save-as-workflow = Save as workflow [Cmd + S]
ai_assistant-copy-answer-to-clipboard = Copy answer to clipboard
ai_assistant-after-time = after { $time }
ai_assistant-later = later
ai_assistant-out-of-credits-upgrade = It seems you're out of credits. Please try again { $next_time }.\n\n[Upgrade]({ $upgrade_url }) for more credits.
ai_assistant-out-of-credits-contact-admin = It seems you're out of credits. Please try again { $next_time }.\n\nContact a team admin to upgrade for more credits.
ai_assistant-out-of-credits = It seems you're out of credits. Please try again { $next_time }.
ai_assistant-technical-difficulties = We're experiencing technical difficulties right now. Please try again later.
ai_assistant-credits-used = Credits used: { $num_requests_used } / { $request_limit }.
ai_assistant-until-refresh = { $next_refresh_time } until refresh.
ai_assistant-duration-days = { $count } days
ai_assistant-duration-hours = { $count } hours
ai_assistant-duration-minutes = { $count } minutes

ai-assistant-edit-requested-command = Edit requested command

## -- Agent status strings ---------------------------------------------------

ai-assistant-addressed-comments = Addressed { $count } comments
ai-assistant-received-messages = Received { $count } messages
ai-assistant-received-events = Received { $count } agent events
ai-assistant-seconds = { $count } seconds
ai-assistant-minutes = { $count } minutes

## -- Primary keys for migrated UI strings --

ai-cancel-summarization = Cancel summarization
ai-continue-summarization = Continue summarization
ai-attach-as-agent-context = Attach as agent context
ai-new-agent-pane = New Agent Pane
ai-follow-up-with-existing-conversation = Follow up with existing conversation
ai-invalid-api-key = Your API key is invalid. Please provide a valid key via '--api-key' or the WARP_API_KEY environment variable.
ai-invalid-credentials = Your credentials are invalid. Please log in again with { $cli } login.
ai-one-credit = { $count } credit
ai-credits = { $count } credits
ai-credits-decimal = { $count } credits
ai-aws-region-label = AWS Region:
ai-aws-access-key-id-label = AWS Access Key ID:
ai-now-using-default-model = Now using Full Terminal Agent's default model.
ai-run-in-cloud-env = Run your agent task in an isolated cloud environment.
ai-recent-activity = RECENT ACTIVITY
ai-view-changelog = View changelog
ai-recommended = Recommended
ai-always-ask-permission = Your profile is set to always ask for permission to execute commands.
ai-no-urls-fetched = No URLs fetched
ai-no-urls-found = No URLs found
ai-view-details = View details

## -- Double-prefix aliases for new AI assistant strings --
ai_assistant-ai-enter-custom-docker-image = { ai-enter-custom-docker-image }
ai_assistant-ai-dont-show-suggested-code-banners = { ai-dont-show-suggested-code-banners }
ai_assistant-ai-ai-cancel = { ai-cancel }
ai_assistant-ai-ai-run = { ai-run }
ai_assistant-ai-rules-header = { ai-rules-header }
ai_assistant-ai-rules-description = { ai-rules-description }
ai_assistant-ai-search-rules = { ai-search-rules }
ai_assistant-ai-zero-state-text = { ai-zero-state-text }
ai_assistant-ai-zero-state-project-text = { ai-zero-state-project-text }
ai_assistant-ai-disabled-banner-text = { ai-disabled-banner-text }
ai_assistant-ai-disabled-banner-link-text = { ai-disabled-banner-link-text }
ai_assistant-ai-disabled-banner-text-2 = { ai-disabled-banner-text-2 }
ai_assistant-ai-global-scope-tab = { ai-global-scope-tab }
ai_assistant-ai-project-based-scope-tab = { ai-project-based-scope-tab }
ai_assistant-ai-rule-name-placeholder = { ai-rule-name-placeholder }
ai_assistant-ai-rule-description-placeholder = { ai-rule-description-placeholder }

## -- Double-prefix aliases for static prompt suggestion strings --

ai_assistant-ai-code-feature-or-fix-bug-in-arg1 = { ai-code-feature-or-fix-bug-in-arg1 }
ai_assistant-ai-help-code-feature-or-fix-bug-in-arg1 = { ai-help-code-feature-or-fix-bug-in-arg1 }
ai_assistant-ai-implement-feature-or-fix-bug-in-arg1 = { ai-implement-feature-or-fix-bug-in-arg1 }
ai_assistant-ai-help-create-pull-request = { ai-help-create-pull-request }
ai_assistant-ai-help-start-new-project = { ai-help-start-new-project }
ai_assistant-ai-help-start-new-project-ask-details = { ai-help-start-new-project-ask-details }
ai_assistant-ai-help-start-nodejs-project = { ai-help-start-nodejs-project }
ai_assistant-ai-help-start-nodejs-project-ask-details = { ai-help-start-nodejs-project-ask-details }
ai_assistant-ai-help-create-new-react-app = { ai-help-create-new-react-app }
ai_assistant-ai-help-create-new-react-app-called-arg1 = { ai-help-create-new-react-app-called-arg1 }
ai_assistant-ai-help-create-new-nextjs-app = { ai-help-create-new-nextjs-app }
ai_assistant-ai-help-create-new-nextjs-app-called-arg1 = { ai-help-create-new-nextjs-app-called-arg1 }
ai_assistant-ai-help-start-rust-project-for-arg1 = { ai-help-start-rust-project-for-arg1 }
ai_assistant-ai-help-start-rust-project-for-arg1-ask-details = { ai-help-start-rust-project-for-arg1-ask-details }
ai_assistant-ai-help-start-poetry-project-for-arg1 = { ai-help-start-poetry-project-for-arg1 }
ai_assistant-ai-help-start-poetry-project-for-arg1-ask-details = { ai-help-start-poetry-project-for-arg1-ask-details }
ai_assistant-ai-help-start-django-project-for-arg1 = { ai-help-start-django-project-for-arg1 }
ai_assistant-ai-help-start-django-project-for-arg1-ask-details = { ai-help-start-django-project-for-arg1-ask-details }
ai_assistant-ai-help-start-rails-app-for-arg1 = { ai-help-start-rails-app-for-arg1 }
ai_assistant-ai-help-start-rails-app-for-arg1-ask-details = { ai-help-start-rails-app-for-arg1-ask-details }
ai_assistant-ai-help-start-gradle-maven-project = { ai-help-start-gradle-maven-project }
ai_assistant-ai-help-start-gradle-maven-project-ask-details = { ai-help-start-gradle-maven-project-ask-details }
ai_assistant-ai-help-start-go-project-for-arg1 = { ai-help-start-go-project-for-arg1 }
ai_assistant-ai-help-start-go-project-for-arg1-ask-details = { ai-help-start-go-project-for-arg1-ask-details }
ai_assistant-ai-help-start-swift-project = { ai-help-start-swift-project }
ai_assistant-ai-help-start-swift-project-ask-details = { ai-help-start-swift-project-ask-details }
ai_assistant-ai-help-start-terraform-configuration = { ai-help-start-terraform-configuration }
ai_assistant-ai-help-start-terraform-configuration-ask-details = { ai-help-start-terraform-configuration-ask-details }
ai_assistant-ai-help-set-up-prisma-in-this-project = { ai-help-set-up-prisma-in-this-project }
ai_assistant-ai-help-set-up-prisma-in-this-project-query = { ai-help-set-up-prisma-in-this-project-query }
ai_assistant-ai-help-install-dependencies-for-arg1 = { ai-help-install-dependencies-for-arg1 }
ai_assistant-ai-help-set-up-new-ruby-project = { ai-help-set-up-new-ruby-project }
ai_assistant-ai-help-set-up-new-ruby-project-ask-details = { ai-help-set-up-new-ruby-project-ask-details }
ai_assistant-ai-help-set-up-modelfile-for-arg1 = { ai-help-set-up-modelfile-for-arg1 }
ai_assistant-ai-help-understand-resource-utilization-in-cluster = { ai-help-understand-resource-utilization-in-cluster }
ai_assistant-ai-help-inspect-kubernetes-resources = { ai-help-inspect-kubernetes-resources }
ai_assistant-ai-help-manage-running-containers = { ai-help-manage-running-containers }
ai_assistant-ai-help-manage-docker-images = { ai-help-manage-docker-images }
ai_assistant-ai-help-manage-troubleshoot-arg1-docker-compose = { ai-help-manage-troubleshoot-arg1-docker-compose }
ai_assistant-ai-help-manage-troubleshoot-arg1-docker-compose-query = { ai-help-manage-troubleshoot-arg1-docker-compose-query }
ai_assistant-ai-help-configure-containers-to-use-arg1 = { ai-help-configure-containers-to-use-arg1 }
ai_assistant-ai-help-set-up-customize-vagrant-box-arg1 = { ai-help-set-up-customize-vagrant-box-arg1 }
ai_assistant-ai-help-provision-environment-troubleshoot-vagrant = { ai-help-provision-environment-troubleshoot-vagrant }
ai_assistant-ai-help-search-code-across-files-for-arg1 = { ai-help-search-code-across-files-for-arg1 }
ai_assistant-ai-help-search-code-across-files-with-arg1 = { ai-help-search-code-across-files-with-arg1 }
ai_assistant-ai-walk-me-through-generating-ssh-key = { ai-walk-me-through-generating-ssh-key }

## -- AI block loading and status message strings --
ai-agent-waiting-for-instructions = Agent waiting for instructions...
ai-error-apology-text = I'm sorry, I couldn't complete that request.
ai-internal-warp-error = Internal Warp error.
ai-warping = Warping...
ai-adjusting-tasks = Adjusting tasks...
ai-generating-fix = Generating fix...
ai-creating-diff = Creating diff...
ai-preparing-question = Preparing question...
ai-generating-plan = Generating plan...
ai-updating-plan = Updating plan...
ai-summarizing-conversation = Summarizing conversation...
ai-summarizing-command-output = Summarizing command output...
ai-searching-codebase = Searching codebase...
ai-reading-files = Reading files...
ai-grepping = Grepping...
ai-finding-files = Finding files...
ai-executing-command = Executing command...
ai-writing-command-input = Writing command input...
ai-waiting-for-command-exit = Waiting for command to exit...
ai-searching-the-web = Searching the web...
ai-fetching-pr-comments = Fetching PR comments...
ai-blocked-write-to-command = Can I write the following to this running command?
ai-blocked-reading-files = Grant access to the following files?
ai-blocked-searching-codebase = Grant access to the following repository?
ai-blocked-grep-file-glob = OK if I search the files in this directory?
ai-session-expired-text = Sessions expire after one week and cannot be opened.
ai-default-planning-document-title = Planning document
ai-agent-prompt-to-interact = Prompt agent to interact with
ai-agent-waiting-on-instructions = Agent is waiting on instructions
ai-agent-waiting-for-command-exit = Agent is waiting for command to exit
ai-agent-blocked = Agent needs your permission to continue
ai-agent-in-control = Agent is in control
ai-user-in-control = User is in control

## -- Orchestration controls strings --

ai-edit-agent-toolbelt = Edit agent toolbelt
ai-edit-cli-agent-toolbelt = Edit CLI agent toolbelt
ai-available-chips = Available chips
ai-orchestration-env-none-label = (no environment)
ai-default-model-label = Default model
ai-agent-location-label = Agent location
ai-local-label = Local
ai-cloud-label = Cloud
ai-agent-harness-label = Agent harness
ai-host-label = Host
ai-environment-label = Environment
ai-base-model-label = Base model
ai-opencode-cloud-disabled-reason = OpenCode is not supported on Cloud yet. Switch to Local or pick a different harness.
ai-recommend-select-env = We recommend selecting an environment for cloud agents.
ai-recommend-create-env = We recommend creating an environment for cloud agents.

## -- Orchestration config block strings --

ai-use-orchestration = Use orchestration
ai-orchestration-description = Break this work into coordinated streams with multiple agents.
ai-base-model-helper = The primary model all agents will use.
ai-oz-updates-header = What's new in Oz
ai-prompt-label = Prompt
ai-generating-title = Generating title...
ai-blocked-upload-artifact = Grant access to upload this artifact?
ai-blocked-transfer-control = Agent is asking you to take control.

## -- Run agents card strings --

ai-run-agents-card-title = Can I start additional agents for this task?
ai-reject-label = Reject
ai-accept-label = Accept
ai-orchestration-disabled-message = Orchestration is currently disabled. Re-enable on the plan card to launch.
ai-configuring-agents = Configuring agents…
ai-spawn-agents-cancelled = Spawn agents cancelled
ai-failed-to-start-orchestration = Failed to start orchestration
ai-spawn-agents-summary = Spawn { $count } agent(s) to address this task.
ai-agents-count-label = Agents ({ $count })
ai-spawned-one-agent = Spawned 1 agent
ai-spawned-agents = Spawned { $total } agents
ai-spawned-of-agents = Spawned { $launched } of { $total } agents
ai-orchestration-disabled-with-reason = Orchestration is currently disabled. Re-enable on the plan card to launch. ({ $reason })
ai-failed-to-start-orchestration-with-error = Failed to start orchestration: { $error }
ai-spawning-one-agent = Spawning 1 agent…
ai-spawning-agents = Spawning { $total } agents…

## -- Double-prefix aliases for AI block loading and status message strings --
ai_assistant-ai-agent-waiting-for-instructions = { ai-agent-waiting-for-instructions }
ai_assistant-ai-error-apology-text = { ai-error-apology-text }
ai_assistant-ai-internal-warp-error = { ai-internal-warp-error }
ai_assistant-ai-warping = { ai-warping }
ai_assistant-ai-adjusting-tasks = { ai-adjusting-tasks }
ai_assistant-ai-generating-fix = { ai-generating-fix }
ai_assistant-ai-creating-diff = { ai-creating-diff }
ai_assistant-ai-preparing-question = { ai-preparing-question }
ai_assistant-ai-generating-plan = { ai-generating-plan }
ai_assistant-ai-updating-plan = { ai-updating-plan }
ai_assistant-ai-summarizing-conversation = { ai-summarizing-conversation }
ai_assistant-ai-summarizing-command-output = { ai-summarizing-command-output }
ai_assistant-ai-searching-codebase = { ai-searching-codebase }
ai_assistant-ai-reading-files = { ai-reading-files }
ai_assistant-ai-grepping = { ai-grepping }
ai_assistant-ai-finding-files = { ai-finding-files }
ai_assistant-ai-executing-command = { ai-executing-command }
ai_assistant-ai-writing-command-input = { ai-writing-command-input }
ai_assistant-ai-waiting-for-command-exit = { ai-waiting-for-command-exit }
ai_assistant-ai-searching-the-web = { ai-searching-the-web }
ai_assistant-ai-fetching-pr-comments = { ai-fetching-pr-comments }
ai_assistant-ai-blocked-write-to-command = { ai-blocked-write-to-command }
ai_assistant-ai-blocked-reading-files = { ai-blocked-reading-files }
ai_assistant-ai-blocked-searching-codebase = { ai-blocked-searching-codebase }
ai_assistant-ai-blocked-grep-file-glob = { ai-blocked-grep-file-glob }
ai_assistant-ai-session-expired-text = { ai-session-expired-text }
ai_assistant-ai-default-planning-document-title = { ai-default-planning-document-title }
ai_assistant-ai-agent-prompt-to-interact = { ai-agent-prompt-to-interact }
ai_assistant-ai-agent-waiting-on-instructions = { ai-agent-waiting-on-instructions }
ai_assistant-ai-agent-waiting-for-command-exit = { ai-agent-waiting-for-command-exit }
ai_assistant-ai-agent-blocked = { ai-agent-blocked }
ai_assistant-ai-agent-in-control = { ai-agent-in-control }
ai_assistant-ai-user-in-control = { ai-user-in-control }

## -- Double-prefix aliases for orchestration controls strings --

ai_assistant-ai-edit-agent-toolbelt = { ai-edit-agent-toolbelt }
ai_assistant-ai-edit-cli-agent-toolbelt = { ai-edit-cli-agent-toolbelt }
ai_assistant-ai-available-chips = { ai-available-chips }
ai_assistant-ai-orchestration-env-none-label = { ai-orchestration-env-none-label }
ai_assistant-ai-default-model-label = { ai-default-model-label }
ai_assistant-ai-agent-location-label = { ai-agent-location-label }
ai_assistant-ai-local-label = { ai-local-label }
ai_assistant-ai-cloud-label = { ai-cloud-label }
ai_assistant-ai-agent-harness-label = { ai-agent-harness-label }
ai_assistant-ai-host-label = { ai-host-label }
ai_assistant-ai-environment-label = { ai-environment-label }
ai_assistant-ai-base-model-label = { ai-base-model-label }
ai_assistant-ai-opencode-cloud-disabled-reason = { ai-opencode-cloud-disabled-reason }
ai_assistant-ai-recommend-select-env = { ai-recommend-select-env }
ai_assistant-ai-recommend-create-env = { ai-recommend-create-env }

## -- Double-prefix aliases for orchestration config block strings --

ai_assistant-ai-use-orchestration = { ai-use-orchestration }
ai_assistant-ai-orchestration-description = { ai-orchestration-description }
ai_assistant-ai-base-model-helper = { ai-base-model-helper }
ai_assistant-ai-oz-updates-header = { ai-oz-updates-header }
ai_assistant-ai-prompt-label = { ai-prompt-label }
ai_assistant-ai-generating-title = { ai-generating-title }
ai_assistant-ai-blocked-upload-artifact = { ai-blocked-upload-artifact }
ai_assistant-ai-blocked-transfer-control = { ai-blocked-transfer-control }

## -- Conversation usage view strings --

ai-usage-summary-header = USAGE SUMMARY
ai-credits-spent-last-response = Credits spent (last response)
ai-credits-spent-total = Credits spent (total)
ai-credits-spent = Credits spent
ai-tool-calls = Tool calls
ai-models-label = Models
ai-change-model-settings = You can change which model is used for full terminal use in the AI settings page
ai-context-window-used = Context window used
ai-tool-call-summary-header = TOOL CALL SUMMARY
ai-files-changed = Files changed
ai-diffs-applied = Diffs applied
ai-commands-executed = Commands executed
ai-last-response-time-header = LAST RESPONSE TIME
ai-time-to-first-token = Time to first token
ai-total-agent-response-time = Total agent response time
ai-total-time-including-tools = Total time (including tool calls)

## -- Codebase index speedbump banner strings --

ai-index-codebase-question = Index Codebase?
ai-index-codebase-text = Indexing helps agents quickly understand context and provide targeted solutions. Code is never stored on the server.
ai-index-codebase-button = Index codebase
ai-allow-automatic-indexing = Allow automatic indexing
ai-indexing-codebase = Indexing codebase
ai-view-status = View status

## -- Double-prefix aliases for codebase index speedbump strings --

ai_assistant-ai-index-codebase-question = { ai-index-codebase-question }
ai_assistant-ai-index-codebase-text = { ai-index-codebase-text }
ai_assistant-ai-index-codebase-button = { ai-index-codebase-button }
ai_assistant-ai-allow-automatic-indexing = { ai-allow-automatic-indexing }
ai_assistant-ai-indexing-codebase = { ai-indexing-codebase }
ai_assistant-ai-view-status = { ai-view-status }

## -- Double-prefix aliases for run agents card strings --

ai_assistant-ai-run-agents-card-title = { ai-run-agents-card-title }
ai_assistant-ai-reject-label = { ai-reject-label }
ai_assistant-ai-accept-label = { ai-accept-label }
ai_assistant-ai-orchestration-disabled-message = { ai-orchestration-disabled-message }
ai_assistant-ai-configuring-agents = { ai-configuring-agents }
ai_assistant-ai-spawn-agents-cancelled = { ai-spawn-agents-cancelled }
ai_assistant-ai-failed-to-start-orchestration = { ai-failed-to-start-orchestration }
ai_assistant-ai-spawn-agents-summary = { ai-spawn-agents-summary }
ai_assistant-ai-agents-count-label = { ai-agents-count-label }
ai_assistant-ai-spawned-one-agent = { ai-spawned-one-agent }
ai_assistant-ai-spawned-agents = { ai-spawned-agents }
ai_assistant-ai-spawned-of-agents = { ai-spawned-of-agents }
ai_assistant-ai-orchestration-disabled-with-reason = { ai-orchestration-disabled-with-reason }
ai_assistant-ai-failed-to-start-orchestration-with-error = { ai-failed-to-start-orchestration-with-error }
ai_assistant-ai-spawning-one-agent = { ai-spawning-one-agent }
ai_assistant-ai-spawning-agents = { ai-spawning-agents }

## -- Prompt alert strings --

ai-telemetry-disabled-primary-text = To use AI features,
ai-enable-analytics-action-text = enable analytics
ai-upgrade-to-build-action-text = upgrade
ai-no-connection-primary-text = No internet connection
ai-anonymous-user-request-limit-hard-gate-primary-text = At Limit -
ai-delinquent-due-to-payment-issue-primary-text = Restricted due to payment issue
ai-out-of-requests-primary-text = Out of credits
ai-anonymous-user-request-limit-action-text = Sign up for more AI credits
ai-delinquent-due-to-payment-issue-action-text = Manage billing
ai-overages-toggleable-but-not-enabled-action-text = Enable premium overages
ai-monthly-overages-spend-limit-reached-action-text = Increase monthly spend limit
ai-upgrade-text = Upgrade
ai-compare-plans-text = Compare plans
ai-contact-support-text = Contact support
ai-non-admin-contact-admin-text = , contact a team admin
ai-non-admin-ask-admin-to-enable-overages-text = , ask a team admin to enable overages
ai-non-admin-ask-admin-to-increase-overages-text = , ask a team admin to increase overages
ai-upgrade-to-build-text = Upgrade to Build
ai-use-your-own-api-keys-text = use your own API keys
ai-add-credits-text = Add credits

## -- Agent view / blocklist UI strings --

ai-open-plan = Open plan
ai-open-pull-request = Open pull request
ai-enable-figma-mcp = Enable Figma MCP
ai-starting-shell = Starting shell...
ai-open-in-different-pane = Open in different pane
ai-open-in-new-pane = Open in new pane
ai-open-in-new-tab = Open in new tab
ai-enable-desktop-notifications = Enable desktop notifications to get an alert when an agent needs your attention.
ai-open-palette = Open palette
ai-show-diff-view = Show diff view

## -- Agent management notification strings --

ai-notification-from-codex = Notification from Codex
ai-task-completed = Task completed.
ai-waiting-for-input = Waiting for input.
ai-child-agent = Child agent
ai-agent-task = Agent task
ai-child-agent-completed = Child agent completed.
ai-task-cancelled = Task was cancelled.
ai-child-agent-cancelled = Child agent was cancelled.
ai-child-agent-error = Child agent encountered an error.
ai-something-went-wrong = Something went wrong.

## -- Double-prefix aliases for agent view / blocklist UI strings --

ai_assistant-ai-open-plan = { ai-open-plan }
ai_assistant-ai-open-pull-request = { ai-open-pull-request }
ai_assistant-ai-enable-figma-mcp = { ai-enable-figma-mcp }
ai_assistant-ai-starting-shell = { ai-starting-shell }
ai_assistant-ai-open-in-different-pane = { ai-open-in-different-pane }
ai_assistant-ai-open-in-new-pane = { ai-open-in-new-pane }
ai_assistant-ai-open-in-new-tab = { ai-open-in-new-tab }
ai_assistant-ai-enable-desktop-notifications = { ai-enable-desktop-notifications }
ai_assistant-ai-open-palette = { ai-open-palette }
ai_assistant-ai-show-diff-view = { ai-show-diff-view }

## -- Double-prefix aliases for prompt alert strings --

ai_assistant-ai-telemetry-disabled-primary-text = { ai-telemetry-disabled-primary-text }
ai_assistant-ai-enable-analytics-action-text = { ai-enable-analytics-action-text }
ai_assistant-ai-upgrade-to-build-action-text = { ai-upgrade-to-build-action-text }
ai_assistant-ai-no-connection-primary-text = { ai-no-connection-primary-text }
ai_assistant-ai-anonymous-user-request-limit-hard-gate-primary-text = { ai-anonymous-user-request-limit-hard-gate-primary-text }
ai_assistant-ai-delinquent-due-to-payment-issue-primary-text = { ai-delinquent-due-to-payment-issue-primary-text }
ai_assistant-ai-out-of-requests-primary-text = { ai-out-of-requests-primary-text }
ai_assistant-ai-anonymous-user-request-limit-action-text = { ai-anonymous-user-request-limit-action-text }
ai_assistant-ai-delinquent-due-to-payment-issue-action-text = { ai-delinquent-due-to-payment-issue-action-text }
ai_assistant-ai-overages-toggleable-but-not-enabled-action-text = { ai-overages-toggleable-but-not-enabled-action-text }
ai_assistant-ai-monthly-overages-spend-limit-reached-action-text = { ai-monthly-overages-spend-limit-reached-action-text }
ai_assistant-ai-upgrade-text = { ai-upgrade-text }
ai_assistant-ai-compare-plans-text = { ai-compare-plans-text }
ai_assistant-ai-contact-support-text = { ai-contact-support-text }
ai_assistant-ai-non-admin-contact-admin-text = { ai-non-admin-contact-admin-text }
ai_assistant-ai-non-admin-ask-admin-to-enable-overages-text = { ai-non-admin-ask-admin-to-enable-overages-text }
ai_assistant-ai-non-admin-ask-admin-to-increase-overages-text = { ai-non-admin-ask-admin-to-increase-overages-text }
ai_assistant-ai-upgrade-to-build-text = { ai-upgrade-to-build-text }
ai_assistant-ai-use-your-own-api-keys-text = { ai-use-your-own-api-keys-text }
ai_assistant-ai-add-credits-text = { ai-add-credits-text }

## -- Toolbar item display labels --

ai-context-chip = Context Chip
ai-model-selector = Model Selector
ai-autodetection = Autodetection
ai-voice-input = Voice Input
ai-attach-file = Attach File
ai-context-usage = Context Usage
ai-share-session = /remote-control
ai-fast-forward = Fast Forward
ai-handoff-to-cloud = Hand off to cloud

ai-assistant-voice-limit-hit = You have hit the limit for Voice requests. Your limit will be refreshed as a part of your next cycle.
ai-assistant-voice-error = An error occurred while processing your voice input.
ai-assistant-no-image-support = The selected model does not support images as context.
ai-assistant-image-limit = { $count ->
    [1] 1 image wasn't attached - { $reason }.
   *[other] { $count } images weren't attached - { $reason }.
}
ai-assistant-image-limit-query = limit is { $count } per query
ai-assistant-image-limit-conversation = limit is { $count } per conversation
ai-assistant-unsupported-images = { $count ->
    [1] 1 image wasn't attached - supported types are PNG, JPG, GIF, WEBP.
   *[other] { $count } images weren't attached - supported types are PNG, JPG, GIF, WEBP.
}
ai-assistant-image-read-errors = { $count ->
    [1] 1 image wasn't attached - failed to read file.
   *[other] { $count } images weren't attached - failed to read files.
}
ai-assistant-copied-to-clipboard = Copied to clipboard

## -- Double-prefix aliases for AI assistant hardcoded UI text strings --
ai_assistant-ai-feature-name = { ai-feature-name }
ai_assistant-ai-ask-text = { ai-ask-text }
ai_assistant-ai-zero-state-script-prompt = { ai-zero-state-script-prompt }
ai_assistant-ai-zero-state-git-prompt = { ai-zero-state-git-prompt }
ai_assistant-ai-how-do-i-fix = { ai-how-do-i-fix }
ai_assistant-ai-show-examples = { ai-show-examples }
ai_assistant-ai-invalid-file-name = { ai-invalid-file-name }
ai_assistant-ai-review-comment = { ai-review-comment }
ai_assistant-ai-invalid-api-key-for-provider = { ai-invalid-api-key-for-provider }

## -- Double-prefix aliases for code diff view strings --
ai_assistant-ai-refine = { ai-refine }
ai_assistant-ai-dismiss = { ai-dismiss }
ai_assistant-ai-accept-and-continue = { ai-accept-and-continue }
ai_assistant-ai-iterate-with-agent = { ai-iterate-with-agent }
ai_assistant-ai-file-new = { ai-file-new }
ai_assistant-ai-file-deleted = { ai-file-deleted }
ai_assistant-ai-failed-revert = { ai-failed-revert }
ai_assistant-ai-file-suffix = { ai-file-suffix }
ai_assistant-ai-renamed-suffix = { ai-renamed-suffix }
ai_assistant-ai-deleted-file-suffix = { ai-deleted-file-suffix }

## -- Double-prefix aliases for toolbar item display labels --

ai_assistant-ai-context-chip = { ai-context-chip }
ai_assistant-ai-model-selector = { ai-model-selector }
ai_assistant-ai-autodetection = { ai-autodetection }
ai_assistant-ai-voice-input = { ai-voice-input }
ai_assistant-ai-attach-file = { ai-attach-file }
ai_assistant-ai-context-usage = { ai-context-usage }
ai_assistant-ai-share-session = { ai-share-session }
ai_assistant-ai-fast-forward = { ai-fast-forward }
ai_assistant-ai-handoff-to-cloud = { ai-handoff-to-cloud }

## -- Double-prefix aliases for AWS credentials error strings --

ai_assistant-ai-aws-credentials-not-found = { ai-aws-credentials-not-found }
ai_assistant-ai-aws-credentials-timeout = { ai-aws-credentials-timeout }
ai_assistant-ai-aws-credentials-invalid-config = { ai-aws-credentials-invalid-config }
ai_assistant-ai-aws-credentials-provider-error = { ai-aws-credentials-provider-error }
ai_assistant-ai-aws-credentials-unexpected-error = { ai-aws-credentials-unexpected-error }
ai_assistant-ai-aws-credentials-unable-to-load = { ai-aws-credentials-unable-to-load }
ai_assistant-ai-aws-credentials-refresh-interrupted = { ai-aws-credentials-refresh-interrupted }
ai_assistant-ai-aws-profile-reference-default = { ai-aws-profile-reference-default }
ai_assistant-ai-aws-profile-reference-named = { ai-aws-profile-reference-named }
ai_assistant-ai-aws-profile-reference-default-capitalized = { ai-aws-profile-reference-default-capitalized }
ai_assistant-ai-aws-profile-reference-named-capitalized = { ai-aws-profile-reference-named-capitalized }

## -- Conversation details panel strings --

ai-conversation-fallback-title = Conversation
ai-cloud-agent-run = Cloud agent run
ai-copied-branch-name = Copied branch name
ai-agent-label = Agent
ai-harness-label = Harness
ai-open-in-oz = Open in Oz
ai-open-in-github = Open in GitHub
ai-initial-query = Initial query
ai-artifacts-label = Artifacts
ai-env-setup-commands = Environment setup commands
ai-env-details = Environment details
ai-env-name = Name: {$name}
ai-env-id-label = ID
ai-env-image-label = Image
ai-directory-label = Directory
ai-conversation-id-label = Conversation ID
ai-run-id-label = Run ID
ai-credits-used = Credits used
ai-run-time = Run time
ai-created-on = Created on

## -- Double-prefix aliases for agent management notification strings --

ai_assistant-ai-notification-from-codex = { ai-notification-from-codex }
ai_assistant-ai-task-completed = { ai-task-completed }
ai_assistant-ai-waiting-for-input = { ai-waiting-for-input }
ai_assistant-ai-child-agent = { ai-child-agent }
ai_assistant-ai-agent-task = { ai-agent-task }
ai_assistant-ai-child-agent-completed = { ai-child-agent-completed }
ai_assistant-ai-task-cancelled = { ai-task-cancelled }
ai_assistant-ai-child-agent-cancelled = { ai-child-agent-cancelled }
ai_assistant-ai-child-agent-error = { ai-child-agent-error }
ai_assistant-ai-something-went-wrong = { ai-something-went-wrong }

## -- Double-prefix aliases for conversation details panel strings --

ai_assistant-ai-conversation-fallback-title = { ai-conversation-fallback-title }
ai_assistant-ai-cloud-agent-run = { ai-cloud-agent-run }
ai_assistant-ai-copied-branch-name = { ai-copied-branch-name }
ai_assistant-ai-agent-label = { ai-agent-label }
ai_assistant-ai-harness-label = { ai-harness-label }
ai_assistant-ai-open-in-oz = { ai-open-in-oz }
ai_assistant-ai-open-in-github = { ai-open-in-github }
ai_assistant-ai-initial-query = { ai-initial-query }
ai_assistant-ai-artifacts-label = { ai-artifacts-label }
ai_assistant-ai-env-setup-commands = { ai-env-setup-commands }
ai_assistant-ai-env-details = { ai-env-details }
ai_assistant-ai-env-name = { ai-env-name }
ai_assistant-ai-env-id-label = { ai-env-id-label }
ai_assistant-ai-env-image-label = { ai-env-image-label }
ai_assistant-ai-directory-label = { ai-directory-label }
ai_assistant-ai-conversation-id-label = { ai-conversation-id-label }
ai_assistant-ai-run-id-label = { ai-run-id-label }
ai_assistant-ai-credits-used = { ai-credits-used }
ai_assistant-ai-run-time = { ai-run-time }
ai_assistant-ai-created-on = { ai-created-on }

## -- Double-prefix aliases for conversation usage view strings --

ai_assistant-ai-usage-summary-header = { ai-usage-summary-header }
ai_assistant-ai-credits-spent-last-response = { ai-credits-spent-last-response }
ai_assistant-ai-credits-spent-total = { ai-credits-spent-total }
ai_assistant-ai-credits-spent = { ai-credits-spent }
ai_assistant-ai-tool-calls = { ai-tool-calls }
ai_assistant-ai-models-label = { ai-models-label }
ai_assistant-ai-change-model-settings = { ai-change-model-settings }
ai_assistant-ai-context-window-used = { ai-context-window-used }
ai_assistant-ai-tool-call-summary-header = { ai-tool-call-summary-header }
ai_assistant-ai-files-changed = { ai-files-changed }
ai_assistant-ai-diffs-applied = { ai-diffs-applied }
ai_assistant-ai-commands-executed = { ai-commands-executed }
ai_assistant-ai-last-response-time-header = { ai-last-response-time-header }
ai_assistant-ai-time-to-first-token = { ai-time-to-first-token }
ai_assistant-ai-total-agent-response-time = { ai-total-agent-response-time }
ai_assistant-ai-total-time-including-tools = { ai-total-time-including-tools }

## -- Double-prefix aliases for agent tip strings --

ai_assistant-ai-tip-label = { ai-tip-label }
ai_assistant-ai-tip-slash-commands = { ai-tip-slash-commands }
ai_assistant-ai-tip-toggle-nl-detection = { ai-tip-toggle-nl-detection }
ai_assistant-ai-tip-plan = { ai-tip-plan }
ai_assistant-ai-tip-command-palette = { ai-tip-command-palette }
ai_assistant-ai-tip-store-workflows = { ai-tip-store-workflows }
ai_assistant-ai-tip-redirect-agent = { ai-tip-redirect-agent }
ai_assistant-ai-tip-at-context = { ai-tip-at-context }
ai_assistant-ai-tip-attach-block = { ai-tip-attach-block }
ai_assistant-ai-tip-init-repo = { ai-tip-init-repo }
ai_assistant-ai-tip-agent-profiles = { ai-tip-agent-profiles }
ai_assistant-ai-tip-fork-conversation = { ai-tip-fork-conversation }
ai_assistant-ai-tip-copy-output = { ai-tip-copy-output }
ai_assistant-ai-tip-drag-image = { ai-tip-drag-image }
ai_assistant-ai-tip-interactive-tools = { ai-tip-interactive-tools }
ai_assistant-ai-tip-code-review = { ai-tip-code-review }
ai_assistant-ai-tip-add-mcp = { ai-tip-add-mcp }
ai_assistant-ai-tip-open-mcp = { ai-tip-open-mcp }
ai_assistant-ai-tip-create-environment = { ai-tip-create-environment }
ai_assistant-ai-tip-add-prompt = { ai-tip-add-prompt }
ai_assistant-ai-tip-add-rule = { ai-tip-add-rule }
ai_assistant-ai-tip-fork = { ai-tip-fork }
ai_assistant-ai-tip-open-code-review = { ai-tip-open-code-review }
ai_assistant-ai-tip-new = { ai-tip-new }
ai_assistant-ai-tip-compact = { ai-tip-compact }
ai_assistant-ai-tip-usage = { ai-tip-usage }
ai_assistant-ai-tip-oz-command = { ai-tip-oz-command }
ai_assistant-ai-tip-selected-text-context = { ai-tip-selected-text-context }
ai_assistant-ai-tip-agents-md = { ai-tip-agents-md }
ai_assistant-ai-tip-paste-url = { ai-tip-paste-url }
ai_assistant-ai-tip-warpify-ssh = { ai-tip-warpify-ssh }
ai_assistant-ai-tip-switch-profiles = { ai-tip-switch-profiles }
ai_assistant-ai-tip-init-warp-md = { ai-tip-init-warp-md }
ai_assistant-ai-tip-auto-approve = { ai-tip-auto-approve }
ai_assistant-ai-tip-cancel-task = { ai-tip-cancel-task }
ai_assistant-ai-warp-drive-period = { ai-warp-drive-period }
ai_assistant-ai-tip-voice-input = { ai-tip-voice-input }

## -- Block view common strings --

ai-calling-mcp-tool = Calling "{$name}" MCP tool...
ai-reading-mcp-resource = Reading "{$name}" MCP resource...
ai-take-over = Take over
ai-take-over-tooltip = Take over control of the command
ai-show-responses = Show responses
ai-hide-responses = Hide responses
ai-show-agent-responses = Show agent responses
ai-hide-agent-responses = Hide agent responses
ai-stop-agent-task = Stop agent task
ai-auto-queue-on = Auto-queue is on: your next prompt will be queued
ai-auto-queue-off = Auto-queue next prompt while agent is responding
ai-turn-off-auto-approve = Turn off auto-approve all agent actions
ai-auto-approve-all = Auto-approve all agent actions for this task
ai-check-now = Check now
ai-check-now-tooltip = Ask the agent to check this command now, skipping its timer.
ai-mermaid-diagram = Mermaid diagram
ai-server-overloaded = Warp is currently overloaded. Please try again later.
ai-invalid-api-key = Provided API key is not valid
ai-failed-authenticate-provider = Failed to authenticate with { $provider } when using { $model_name }. Double-check that your API key is correct.
ai-credit-limit-reached = You've reached your credit limit. Your credit limit resets on { $date }.
ai-send-feedback = Send Feedback
ai-debug-information = Debug information: { $debug_info }
ai-copy-debug-id = Copy debug ID
ai-exit = Exit
ai-exit-agent-input = Exit agent input
ai-plan-update-tooltip = This plan has changes the agent isn't aware of. {$save_action} to stop the agent's current task and send the updated plan
ai-updated-plan = I've updated the plan.
ai-address-comments = Address these comments
ai-source-label = Source: {$source}
ai-run-time-label = Run time: {$run_time}
ai-credits-used-label = Credits used: {$usage}
ai-task-blocked = Task blocked
ai-not-started = Not started
ai-auth-failed = Authentication failed
ai-tasks-label = Tasks
ai-generate-tests = Generate tests
ai-orchestrator = Orchestrator
ai-out-of-credits-upgrade = Out of credits. Upgrade your Warp plan to continue running cloud agents.
ai-server-overloaded-short = Warp is temporarily overloaded. Please try again shortly.
ai-cloud-agent-failed = Cloud agent failed
ai-cloud-followup-finished = Cloud follow-up finished before a new session became available
ai-secret-raw-value = Raw Value
ai-secret-anthropic-key = Anthropic API Key
ai-secret-anthropic-bedrock-access = Anthropic Bedrock Access Key
ai-secret-anthropic-bedrock-key = Anthropic Bedrock API Key
ai-secret-openai-key = OpenAI API Key
ai-view-todo-list = View todo list
ai-ai-view-todo-list = { ai-view-todo-list }
ai-starting-env-step-3 = Starting Environment (Step 3/3)
ai-creating-env-step-2 = Creating Environment (Step 2/3)
ai-connecting-host-step-1 = Connecting to Host (Step 1/3)
ai-missing-github-auth = Missing GitHub authentication.
ai-authenticate-github = Authenticate GitHub
ai-cloud-agent-cancelled = Cloud agent run cancelled
ai-setting-up-env = Setting up environment
ai-primary-model-failed-with-name = The primary model ({$primary}) failed. Retrying with the fallback model.
ai-primary-model-failed = The primary model failed. Retrying with the fallback model.
ai-warping-with-model = Warping with {$name}.
ai-warping-with-another-model = Warping with another model.
ai-ai-starting-env-step-3 = { ai-starting-env-step-3 }
ai-ai-creating-env-step-2 = { ai-creating-env-step-2 }
ai-ai-connecting-host-step-1 = { ai-connecting-host-step-1 }
ai-ai-missing-github-auth = { ai-missing-github-auth }
ai-ai-authenticate-github = { ai-authenticate-github }
ai-ai-cloud-agent-cancelled = { ai-cloud-agent-cancelled }
ai-ai-setting-up-env = { ai-setting-up-env }
ai-ai-primary-model-failed-with-name = { ai-primary-model-failed-with-name }
ai-ai-primary-model-failed = { ai-primary-model-failed }
ai-ai-warping-with-model = { ai-warping-with-model }
ai-ai-warping-with-another-model = { ai-warping-with-another-model }
ai-default-profile-name = Default
ai-agent-mode-eval-profile-name = Agent Mode Eval
ai-default-cli-profile-name = Default (CLI)
ai-ai-default-profile-name = { ai-default-profile-name }
ai-ai-agent-mode-eval-profile-name = { ai-agent-mode-eval-profile-name }
ai-ai-default-cli-profile-name = { ai-default-cli-profile-name }
ai-resume-when-network = {$error_message}

Will resume conversation when network connectivity is restored...
ai-attempting-resume = {$error_message}

Attempting to resume conversation...

ai-error-formatting-json = Error formatting JSON
ai-mcp-error = Error: {$error}
ai-tool-call-cancelled = Tool call was cancelled
ai-mcp-response = {$command}

Response: {$result}
ai-ai-error-formatting-json = { ai-error-formatting-json }
ai-ai-mcp-error = { ai-mcp-error }
ai-ai-tool-call-cancelled = { ai-tool-call-cancelled }
ai-ai-mcp-response = { ai-mcp-response }

## -- AI facts view additional strings --

ai-offline-banner-text = You are offline. Some rules will be read only.
ai-rule-editor-title = Rule Editor

ai_assistant-ai-offline-banner-text = { ai-offline-banner-text }
ai_assistant-ai-rule-editor-title = { ai-rule-editor-title }

## -- Error classification strings --

ai-internal-error-retry = An internal error occurred. Please try running your task again. If the issue persists, contact support.
ai-terminal-session-failed = Terminal session failed to start. Please try running your task again.
ai-share-session-internal-error = Failed to share agent session due to an internal error. Please try running your task again.
ai-share-session-failed = Failed to share agent session: {$reason}
ai-share-session-disabled = Session sharing is not enabled for your account. This is likely because an administrator has disabled session sharing for your team. Please verify that session sharing is enabled in your team settings, or try running without the --share flag.
ai-share-session-timeout = Failed to share agent session: timed out waiting for the session sharing server to respond. Please check your network connection and try again.
ai-share-session-interrupted = Session sharing was interrupted before it could complete. Please try running your task again.
ai-warp-drive-sync-failed = Warp Drive failed to sync. Please check your network connection and try again.
ai-auth-required = Authentication required. Log in via '{$bin} login', provide an API key via '--api-key', or set the WARP_API_KEY environment variable.
ai-cloud-provider-setup-failed = Error configuring cloud access: {$err}
ai-mcp-server-not-found = MCP server {$uuid} was not found. Verify the server exists in your Warp Drive and the UUID is correct.
ai-mcp-startup-failed = One or more MCP servers failed to start. Check that your MCP server configuration is valid and the server process is runnable.
ai-mcp-json-parse-error = Failed to parse MCP server JSON configuration: {$msg}
ai-mcp-missing-variables = MCP server configuration is missing required variables. Provide all required environment variables or template values.
ai-profile-not-found = Agent profile "{$name}" not found. Check the profile ID and ensure it exists in your team's Warp Drive.
ai-workflow-not-found = Saved prompt not found for ID {$id}. Verify the prompt exists in your Warp Drive.
ai-environment-not-found = Environment '{$id}' not found. Verify the environment ID and ensure it exists in your team settings.
ai-environment-setup-failed-msg = Environment setup failed: {$msg}. Check your repository URLs and setup commands.
ai-invalid-working-directory = Working directory '{$path}' does not exist or is not a directory. Verify the path in your environment configuration.
ai-task-cancelled-msg = Task cancelled.
ai-agent-blocked = The agent got stuck waiting for user confirmation on the action: {$blocked_action}
ai-team-metadata-timeout = Timed out refreshing team metadata. Please check your network connection and try again.
ai-skill-resolution-failed = Skill resolution failed: {$msg}
ai-config-build-failed = Failed to build agent configuration: {$err}
ai-prompt-resolution-failed = Failed to resolve prompt for the run: {$err}
ai-secrets-fetch-failed = Failed to fetch task secrets: {$err}
ai-aws-bedrock-credentials-failed = Failed to initialize AWS Bedrock credentials: {$msg}
ai-conversation-load-failed = Failed to load conversation: {$msg}
ai-conversation-harness-mismatch = Conversation {$conversation_id} was produced by the {$expected} harness, but --harness {$got} was requested. Re-run with --harness {$expected} (or omit --harness to match) to continue this conversation.
ai-task-harness-mismatch = Task {$task_id} was created with the {$expected} harness, but --harness {$got} was requested. Re-run with --harness {$expected} (or omit --harness to match) to continue this task.
ai-conversation-resume-state-missing = Conversation {$conversation_id} has no stored transcript for the {$harness} harness. The prior run may have crashed before saving any state.
ai-harness-command-failed = Harness command exited with code {$exit_code}
ai-harness-setup-failed = Harness '{$harness}' validation failed: {$reason}
ai-harness-config-setup-failed = Harness '{$harness}' config setup failed: {$error}
ai-allow-btn = Allow
ai-refine-btn = Refine
ai-take-over-btn = Take over
ai-take-control-btn = Take control

## -- Double-prefix aliases for error classification strings --

ai_assistant-ai-internal-error-retry = { ai-internal-error-retry }
ai_assistant-ai-terminal-session-failed = { ai-terminal-session-failed }
ai_assistant-ai-share-session-internal-error = { ai-share-session-internal-error }
ai_assistant-ai-share-session-failed = { ai-share-session-failed }
ai_assistant-ai-share-session-disabled = { ai-share-session-disabled }
ai_assistant-ai-share-session-timeout = { ai-share-session-timeout }
ai_assistant-ai-share-session-interrupted = { ai-share-session-interrupted }
ai_assistant-ai-warp-drive-sync-failed = { ai-warp-drive-sync-failed }
ai_assistant-ai-auth-required = { ai-auth-required }
ai_assistant-ai-cloud-provider-setup-failed = { ai-cloud-provider-setup-failed }
ai_assistant-ai-mcp-server-not-found = { ai-mcp-server-not-found }
ai_assistant-ai-mcp-startup-failed = { ai-mcp-startup-failed }
ai_assistant-ai-mcp-json-parse-error = { ai-mcp-json-parse-error }
ai_assistant-ai-mcp-missing-variables = { ai-mcp-missing-variables }
ai_assistant-ai-profile-not-found = { ai-profile-not-found }
ai_assistant-ai-workflow-not-found = { ai-workflow-not-found }
ai_assistant-ai-environment-not-found = { ai-environment-not-found }
ai_assistant-ai-environment-setup-failed-msg = { ai-environment-setup-failed-msg }
ai_assistant-ai-invalid-working-directory = { ai-invalid-working-directory }
ai_assistant-ai-task-cancelled-msg = { ai-task-cancelled-msg }
ai_assistant-ai-agent-blocked = { ai-agent-blocked }
ai_assistant-ai-team-metadata-timeout = { ai-team-metadata-timeout }
ai_assistant-ai-skill-resolution-failed = { ai-skill-resolution-failed }
ai_assistant-ai-config-build-failed = { ai-config-build-failed }
ai_assistant-ai-prompt-resolution-failed = { ai-prompt-resolution-failed }
ai_assistant-ai-secrets-fetch-failed = { ai-secrets-fetch-failed }
ai_assistant-ai-aws-bedrock-credentials-failed = { ai-aws-bedrock-credentials-failed }
ai_assistant-ai-conversation-load-failed = { ai-conversation-load-failed }
ai_assistant-ai-conversation-harness-mismatch = { ai-conversation-harness-mismatch }
ai_assistant-ai-task-harness-mismatch = { ai-task-harness-mismatch }
ai_assistant-ai-conversation-resume-state-missing = { ai-conversation-resume-state-missing }
ai_assistant-ai-harness-command-failed = { ai-harness-command-failed }
ai_assistant-ai-harness-setup-failed = { ai-harness-setup-failed }
ai_assistant-ai-harness-config-setup-failed = { ai-harness-config-setup-failed }

## -- Double-prefix aliases for output view strings --

ai_assistant-ai-conversation-summarized = { ai-conversation-summarized }
ai_assistant-ai-thought-for-duration = { ai-thought-for-duration }
ai_assistant-ai-searched = { ai-searched }
ai_assistant-ai-searching = { ai-searching }
ai_assistant-ai-conversation-label = { ai-conversation-label }
ai_assistant-ai-this-conversation = { ai-this-conversation }
ai_assistant-ai-sorry-bad-experience-single = { ai-sorry-bad-experience-single }
ai_assistant-ai-sorry-bad-experience-plural = { ai-sorry-bad-experience-plural }
ai_assistant-ai-response-wont-count = { ai-response-wont-count }
ai_assistant-ai-always-allow-file-access-coding = { ai-always-allow-file-access-coding }
ai_assistant-ai-always-allow-file-access-repo = { ai-always-allow-file-access-repo }
ai_assistant-ai-manage-autonomy-permissions = { ai-manage-autonomy-permissions }
ai_assistant-ai-search-in = { ai-search-in }
ai_assistant-ai-searching-in = { ai-searching-in }
ai_assistant-ai-no-relevant-files = { ai-no-relevant-files }
ai_assistant-ai-search-failed-not-indexed = { ai-search-failed-not-indexed }
ai_assistant-ai-search-failed = { ai-search-failed }
ai_assistant-ai-search-cancelled = { ai-search-cancelled }
ai_assistant-ai-in-path-cancelled = { ai-in-path-cancelled }
ai_assistant-ai-in-path = { ai-in-path }
ai_assistant-ai-failed-read-files = { ai-failed-read-files }
ai_assistant-ai-open-skill = { ai-open-skill }
ai_assistant-ai-stopped-task-with-index = { ai-stopped-task-with-index }
ai_assistant-ai-stopped-task-with-name = { ai-stopped-task-with-name }
ai_assistant-ai-stopped-task = { ai-stopped-task }
ai_assistant-ai-resume-conversation = { ai-resume-conversation }
ai_assistant-ai-could-not-apply-changes = { ai-could-not-apply-changes }
ai_assistant-ai-suggestion-edited-in-another-tab = { ai-suggestion-edited-in-another-tab }
ai_assistant-ai-new-conversation-started = { ai-new-conversation-started }
ai_assistant-ai-continuing-current-conversation = { ai-continuing-current-conversation }
ai_assistant-ai-new-conversation-cancelled = { ai-new-conversation-cancelled }
ai_assistant-ai-start-a-new-conversation = { ai-start-a-new-conversation }
ai_assistant-ai-topic-changed = { ai-topic-changed }
ai_assistant-ai-the-current-directory = { ai-the-current-directory }
ai_assistant-ai-grep-for = { ai-grep-for }
ai_assistant-ai-grepping-for = { ai-grepping-for }
ai_assistant-ai-cancelled-grep = { ai-cancelled-grep }
ai_assistant-ai-grep-patterns = { ai-grep-patterns }
ai_assistant-ai-grepping-patterns = { ai-grepping-patterns }
ai_assistant-ai-search-files-match = { ai-search-files-match }
ai_assistant-ai-finding-files-match = { ai-finding-files-match }
ai_assistant-ai-cancelled-search-files = { ai-cancelled-search-files }
ai_assistant-ai-find-files-match = { ai-find-files-match }
ai_assistant-ai-finding-files-match = { ai-finding-files-match }
ai_assistant-ai-comment-addressed = { ai-comment-addressed }
ai_assistant-ai-ok-read-mcp-resource = { ai-ok-read-mcp-resource }
ai_assistant-ai-upload-artifact = { ai-upload-artifact }
ai_assistant-ai-description-label = { ai-description-label }
ai_assistant-ai-status-uploaded = { ai-status-uploaded }
ai_assistant-ai-status-upload-failed = { ai-status-upload-failed }
ai_assistant-ai-uploaded-file = { ai-uploaded-file }
ai_assistant-ai-view-screenshot = { ai-view-screenshot }
ai_assistant-ai-ok-computer-control = { ai-ok-computer-control }
ai_assistant-ai-references = { ai-references }
ai_assistant-ai-suggestions = { ai-suggestions }
ai_assistant-ai-good-response = { ai-good-response }
ai_assistant-ai-bad-response = { ai-bad-response }
ai_assistant-ai-continue-conversation = { ai-continue-conversation }
ai_assistant-ai-fork-conversation = { ai-fork-conversation }
ai_assistant-ai-show-credit-usage = { ai-show-credit-usage }
ai_assistant-ai-debug-output = { ai-debug-output }
ai_assistant-ai-listing-messages = { ai-listing-messages }
ai_assistant-ai-grepping-for-patterns = { ai-grepping-for-patterns }
ai_assistant-ai-grepping-for-patterns-with-query = { ai-grepping-for-patterns-with-query }
ai_assistant-ai-reading-messages = { ai-reading-messages }
ai_assistant-ai-assistant-edit-requested-command = { ai-assistant-edit-requested-command }
ai_assistant-ai-assistant-voice-limit-hit = { ai-assistant-voice-limit-hit }
ai_assistant-ai-assistant-voice-error = { ai-assistant-voice-error }
ai_assistant-ai-assistant-no-image-support = { ai-assistant-no-image-support }
ai_assistant-ai-assistant-image-limit = { ai-assistant-image-limit }
ai_assistant-ai-assistant-image-limit-query = { ai-assistant-image-limit-query }
ai_assistant-ai-assistant-image-limit-conversation = { ai-assistant-image-limit-conversation }
ai_assistant-ai-assistant-unsupported-images = { ai-assistant-unsupported-images }
ai_assistant-ai-assistant-image-read-errors = { ai-assistant-image-read-errors }
ai_assistant-ai-assistant-copied-to-clipboard = { ai-assistant-copied-to-clipboard }

## -- Double-prefix aliases for agent status strings --

ai_assistant-ai-assistant-addressed-comments = { ai-assistant-addressed-comments }
ai_assistant-ai-assistant-received-messages = { ai-assistant-received-messages }
ai_assistant-ai-assistant-received-events = { ai-assistant-received-events }
ai_assistant-ai-assistant-seconds = { ai-assistant-seconds }
ai_assistant-ai-assistant-minutes = { ai-assistant-minutes }

## -- Double-prefix aliases for migrated UI strings --

ai_assistant-ai-cancel-summarization = { ai-cancel-summarization }
ai_assistant-ai-continue-summarization = { ai-continue-summarization }
ai_assistant-ai-attach-as-agent-context = { ai-attach-as-agent-context }
ai_assistant-ai-new-agent-pane = { ai-new-agent-pane }
ai_assistant-ai-follow-up-with-existing-conversation = { ai-follow-up-with-existing-conversation }
ai_assistant-ai-invalid-api-key = { ai-invalid-api-key }
ai_assistant-ai-invalid-credentials = { $cli } login.
ai_assistant-ai-one-credit = { $count } credit
ai_assistant-ai-credits = { $count } credits
ai_assistant-ai-credits-decimal = { $count } credits
ai_assistant-ai-aws-region-label = { ai-aws-region-label }
ai_assistant-ai-aws-access-key-id-label = { ai-aws-access-key-id-label }
ai_assistant-ai-now-using-default-model = { ai-now-using-default-model }
ai_assistant-ai-run-in-cloud-env = { ai-run-in-cloud-env }
ai_assistant-ai-recent-activity = { ai-recent-activity }
ai_assistant-ai-view-changelog = { ai-view-changelog }
ai_assistant-ai-recommended = { ai-recommended }
ai_assistant-ai-always-ask-permission = { ai-always-ask-permission }
ai_assistant-ai-no-urls-fetched = { ai-no-urls-fetched }
ai_assistant-ai-no-urls-found = { ai-no-urls-found }
ai_assistant-ai-allow-btn = { ai-allow-btn }
ai_assistant-ai-refine-btn = { ai-refine-btn }
ai_assistant-ai-take-over-btn = { ai-take-over-btn }
ai_assistant-ai-take-control-btn = { ai-take-control-btn }
