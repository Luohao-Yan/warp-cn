# =============================================================================
# ai_assistant.ftl — AI assistant / agent strings
# =============================================================================
# Message IDs: ai_assistant-ai-{id}
# Used in app/src/ai_assistant/*.rs and app/src/ai/*.rs
# =============================================================================

## -- Agent mode labels --------------------------------------------------------

ai-assistant-ai-agent-mode-terminal = Terminal
ai-assistant-ai-agent-mode-agent = Agent
ai-assistant-ai-agent-mode-cloud-agent = Cloud Oz

## -- Chat / conversation ------------------------------------------------------

ai-assistant-ai-chat-placeholder = Ask anything…
ai-assistant-ai-chat-send-label = Send
ai-assistant-ai-chat-stop-label = Stop
ai-assistant-ai-chat-clear-label = Clear conversation
ai-assistant-ai-chat-thinking-label = Thinking…
ai-assistant-ai-chat-error-label = Something went wrong. Please try again.
ai-assistant-ai-chat-retry-label = Retry
ai-assistant-ai-chat-copy-response = Copy response
ai-assistant-ai-chat-insert-response = Insert into terminal
ai-assistant-ai-chat-new-conversation = New conversation

## -- Model selection ----------------------------------------------------------

ai-assistant-ai-model-select-label = Model:
ai-assistant-ai-model-fast-label = Fast
ai-assistant-ai-model-smart-label = Smart
ai-assistant-ai-model-custom-label = Custom

## -- Context chips -----------------------------------------------------------

ai-assistant-ai-context-add-file = Add file
ai-assistant-ai-context-add-folder = Add folder
ai-assistant-ai-context-add-web = Add web page
ai-assistant-ai-context-attached-files = Attached files
ai-assistant-ai-context-clear-all = Clear all

## -- Autodetection -----------------------------------------------------------

ai-assistant-ai-natural-language-enabled = Natural language detection enabled
ai-assistant-ai-natural-language-disabled = Natural language detection disabled
ai-assistant-ai-command-denylist-hint = Commands excluded from AI autodetection

## -- Agent management view filter labels and options --------------------------

ai-assistant-ai-filter-status-label = Status
ai-assistant-ai-filter-status-all = All
ai-assistant-ai-filter-status-working = Working
ai-assistant-ai-filter-status-done = Done
ai-assistant-ai-filter-status-failed = Failed
ai-assistant-ai-filter-source-label = Source
ai-assistant-ai-filter-created-on-label = Created on
ai-assistant-ai-filter-has-artifact-label = Has artifact
ai-assistant-ai-filter-harness-label = Harness
ai-assistant-ai-filter-environment-label = Environment
ai-assistant-ai-filter-created-by-label = Created by
ai-assistant-ai-filter-last-24-hours = Last 24 hours
ai-assistant-ai-filter-past-3-days = Past 3 days
ai-assistant-ai-filter-last-week = Last week
ai-assistant-ai-filter-pull-request = Pull Request
ai-assistant-ai-filter-plan = Plan
ai-assistant-ai-filter-screenshot = Screenshot
ai-assistant-ai-filter-file = File
ai-assistant-ai-filter-unknown = Unknown
ai-assistant-ai-filter-clear-filters = Clear filters
ai-assistant-ai-filter-clear-all = Clear all
ai-assistant-ai-filter-no-results = No results match your filters
ai-assistant-ai-filter-all = All
ai-assistant-ai-filter-none = None
ai-assistant-ai-environment-label = Environment

## -- AI document view overflow menu items -----------------------------------

ai-assistant-ai-doc-copy-link = Copy link
ai-assistant-ai-doc-show-in-warp-drive = Show in Warp Drive
ai-assistant-ai-doc-save-as-markdown = Save as markdown file
ai-assistant-ai-doc-attach-to-active-session = Attach to active session
ai-assistant-ai-doc-copy-plan-id = Copy plan ID

## -- Misc ---------------------------------------------------------------------

ai-assistant-ai-os-not-available = An AI provider is not available on this operating system
ai-assistant-ai-provider-not-configured = AI provider not configured
ai-assistant-ai-configure-provider = Configure AI provider
ai-assistant-ai-invalid-file-name = Invalid File Name
ai-assistant-ai-review-comment = Review Comment
ai-assistant-ai-invalid-api-key-for-provider = Invalid API key for { $provider }

## -- Agent management view / ActionButtons -------------------------------------

ai-assistant-ai-all = All
ai-assistant-ai-all-tooltip = View your agent tasks plus all shared team tasks
ai-assistant-ai-personal = Personal
ai-assistant-ai-personal-tooltip = View agent tasks you created
ai-assistant-ai-view-agents = View Agents
ai-assistant-ai-clear-filters = Clear filters
ai-assistant-ai-clear-all = Clear all
ai-assistant-ai-search = Search
ai-assistant-ai-new-agent = New agent
ai-assistant-ai-unknown = Unknown
ai-assistant-ai-get-started = Get started
ai-assistant-ai-visit-oz = Visit Oz
ai-assistant-ai-runs = Runs
ai-assistant-ai-loading-agents = Loading agents...
ai-assistant-ai-no-filter-results = No results matched your filters
ai-assistant-ai-created-on = Created on
ai-assistant-ai-has-artifact = Has artifact
ai-assistant-ai-pull-request = Pull Request
ai-assistant-ai-plan = Plan
ai-assistant-ai-screenshot = Screenshot
ai-assistant-ai-file = File
ai-assistant-ai-none = None
ai-assistant-ai-last-24-hours = Last 24 hours
ai-assistant-ai-past-3-days = Past 3 days
ai-assistant-ai-last-week = Last week
ai-assistant-ai-environment = Environment
ai-assistant-ai-created-by = Created by
ai-assistant-ai-session-expired = Session expired
ai-assistant-ai-no-session-available = No session available
ai-assistant-ai-agent-label = Agent
ai-assistant-ai-executor-label = Executor
ai-assistant-ai-loading-cloud-agent-runs = Loading cloud agent runs

## -- Agent management / Notifications ------------------------------------------

ai-assistant-ai-mark-all-as-read = Mark all as read
ai-assistant-ai-notifications-title = Notifications
ai-assistant-ai-no-notifications = No notifications
ai-assistant-ai-close-tooltip = Close

## -- Cloud setup guide ---------------------------------------------------------

ai-assistant-ai-cloud-agents-getting-started = Getting started with Oz cloud agents
ai-assistant-ai-cloud-agents-subtitle = Start Oz cloud agents directly in Warp from an integration (Linear, Slack), with an event (GitHub, built-in schedule), or programmatically with the Oz SDK or CLI.
ai-assistant-ai-check-out-the = Check out the
ai-assistant-ai-oz-documentation = Oz documentation
ai-assistant-ai-to-learn-more =  to learn more.
ai-assistant-ai-quick-start-visit = Quick start: Visit oz.warp.dev for a UI-based setup experience.
ai-assistant-ai-manual-setup-create-integration = Manual setup: Create a Slack or Linear integration with the Oz CLI
ai-assistant-ai-create-an-environment = Create an environment
ai-assistant-ai-first-set-up-environment = First, set up an environment to create an integration.
ai-assistant-ai-use-warps-env-setup = Use Warp's environment setup command to have an agent help you through it.
ai-assistant-ai-visit-docs = Visit docs
ai-assistant-ai-or-supply-docker-image = Or, supply your own existing docker image.
ai-assistant-ai-create-an-integration = Create an integration
ai-assistant-ai-integrate-slack-linear = Integrate Slack or Linear to assign Warp's Agent tasks with @Warp.
ai-assistant-ai-wf-create-environment = Create Environment
ai-assistant-ai-wf-create-environment-cli = Create Environment (CLI)
ai-assistant-ai-wf-create-slack-integration = Create Slack Integration
ai-assistant-ai-wf-create-linear-integration = Create Linear Integration
ai-assistant-ai-wf-create-env-arg-repo = GitHub link or local file path of the repository
ai-assistant-ai-wf-create-env-cli-arg-name = Name of the environment
ai-assistant-ai-wf-create-env-cli-arg-image = Docker image to use for the environment
ai-assistant-ai-wf-integration-arg-env-id = ID of the environment to integrate

## -- AI document view ----------------------------------------------------------

ai-assistant-ai-show-version-history-tooltip = Show version history
ai-assistant-ai-update-agent = Update Agent
ai-assistant-ai-restore = Restore
ai-assistant-ai-save-and-sync-tooltip = Save and auto-sync this plan to your Warp Drive
ai-assistant-ai-plan-synced-message = This plan is synced to your Warp Drive and will auto save any edits you make.
ai-assistant-ai-copy-link = Copy link
ai-assistant-ai-show-in-warp-drive = Show in Warp Drive
ai-assistant-ai-save-as-markdown = Save as markdown file
ai-assistant-ai-attach-to-active-session = Attach to active session
ai-assistant-ai-copy-plan-id = Copy plan ID
ai-assistant-ai-link-copied-toast = Link copied to clipboard
ai-assistant-ai-plan-id-copied-toast = Plan ID copied to clipboard
ai-assistant-ai-planning-document = Planning document
ai-assistant-ai-untitled = Untitled

## -- Agent input footer / ActionButtons and tooltips ---------------------------

ai-assistant-ai-enable-nld-tooltip = Enable terminal command autodetection
ai-assistant-ai-disable-nld-tooltip = Disable terminal command autodetection
ai-assistant-ai-fast-forward-on-tooltip = Turn off auto-approve all agent actions
ai-assistant-ai-fast-forward-off-tooltip = Auto-approve all agent actions for this task
ai-assistant-ai-start-remote-control-tooltip = Start remote control
ai-assistant-ai-start-remote-control-login-tooltip = Log in to use /remote-control
ai-assistant-ai-voice-input-tooltip = Voice input
ai-assistant-ai-attach-file-tooltip = Attach file
ai-assistant-ai-hand-off-to-cloud-tooltip = Hand off to cloud
ai-assistant-ai-file-explorer-label = File explorer
ai-assistant-ai-file-explorer-tooltip = Open file explorer
ai-assistant-ai-rich-input-label = Rich Input
ai-assistant-ai-rich-input-tooltip = Open Rich Input
ai-assistant-ai-hide-rich-input-label = Hide Rich Input
ai-assistant-ai-hide-rich-input-tooltip = Hide Rich Input
ai-assistant-ai-open-coding-agent-settings-tooltip = Open coding agent settings
ai-assistant-ai-enable-notifications-label = Enable notifications
ai-assistant-ai-install-plugin-tooltip = Install the Warp plugin to enable rich agent notifications within Warp
ai-assistant-ai-notifications-setup-instructions-label = Notifications setup instructions
ai-assistant-ai-notifications-setup-instructions-tooltip = View instructions to install the Warp plugin
ai-assistant-ai-update-warp-plugin-label = Update Warp plugin
ai-assistant-ai-update-plugin-tooltip = A new version of the Warp plugin is available
ai-assistant-ai-plugin-update-instructions-label = Plugin update instructions
ai-assistant-ai-plugin-update-instructions-tooltip = View instructions to update the Warp plugin
ai-assistant-ai-dismiss-tooltip = Dismiss
ai-assistant-ai-stop-sharing-label = Stop sharing
ai-assistant-ai-stop-sharing-tooltip = Stop sharing
ai-assistant-ai-context-window-usage-tooltip = Context window usage

## -- Pending user query block --------------------------------------------------

ai-assistant-ai-remove-queued-prompt = Remove queued prompt
ai-assistant-ai-send-now = Send now
ai-assistant-ai-queued = Queued

## -- Block.rs ActionButton labels and tooltips ---------------------------------

ai-assistant-ai-open-in-github-tooltip = Open in GitHub
ai-assistant-ai-open-in-code-review = Open in code review
ai-assistant-ai-manage-rules = Manage rules
ai-assistant-ai-review-changes = Review changes
ai-assistant-ai-open-all-in-code-review = Open all in code review
ai-assistant-ai-dismiss-suggestion = Dismiss
ai-assistant-ai-dont-show-again = Don't show again
ai-assistant-ai-rewind = Rewind
ai-assistant-ai-rewind-tooltip = Rewind to before this block
ai-assistant-ai-cancel = Cancel
ai-assistant-ai-copied-to-clipboard = Copied to clipboard
ai-assistant-ai-thank-you-feedback = Thank you for your feedback!
ai-assistant-ai-follow-up-conversation-tooltip = Continue an existing conversation

## -- Suggested rule modal ------------------------------------------------------

ai-assistant-ai-suggested-rule-header = Suggested rule
ai-assistant-ai-add-rule = Add rule
ai-assistant-ai-edit-rule = Edit rule
ai-assistant-ai-editing-disabled-offline = Editing is disabled while offline.
ai-assistant-ai-name-label = Name
ai-assistant-ai-rule-label = Rule

## -- Summarization cancel dialog -----------------------------------------------

ai-assistant-ai-cancel-summarization = Cancel summarization
ai-assistant-ai-continue-summarization = Continue summarization

## -- Telemetry banner ----------------------------------------------------------

ai-assistant-ai-telemetry-title-existing = We've updated our telemetry policy.
ai-assistant-ai-telemetry-title-new = Help us improve Warp.
ai-assistant-ai-telemetry-description = We may collect certain console interactions to improve Warp's AI features. You can opt out at any time.
ai-assistant-ai-manage-privacy-settings = Manage privacy settings

## -- AWS Bedrock credentials error ---------------------------------------------

ai-assistant-ai-aws-auth-failed = Failed to authenticate with AWS Bedrock when using { $model_name }. Run `{ $login_command }` to refresh credentials.
ai-assistant-ai-always-run-auto = Always run automatically
ai-assistant-ai-refresh-aws-credentials = Refresh AWS Credentials
ai-assistant-ai-running-login-command = Running `{ $login_command }`...
ai-assistant-ai-configure = Configure
ai-assistant-ai-aws-credentials-not-found = AWS credentials were not found for { $profile_reference }. Log in with the AWS CLI or update your AWS credentials configuration, then refresh.
ai-assistant-ai-aws-credentials-timeout = Timed out while loading AWS credentials. Refresh and try again.
ai-assistant-ai-aws-credentials-invalid-config = { $profile_reference } is invalid or incomplete in your local AWS configuration. Update your AWS profile settings and credentials, then refresh.
ai-assistant-ai-aws-credentials-provider-error = Unable to load AWS credentials from your configured provider. Refresh your AWS login and try again.
ai-assistant-ai-aws-credentials-unexpected-error = Unexpected error while loading AWS credentials. Refresh your AWS login and try again.
ai-assistant-ai-aws-credentials-unable-to-load = Unable to load AWS credentials. Refresh your AWS login and try again.
ai-assistant-ai-aws-credentials-refresh-interrupted = Credential refresh was interrupted
ai-assistant-ai-aws-profile-reference-default = the default AWS profile
ai-assistant-ai-aws-profile-reference-named = the AWS profile `{ $profile }`
ai-assistant-ai-aws-profile-reference-default-capitalized = The default AWS profile
ai-assistant-ai-aws-profile-reference-named-capitalized = The AWS profile `{ $profile }`

## -- Ask user question view ----------------------------------------------------

ai-assistant-ai-type-answer = Type your answer and press Enter
ai-assistant-ai-skip-all = Skip all
ai-assistant-ai-next = Next
ai-assistant-ai-other = Other...
ai-assistant-ai-agent-questions = Agent questions
ai-assistant-ai-questions-unavailable = Questions unavailable
ai-assistant-ai-questions-skipped = Questions skipped
ai-assistant-ai-questions-skipped-autoapprove = Questions skipped due to auto-approve
ai-assistant-ai-allow-agent-questions = Allow the agent to ask questions:
ai-assistant-ai-answered-question = Answered question
ai-assistant-ai-answered-all-questions = Answered all { $total } questions
ai-assistant-ai-skipped = Skipped

## -- Execution profile editor --------------------------------------------------

ai-assistant-ai-profile-editor-header = Profile Editor
ai-assistant-ai-profile-agent-decides = Agent decides
ai-assistant-ai-profile-always-allow = Always allow
ai-assistant-ai-profile-always-ask = Always ask
ai-assistant-ai-profile-ask-on-first-write = Ask on first write
ai-assistant-ai-profile-never = Never
ai-assistant-ai-profile-never-ask = Never ask
ai-assistant-ai-profile-ask-unless-autoapprove = Ask unless auto-approve
ai-assistant-ai-profile-frontier-unavailable = Frontier models are unavailable on the free plan. Please upgrade
ai-assistant-ai-edit-profile = Edit profile
ai-assistant-ai-delete-profile = Delete profile
ai-assistant-ai-select-mcp-servers = Select MCP servers
ai-assistant-ai-profile-eg-ls = e.g. ls .*
ai-assistant-ai-profile-eg-rm = e.g. rm .*
ai-assistant-ai-profile-eg-repo = e.g. ~/code-repos/repo
ai-assistant-ai-profile-eg-yolo = e.g. "YOLO code"

## -- Requested command ---------------------------------------------------------

ai-assistant-ai-reject = Reject
ai-assistant-ai-run = Run
ai-assistant-ai-edit-command = Edit
ai-assistant-ai-done = Done
ai-assistant-ai-generating-command = Generating command...
ai-assistant-ai-agent-monitoring-command = Agent is monitoring command...
ai-assistant-ai-agent-needs-input = The agent needs your input to continue
ai-assistant-ai-user-in-control = User in control.
ai-assistant-ai-user-stopped-agent = Paused agent. User in control.
ai-assistant-ai-user-take-control = User in control
ai-assistant-ai-agent-errored = Something went wrong with the agent. Take over control.
ai-assistant-ai-viewing-command-detail = Viewing command detail
ai-assistant-ai-viewing-mcp-tool-detail = Viewing MCP tool call detail
ai-assistant-ai-ok-run-command = OK if I run this command and read the output?
ai-assistant-ai-ok-call-mcp-tool = OK if I call this MCP tool?
ai-assistant-ai-edit-requested-command = Edit requested command
ai-assistant-ai-auto-approve = Auto-approve
ai-assistant-ai-copied-from = Copied from

## -- Code diff view ------------------------------------------------------------

ai-assistant-ai-expand = Expand
ai-assistant-ai-collapse = Collapse
ai-assistant-ai-open-config = Open config
ai-assistant-ai-no-file-name = No file name
ai-assistant-ai-file-renamed-no-changes = File renamed (no changes)
ai-assistant-ai-dont-show-banners = Don't show suggested code banners again
ai-assistant-ai-manage-banner-settings = Manage suggested code banner settings
ai-assistant-ai-settings-ai = Settings > AI
ai-assistant-ai-requested-edit = Requested edit
ai-assistant-ai-review-changes-tooltip = Review changes
ai-assistant-ai-expand-tooltip = Expand
ai-assistant-ai-collapse-tooltip = Collapse
ai-assistant-ai-edit-code-diff = Edit code diff
ai-assistant-ai-refine = Refine
ai-assistant-ai-dismiss = Dismiss
ai-assistant-ai-accept-and-continue = Accept and continue with agent
ai-assistant-ai-iterate-with-agent = Iterate with agent
ai-assistant-ai-file-new = { $file_name } (new)
ai-assistant-ai-file-deleted = { $file_name } (deleted)
ai-assistant-ai-failed-revert = Failed to revert changes to { $file_name }
ai-assistant-ai-file-suffix = file
ai-assistant-ai-renamed-suffix = (renamed)
ai-assistant-ai-deleted-file-suffix = (deleted file)

## -- Suggested unit tests ------------------------------------------------------

ai-assistant-ai-generate-tests = Generate tests
ai-assistant-ai-dismiss-tests = Dismiss
ai-assistant-ai-dont-show-suggested-banners = Don't show suggested code banners again
ai-assistant-ai-manage-suggested-settings = Settings > AI

## -- Toast messages ---------------------------------------------------------------

ai-assistant-ai-copied-branch-name = Copied branch name
ai-assistant-ai-failed-prepare-file-download = Failed to prepare file download.
ai-assistant-ai-downloaded-file = Downloaded { $filename }.
ai-assistant-ai-failed-download-file = Failed to download { $filename }.
ai-assistant-ai-plugin-install-failed-toast = Could not automatically install plugin. Please click the chip again for manual installation steps.
ai-assistant-ai-plugin-installed-restart-toast = Warp plugin installed. Please restart the session to activate.
ai-assistant-ai-plugin-updated-restart-toast = Warp plugin updated. Please restart the session to activate.
ai-assistant-ai-installing-warp-plugin = Installing Warp plugin...
ai-assistant-ai-failed-install-warp-plugin = Failed to install Warp plugin
ai-assistant-ai-updating-warp-plugin = Updating Warp plugin...
ai-assistant-ai-failed-update-warp-plugin = Failed to update Warp plugin
ai-assistant-ai-voice-microphone-access = Failed to start voice input (you may need to enable Microphone access)
ai-assistant-ai-voice-enabled-toast = Voice input is enabled. You can also press and hold the `{ $key }` key to activate voice input (configure in Settings > AI > Voice)

## -- Facts view ------------------------------------------------------------------

ai-assistant-ai-edit-api-keys = Edit API Keys
ai-assistant-ai-open-file = Open file

## -- Ask user question view ---------------------------------------------------

ai-assistant-ai-type-answer-placeholder = Type your answer and press Enter
ai-assistant-ai-select-all-that-apply =  (select all that apply)
ai-assistant-ai-questions-skipped-auto-approve = Questions skipped due to auto-approve
ai-assistant-ai-allow-agent-ask-questions = Allow the agent to ask questions:
ai-assistant-ai-prev-nav = prev
ai-assistant-ai-next-nav = next
ai-assistant-ai-answered-of-questions = Answered { $answered_count } of { $total } questions
ai-assistant-ai-skipped-answer = Skipped
ai-assistant-ai-question-prefix = Q: { $question }
ai-assistant-ai-answer-prefix = A: { $answer }

## -- Execution profile editor -------------------------------------------------

ai-assistant-ai-profile-editor = Profile Editor
ai-assistant-ai-agent-decides = Agent decides
ai-assistant-ai-always-allow = Always allow
ai-assistant-ai-always-ask = Always ask
ai-assistant-ai-ask-on-first-write = Ask on first write
ai-assistant-ai-never = Never
ai-assistant-ai-never-ask = Never ask
ai-assistant-ai-ask-unless-auto-approve = Ask unless auto-approve
ai-assistant-ai-command-allowlist-placeholder = e.g. ls .*
ai-assistant-ai-command-denylist-placeholder = e.g. rm .*
ai-assistant-ai-directory-allowlist-placeholder = e.g. ~/code-repos/repo
ai-assistant-ai-profile-name-placeholder = e.g. "YOLO code"
ai-assistant-ai-default-profile-name = Default
ai-assistant-ai-upgrade-footer = Frontier models are unavailable on free plans. Upgrade
ai-assistant-ai-upgrade-link = Upgrade

## -- Execution profile editor UI helpers -------------------------------------

ai-assistant-ai-default-profile-name-cannot-change = Default profile name cannot be changed.
ai-assistant-ai-models-section = MODELS
ai-assistant-ai-base-model = Base model
ai-assistant-ai-base-model-desc = This model serves as the primary engine behind the agent. It powers most interactions and invokes other models for tasks like planning or code generation when necessary. Warp may automatically switch to alternate models based on model availability or for auxiliary tasks such as conversation summarization.
ai-assistant-ai-context-window = Context window
ai-assistant-ai-context-window-desc = The base model's working memory — how many tokens of your conversation, code, and documents it can consider at once. Larger windows enable longer conversations and more coherent responses over bigger codebases, at the cost of higher latency and compute usage.
ai-assistant-ai-full-terminal-use-model = Full terminal use model
ai-assistant-ai-full-terminal-use-model-desc = The model used when the agent operates inside interactive terminal applications like database shells, debuggers, REPLs, or dev servers—reading live output and writing commands to the PTY.
ai-assistant-ai-computer-use-model = Computer use model
ai-assistant-ai-computer-use-model-desc = The model used when the agent takes control of your computer to interact with graphical applications through mouse movements, clicks, and keyboard input.
ai-assistant-ai-permissions-section = PERMISSIONS
ai-assistant-ai-apply-code-diffs = Apply code diffs
ai-assistant-ai-read-files = Read files
ai-assistant-ai-execute-commands = Execute commands
ai-assistant-ai-interact-with-running-commands = Interact with running commands
ai-assistant-ai-computer-use = Computer use
ai-assistant-ai-ask-questions = Ask questions
ai-assistant-ai-call-mcp-servers = Call MCP servers
ai-assistant-ai-workspace-override-tooltip = This option is enforced by your organization's settings and cannot be customized.
ai-assistant-ai-directory-allowlist = Directory allowlist
ai-assistant-ai-directory-allowlist-desc = Give the agent file access to certain directories.
ai-assistant-ai-command-allowlist = Command allowlist
ai-assistant-ai-command-allowlist-desc = Regular expressions to match commands that can be automatically executed by Oz.
ai-assistant-ai-command-denylist = Command denylist
ai-assistant-ai-command-denylist-desc = Regular expressions to match commands that Oz should always ask permission to execute.
ai-assistant-ai-mcp-allowlist = MCP allowlist
ai-assistant-ai-mcp-allowlist-desc = MCP servers that are allowed to be called by Oz.
ai-assistant-ai-mcp-denylist = MCP denylist
ai-assistant-ai-mcp-denylist-desc = MCP servers that are not allowed to be called by Oz.
ai-assistant-ai-mcp-server-fallback = MCP Server { $uuid }
ai-assistant-ai-plan-auto-sync = Plan auto-sync
ai-assistant-ai-plan-auto-sync-desc = The plans this agent creates will be automatically added and synced to Warp Drive.
ai-assistant-ai-call-web-tools = Call web tools
ai-assistant-ai-call-web-tools-desc = The agent may use web search when helpful for completing tasks.

## -- Permission descriptions --------------------------------------------------

ai-assistant-ai-permission-agent-decides-desc = The Agent chooses the safest path: acting on its own when confident, and asking for approval when uncertain.
ai-assistant-ai-permission-always-allow-desc = Give the Agent full autonomy — no manual approval ever required.
ai-assistant-ai-permission-always-ask-desc = Require explicit approval before the Agent takes any action.
ai-assistant-ai-permission-ask-on-first-write-desc = The agent will ask for permission the first time it needs to interact with a running command. After that, it will continue automatically for the rest of that command.
ai-assistant-ai-permission-write-always-ask-desc = The agent will always ask for permission to interact with a running command.
ai-assistant-ai-permission-computer-use-never-desc = Computer use tools are disabled and will not be available to the Agent.
ai-assistant-ai-permission-computer-use-always-ask-desc = Require explicit approval before the Agent uses computer use tools.
ai-assistant-ai-permission-computer-use-always-allow-desc = Give the Agent full autonomy to use computer use tools without approval.
ai-assistant-ai-permission-unknown-desc = Unknown setting.
ai-assistant-ai-permission-ask-except-auto-approve-desc = The Agent may ask a question and pause for your response, but will continue automatically when auto-approve is on.
ai-assistant-ai-permission-never-ask-desc = The Agent will not ask questions and will continue with its best judgment.
ai-assistant-ai-permission-always-ask-question-desc = The Agent may ask a question and will pause for your response even when auto-approve is on.

## -- Additional i18n strings for hardcoded UI text --------------------------------

ai-assistant-ai-accept = Accept
ai-assistant-ai-view-in-oz = View in Oz
ai-assistant-ai-view-in-oz-tooltip = View this run in the Oz web app
ai-assistant-ai-initialize-project = Initialize Project
ai-assistant-ai-delete-rule = Delete rule
ai-assistant-ai-choose-your-agent = Choose your agent
ai-assistant-ai-suggested = Suggested
ai-assistant-ai-cloud-agent = Cloud agent
ai-assistant-ai-local-agent = Local agent
ai-assistant-ai-open-conversation = Open conversation
ai-assistant-ai-cancel-task = Cancel task
ai-assistant-ai-fork-conversation = Fork conversation
ai-assistant-ai-copy-link-to-run = Copy link to run
ai-assistant-ai-notif-filter-all = All tabs
ai-assistant-ai-notif-filter-unread = Unread
ai-assistant-ai-notif-filter-errors = Errors

# -- Agent type selector --
ai-assistant-ai-cloud-agent-desc = Runs autonomously in a cloud environment you choose. Best for parallel or long-running work.
ai-assistant-ai-local-agent-desc = Runs on your machine and requires supervision. Best for quick, interactive tasks.

## -- Additional AI assistant strings --
ai-assistant-ai-feature-name = Warp AI
ai-assistant-ai-ask-text = Ask Warp AI
ai-assistant-ai-zero-state-script-prompt = Write a script to connect to an AWS EC2 instance.
ai-assistant-ai-zero-state-git-prompt = How do I undo the most recent commits in git?
ai-assistant-ai-how-do-i-fix = How do I fix this?
ai-assistant-ai-show-examples = Show examples.
ai-assistant-ai-enter-custom-docker-image = Enter custom Docker image name:
ai-assistant-ai-dont-show-suggested-code-banners = Don't show me suggested code banners again
ai-assistant-ai-rules-header = Rules
ai-assistant-ai-rules-description = Rules enhance the agent by providing structured guidelines that help maintain consistency, enforce best practices, and adapt to specific workflows, including codebases or broader tasks.
ai-assistant-ai-search-rules = Search rules
ai-assistant-ai-zero-state-text = Once you add a rule, it will be shown here.
ai-assistant-ai-zero-state-project-text = Once you generate a WARP.md rules file for a project, it will appear here.
ai-assistant-ai-disabled-banner-text = Your rules are disabled and won't be used as context in sessions. You can
ai-assistant-ai-disabled-banner-link-text = turn it back on
ai-assistant-ai-disabled-banner-text-2 =  anytime.
ai-assistant-ai-global-scope-tab = Global
ai-assistant-ai-project-based-scope-tab = Project based
ai-assistant-ai-rule-name-placeholder = e.g. Rust rules
ai-assistant-ai-rule-description-placeholder = e.g. Never use unwrap in Rust
ai-assistant-ai-refine = Refine
ai-assistant-ai-dismiss = Dismiss
ai-assistant-ai-accept-and-continue = Accept and continue with agent
ai-assistant-ai-iterate-with-agent = Iterate with agent
ai-assistant-ai-file-new = { $file_name } (new)
ai-assistant-ai-file-deleted = { $file_name } (deleted)
ai-assistant-ai-failed-revert = Failed to revert changes to { $file_name }
ai-assistant-ai-file-suffix = file
ai-assistant-ai-renamed-suffix = (renamed)
ai-assistant-ai-deleted-file-suffix = (deleted file)

## -- Agent tip strings --

ai-assistant-ai-tip-label = Tip:
ai-assistant-ai-tip-slash-commands = `/` to open the slash-command menu and access quick agent actions.
ai-assistant-ai-tip-toggle-nl-detection = <keybinding> to toggle natural language detection and switch between agent and terminal input.
ai-assistant-ai-tip-plan = `/plan` <prompt> to create a plan for the agent before executing.
ai-assistant-ai-tip-command-palette = <keybinding> to open the Command Palette and access Warp actions and shortcuts.
ai-assistant-ai-tip-store-workflows = Store reusable workflows, notebooks, and prompts in your
ai-assistant-ai-tip-redirect-agent = Enter a new prompt to redirect the agent while it's running.
ai-assistant-ai-tip-at-context = `@` to add context from files, blocks, or Warp Drive objects to your prompt.
ai-assistant-ai-tip-attach-block = <keybinding> to attach the prior command output as agent context.
ai-assistant-ai-tip-init-repo = `/init` to index the repo so the agent can understand your codebase.
ai-assistant-ai-tip-agent-profiles = Add agent profiles to customize permissions and models per session.
ai-assistant-ai-tip-fork-conversation = Right-click a block to fork the conversation from that point.
ai-assistant-ai-tip-copy-output = Right-click a block to copy a conversation's output.
ai-assistant-ai-tip-drag-image = Drag an image into the pane to attach it as agent context.
ai-assistant-ai-tip-interactive-tools = Prompt the agent to control interactive tools like node, python, postgres, gdb, or vim.
ai-assistant-ai-tip-code-review = <keybinding> to open the code review panel and review the agent's changes.
ai-assistant-ai-tip-add-mcp = `/add-mcp` to add an MCP server to your workspace.
ai-assistant-ai-tip-open-mcp = `/open-mcp-servers` to view and share MCP servers with your team.
ai-assistant-ai-tip-create-environment = `/create-environment` to turn a repo into a remote docker environment an agent can run in.
ai-assistant-ai-tip-add-prompt = `/add-prompt` to create a reusable prompt for repeatable workflows.
ai-assistant-ai-tip-add-rule = `/add-rule` to create a global agent rule.
ai-assistant-ai-tip-fork = `/fork` to create a fresh copy of the current conversation, optionally with a new prompt.
ai-assistant-ai-tip-open-code-review = `/open-code-review` to open the code review panel and inspect agent-generated diffs.
ai-assistant-ai-tip-new = `/new` to start a new agent conversation with clean context.
ai-assistant-ai-tip-compact = `/compact` to summarize the current conversation and free up space in the context window.
ai-assistant-ai-tip-usage = `/usage` to show your current AI credits usage.
ai-assistant-ai-tip-oz-command = Use the `oz` command to run an Oz agent in headless mode, useful for remote machines.
ai-assistant-ai-tip-selected-text-context = Right-click selected text to attach it as agent context.
ai-assistant-ai-tip-agents-md = Use `AGENTS.md` or `CLAUDE.md` to apply project-scoped rules.
ai-assistant-ai-tip-paste-url = Paste a URL to attach that webpage as context for the agent.
ai-assistant-ai-tip-warpify-ssh = Warpify a remote SSH session to enable Oz inside that environment.
ai-assistant-ai-tip-switch-profiles = Switch agent profiles to quickly change models and agent permissions.
ai-assistant-ai-tip-init-warp-md = `/init` to generate a `WARP.md` file and define project rules for the agent.
ai-assistant-ai-tip-auto-approve = <keybinding> to auto-approve the agent's commands and diffs for the rest of the session.
ai-assistant-ai-tip-cancel-task = <keybinding> to cancel the current agent task.
ai-assistant-ai-warp-drive-period = Warp Drive.
ai-assistant-ai-tip-voice-input = Hold <keybinding> to speak your prompt directly to the agent.

## -- Output view strings --

ai-assistant-ai-conversation-summarized = Conversation summarized
ai-assistant-ai-thought-for-duration = Thought for { $duration }
ai-assistant-ai-searched = Searched
ai-assistant-ai-searching = Searching
ai-assistant-ai-conversation-label = conversation
ai-assistant-ai-this-conversation = this conversation
ai-assistant-ai-sorry-bad-experience-single = Sorry you had a bad experience with this interaction. We've refunded you 1 credit. We appreciate your feedback!
ai-assistant-ai-sorry-bad-experience-plural = Sorry you had a bad experience with this interaction. We've refunded you { $count } credits. We appreciate your feedback!
ai-assistant-ai-response-wont-count = This response won't count towards your usage.
ai-assistant-ai-always-allow-file-access-coding = Always allow file access for coding tasks
ai-assistant-ai-always-allow-file-access-repo = Always allow file access for this repo
ai-assistant-ai-manage-autonomy-permissions = Manage AI Autonomy permissions
ai-assistant-ai-search-in = Search in { $path }
ai-assistant-ai-searching-in = Searching in { $path }
ai-assistant-ai-no-relevant-files = No relevant files found.
ai-assistant-ai-search-failed-not-indexed = Search in { $path } failed because the codebase isn't indexed
ai-assistant-ai-search-failed = Search in { $path } failed
ai-assistant-ai-search-cancelled = Search in { $path } cancelled
ai-assistant-ai-in-path-cancelled =  in { $path } cancelled
ai-assistant-ai-in-path =  in { $path }
ai-assistant-ai-failed-read-files = Failed to read files
ai-assistant-ai-open-skill = Open skill
ai-assistant-ai-stopped-task-with-index = Stopped task { $current }/{ $total }: "{ $title }"
ai-assistant-ai-stopped-task-with-name = Stopped task: "{ $task_name }"
ai-assistant-ai-stopped-task = Stopped task
ai-assistant-ai-resume-conversation = Resume conversation
ai-assistant-ai-could-not-apply-changes = Could not apply changes to file.
ai-assistant-ai-suggestion-edited-in-another-tab = This suggestion is being edited in another tab.
ai-assistant-ai-new-conversation-started = New conversation started
ai-assistant-ai-continuing-current-conversation = Continuing current conversation
ai-assistant-ai-new-conversation-cancelled = New conversation suggestion cancelled
ai-assistant-ai-start-a-new-conversation = Start a new conversation
ai-assistant-ai-topic-changed = It seems like the topic changed. Would you like to make a new conversation?
ai-assistant-ai-the-current-directory = the current directory
ai-assistant-ai-grep-for = Grep for
ai-assistant-ai-grepping-for = Grepping for
ai-assistant-ai-cancelled-grep = Cancelled grep for the following patterns in { $path }
ai-assistant-ai-grep-patterns = Grep for the following patterns in { $path }
ai-assistant-ai-grepping-patterns = Grepping for the following patterns in { $path }
ai-assistant-ai-search-files-match = Search for files that match
ai-assistant-ai-finding-files-match = Finding files that match
ai-assistant-ai-cancelled-search-files = Cancelled search for files that match the following patterns in { $path }
ai-assistant-ai-find-files-match = Find files that match the following patterns in { $path }
ai-assistant-ai-finding-files-match = Finding files that match the following patterns in { $path }
ai-assistant-ai-comment-addressed = Comment addressed: "{ $content }"
ai-assistant-ai-ok-read-mcp-resource = OK if I read this MCP resource?
ai-assistant-ai-upload-artifact = Upload artifact: { $file_path }
ai-assistant-ai-description-label = Description: { $description }
ai-assistant-ai-status-uploaded = Status: uploaded artifact { $artifact_uid }
ai-assistant-ai-status-upload-failed = Status: upload failed: { $error }
ai-assistant-ai-uploaded-file = Uploaded file: { $filepath }
ai-assistant-ai-view-screenshot = View screenshot
ai-assistant-ai-ok-computer-control = OK if I use computer control for this task?
ai-assistant-ai-references = References
ai-assistant-ai-suggestions = Suggestions:
ai-assistant-ai-good-response = Good response
ai-assistant-ai-bad-response = Bad response
ai-assistant-ai-continue-conversation = Continue conversation
ai-assistant-ai-fork-conversation = Fork conversation
ai-assistant-ai-show-credit-usage = Show credit usage details
ai-assistant-ai-debug-output = Debug output
ai-assistant-ai-listing-messages = Listing messages
ai-assistant-ai-grepping-for-patterns = Grepping for patterns
ai-assistant-ai-grepping-for-patterns-with-query = Grepping for patterns: { $query }
ai-assistant-ai-reading-messages = Reading { $count } messages

## -- Static prompt suggestion strings --

ai-assistant-ai-code-feature-or-fix-bug-in-arg1 = Code a feature or fix a bug in { $arg1 }
ai-assistant-ai-help-code-feature-or-fix-bug-in-arg1 = Help me code a feature or fix a bug in { $arg1 }
ai-assistant-ai-implement-feature-or-fix-bug-in-arg1 = Implement a feature or fix a bug in { $arg1 }. Ask me for all the details you need.
ai-assistant-ai-help-create-pull-request = Help me create a pull request.
ai-assistant-ai-help-start-new-project = Help me start a new project
ai-assistant-ai-help-start-new-project-ask-details = Help me start a new project. Ask me for all the details you need.
ai-assistant-ai-help-start-nodejs-project = Help me start a Node.js project
ai-assistant-ai-help-start-nodejs-project-ask-details = Help me start a Node.js project. Ask me for all the details you need.
ai-assistant-ai-help-create-new-react-app = Help me create a new React app
ai-assistant-ai-help-create-new-react-app-called-arg1 = Help me create a new React app called { $arg1 }. Ask me for all the details you need.
ai-assistant-ai-help-create-new-nextjs-app = Help me create a new Next.js app
ai-assistant-ai-help-create-new-nextjs-app-called-arg1 = Help me create a new Next.js app called { $arg1 }. Ask me for all the details you need.
ai-assistant-ai-help-start-rust-project-for-arg1 = Help me start a Rust project for { $arg1 }
ai-assistant-ai-help-start-rust-project-for-arg1-ask-details = Help me start a Rust project for { $arg1 }. Ask me for all the details you need.
ai-assistant-ai-help-start-poetry-project-for-arg1 = Help me start a Poetry project for { $arg1 }
ai-assistant-ai-help-start-poetry-project-for-arg1-ask-details = Help me start a Poetry project for { $arg1 }. Ask me for all the details you need.
ai-assistant-ai-help-start-django-project-for-arg1 = Help me start a Django project for { $arg1 }
ai-assistant-ai-help-start-django-project-for-arg1-ask-details = Help me start a Django project for { $arg1 }. Ask me for all the details you need.
ai-assistant-ai-help-start-rails-app-for-arg1 = Help me start a Rails app for { $arg1 }
ai-assistant-ai-help-start-rails-app-for-arg1-ask-details = Help me start a Rails app for { $arg1 }. Ask me for all the details you need.
ai-assistant-ai-help-start-gradle-maven-project = Help me start a Gradle/Maven project
ai-assistant-ai-help-start-gradle-maven-project-ask-details = Help me start a Gradle/Maven project. Ask me for all the details you need.
ai-assistant-ai-help-start-go-project-for-arg1 = Help me start a Go project for { $arg1 }
ai-assistant-ai-help-start-go-project-for-arg1-ask-details = Help me start a Go project for { $arg1 }. Ask me for all the details you need.
ai-assistant-ai-help-start-swift-project = Help me start a Swift project
ai-assistant-ai-help-start-swift-project-ask-details = Help me start a Swift project. Ask me for all the details you need.
ai-assistant-ai-help-start-terraform-configuration = Help me start a Terraform configuration
ai-assistant-ai-help-start-terraform-configuration-ask-details = Help me start a Terraform configuration. Ask me for all the details you need.
ai-assistant-ai-help-set-up-prisma-in-this-project = Help me set up Prisma in this project
ai-assistant-ai-help-set-up-prisma-in-this-project-query = Help me set up Prisma in this project.
ai-assistant-ai-help-install-dependencies-for-arg1 = Help me install dependencies for { $arg1 }.
ai-assistant-ai-help-set-up-new-ruby-project = Help me set up a new Ruby project
ai-assistant-ai-help-set-up-new-ruby-project-ask-details = Help me set up a new Ruby project. Ask me for all the details you need.
ai-assistant-ai-help-set-up-modelfile-for-arg1 = Help me set up a Modelfile for { $arg1 }.
ai-assistant-ai-help-understand-resource-utilization-in-cluster = Help me understand resource utilization in my cluster.
ai-assistant-ai-help-inspect-kubernetes-resources = Help me inspect Kubernetes resources.
ai-assistant-ai-help-manage-running-containers = Help me manage running containers.
ai-assistant-ai-help-manage-docker-images = Help me manage Docker images.
ai-assistant-ai-help-manage-troubleshoot-arg1-docker-compose = Help me manage or troubleshoot { $arg1 } with Docker Compose
ai-assistant-ai-help-manage-troubleshoot-arg1-docker-compose-query = Help me manage or troubleshoot { $arg1 } with Docker Compose.
ai-assistant-ai-help-configure-containers-to-use-arg1 = Help me configure containers to use { $arg1 }.
ai-assistant-ai-help-set-up-customize-vagrant-box-arg1 = Help me set up or customize a Vagrant box { $arg1 }.
ai-assistant-ai-help-provision-environment-troubleshoot-vagrant = Help me provision my environment or troubleshoot Vagrant startup.
ai-assistant-ai-help-search-code-across-files-for-arg1 = Help me search code across files for { $arg1 }.
ai-assistant-ai-help-search-code-across-files-with-arg1 = Help me search code across files with { $arg1 }.
ai-assistant-ai-walk-me-through-generating-ssh-key = Walk me through generating an SSH key.

## -- AI assistant panel hardcoded UI strings --

ai-assistant-zero-state-help-text = Shift + ctrl + space a block or text selection to ask Warp AI.
ai-assistant-zero-state-files-prompt = How do I find all files containing specific text?
ai-assistant-init-placeholder-text =  Ask a question...
ai-assistant-followup-placeholder-text =  Type a response or click one above...
ai-assistant-restart-button-text = Restart
ai-assistant-close-warp-ai = Close Warp AI
ai-assistant-focus-terminal-input-from-warp-ai = Focus Terminal Input From Warp AI
ai-assistant-restart-warp-ai = Restart Warp AI
ai-assistant-explain-the-following = Explain the following:\n
ai-assistant-what-should-i-do-next = \nWhat should I do next?
ai-assistant-how-do-i-fix-this-block = \nHow do I fix this?
ai-assistant-i-ran-the-command = I ran the command: `
ai-assistant-and-got-the-following-output = ` and got the following output:\n
ai-assistant-character-limit-exceeded = Character limit exceeded.
ai-assistant-copy-transcript-to-clipboard = Copy transcript to clipboard
ai-assistant-generating-answer = Generating answer...
ai-assistant-ai-responses-can-be-inaccurate = AI responses can be inaccurate.
ai-assistant-warp-ai-might-forget-earlier-answers = Warp AI might forget earlier answers as conversations get long.
ai-assistant-copy-code-to-clipboard = Copy code to clipboard [Cmd + C]
ai-assistant-insert-code-into-terminal-input = Insert code into terminal input [Cmd + Enter]
ai-assistant-save-as-workflow = Save as workflow [Cmd + S]
ai-assistant-copy-answer-to-clipboard = Copy answer to clipboard
ai-assistant-after-time = after { $time }
ai-assistant-later = later
ai-assistant-out-of-credits-upgrade = It seems you're out of credits. Please try again { $next_time }.\n\n[Upgrade]({ $upgrade_url }) for more credits.
ai-assistant-out-of-credits-contact-admin = It seems you're out of credits. Please try again { $next_time }.\n\nContact a team admin to upgrade for more credits.
ai-assistant-out-of-credits = It seems you're out of credits. Please try again { $next_time }.
ai-assistant-technical-difficulties = We're experiencing technical difficulties right now. Please try again later.
ai-assistant-credits-used = Credits used: { $num_requests_used } / { $request_limit }.
ai-assistant-until-refresh = { $next_refresh_time } until refresh.
ai-assistant-duration-days = { $count } days
ai-assistant-duration-hours = { $count } hours
ai-assistant-duration-minutes = { $count } minutes

ai-assistant-edit-requested-command = Edit requested command

## -- Agent status strings ---------------------------------------------------

ai-assistant-addressed-comments = Addressed { $count } comments
ai-assistant-received-messages = Received { $count } messages
ai-assistant-received-events = Received { $count } agent events
ai-assistant-seconds = { $count } seconds
ai-assistant-minutes = { $count } minutes

## -- Primary keys for migrated UI strings --

ai-assistant-ai-cancel-summarization = Cancel summarization
ai-assistant-ai-continue-summarization = Continue summarization
ai-assistant-ai-attach-as-agent-context = Attach as agent context
ai-assistant-ai-new-agent-pane = New Agent Pane
ai-assistant-ai-follow-up-with-existing-conversation = Follow up with existing conversation
ai-assistant-ai-invalid-api-key = Your API key is invalid. Please provide a valid key via '--api-key' or the WARP_API_KEY environment variable.
ai-assistant-ai-invalid-credentials = Your credentials are invalid. Please log in again with { $cli } login.
ai-assistant-ai-one-credit = { $count } credit
ai-assistant-ai-credits = { $count } credits
ai-assistant-ai-credits-decimal = { $count } credits
ai-assistant-ai-aws-region-label = AWS Region:
ai-assistant-ai-aws-access-key-id-label = AWS Access Key ID:
ai-assistant-ai-now-using-default-model = Now using Full Terminal Agent's default model.
ai-assistant-ai-run-in-cloud-env = Run your agent task in an isolated cloud environment.
ai-assistant-ai-recent-activity = RECENT ACTIVITY
ai-assistant-ai-view-changelog = View changelog
ai-assistant-ai-recommended = Recommended
ai-assistant-ai-always-ask-permission = Your profile is set to always ask for permission to execute commands.
ai-assistant-ai-no-urls-fetched = No URLs fetched
ai-assistant-ai-no-urls-found = No URLs found
ai-assistant-ai-view-details = View details

## -- Blocklist agent view and orchestration strings --

ai-assistant-ai-deleted-conversation = Deleted conversation
ai-assistant-ai-untitled-conversation = Untitled conversation
ai-assistant-ai-agent-fallback = Agent
ai-assistant-ai-unknown-agent = Unknown agent
ai-assistant-ai-focus-pane = Focus pane
ai-assistant-ai-stop-agent = Stop agent
ai-assistant-ai-kill-agent = Kill agent
ai-assistant-ai-new-cloud-agent-conversation = New Oz cloud agent conversation
ai-assistant-ai-new-agent-conversation = New Oz agent conversation
ai-assistant-ai-new-cloud-agent-body = Send a prompt below to start a new conversation
ai-assistant-ai-cloud-agents-description = Use cloud agents to run parallel agents, build agents that run autonomously, and check in on your agents from anywhere.
ai-assistant-ai-visit-cloud-docs = Visit docs
ai-assistant-ai-choose-environment-tooltip = Choose an environment
ai-assistant-ai-agent-environment-label = Agent environment
ai-assistant-ai-sending-message-to = Sending message to
ai-assistant-ai-started-agent = Started agent
ai-assistant-ai-cancelled-suffix = cancelled.
ai-assistant-ai-failed-start-agent = Failed to start agent
ai-assistant-ai-failed-start-remote-agent = Failed to start remote agent
ai-assistant-ai-start-agent-prefix = Start agent
ai-assistant-ai-start-remote-agent-prefix = Start remote agent
ai-assistant-ai-starting-agent = Starting agent
ai-assistant-ai-starting-remote-agent = Starting remote agent
ai-assistant-ai-locally-suffix = locally.
ai-assistant-ai-remotely-suffix = remotely.
ai-assistant-ai-manage-command-execution = Manage command execution setting
ai-assistant-ai-autoexecute-readonly-speedbump = Always allow Oz to execute read-only commands (relies on model)
ai-assistant-ai-deleted = Deleted
ai-assistant-ai-restored = Restored
ai-assistant-ai-continued = Continued
ai-assistant-ai-couldnt-navigate = Couldn't navigate to conversation.
ai-assistant-ai-warp-docs = Warp Docs
ai-assistant-ai-add-as-context = Add as Context
ai-assistant-ai-open-in-warp = Open in Warp
ai-assistant-ai-run-in-terminal = Run in terminal
ai-assistant-ai-one-update = { $count } update
ai-assistant-ai-update-count = { $count } updates
ai-assistant-ai-switch-model = Switch model

## -- Model disable reason tooltips --

ai-assistant-ai-model-disabled-admin = This model has been disabled by your team admin.
ai-assistant-ai-model-out-of-requests = Please upgrade your plan to make more requests.
ai-assistant-ai-model-provider-outage = This model is temporarily unavailable due to a provider outage.
ai-assistant-ai-model-requires-upgrade = Please upgrade your plan to access this model.
ai-assistant-ai-model-unavailable = This model is unavailable.

## -- Artifact button and label strings --

ai-assistant-ai-untitled-plan = Untitled Plan
ai-assistant-ai-screenshots-label = Screenshots
ai-assistant-ai-copy-branch-name = Copy branch name
ai-assistant-ai-view-screenshots = View screenshots
ai-assistant-ai-download-file = Download file
ai-assistant-ai-file-type-label = File
ai-assistant-ai-artifact-failed-load = Failed to load
ai-assistant-ai-daily-summary = daily summary
ai-assistant-ai-dashboard-screenshot = dashboard screenshot
ai-assistant-ai-pr-label = PR
ai-assistant-ai-file-fallback-name = file

## -- Double-prefix aliases for new AI assistant strings --
ai-assistant-ai-ai-cancel = { ai-cancel }
ai-assistant-ai-ai-run = { ai-run }
## -- Double-prefix aliases for blocklist agent view and orchestration strings --

ai-assistant-ai-one-update = { $count }
ai-assistant-ai-update-count = { $count }
## -- Double-prefix aliases for static prompt suggestion strings --

## -- AI block loading and status message strings --
ai-assistant-ai-agent-waiting-for-instructions = Agent waiting for instructions...
ai-assistant-ai-error-apology-text = I'm sorry, I couldn't complete that request.
ai-assistant-ai-internal-warp-error = Internal Warp error.
ai-assistant-ai-warping = Warping...
ai-assistant-ai-adjusting-tasks = Adjusting tasks...
ai-assistant-ai-generating-fix = Generating fix...
ai-assistant-ai-creating-diff = Creating diff...
ai-assistant-ai-preparing-question = Preparing question...
ai-assistant-ai-generating-plan = Generating plan...
ai-assistant-ai-updating-plan = Updating plan...
ai-assistant-ai-summarizing-conversation = Summarizing conversation...
ai-assistant-ai-summarizing-command-output = Summarizing command output...
ai-assistant-ai-searching-codebase = Searching codebase...
ai-assistant-ai-reading-files = Reading files...
ai-assistant-ai-grepping = Grepping...
ai-assistant-ai-finding-files = Finding files...
ai-assistant-ai-executing-command = Executing command...
ai-assistant-ai-writing-command-input = Writing command input...
ai-assistant-ai-waiting-for-command-exit = Waiting for command to exit...
ai-assistant-ai-searching-the-web = Searching the web...
ai-assistant-ai-fetching-pr-comments = Fetching PR comments...
ai-assistant-ai-blocked-write-to-command = Can I write the following to this running command?
ai-assistant-ai-blocked-reading-files = Grant access to the following files?
ai-assistant-ai-blocked-searching-codebase = Grant access to the following repository?
ai-assistant-ai-blocked-grep-file-glob = OK if I search the files in this directory?
ai-assistant-ai-session-expired-text = Sessions expire after one week and cannot be opened.
ai-assistant-ai-default-planning-document-title = Planning document
ai-assistant-ai-agent-prompt-to-interact = Prompt agent to interact with
ai-assistant-ai-agent-waiting-on-instructions = Agent is waiting on instructions
ai-assistant-ai-agent-waiting-for-command-exit = Agent is waiting for command to exit
ai-assistant-ai-agent-blocked = Agent needs your permission to continue
ai-assistant-ai-agent-in-control = Agent is in control
ai-assistant-ai-user-in-control = User is in control

## -- Orchestration controls strings --

ai-assistant-ai-edit-agent-toolbelt = Edit agent toolbelt
ai-assistant-ai-edit-cli-agent-toolbelt = Edit CLI agent toolbelt
ai-assistant-ai-available-chips = Available chips
ai-assistant-ai-orchestration-env-none-label = (no environment)
ai-assistant-ai-default-model-label = Default model
ai-assistant-ai-agent-location-label = Agent location
ai-assistant-ai-local-label = Local
ai-assistant-ai-cloud-label = Cloud
ai-assistant-ai-agent-harness-label = Agent harness
ai-assistant-ai-host-label = Host
ai-assistant-ai-environment-label = Environment
ai-assistant-ai-base-model-label = Base model
ai-assistant-ai-opencode-cloud-disabled-reason = OpenCode is not supported on Cloud yet. Switch to Local or pick a different harness.
ai-assistant-ai-recommend-select-env = We recommend selecting an environment for cloud agents.
ai-assistant-ai-recommend-create-env = We recommend creating an environment for cloud agents.

## -- Orchestration config block strings --

ai-assistant-ai-use-orchestration = Use orchestration
ai-assistant-ai-orchestration-description = Break this work into coordinated streams with multiple agents.
ai-assistant-ai-base-model-helper = The primary model all agents will use.
ai-assistant-ai-oz-updates-header = What's new in Oz
ai-assistant-ai-prompt-label = Prompt
ai-assistant-ai-generating-title = Generating title...
ai-assistant-ai-blocked-upload-artifact = Grant access to upload this artifact?
ai-assistant-ai-blocked-transfer-control = Agent is asking you to take control.

## -- Run agents card strings --

ai-assistant-ai-run-agents-card-title = Can I start additional agents for this task?
ai-assistant-ai-reject-label = Reject
ai-assistant-ai-accept-label = Accept
ai-assistant-ai-orchestration-disabled-message = Orchestration is currently disabled. Re-enable on the plan card to launch.
ai-assistant-ai-configuring-agents = Configuring agents…
ai-assistant-ai-spawn-agents-cancelled = Spawn agents cancelled
ai-assistant-ai-failed-to-start-orchestration = Failed to start orchestration
ai-assistant-ai-spawn-agents-summary = Spawn { $count } agent(s) to address this task.
ai-assistant-ai-agents-count-label = Agents ({ $count })
ai-assistant-ai-spawned-one-agent = Spawned 1 agent
ai-assistant-ai-spawned-agents = Spawned { $total } agents
ai-assistant-ai-spawned-of-agents = Spawned { $launched } of { $total } agents
ai-assistant-ai-orchestration-disabled-with-reason = Orchestration is currently disabled. Re-enable on the plan card to launch. ({ $reason })
ai-assistant-ai-failed-to-start-orchestration-with-error = Failed to start orchestration: { $error }
ai-assistant-ai-spawning-one-agent = Spawning 1 agent…
ai-assistant-ai-spawning-agents = Spawning { $total } agents…

## -- Double-prefix aliases for AI block loading and status message strings --
## -- Double-prefix aliases for orchestration controls strings --

## -- Double-prefix aliases for orchestration config block strings --

## -- Conversation usage view strings --

ai-assistant-ai-usage-summary-header = USAGE SUMMARY
ai-assistant-ai-credits-spent-last-response = Credits spent (last response)
ai-assistant-ai-credits-spent-total = Credits spent (total)
ai-assistant-ai-credits-spent = Credits spent
ai-assistant-ai-tool-calls = Tool calls
ai-assistant-ai-models-label = Models
ai-assistant-ai-change-model-settings = You can change which model is used for full terminal use in the AI settings page
ai-assistant-ai-context-window-used = Context window used
ai-assistant-ai-tool-call-summary-header = TOOL CALL SUMMARY
ai-assistant-ai-files-changed = Files changed
ai-assistant-ai-diffs-applied = Diffs applied
ai-assistant-ai-commands-executed = Commands executed
ai-assistant-ai-last-response-time-header = LAST RESPONSE TIME
ai-assistant-ai-time-to-first-token = Time to first token
ai-assistant-ai-total-agent-response-time = Total agent response time
ai-assistant-ai-total-time-including-tools = Total time (including tool calls)

## -- Codebase index speedbump banner strings --

ai-assistant-ai-index-codebase-question = Index Codebase?
ai-assistant-ai-index-codebase-text = Indexing helps agents quickly understand context and provide targeted solutions. Code is never stored on the server.
ai-assistant-ai-index-codebase-button = Index codebase
ai-assistant-ai-allow-automatic-indexing = Allow automatic indexing
ai-assistant-ai-indexing-codebase = Indexing codebase
ai-assistant-ai-view-status = View status

## -- Double-prefix aliases for codebase index speedbump strings --

## -- Double-prefix aliases for run agents card strings --

## -- Prompt alert strings --

ai-assistant-ai-telemetry-disabled-primary-text = To use AI features,
ai-assistant-ai-enable-analytics-action-text = enable analytics
ai-assistant-ai-upgrade-to-build-action-text = upgrade
ai-assistant-ai-no-connection-primary-text = No internet connection
ai-assistant-ai-anonymous-user-request-limit-hard-gate-primary-text = At Limit -
ai-assistant-ai-delinquent-due-to-payment-issue-primary-text = Restricted due to payment issue
ai-assistant-ai-out-of-requests-primary-text = Out of credits
ai-assistant-ai-anonymous-user-request-limit-action-text = Sign up for more AI credits
ai-assistant-ai-delinquent-due-to-payment-issue-action-text = Manage billing
ai-assistant-ai-overages-toggleable-but-not-enabled-action-text = Enable premium overages
ai-assistant-ai-monthly-overages-spend-limit-reached-action-text = Increase monthly spend limit
ai-assistant-ai-upgrade-text = Upgrade
ai-assistant-ai-compare-plans-text = Compare plans
ai-assistant-ai-contact-support-text = Contact support
ai-assistant-ai-non-admin-contact-admin-text = , contact a team admin
ai-assistant-ai-non-admin-ask-admin-to-enable-overages-text = , ask a team admin to enable overages
ai-assistant-ai-non-admin-ask-admin-to-increase-overages-text = , ask a team admin to increase overages
ai-assistant-ai-upgrade-to-build-text = Upgrade to Build
ai-assistant-ai-use-your-own-api-keys-text = use your own API keys
ai-assistant-ai-add-credits-text = Add credits

## -- Agent view / blocklist UI strings --

ai-assistant-ai-open-plan = Open plan
ai-assistant-ai-open-pull-request = Open pull request
ai-assistant-ai-enable-figma-mcp = Enable Figma MCP
ai-assistant-ai-starting-shell = Starting shell...
ai-assistant-ai-open-in-different-pane = Open in different pane
ai-assistant-ai-open-in-new-pane = Open in new pane
ai-assistant-ai-open-in-new-tab = Open in new tab
ai-assistant-ai-enable-desktop-notifications = Enable desktop notifications to get an alert when an agent needs your attention.
ai-assistant-ai-open-palette = Open palette
ai-assistant-ai-show-diff-view = Show diff view

## -- Agent management notification strings --

ai-assistant-ai-notification-from-codex = Notification from Codex
ai-assistant-ai-task-completed = Task completed.
ai-assistant-ai-waiting-for-input = Waiting for input.
ai-assistant-ai-child-agent = Child agent
ai-assistant-ai-agent-task = Agent task
ai-assistant-ai-child-agent-completed = Child agent completed.
ai-assistant-ai-task-cancelled = Task was cancelled.
ai-assistant-ai-child-agent-cancelled = Child agent was cancelled.
ai-assistant-ai-child-agent-error = Child agent encountered an error.
ai-assistant-ai-something-went-wrong = Something went wrong.

## -- Double-prefix aliases for agent view / blocklist UI strings --

## -- Double-prefix aliases for prompt alert strings --

## -- Toolbar item display labels --

ai-assistant-ai-context-chip = Context Chip
ai-assistant-ai-model-selector = Model Selector
ai-assistant-ai-autodetection = Autodetection
ai-assistant-ai-voice-input = Voice Input
ai-assistant-ai-attach-file = Attach File
ai-assistant-ai-context-usage = Context Usage
ai-assistant-ai-share-session = /remote-control
ai-assistant-ai-fast-forward = Fast Forward
ai-assistant-ai-handoff-to-cloud = Hand off to cloud

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
## -- Double-prefix aliases for code diff view strings --
## -- Double-prefix aliases for toolbar item display labels --

## -- Double-prefix aliases for AWS credentials error strings --

## -- Conversation details panel strings --

ai-assistant-ai-conversation-fallback-title = Conversation
ai-assistant-ai-cloud-agent-run = Cloud agent run
ai-assistant-ai-copied-branch-name = Copied branch name
ai-assistant-ai-agent-label = Agent
ai-assistant-ai-harness-label = Harness
ai-assistant-ai-open-in-oz = Open in Oz
ai-assistant-ai-open-in-github = Open in GitHub
ai-assistant-ai-initial-query = Initial query
ai-assistant-ai-artifacts-label = Artifacts
ai-assistant-ai-env-setup-commands = Environment setup commands
ai-assistant-ai-env-details = Environment details
ai-assistant-ai-env-name = Name: {$name}
ai-assistant-ai-env-id-label = ID
ai-assistant-ai-env-image-label = Image
ai-assistant-ai-directory-label = Directory
ai-assistant-ai-conversation-id-label = Conversation ID
ai-assistant-ai-run-id-label = Run ID
ai-assistant-ai-credits-used = Credits used
ai-assistant-ai-run-time = Run time
ai-assistant-ai-created-on = Created on

## -- Double-prefix aliases for agent management notification strings --

## -- Double-prefix aliases for conversation details panel strings --

## -- Double-prefix aliases for conversation usage view strings --

## -- Double-prefix aliases for agent tip strings --

## -- Block view common strings --

ai-assistant-ai-calling-mcp-tool = Calling "{$name}" MCP tool...
ai-assistant-ai-reading-mcp-resource = Reading "{$name}" MCP resource...
ai-assistant-ai-take-over = Take over
ai-assistant-ai-take-over-tooltip = Take over control of the command
ai-assistant-ai-show-responses = Show responses
ai-assistant-ai-hide-responses = Hide responses
ai-assistant-ai-show-agent-responses = Show agent responses
ai-assistant-ai-hide-agent-responses = Hide agent responses
ai-assistant-ai-stop-agent-task = Stop agent task
ai-assistant-ai-auto-queue-on = Auto-queue is on: your next prompt will be queued
ai-assistant-ai-auto-queue-off = Auto-queue next prompt while agent is responding
ai-assistant-ai-turn-off-auto-approve = Turn off auto-approve all agent actions
ai-assistant-ai-auto-approve-all = Auto-approve all agent actions for this task
ai-assistant-ai-check-now = Check now
ai-assistant-ai-check-now-tooltip = Ask the agent to check this command now, skipping its timer.
ai-assistant-ai-mermaid-diagram = Mermaid diagram
ai-assistant-ai-server-overloaded = Warp is currently overloaded. Please try again later.
ai-assistant-ai-invalid-api-key = Provided API key is not valid
ai-assistant-ai-failed-authenticate-provider = Failed to authenticate with { $provider } when using { $model_name }. Double-check that your API key is correct.
ai-assistant-ai-credit-limit-reached = You've reached your credit limit. Your credit limit resets on { $date }.
ai-assistant-ai-send-feedback = Send Feedback
ai-assistant-ai-debug-information = Debug information: { $debug_info }
ai-assistant-ai-copy-debug-id = Copy debug ID
ai-assistant-ai-exit = Exit
ai-assistant-ai-exit-agent-input = Exit agent input
ai-assistant-ai-plan-update-tooltip = This plan has changes the agent isn't aware of. {$save_action} to stop the agent's current task and send the updated plan
ai-assistant-ai-updated-plan = I've updated the plan.
ai-assistant-ai-address-comments = Address these comments
ai-assistant-ai-source-label = Source: {$source}
ai-assistant-ai-run-time-label = Run time: {$run_time}
ai-assistant-ai-credits-used-label = Credits used: {$usage}
ai-assistant-ai-task-blocked = Task blocked
ai-assistant-ai-not-started = Not started
ai-assistant-ai-auth-failed = Authentication failed
ai-assistant-ai-tasks-label = Tasks
ai-assistant-ai-generate-tests = Generate tests
ai-assistant-ai-orchestrator = Orchestrator
ai-assistant-ai-out-of-credits-upgrade = Out of credits. Upgrade your Warp plan to continue running cloud agents.
ai-assistant-ai-server-overloaded-short = Warp is temporarily overloaded. Please try again shortly.
ai-assistant-ai-cloud-agent-failed = Cloud agent failed
ai-assistant-ai-cloud-followup-finished = Cloud follow-up finished before a new session became available
ai-assistant-ai-secret-raw-value = Raw Value
ai-assistant-ai-secret-anthropic-key = Anthropic API Key
ai-assistant-ai-secret-anthropic-bedrock-access = Anthropic Bedrock Access Key
ai-assistant-ai-secret-anthropic-bedrock-key = Anthropic Bedrock API Key
ai-assistant-ai-secret-openai-key = OpenAI API Key
ai-assistant-ai-view-todo-list = View todo list
ai-assistant-ai-ai-view-todo-list = { ai-assistant-ai-view-todo-list }
ai-assistant-ai-starting-env-step-3 = Starting Environment (Step 3/3)
ai-assistant-ai-creating-env-step-2 = Creating Environment (Step 2/3)
ai-assistant-ai-connecting-host-step-1 = Connecting to Host (Step 1/3)
ai-assistant-ai-missing-github-auth = Missing GitHub authentication.
ai-assistant-ai-authenticate-github = Authenticate GitHub
ai-assistant-ai-cloud-agent-cancelled = Cloud agent run cancelled
ai-assistant-ai-setting-up-env = Setting up environment
ai-assistant-ai-primary-model-failed-with-name = The primary model ({$primary}) failed. Retrying with the fallback model.
ai-assistant-ai-primary-model-failed = The primary model failed. Retrying with the fallback model.
ai-assistant-ai-warping-with-model = Warping with {$name}.
ai-assistant-ai-warping-with-another-model = Warping with another model.
ai-assistant-ai-ai-starting-env-step-3 = { ai-assistant-ai-starting-env-step-3 }
ai-assistant-ai-ai-creating-env-step-2 = { ai-assistant-ai-creating-env-step-2 }
ai-assistant-ai-ai-connecting-host-step-1 = { ai-assistant-ai-connecting-host-step-1 }
ai-assistant-ai-ai-missing-github-auth = { ai-assistant-ai-missing-github-auth }
ai-assistant-ai-ai-authenticate-github = { ai-assistant-ai-authenticate-github }
ai-assistant-ai-ai-cloud-agent-cancelled = { ai-assistant-ai-cloud-agent-cancelled }
ai-assistant-ai-ai-setting-up-env = { ai-assistant-ai-setting-up-env }
ai-assistant-ai-ai-primary-model-failed-with-name = { ai-assistant-ai-primary-model-failed-with-name }
ai-assistant-ai-ai-primary-model-failed = { ai-assistant-ai-primary-model-failed }
ai-assistant-ai-ai-warping-with-model = { ai-assistant-ai-warping-with-model }
ai-assistant-ai-ai-warping-with-another-model = { ai-assistant-ai-warping-with-another-model }
ai-assistant-ai-default-profile-name = Default
ai-assistant-ai-agent-mode-eval-profile-name = Agent Mode Eval
ai-assistant-ai-default-cli-profile-name = Default (CLI)
ai-assistant-ai-ai-default-profile-name = { ai-assistant-ai-default-profile-name }
ai-assistant-ai-ai-agent-mode-eval-profile-name = { ai-assistant-ai-agent-mode-eval-profile-name }
ai-assistant-ai-ai-default-cli-profile-name = { ai-assistant-ai-default-cli-profile-name }
ai-assistant-ai-resume-when-network =
    {$error_message}
    Will resume conversation when network connectivity is restored...
ai-assistant-ai-attempting-resume =
    {$error_message}
    Attempting to resume conversation...

ai-assistant-ai-error-formatting-json = Error formatting JSON
ai-assistant-ai-mcp-error = Error: {$error}
ai-assistant-ai-tool-call-cancelled = Tool call was cancelled
ai-assistant-ai-mcp-response =
    {$command}
    Response: {$result}
ai-assistant-ai-ai-error-formatting-json = { ai-assistant-ai-error-formatting-json }
ai-assistant-ai-ai-mcp-error = { ai-assistant-ai-mcp-error }
ai-assistant-ai-ai-tool-call-cancelled = { ai-assistant-ai-tool-call-cancelled }
ai-assistant-ai-ai-mcp-response = { ai-assistant-ai-mcp-response }

## -- AI facts view additional strings --

ai-assistant-ai-offline-banner-text = You are offline. Some rules will be read only.
ai-assistant-ai-rule-editor-title = Rule Editor

## -- Error classification strings --

ai-assistant-ai-internal-error-retry = An internal error occurred. Please try running your task again. If the issue persists, contact support.
ai-assistant-ai-terminal-session-failed = Terminal session failed to start. Please try running your task again.
ai-assistant-ai-share-session-internal-error = Failed to share agent session due to an internal error. Please try running your task again.
ai-assistant-ai-share-session-failed = Failed to share agent session: {$reason}
ai-assistant-ai-share-session-disabled = Session sharing is not enabled for your account. This is likely because an administrator has disabled session sharing for your team. Please verify that session sharing is enabled in your team settings, or try running without the --share flag.
ai-assistant-ai-share-session-timeout = Failed to share agent session: timed out waiting for the session sharing server to respond. Please check your network connection and try again.
ai-assistant-ai-share-session-interrupted = Session sharing was interrupted before it could complete. Please try running your task again.
ai-assistant-ai-warp-drive-sync-failed = Warp Drive failed to sync. Please check your network connection and try again.
ai-assistant-ai-auth-required = Authentication required. Log in via '{$bin} login', provide an API key via '--api-key', or set the WARP_API_KEY environment variable.
ai-assistant-ai-cloud-provider-setup-failed = Error configuring cloud access: {$err}
ai-assistant-ai-mcp-server-not-found = MCP server {$uuid} was not found. Verify the server exists in your Warp Drive and the UUID is correct.
ai-assistant-ai-mcp-startup-failed = One or more MCP servers failed to start. Check that your MCP server configuration is valid and the server process is runnable.
ai-assistant-ai-mcp-json-parse-error = Failed to parse MCP server JSON configuration: {$msg}
ai-assistant-ai-mcp-missing-variables = MCP server configuration is missing required variables. Provide all required environment variables or template values.
ai-assistant-ai-profile-not-found = Agent profile "{$name}" not found. Check the profile ID and ensure it exists in your team's Warp Drive.
ai-assistant-ai-workflow-not-found = Saved prompt not found for ID {$id}. Verify the prompt exists in your Warp Drive.
ai-assistant-ai-environment-not-found = Environment '{$id}' not found. Verify the environment ID and ensure it exists in your team settings.
ai-assistant-ai-environment-setup-failed-msg = Environment setup failed: {$msg}. Check your repository URLs and setup commands.
ai-assistant-ai-invalid-working-directory = Working directory '{$path}' does not exist or is not a directory. Verify the path in your environment configuration.
ai-assistant-ai-task-cancelled-msg = Task cancelled.
ai-assistant-ai-agent-blocked = The agent got stuck waiting for user confirmation on the action: {$blocked_action}
ai-assistant-ai-team-metadata-timeout = Timed out refreshing team metadata. Please check your network connection and try again.
ai-assistant-ai-skill-resolution-failed = Skill resolution failed: {$msg}
ai-assistant-ai-config-build-failed = Failed to build agent configuration: {$err}
ai-assistant-ai-prompt-resolution-failed = Failed to resolve prompt for the run: {$err}
ai-assistant-ai-secrets-fetch-failed = Failed to fetch task secrets: {$err}
ai-assistant-ai-aws-bedrock-credentials-failed = Failed to initialize AWS Bedrock credentials: {$msg}
ai-assistant-ai-conversation-load-failed = Failed to load conversation: {$msg}
ai-assistant-conversation-harness-mismatch = Conversation {$conversation_id} was produced by the {$expected} harness, but --harness {$got} was requested. Re-run with --harness {$expected} (or omit --harness to match) to continue this conversation.
ai-assistant-task-harness-mismatch = Task {$task_id} was created with the {$expected} harness, but --harness {$got} was requested. Re-run with --harness {$expected} (or omit --harness to match) to continue this task.
ai-assistant-conversation-resume-state-missing = Conversation {$conversation_id} has no stored transcript for the {$harness} harness. The prior run may have crashed before saving any state.
ai-assistant-harness-command-failed = Harness command exited with code {$exit_code}
ai-assistant-harness-setup-failed = Harness '{$harness}' validation failed: {$reason}
ai-assistant-harness-config-setup-failed = Harness '{$harness}' config setup failed: {$error}
ai-assistant-ai-allow-btn = Allow
ai-assistant-ai-refine-btn = Refine
ai-assistant-ai-take-over-btn = Take over
ai-assistant-ai-take-control-btn = Take control

## -- Double-prefix aliases for error classification strings --

## -- Double-prefix aliases for output view strings --

## -- Double-prefix aliases for agent status strings --

## -- Double-prefix aliases for migrated UI strings --

ai-assistant-ai-invalid-credentials = { $cli } login.
ai-assistant-ai-one-credit = { $count } credit
ai-assistant-ai-credits = { $count } credits
ai-assistant-ai-credits-decimal = { $count } credits
