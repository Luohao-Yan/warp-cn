# =============================================================================
# terminal.ftl — Terminal view and interaction strings
# =============================================================================
# Message IDs: terminal-{id}
# Used in app/src/terminal/*.rs
# =============================================================================

## -- Shared session -----------------------------------------------------------

terminal-share-session-title = Share Terminal Session
terminal-share-session-description = Share this terminal session with a teammate.
terminal-join-session-title = Join Session
terminal-leave-session-label = Leave session
terminal-end-session-label = End session
terminal-copy-session-link = Copy session link

## -- SSH ----------------------------------------------------------------------

terminal-ssh-connection-title = SSH Connection
terminal-ssh-authenticating = Authenticating…
terminal-ssh-connected = Connected
terminal-ssh-disconnected = Disconnected
terminal-ssh-error-title = SSH Connection Error
terminal-ssh-host-label = Host:
terminal-ssh-user-label = User:
terminal-ssh-tmux-not-installed = tmux is not installed on the remote machine. Please install tmux and try again.
terminal-ssh-unsupported-tmux = The tmux version available on the remote machine is below 3.0. Please install tmux 3.0 or greater using a different method and try again.
terminal-ssh-tmux-failed = tmux failed to execute on the remote machine. Please re-install tmux and try again.
terminal-ssh-warpify-timeout = Warpifying the session hit a timeout.
terminal-ssh-unsupported-shell = Unsupported shell. Please set bash, zsh, or fish as your default shell and try again.
terminal-ssh-tmux-install-error = The tmux install hit an unexpected error. Please install tmux manually and try again.
terminal-ssh-tmux-not-installed-title = tmux Not Installed
terminal-ssh-unsupported-tmux-title = Unsupported Tmux Version
terminal-ssh-tmux-failed-title = tmux Failed
terminal-ssh-tmux-install-timeout-title = tmux Install Timeout
terminal-ssh-warpify-timeout-title = SSH Warpify Timeout
terminal-ssh-unsupported-shell-title = Unsupported Shell
terminal-ssh-tmux-install-error-title = tmux Install Failed
terminal-ssh-error-warpifying-title = Error Warpifying session
terminal-ssh-feedback-message-before-link = We are actively working on improving the stability of SSH in Warp. Please consider
terminal-ssh-feedback-link-text = filing an issue
terminal-ssh-feedback-message-after-link =  on GitHub so we can better identify the problem.
terminal-ssh-warpify-without-tmux = Warpify without TMUX
terminal-ssh-continue-without-warpification = Continue without Warpification

## -- Install tmux ---------------------------------------------------------------

terminal-install-tmux-title = Install tmux?
terminal-install-tmux-run-script = Run this script to install tmux?
terminal-install-tmux-install-with-pm = Install with { $package_manager }
terminal-install-tmux-install-to-home-warp = Install to ~/.warp
terminal-install-tmux-explanation-outdated = In order to Warpify your SSH session, a more recent version of tmux (>=3.0) must be installed.
terminal-install-tmux-explanation-missing = In order to Warpify your SSH session, tmux must be installed.
terminal-install-tmux-why-link-text = Why do I need tmux?

terminal-terminal-install-tmux-title = { terminal-install-tmux-title }
terminal-terminal-install-tmux-run-script = { terminal-install-tmux-run-script }
terminal-terminal-install-tmux-install-with-pm = { terminal-install-tmux-install-with-pm }
terminal-terminal-install-tmux-install-to-home-warp = { terminal-install-tmux-install-to-home-warp }
terminal-terminal-install-tmux-explanation-outdated = { terminal-install-tmux-explanation-outdated }
terminal-terminal-install-tmux-explanation-missing = { terminal-install-tmux-explanation-missing }
terminal-terminal-install-tmux-why-link-text = { terminal-install-tmux-why-link-text }

## -- Onboarding prompt block --------------------------------------------------

terminal-onboarding-confirm = Confirm
terminal-onboarding-skip = Skip
terminal-onboarding-next = Next

## -- Block / Autoreload -------------------------------------------------------

terminal-enable-autoreload = Enable auto-reload
terminal-disable-autoreload = Disable auto-reload
terminal-reload-label = Reload

## -- Context menu items -------------------------------------------------------

terminal-context-copy = Copy
terminal-context-paste = Paste
terminal-context-copy-as-text = Copy as Text
terminal-context-select-all = Select All
terminal-context-clear = Clear
terminal-context-split-right = Split Right
terminal-context-split-left = Split Left
terminal-context-split-down = Split Down
terminal-context-split-up = Split Up
terminal-context-close-pane = Close Pane

## -- Misc ---------------------------------------------------------------------

terminal-buffer-full = Buffer full — some output may have been discarded
terminal-scroll-to-bottom = Scroll to bottom
terminal-tooltip-cancel = Cancel
terminal-tooltip-hide-details = Hide details
terminal-tooltip-show-details = Show details

## -- Buy credits banner ---------------------------------------------------------

terminal-auto-reload = Auto reload
terminal-auto-reload-label = Auto reload
terminal-auto-reload-tooltip = When enabled, auto reload will purchase { $credits } credits when your credit balance gets low
terminal-monthly-limit-reached-admin = Your monthly spend limit has been reached. Increase it to continue.
terminal-monthly-limit-reached-non-admin = Contact a team admin to increase monthly limit.
terminal-monthly-limit-reached-title = Monthly limit reached
terminal-manage-billing = Manage billing
terminal-out-of-credits-title = Out of credits
terminal-out-of-credits-admin = Add more credits to your account to continue using Oz agents.
terminal-out-of-credits-non-admin = Contact a team admin to purchase more credits to continue.
terminal-purchase-exceeds-limit = Purchasing these credits would take you over your monthly spend limit.
terminal-increase-limit = Increase it
terminal-to-continue =  to continue.
terminal-buying = Buying…
terminal-buy = Buy
terminal-failed-enable-autoreload = Failed to enable auto-reload for your team. Please try again in Settings > Billing and Usage.
terminal-auto-reload-settings-updated = Auto-reload settings updated

## -- Shared session view strings -------------------------------------------------

terminal-copy-link = Copy link
terminal-stop-sharing-session = Stop sharing session
terminal-open-on-desktop = Open on Desktop
terminal-share-session-ellipsis = Share session...
terminal-stop-sharing = Stop sharing
terminal-copy-session-sharing-link = Copy session sharing link

## -- Shared session (view_impl) --------------------------------------------------

terminal-request-edit-access = Request edit access
terminal-couldnt-continue-cloud-task = Couldn't continue this cloud task.
terminal-sharing-ended-inactivity = Sharing ended due to inactivity
terminal-sharing-edit-revoked-inactivity = Shared editing permissions were revoked due to inactivity
terminal-editing-revoked-sharer-idle = Editing permissions were revoked because the sharer is idle
terminal-new-cloud-agent = New cloud agent
terminal-new-agent-conversation = New agent conversation

## -- Conversation ended tombstone ------------------------------------------------

terminal-continue-locally = Continue locally
terminal-fork-locally-tooltip = Fork this conversation locally
terminal-continue-in-cloud-tooltip = Continue this task in Cloud Mode
terminal-open-in-warp = Open in Warp
terminal-open-in-desktop-tooltip = Open this conversation in the Warp desktop app
terminal-viewing-snapshot = You're viewing a snapshot
terminal-snapshot-subtitle = This shared conversation shows the state when you opened it. If the agent is still running, refresh to see the latest progress.
terminal-agent-task = Agent task
terminal-directory-label = Directory:
terminal-source-label = Source:
terminal-skill-label = Skill:
terminal-run-time-label = Run time:
terminal-credits-used-label = Credits used:

## -- Warpify footer --------------------------------------------------------------

terminal-warpify-subshell = Warpify subshell
terminal-warpify-subshell-tooltip = Enable Warp shell integration in this session
terminal-use-agent = Use agent
terminal-use-agent-tooltip = Ask the Warp agent to assist
terminal-warpify-ssh-session = Warpify SSH session
terminal-for-terminal = Back to terminal

## -- Participant avatar ----------------------------------------------------------

terminal-make-editor = Make editor
terminal-make-viewer = Make viewer
terminal-revoke-all-edit-permissions = Revoke all edit permissions
terminal-revoke-all-edit-permissions-tooltip = Revoke all edit permissions
terminal-change-role = Change role
terminal-change-role-tooltip = Change role

## -- Profile / model selector -----------------------------------------------------

terminal-profiles = Profiles
terminal-manage-profiles = Manage profiles
terminal-manage-defaults = Manage defaults
terminal-manage = Manage
terminal-manage-api-keys = Manage API keys
terminal-choose-execution-profile = Choose an AI execution profile
terminal-choose-execution-profile-tooltip = Choose an AI execution profile
terminal-choose-agent-model = Choose an agent model
terminal-choose-agent-model-tooltip = Choose an agent model
terminal-request-edit-access-model = Request edit access to change model
terminal-model-specs = Model Specs
terminal-model-specs-tooltip = Model Specs
terminal-intelligence = Intelligence
terminal-speed = Speed
terminal-cost = Cost
terminal-billed-to-api = Billed to API
terminal-auto-mode = Auto mode
terminal-auto-mode-description = The auto model selects the best model for a task, like Claude, Kimi, or MiniMax.
terminal-reasoning-level = Reasoning level
terminal-reasoning-level-description = Higher reasoning levels consume more credits and have higher latency, but perform better on complex tasks.
terminal-model-specs-description = Warp's benchmarks: performance in harness, credit consumption rate, task speed.
terminal-auto-select-best-model = auto-select the best model for the task
terminal-ellipsis = , ...
terminal-new-models-available = New models available

## -- Inline history view ---------------------------------------------------------

terminal-tab-all = All
terminal-conversations-current-directory = Current Directory
terminal-tab-commands = Commands
terminal-tab-prompts = Prompts
terminal-history = History
terminal-configure = Configure

## -- Models view -----------------------------------------------------------------

terminal-base = Base
terminal-full-terminal-use = Full Terminal Use
terminal-model = /model

## -- Auth secret FTUX dropdown ---------------------------------------------------

terminal-search-secrets-or-create = Search secrets or create a new one
terminal-no-secrets-found = No secrets found
terminal-ftux-loading = Loading…
terminal-ftux-search-placeholder = Search secrets or create a new one
terminal-ftux-no-secrets-found = No secrets found
terminal-ftux-no-secrets-helper = No secrets found. Save to use this value directly or click the key to add a secret.
terminal-ftux-unable-to-load-secrets = Unable to load secrets
terminal-ftux-new-type = New { $display_name }
terminal-ftux-skip-api-key = Skip setting an API key
terminal-ftux-skip-api-key-sub = Choose this if authentication is set up in the environment
terminal-unable-to-load-secrets = Unable to load secrets
terminal-skip-api-key = Skip setting an API key
terminal-skip-api-key-sub = Choose this if authentication is set up in the environment
terminal-no-secrets-helper = No secrets found. Save to use this value directly or click the key to add a secret.

## -- Auth secret selector --------------------------------------------------------

terminal-selector-choose-type = Choose a type
terminal-selector-api-key-tooltip = API Key
terminal-selector-api-key-header = API Key
terminal-selector-no-secret = No secret
terminal-selector-loading = Loading…
terminal-selector-unable-to-load-secrets = Unable to load secrets
terminal-selector-new = New

## -- Tab context menu strings -----------------------------------------------------

terminal-copy-tab-title = Copy tab title
terminal-copy-pane-title = Copy pane title
terminal-copy-branch = Copy branch
terminal-copy-working-directory = Copy working directory
terminal-copy-pull-request-link = Copy pull request link
terminal-rename-tab = Rename tab
terminal-reset-tab-name = Reset tab name
terminal-move-tab-right = Move Tab Right
terminal-move-tab-down = Move Tab Down
terminal-move-tab-left = Move Tab Left
terminal-move-tab-up = Move Tab Up
terminal-close-other-tabs = Close other tabs
terminal-close-tabs-to-the-right = Close Tabs to the Right
terminal-close-tabs-below = Close Tabs Below
terminal-save-as-new-config = Save as new config
terminal-stop-sharing-tab = Stop sharing
terminal-share-session-tab = Share session
terminal-stop-sharing-all = Stop sharing all
terminal-copy-link-tab = Copy link
terminal-default-no-color = Default (no color)
terminal-cloud-agent-run = Cloud agent run

## -- MenuItemFields / Context menu -------------------------------------------

terminal-menu-copy-url = Copy URL
terminal-menu-copy-link = Copy link
terminal-menu-copy-path = Copy path
terminal-menu-show-in-finder = Show in Finder
terminal-menu-show-containing-folder = Show containing folder
terminal-menu-open-in-warp = Open in Warp
terminal-menu-open-in-editor = Open in editor
terminal-menu-open-on-desktop = Open on Desktop
terminal-menu-copy = Copy
terminal-menu-insert-into-input = Insert into input
terminal-menu-copy-command = Copy command
terminal-menu-copy-commands = Copy commands
terminal-menu-share-block = Share block...
terminal-menu-share = Share...
terminal-menu-share-session = Share session
terminal-menu-save-as-workflow = Save as workflow
terminal-menu-ask-warp-ai = Ask Warp AI
terminal-menu-copy-output = Copy output
terminal-menu-copy-filtered-output = Copy filtered output
terminal-menu-find-within-block = Find within block
terminal-menu-find-within-blocks = Find within blocks
terminal-menu-scroll-to-top-of-block = Scroll to top of block
terminal-menu-scroll-to-top-of-blocks = Scroll to top of blocks
terminal-menu-scroll-to-bottom-of-block = Scroll to bottom of block
terminal-menu-scroll-to-bottom-of-blocks = Scroll to bottom of blocks
terminal-menu-toggle-block-filter = Toggle block filter
terminal-menu-toggle-bookmark = Toggle bookmark
terminal-menu-copy-prompt = Copy prompt
terminal-menu-copy-right-prompt = Copy right prompt
terminal-menu-copy-working-directory = Copy working directory
terminal-menu-copy-git-branch = Copy git branch
terminal-menu-split-pane-right = Split pane right
terminal-menu-split-pane-left = Split pane left
terminal-menu-split-pane-down = Split pane down
terminal-menu-split-pane-up = Split pane up
terminal-menu-close-pane = Close pane
terminal-menu-edit-cli-agent-toolbelt = Edit CLI agent toolbelt
terminal-menu-edit-agent-toolbelt = Edit agent toolbelt
terminal-menu-edit-prompt = Edit prompt
terminal-menu-cut = Cut
terminal-menu-select-all = Select all
terminal-menu-paste = Paste
terminal-menu-command-search = Command search
terminal-menu-ai-command-search = AI command search
terminal-menu-hide-input-hint-text = Hide input hint text
terminal-menu-show-input-hint-text = Show input hint text
terminal-menu-copy-output-as-markdown = Copy output as Markdown
terminal-menu-save-as-prompt = Save as prompt
terminal-menu-share-conversation = Share conversation
terminal-menu-copy-conversation-text = Copy conversation text
terminal-menu-copy-debugging-link = Copy debugging link
terminal-menu-copy-conversation-id = Copy conversation ID
terminal-menu-copy-debugging-id = Copy debugging ID
terminal-menu-fork-from-here-dev-only = Fork from here (dev only)
terminal-menu-rewind-to-before-here = Rewind to before here
terminal-menu-share-session-ellipsis = Share session...
terminal-menu-stop-sharing = Stop sharing
terminal-menu-stop-sharing-session = Stop sharing session
terminal-menu-copy-session-sharing-link = Copy session sharing link
terminal-menu-request-edit-access = Request edit access
terminal-menu-make-editor = Make editor
terminal-menu-make-viewer = Make viewer
terminal-menu-fork-from-last-query = Fork from last query
terminal-menu-fork-from = Fork from "{$truncated}"

## -- Accessibility strings ---------------------------------------------------

terminal-a11y-block-label = Block
terminal-a11y-block-output-label = Output
terminal-a11y-block-status = Block {$index}: {$command}, {$status}.
terminal-a11y-status-failed = failed, status code {$code}
terminal-a11y-status-background = background
terminal-a11y-status-succeeded = succeeded
terminal-a11y-status-in-progress = in progress
terminal-a11y-selected-blocks = Selected {$count} blocks.
terminal-a11y-selected-all-blocks = Selected all {$count} blocks.
terminal-a11y-scrolled-to-bottom = Scrolled to bottom of selected block
terminal-a11y-copied-blocks = Copied {$count} blocks.\n{$content}
terminal-a11y-open-block-filter-editor = Open block filter editor for block {$block_index}

## -- Block filter strings -----------------------------------------------------------

terminal-filter-placeholder = Filter block output
terminal-filter-show-context = Show context lines around matches
terminal-filter-regex-toggle = Regex toggle
terminal-filter-case-sensitive = Case sensitive search
terminal-filter-invert = Invert filter

## -- Misc additional strings -------------------------------------------------

terminal-loading-session = Loading session...
terminal-powershell-subshell-unsupported = PowerShell subshells not supported
terminal-non-local-env-var-subshell = Can not invoke environment variable subshell in a non-local session
terminal-bundled-skills-cannot-be-edited = Bundled skills cannot be edited
terminal-editing-skills-unsupported = Editing skills is not supported in this build

## -- Additional terminal view strings -----------------------------------------------

terminal-free-credits = Free credits
terminal-view-index-status = View index status
terminal-show-prompt = Show prompt
terminal-system-default-shell = System default shell
terminal-type-searched-phrase = Type searched phrase.
terminal-press-escape-to-quit = Press escape to quit
terminal-conversation-restored = Conversation restored
terminal-previous-session = Previous session
terminal-sharing-link-copied = Sharing link copied
terminal-grants-ability-part1 = This grants the ability to execute commands on your
terminal-use-with-caution = behalf. Use with caution.
terminal-edit-requests = Edit Requests
terminal-cancel-request = Cancel request

## -- Share block modal strings ---------------------------------------------------------

terminal-share-title-optional = Title (optional)
terminal-share-embed-label = embedded warp block
terminal-share-error = Something went wrong. Please try again.
terminal-share-link-copied = Link copied.
terminal-share-embed-copied = Embed code copied.
terminal-share-creating = Creating block...
terminal-share-embed-error = Error generating embed snippet

## -- Block list element strings ------------------------------------------------

terminal-block-tag-agent = Tag agent for assistance
terminal-block-save-workflow = Save as Workflow
terminal-block-secrets-cannot-save = Blocks containing secrets cannot be saved.

## -- UDI (Universal Developer Input) strings ----------------------------------

terminal-udi-no-objects = No available objects in the current context.
terminal-udi-no-ssh = Not supported in SSH sessions
terminal-udi-no-subshell = Not supported in subshells
terminal-udi-no-fs = Requires a filesystem
terminal-udi-disabled-terminal-mode = Disabled in terminal mode, re-enable in settings
terminal-udi-attach-context = Attach context
terminal-udi-voice-input = Voice input
terminal-udi-attach-file = Attach file
terminal-udi-slash-commands = Slash commands
terminal-udi-request-edit = Request edit access to change input mode
terminal-udi-mode-locked = Input mode locked while agent is monitoring a command
terminal-udi-terminal = Terminal
terminal-udi-agent-mode = Agent Mode

## -- Prompt render helper strings --

terminal-starting-shell = Starting shell…
terminal-loading-prompt = Loading prompt…

## -- Input i18n strings --

terminal-input-a11y-helper = Input your shell command, press enter to execute. Press cmd-up to navigate to output of previously executed commands. Press cmd-l to re-focus command input.
terminal-steer-agent-classic = Steer the running agent, or backspace to exit
terminal-ask-follow-up-classic = Ask a follow up, or backspace to exit
terminal-dynamic-enum-generate = Run the following command to generate variants:
terminal-dynamic-enum-run = Run command
terminal-dynamic-enum-pending = Command pending…
terminal-dynamic-enum-failure = Command failed
terminal-dynamic-enum-no-results = Command returned no results
terminal-search-queries = Search queries
terminal-search-queries-rewind = Search queries to rewind to
terminal-search-conversations = Search conversations
terminal-search-skills = Search skills
terminal-search-models = Search models
terminal-search-profiles = Search profiles
terminal-search-commands = Search commands
terminal-search-prompts = Search prompts
terminal-search-indexed-repos = Search indexed repos
terminal-search-plans = Search plans

## -- SSH file upload strings ---------------------------------------------------

terminal-waiting-for-password = Waiting for password input
terminal-uploading = Uploading
terminal-uploaded = Uploaded
terminal-failed-to-upload = Failed to upload
terminal-clear-upload = Clear upload
terminal-file-uploads = File Uploads
terminal-upload-session = upload session

terminal-session-restored-from = { $banner_intro_text } from { $timestamp }

## -- Keybinding description strings --

terminal-alternate-terminal-paste = Alternate terminal paste
terminal-toggle-cli-agent-rich-input = Toggle CLI Agent Rich Input
terminal-accept-prompt-suggestion = Accept Prompt Suggestion
terminal-copy-text-or-cancel-active-process = Copy text or cancel active process
terminal-cancel-active-process = Cancel active process
terminal-focus-terminal-input = Focus terminal input
terminal-reinput-selected-commands = Reinput selected commands
terminal-reinput-selected-commands-as-root = Reinput selected commands as root
terminal-find-in-terminal = Find in Terminal
terminal-select-closest-bookmark-up = Select the closest bookmark up
terminal-select-closest-bookmark-down = Select the closest bookmark down
terminal-open-block-context-menu = Open block context menu
terminal-toggle-team-workflows-modal = Toggle team workflows modal
terminal-copy-git-branch = Copy git branch
terminal-clear-blocks = Clear Blocks
terminal-move-cursor-word-left-executing-command = Move cursor one word to the left within an executing command
terminal-move-cursor-word-right-executing-command = Move cursor one word to the right within an executing command
terminal-move-cursor-home-executing-command = Move cursor home within an executing command
terminal-move-cursor-end-executing-command = Move cursor end within an executing command
terminal-delete-word-left-executing-command = Delete word left within an executing command
terminal-delete-to-line-start-executing-command = Delete to line start within an executing command
terminal-delete-to-line-end-executing-command = Delete to line end within an executing command
terminal-backward-tabulation-executing-command = Backward tabulation within an executing command
terminal-select-previous-block = Select previous block
terminal-select-next-block = Select next block
terminal-share-selected-block = Share selected block
terminal-bookmark-selected-block = Bookmark selected block
terminal-find-within-selected-block = Find within selected block
terminal-copy-command-and-output = Copy command and output
terminal-copy-command-output = Copy command output
terminal-copy-command = Copy command
terminal-scroll-output-up-one-line = Scroll terminal output up one line
terminal-scroll-output-down-one-line = Scroll terminal output down one line
terminal-scroll-output-up-one-page = Scroll terminal output up one page
terminal-scroll-output-down-one-page = Scroll terminal output down one page
terminal-scroll-to-top-of-selected-block = Scroll to top of selected block
terminal-scroll-to-bottom-of-selected-block = Scroll to bottom of selected block
terminal-select-all-blocks = Select all blocks
terminal-expand-selected-blocks-above = Expand selected blocks above
terminal-expand-selected-blocks-below = Expand selected blocks below
terminal-attach-selected-block-as-agent-context = Attach Selected Block as Agent Context
terminal-attach-selected-text-as-agent-context = Attach Selected Text as Agent Context
terminal-attach-selection-as-agent-context = Attach Selection as Agent Context
terminal-ask-warp-ai-about-selection = Ask Warp AI about Selection
terminal-ask-warp-ai-about-last-block = Ask Warp AI about last block
terminal-ask-warp-ai = Ask Warp AI
terminal-insert-command-correction = Insert Command Correction
terminal-setup-guide = Setup Guide
terminal-import-external-settings = Import External Settings
terminal-share-current-session = Share current session
terminal-stop-sharing-current-session = Stop sharing current session
terminal-toggle-block-filter-on-selected-or-last-block = Toggle block filter on selected or last block
terminal-toggle-sticky-command-header-in-active-pane = Toggle Sticky Command Header in Active Pane
terminal-toggle-auto-execute-mode = Toggle Auto-execute Mode
terminal-toggle-queue-next-prompt = Toggle Queue Next Prompt
terminal-write-current-codebase-index-snapshot = Write current codebase index snapshot
terminal-load-agent-mode-conversation = Load agent mode conversation (from debug link in clipboard)
terminal-toggle-pty-recording-for-session = Toggle PTY Recording for Session
terminal-initiate-project-for-warp = Initiate project for warp
terminal-add-current-folder-as-project = Add current folder as project
terminal-toggle-conversation-details-panel = Toggle Conversation Details Panel
terminal-set-input-mode-to-agent-mode = Set Input Mode to Agent Mode
terminal-set-input-mode-to-terminal-mode = Set Input Mode to Terminal Mode
terminal-toggle-hide-cli-responses = Toggle Hide CLI Responses
terminal-show-warp-network-log = Show Warp network log
terminal-clear-screen = Clear screen
terminal-edit-prompt = Edit Prompt
terminal-experimental-toggle-classic-completions-mode = (Experimental) Toggle classic completions mode
terminal-command-search = Command Search
terminal-history-search = History Search
terminal-open-completions-menu = Open completions menu
terminal-workflows = Workflows
terminal-open-ai-command-suggestions = Open AI Command Suggestions
terminal-trigger-auto-detection = Trigger Auto Detection
terminal-clear-and-reset-ai-context-menu-query = Clear and reset AI context menu query

## -- General settings descriptions -----------------------------------------------

terminal-setting-description-show-warning-before-quitting = Whether to show a warning dialog before quitting Warp.
terminal-setting-description-quit-on-last-window-closed = Whether to quit Warp when the last window is closed.
terminal-setting-description-restore-session = Whether to restore the previous session when Warp starts up.
terminal-setting-description-login-item = Whether to launch Warp automatically when you log in.
terminal-setting-description-link-tooltip = Whether to show a tooltip when hovering over links.
terminal-setting-description-auto-open-code-review-pane = Whether to automatically open the code review pane when the agent makes its first change.
terminal-setting-description-language = Display language for the Warp UI. Use 'auto' for system locale.

## -- Banner and notification strings ---------------------------------------------------------

terminal-yes-emacs-bindings = Yes, use Emacs-style bindings
terminal-no-keep-ide-bindings = No, keep IDE bindings
terminal-oz-permission-run = Oz needs your permission to run `{ $command }`
terminal-oz-permission-read = Oz needs your permission to read files
terminal-oz-permission-search = Oz needs your permission to search your codebase
terminal-oz-permission-edit = Oz needs your permission to edit a file
terminal-oz-permission-shell = Oz needs your permission to interact with a running shell command
terminal-oz-permission-confirm = Oz needs your confirmation to continue
terminal-ssh-connection-failed = Couldn't connect to the Warp SSH extension
terminal-latest-output = Latest output:
terminal-status-after-duration =  { $status } after { $seconds }s
terminal-notification-finished =  finished
terminal-notification-failed =  failed
terminal-notification-error-prefix = Error:
terminal-notification-blocked =  blocked
terminal-notification-waiting-password =  is waiting for a password
terminal-warpify-for-features-with-key = You can press { $key } to Warpify this { $title } for more Warp features.
terminal-warpify-for-features = You can Warpify this { $title } for more Warp features.
terminal-title-recognized = { $title } recognized.
terminal-did-you-intend = Did you intend
terminal-to-move-cursor = to move the cursor?
terminal-sharing-usage-exceeded = Session sharing usage exceeded for the day. Please try again later.
terminal-session-limit-exceeded = Session limit ({ $limit }) exceeded. Please reshare to continue.
terminal-session-internal-error = Session ended due to an internal error. Please try sharing again.

## -- Format strings with user-visible text ----------------------------------------------------

terminal-default-shell = Default
terminal-docker-sandbox = Docker Sandbox
terminal-custom-shell = Custom ({ $command })
terminal-exit-code = Exit code { $code }
terminal-installing-ssh-progress = Installing Warp SSH Extension... ({ $percent }%)
terminal-installing-ssh = Installing Warp SSH Extension...
terminal-updating-ssh = Updating Warp SSH Extension...
terminal-initializing = Initializing...
terminal-starting-shell-with-name = Starting { $name }...
terminal-discount-percent = { $percent }% off!
terminal-selected-label = selected
terminal-disabled-label = disabled
terminal-attached-as-context = `{ $name }` attached as context
terminal-attached-with-one-more = `{ $name }` and 1 other command attached as context
terminal-attached-with-more = `{ $name }` and { $count } other commands attached as context
terminal-to-remove = to remove
terminal-selected-text-as-context = selected text attached as context
terminal-enable-language-support = Enable { $language } support
terminal-install-and-enable-language = Install and enable { $language }
terminal-link-to-agents-md = Link existing { $file } to my AGENTS.md file
terminal-enable-language-for-codebase = Enable { $language } support for this codebase? This will give you smarter code navigation, inline error checking, and more.
terminal-show-more = Show { $count } more

## -- Toast messages ---------------------------------------------------------

terminal-copied-to-clipboard = Copied to clipboard
terminal-failed-cloud-handoff = Failed to prepare cloud handoff: { $error }
terminal-images-removed-no-support = Attached images were removed — the selected model does not support images.
terminal-skill-not-found = Skill not found: { $reference }
terminal-no-active-conversation-export = No active conversation to export
terminal-file-exists-overwrite = File { $path } already exists and will be overwritten
terminal-conversation-exported = Conversation exported to { $path }

## -- Primary keys for migrated UI strings --

terminal-share-session = Share your terminal
terminal-shared-session-limit-reached = Session limit reached
terminal-shared-session-denied-subheader = Shared sessions are a Team or Business feature
terminal-view-plans = View plans
terminal-start-sharing = Start sharing
terminal-stop-sharing = Stop sharing
terminal-continue-sharing = Continue sharing
terminal-make-editor = Make Editor
terminal-deny = Deny
terminal-requested-mode = You have requested { $role } mode
terminal-waiting-for = Waiting for { $name }...
terminal-create-team = Create team
terminal-manage-shared-blocks = Manage shared blocks
terminal-install-and-enable = Install and enable
terminal-enable-selected-languages = Enable language support
terminal-are-you-still-there = Are you still there?
terminal-sharing-will-end-due-to-inactivity = Sharing will end in { $minutes }:{ $seconds } due to inactivity.
terminal-edit-prompt = Edit Prompt
terminal-warp-terminal-prompt = Warp Prompt
terminal-shell-prompt-ps1 = Shell Prompt (PS1)
terminal-restore-default = Restore Default
terminal-cancel-request = Cancel request
terminal-permission-denied = Permission denied writing to { $path }. Check file permissions.
terminal-directory-not-found = Directory not found: { $path }
terminal-file-already-exists = File { $path } already exists
terminal-preparing-handoff = Preparing handoff — try again in a moment.
terminal-invalid-uri = Custom URI is invalid.
terminal-invalid-uri-detail = Custom URI is invalid: { $error }
terminal-project-rules-linked = Project rules linked from { $path }
terminal-installed-enabled = { $name } installed and enabled successfully.
terminal-failed-install = Failed to install { $name }: { $error }
terminal-installing-background = Installing { $names } in background...
terminal-init-project-onboarding-text = Welcome to Warp! Let's set up your project for the best AI experience.
terminal-init-project-already-setup-text = Your project is already set up! You can re-run individual steps below.

## -- Search accessibility labels -------------------------------------------

terminal-search-conversation = Conversation: { $title }
terminal-search-command = Command: { $command }
terminal-search-ai-prompt = AI prompt: { $query }
terminal-search-plan = Plan: { $title }
terminal-search-profile = Profile: { $name }
terminal-search-prompt = Prompt: { $name }
terminal-search-repo = Indexed repository: { $name }
terminal-search-rewind = Rewind to: { $query } (no code changes)
terminal-search-skill = Skill: { $name }
terminal-search-query = Query: { $query }
terminal-search-block = Block: { $command }
terminal-warp-drive = Warp Drive

## -- Model spec and reasoning level strings --------------------------------

terminal-model-specs-title = Model Specs
terminal-model-specs-description = Warp's benchmarks for how well a model performs in our harness, the rate at which it consumes credits, and task speed.
terminal-reasoning-level-title = Reasoning level
terminal-reasoning-level-description = Increased reasoning levels consume more credits and have higher latency, but higher performance for complicated tasks.

## -- Init project strings --------------------------------------------------

terminal-init-project-onboarding-text = Great - let's begin setting up this project! Would you like to give me permission to index this codebase? It allows me to quickly understand context and provide more targeted solutions when working in this codebase. No code is stored on Warp servers.
terminal-init-project-already-setup-text = It looks like this project has already been initialized. You can re-generate the AGENTS.md for this codebase by clicking the button below.

## -- Init environment strings -----------------------------------------------

terminal-init-environment-explanation-text = Would you like to create an environment for this project so you can run cloud agents in it? The agent will guide you through choosing GitHub repos, configuring a Docker image, and specifying startup commands.
terminal-init-environment-no-repos-help-text = If you want to create an environment with repos, rerun this command and pass in file paths or GitHub links as arguments, e.g. "/create-environment <filepath> <GitHub URL>".

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

terminal-terminal-filter-placeholder = { terminal-filter-placeholder }
terminal-terminal-filter-show-context = { terminal-filter-show-context }
terminal-terminal-filter-regex-toggle = { terminal-filter-regex-toggle }
terminal-terminal-filter-case-sensitive = { terminal-filter-case-sensitive }
terminal-terminal-filter-invert = { terminal-filter-invert }

terminal-terminal-a11y-block-label = { terminal-a11y-block-label }
terminal-terminal-a11y-block-output-label = { terminal-a11y-block-output-label }
terminal-terminal-a11y-block-status = { terminal-a11y-block-status }
terminal-terminal-a11y-copied-blocks = { terminal-a11y-copied-blocks }
terminal-terminal-a11y-open-block-filter-editor = { terminal-a11y-open-block-filter-editor }
terminal-terminal-a11y-scrolled-to-bottom = { terminal-a11y-scrolled-to-bottom }
terminal-terminal-a11y-selected-all-blocks = { terminal-a11y-selected-all-blocks }
terminal-terminal-a11y-selected-blocks = { terminal-a11y-selected-blocks }
terminal-terminal-a11y-status-background = { terminal-a11y-status-background }
terminal-terminal-a11y-status-failed = { terminal-a11y-status-failed }
terminal-terminal-a11y-status-in-progress = { terminal-a11y-status-in-progress }
terminal-terminal-a11y-status-succeeded = { terminal-a11y-status-succeeded }
terminal-terminal-agent-task = { terminal-agent-task }
terminal-terminal-auto-mode = { terminal-auto-mode }
terminal-terminal-auto-mode-description = { terminal-auto-mode-description }
terminal-terminal-auto-reload = { terminal-auto-reload }
terminal-terminal-auto-reload-tooltip = { terminal-auto-reload-tooltip }
terminal-terminal-auto-select-best-model = { terminal-auto-select-best-model }
terminal-terminal-base = { terminal-base }
terminal-terminal-billed-to-api = { terminal-billed-to-api }
terminal-terminal-bundled-skills-cannot-be-edited = { terminal-bundled-skills-cannot-be-edited }
terminal-terminal-buy = { terminal-buy }
terminal-terminal-buying = { terminal-buying }
terminal-terminal-change-role = { terminal-change-role }
terminal-terminal-choose-agent-model-tooltip = { terminal-choose-agent-model-tooltip }
terminal-terminal-choose-execution-profile-tooltip = { terminal-choose-execution-profile-tooltip }
terminal-terminal-configure = { terminal-configure }
terminal-terminal-context-select-all = { terminal-context-select-all }
terminal-terminal-continue-in-cloud-tooltip = { terminal-continue-in-cloud-tooltip }
terminal-terminal-continue-locally = { terminal-continue-locally }
terminal-terminal-conversations-current-directory = { terminal-conversations-current-directory }
terminal-terminal-cost = { terminal-cost }
terminal-terminal-couldnt-continue-cloud-task = { terminal-couldnt-continue-cloud-task }
terminal-terminal-credits-used-label = { terminal-credits-used-label }
terminal-terminal-directory-label = { terminal-directory-label }
terminal-terminal-editing-revoked-sharer-idle = { terminal-editing-revoked-sharer-idle }
terminal-terminal-editing-skills-unsupported = { terminal-editing-skills-unsupported }
terminal-terminal-ellipsis = { terminal-ellipsis }
terminal-terminal-failed-enable-autoreload = { terminal-failed-enable-autoreload }
terminal-terminal-auto-reload-settings-updated = { terminal-auto-reload-settings-updated }
terminal-terminal-fork-locally-tooltip = { terminal-fork-locally-tooltip }
terminal-terminal-ftux-loading = { terminal-ftux-loading }
terminal-terminal-ftux-new-type = { terminal-ftux-new-type }
terminal-terminal-ftux-no-secrets-found = { terminal-ftux-no-secrets-found }
terminal-terminal-ftux-no-secrets-helper = { terminal-ftux-no-secrets-helper }
terminal-terminal-ftux-search-placeholder = { terminal-ftux-search-placeholder }
terminal-terminal-ftux-skip-api-key = { terminal-ftux-skip-api-key }
terminal-terminal-ftux-skip-api-key-sub = { terminal-ftux-skip-api-key-sub }
terminal-terminal-ftux-unable-to-load-secrets = { terminal-ftux-unable-to-load-secrets }
terminal-terminal-full-terminal-use = { terminal-full-terminal-use }
terminal-terminal-history = { terminal-history }
terminal-terminal-increase-limit = { terminal-increase-limit }
terminal-terminal-intelligence = { terminal-intelligence }
terminal-terminal-loading-session = { terminal-loading-session }
terminal-terminal-manage = { terminal-manage }
terminal-terminal-manage-api-keys = { terminal-manage-api-keys }
terminal-terminal-manage-billing = { terminal-manage-billing }
terminal-terminal-manage-defaults = { terminal-manage-defaults }
terminal-terminal-manage-profiles = { terminal-manage-profiles }
terminal-terminal-menu-ai-command-search = { terminal-menu-ai-command-search }
terminal-terminal-menu-ask-warp-ai = { terminal-menu-ask-warp-ai }
terminal-terminal-menu-close-pane = { terminal-menu-close-pane }
terminal-terminal-menu-command-search = { terminal-menu-command-search }
terminal-terminal-menu-copy = { terminal-menu-copy }
terminal-terminal-menu-copy-command = { terminal-menu-copy-command }
terminal-terminal-menu-copy-commands = { terminal-menu-copy-commands }
terminal-terminal-menu-copy-conversation-id = { terminal-menu-copy-conversation-id }
terminal-terminal-menu-copy-conversation-text = { terminal-menu-copy-conversation-text }
terminal-terminal-menu-copy-debugging-id = { terminal-menu-copy-debugging-id }
terminal-terminal-menu-copy-debugging-link = { terminal-menu-copy-debugging-link }
terminal-terminal-menu-copy-filtered-output = { terminal-menu-copy-filtered-output }
terminal-terminal-menu-copy-git-branch = { terminal-menu-copy-git-branch }
terminal-terminal-menu-copy-link = { terminal-menu-copy-link }
terminal-terminal-menu-copy-output = { terminal-menu-copy-output }
terminal-terminal-menu-copy-output-as-markdown = { terminal-menu-copy-output-as-markdown }
terminal-terminal-menu-copy-path = { terminal-menu-copy-path }
terminal-terminal-menu-copy-prompt = { terminal-menu-copy-prompt }
terminal-terminal-menu-copy-right-prompt = { terminal-menu-copy-right-prompt }
terminal-terminal-menu-copy-session-sharing-link = { terminal-menu-copy-session-sharing-link }
terminal-terminal-menu-copy-url = { terminal-menu-copy-url }
terminal-terminal-menu-copy-working-directory = { terminal-menu-copy-working-directory }
terminal-terminal-menu-cut = { terminal-menu-cut }
terminal-terminal-menu-edit-agent-toolbelt = { terminal-menu-edit-agent-toolbelt }
terminal-terminal-menu-edit-cli-agent-toolbelt = { terminal-menu-edit-cli-agent-toolbelt }
terminal-terminal-menu-edit-prompt = { terminal-menu-edit-prompt }
terminal-terminal-menu-find-within-block = { terminal-menu-find-within-block }
terminal-terminal-menu-find-within-blocks = { terminal-menu-find-within-blocks }
terminal-terminal-menu-fork-from = { terminal-menu-fork-from }
terminal-terminal-menu-fork-from-here-dev-only = { terminal-menu-fork-from-here-dev-only }
terminal-terminal-menu-fork-from-last-query = { terminal-menu-fork-from-last-query }
terminal-terminal-menu-hide-input-hint-text = { terminal-menu-hide-input-hint-text }
terminal-terminal-menu-insert-into-input = { terminal-menu-insert-into-input }
terminal-terminal-menu-make-editor = { terminal-menu-make-editor }
terminal-terminal-menu-make-viewer = { terminal-menu-make-viewer }
terminal-terminal-menu-open-in-editor = { terminal-menu-open-in-editor }
terminal-terminal-menu-open-in-warp = { terminal-menu-open-in-warp }
terminal-terminal-menu-open-on-desktop = { terminal-menu-open-on-desktop }
terminal-terminal-menu-paste = { terminal-menu-paste }
terminal-terminal-menu-request-edit-access = { terminal-menu-request-edit-access }
terminal-terminal-menu-rewind-to-before-here = { terminal-menu-rewind-to-before-here }
terminal-terminal-menu-save-as-prompt = { terminal-menu-save-as-prompt }
terminal-terminal-menu-save-as-workflow = { terminal-menu-save-as-workflow }
terminal-terminal-menu-scroll-to-bottom-of-block = { terminal-menu-scroll-to-bottom-of-block }
terminal-terminal-menu-scroll-to-bottom-of-blocks = { terminal-menu-scroll-to-bottom-of-blocks }
terminal-terminal-menu-scroll-to-top-of-block = { terminal-menu-scroll-to-top-of-block }
terminal-terminal-menu-scroll-to-top-of-blocks = { terminal-menu-scroll-to-top-of-blocks }
terminal-terminal-menu-select-all = { terminal-menu-select-all }
terminal-terminal-menu-share = { terminal-menu-share }
terminal-terminal-menu-share-block = { terminal-menu-share-block }
terminal-terminal-menu-share-conversation = { terminal-menu-share-conversation }
terminal-terminal-menu-share-session = { terminal-menu-share-session }
terminal-terminal-menu-share-session-ellipsis = { terminal-menu-share-session-ellipsis }
terminal-terminal-menu-show-containing-folder = { terminal-menu-show-containing-folder }
terminal-terminal-menu-show-in-finder = { terminal-menu-show-in-finder }
terminal-terminal-menu-show-input-hint-text = { terminal-menu-show-input-hint-text }
terminal-terminal-menu-split-pane-down = { terminal-menu-split-pane-down }
terminal-terminal-menu-split-pane-left = { terminal-menu-split-pane-left }
terminal-terminal-menu-split-pane-right = { terminal-menu-split-pane-right }
terminal-terminal-menu-split-pane-up = { terminal-menu-split-pane-up }
terminal-terminal-menu-stop-sharing = { terminal-menu-stop-sharing }
terminal-terminal-menu-stop-sharing-session = { terminal-menu-stop-sharing-session }
terminal-terminal-menu-toggle-block-filter = { terminal-menu-toggle-block-filter }
terminal-terminal-menu-toggle-bookmark = { terminal-menu-toggle-bookmark }
terminal-terminal-model = { terminal-model }
terminal-terminal-model-specs = { terminal-model-specs }
terminal-terminal-model-specs-description = { terminal-model-specs-description }
terminal-terminal-monthly-limit-reached-admin = { terminal-monthly-limit-reached-admin }
terminal-terminal-monthly-limit-reached-non-admin = { terminal-monthly-limit-reached-non-admin }
terminal-terminal-monthly-limit-reached-title = { terminal-monthly-limit-reached-title }
terminal-terminal-new-agent-conversation = { terminal-new-agent-conversation }
terminal-terminal-new-cloud-agent = { terminal-new-cloud-agent }
terminal-terminal-new-models-available = { terminal-new-models-available }
terminal-terminal-non-local-env-var-subshell = { terminal-non-local-env-var-subshell }
terminal-terminal-open-in-desktop-tooltip = { terminal-open-in-desktop-tooltip }
terminal-terminal-open-in-warp = { terminal-open-in-warp }
terminal-terminal-out-of-credits-admin = { terminal-out-of-credits-admin }
terminal-terminal-out-of-credits-non-admin = { terminal-out-of-credits-non-admin }
terminal-terminal-out-of-credits-title = { terminal-out-of-credits-title }
terminal-terminal-powershell-subshell-unsupported = { terminal-powershell-subshell-unsupported }
terminal-terminal-profiles = { terminal-profiles }
terminal-terminal-purchase-exceeds-limit = { terminal-purchase-exceeds-limit }
terminal-terminal-reasoning-level = { terminal-reasoning-level }
terminal-terminal-reasoning-level-description = { terminal-reasoning-level-description }
terminal-terminal-request-edit-access-model = { terminal-request-edit-access-model }
terminal-terminal-revoke-all-edit-permissions = { terminal-revoke-all-edit-permissions }
terminal-terminal-run-time-label = { terminal-run-time-label }
terminal-terminal-selector-api-key-header = { terminal-selector-api-key-header }
terminal-terminal-selector-api-key-tooltip = { terminal-selector-api-key-tooltip }
terminal-terminal-selector-choose-type = { terminal-selector-choose-type }
terminal-terminal-selector-loading = { terminal-selector-loading }
terminal-terminal-selector-new = { terminal-selector-new }
terminal-terminal-selector-no-secret = { terminal-selector-no-secret }
terminal-terminal-selector-unable-to-load-secrets = { terminal-selector-unable-to-load-secrets }
terminal-terminal-sharing-edit-revoked-inactivity = { terminal-sharing-edit-revoked-inactivity }
terminal-terminal-sharing-ended-inactivity = { terminal-sharing-ended-inactivity }
terminal-terminal-skill-label = { terminal-skill-label }
terminal-terminal-snapshot-subtitle = { terminal-snapshot-subtitle }
terminal-terminal-source-label = { terminal-source-label }
terminal-terminal-speed = { terminal-speed }
terminal-terminal-tab-all = { terminal-tab-all }
terminal-terminal-tab-commands = { terminal-tab-commands }
terminal-terminal-tab-prompts = { terminal-tab-prompts }
terminal-terminal-to-continue = { terminal-to-continue }
terminal-terminal-tooltip-hide-details = { terminal-tooltip-hide-details }
terminal-terminal-tooltip-show-details = { terminal-tooltip-show-details }
terminal-terminal-use-agent = { terminal-use-agent }
terminal-terminal-use-agent-tooltip = { terminal-use-agent-tooltip }
terminal-terminal-viewing-snapshot = { terminal-viewing-snapshot }
terminal-terminal-warpify-ssh-session = { terminal-warpify-ssh-session }
terminal-terminal-warpify-subshell = { terminal-warpify-subshell }
terminal-terminal-warpify-subshell-tooltip = { terminal-warpify-subshell-tooltip }
terminal-terminal-free-credits = { terminal-free-credits }
terminal-terminal-show-prompt = { terminal-show-prompt }
terminal-terminal-view-index-status = { terminal-view-index-status }

## -- AWS Bedrock login banner strings -------------------------------------------

terminal-aws-bedrock-title = Use AWS Bedrock?
terminal-aws-bedrock-description = Your Warp admin has enabled AWS Bedrock for your team.
terminal-log-into-aws = Log into AWS

## -- Notifications discovery banner strings -------------------------------------

terminal-notifications-dismissed = We won't show this banner again, but you can always go to Settings to enable notifications.
terminal-notifications-disabled = Notifications were turned off, but you can always go to Settings to enable notifications.
terminal-notifications-success = Success! You are now ready to receive desktop notifications.
terminal-notifications-denied = Warp was denied permissions to send you notifications.
terminal-notifications-error = Something went wrong while requesting permissions.
terminal-notifications-pending = Don't forget to 'Allow' the permissions request to finish setting up notifications.
terminal-configure-notifications = Configure notifications
terminal-troubleshoot = Troubleshoot
terminal-notifications-long-running = Warp can notify you when long-running commands finish.
terminal-notifications-agent-task = Warp can notify you when an agent finishes responding.
terminal-notifications-needs-attention = Warp can notify you when a command or agent needs your attention.
terminal-notifications-password-prompt = Warp can notify you when you're prompted to enter a password.
terminal-notifications-a11y-help = You can enable notifications through the command palette.

## -- Open in Warp banner strings ------------------------------------------------

terminal-open-markdown-title = Did you know that Warp can directly display Markdown files?
terminal-open-code-title = Did you know that Warp can directly edit { $display_name } files?
terminal-open-code-title-fallback = Did you know that Warp can directly edit code?
terminal-view-in-warp = View in Warp
terminal-edit-in-warp = Edit in Warp

## -- SSH wrapper banner strings -------------------------------------------------

terminal-ssh-wrapper-enabled = Warp SSH wrapper enabled
terminal-ssh-wrapper-disabled = Warp SSH wrapper disabled
terminal-settings = Settings

## -- Zero state block strings ---------------------------------------------------

terminal-new-terminal-session = New terminal session
terminal-zero-state-new-agent-conversation = start a new agent conversation
terminal-zero-state-new-cloud-agent-conversation = start a new cloud agent conversation
terminal-zero-state-cycle-commands = cycle past commands and conversations
terminal-zero-state-open-code-review = open code review
terminal-zero-state-autodetect-nld = autodetect agent prompts in terminal sessions

## -- Input hint strings --------------------------------------------------------

terminal-cli-agent-hint = Tell the agent what to build...
terminal-cloud-mode-v2-hint = Kick off a cloud agent
terminal-cloud-handoff-hint = Start a cloud run
terminal-input-a11y-label = Command Input.
terminal-ai-command-search-hint = Type '#' for AI command suggestions
terminal-run-commands-hint = Run commands
terminal-steer-agent-hint = Steer the running agent
terminal-ask-follow-up = Ask a follow up

## -- Additional terminal strings --
terminal-regenerate-agents-md = Re-generate AGENTS.md file

## -- Agent mode setup banner strings --------------------------------------------------

terminal-optimize-codebase-header = Optimize Warp for this codebase?
terminal-optimize-codebase-text = Unlock smarter, more consistent responses by letting the Agent understand your codebase and generate rules for it. You can also do this at any point by running /init
terminal-optimize = Optimize

## -- Alias expansion banner strings ---------------------------------------------------

terminal-enable-alias-expansion = Enable alias expansion
terminal-warp-can-auto-expand-aliases = Warp can auto-expand aliases.

## -- Anonymous user AI sign-up banner strings -----------------------------------------

terminal-login-for-ai = Login for AI
terminal-ai-features-unavailable = AI features are unavailable for logged-out users. Create an account to use AI.
terminal-sign-up = Sign Up

## -- Notifications error banner strings -----------------------------------------------

terminal-set-permissions = Set permissions

## -- Prompt suggestion banner strings --------------------------------------------------

terminal-restricted-due-to-payment-issue = Restricted due to payment issue
terminal-out-of-credits = Out of credits
terminal-suggestion-explain = Explain this to me.
terminal-suggestion-fix = Help me fix this.
terminal-suggestion-install = Help me install a binary/dependency. What information do I need to provide to you to do this?
terminal-suggestion-code = Help me write some code. What information do I need to provide to you to do this?
terminal-suggestion-deploy = Help me deploy my project. What information do I need to provide to you to do this?
terminal-suggestion-something-else = Something else?

## -- Shared session inline banner strings ---------------------------------------------

terminal-environment-started = Environment started
terminal-remote-control-active = Remote control active
terminal-sharing-started = Sharing started
terminal-environment-ended = Environment ended
terminal-remote-control-stopped = Remote control stopped
terminal-sharing-ended = Sharing ended
terminal-today = Today

## -- Shell process terminated banner strings -------------------------------------------

terminal-shell-process-exited-prematurely = Shell process exited prematurely!
terminal-shell-init-output-visible = The output from Warp's initialization script is visible above to assist with debugging.
terminal-shell-process-exited = Shell process exited

## -- Enable auto reload modal strings --

terminal-when-enabled = When enabled,
terminal-auto-reload-explanation =  will automatically purchase your selected package when you run out.
terminal-enable-auto-reload-title = Enable auto reload?
terminal-enable-auto-reload = Enable
terminal-team-data-not-found = Oops, something went wrong; your team's data could not be found.

## -- Drive sharing onboarding block strings --

terminal-sharing-in-warp-drive = Sharing in Warp Drive
terminal-drive-sharing-body-1 = You can now share drive objects, in Warp or on the web, with anyone - Warp user or not. Click Share in the Warp Drive menu or the pane header to share via link or email.
terminal-drive-sharing-body-2 = You'll be able to modify the access permissions any time.
terminal-share-object-name = Share { $name }
terminal-share-this-object-type = Share this { $object_type }

## -- Shell terminated banner strings --

terminal-file-issue = File issue
terminal-more-info = More info
terminal-shell-process-exited = Shell process exited
terminal-shell-could-not-start = Shell process could not start!
terminal-shell-exited-prematurely = Shell process exited prematurely!
terminal-warpify-failure-subtext = Something went wrong while starting { $shell_detail } and Warpifying it, causing the process to terminate. Warpify script output is displayed here, which may point at a cause.

## -- Link detection strings --

terminal-open-folder = Open folder
terminal-open-file = Open file
terminal-open-link = Open link

## -- Tooltip strings --

terminal-open-in-warp = Open in Warp
terminal-show-in-finder = Show in Finder
terminal-show-containing-folder = Show containing folder
terminal-reveal-secret = Reveal secret
terminal-hide-secret = Hide secret
terminal-copy-secret = Copy secret

## -- SSH remote server choice view strings --

terminal-install-ssh-extension = Install Warp's SSH extension
terminal-install-ssh-extension-desc = Install Warp's extension to enable agent features like file browsing, code review, and intelligent command completions in this session.
terminal-continue-without-installing = Continue without installing
terminal-continue-without-desc = You'll still get a Warpified experience just without the coding features.
terminal-choose-remote-experience = Choose your experience for this remote session:
terminal-manage-warpify-settings = Manage Warpify settings

## -- Agent view strings --

terminal-cannot-start-while-monitoring = Cannot start a new conversation while agent is monitoring a command.

## -- Open in Warp banner strings --

terminal-open-in-warp-path = Open { $path } in Warp
terminal-close-warp-banner = Close View in Warp banner
terminal-learn-more-markdown = Learn more about opening Markdown files in Warp

## -- Available shells strings --

terminal-shell-default = Default
terminal-shell-bash = Bash
terminal-shell-zsh = Zsh
terminal-shell-fish = Fish
terminal-shell-powershell = PowerShell
terminal-shell-windows-powershell = Windows PowerShell
terminal-shell-custom = Custom
terminal-shell-docker-sandbox = Docker Sandbox
terminal-wsl-details = Windows Subsystem for Linux
terminal-custom-shell-details = Custom: { $path }

## -- SSH setup and AI autosuggestion strings --

terminal-what-happened-here = What happened here?
terminal-checking = Checking...
terminal-installing = Installing...
terminal-updating = Updating...
terminal-initializing = Initializing...
terminal-starting-shell = Starting shell...
terminal-what-is-the-command-to = What is the command to:

## -- Double-prefix aliases for inline banner strings --

terminal-terminal-aws-bedrock-title = { terminal-aws-bedrock-title }
terminal-terminal-aws-bedrock-description = { terminal-aws-bedrock-description }
terminal-terminal-log-into-aws = { terminal-log-into-aws }
terminal-terminal-notifications-dismissed = { terminal-notifications-dismissed }
terminal-terminal-notifications-disabled = { terminal-notifications-disabled }
terminal-terminal-notifications-success = { terminal-notifications-success }
terminal-terminal-notifications-denied = { terminal-notifications-denied }
terminal-terminal-notifications-error = { terminal-notifications-error }
terminal-terminal-notifications-pending = { terminal-notifications-pending }
terminal-terminal-configure-notifications = { terminal-configure-notifications }
terminal-terminal-troubleshoot = { terminal-troubleshoot }
terminal-terminal-notifications-long-running = { terminal-notifications-long-running }
terminal-terminal-notifications-agent-task = { terminal-notifications-agent-task }
terminal-terminal-notifications-needs-attention = { terminal-notifications-needs-attention }
terminal-terminal-notifications-password-prompt = { terminal-notifications-password-prompt }
terminal-terminal-notifications-a11y-help = { terminal-notifications-a11y-help }
terminal-terminal-open-markdown-title = { terminal-open-markdown-title }
terminal-terminal-open-code-title = { terminal-open-code-title }
terminal-terminal-open-code-title-fallback = { terminal-open-code-title-fallback }
terminal-terminal-view-in-warp = { terminal-view-in-warp }
terminal-terminal-edit-in-warp = { terminal-edit-in-warp }
terminal-terminal-ssh-wrapper-enabled = { terminal-ssh-wrapper-enabled }
terminal-terminal-ssh-wrapper-disabled = { terminal-ssh-wrapper-disabled }
terminal-terminal-ssh-connection-title = { terminal-ssh-connection-title }
terminal-terminal-ssh-authenticating = { terminal-ssh-authenticating }
terminal-terminal-ssh-connected = { terminal-ssh-connected }
terminal-terminal-ssh-disconnected = { terminal-ssh-disconnected }
terminal-terminal-ssh-error-title = { terminal-ssh-error-title }
terminal-terminal-ssh-host-label = { terminal-ssh-host-label }
terminal-terminal-ssh-user-label = { terminal-ssh-user-label }
terminal-terminal-ssh-tmux-not-installed = { terminal-ssh-tmux-not-installed }
terminal-terminal-ssh-unsupported-tmux = { terminal-ssh-unsupported-tmux }
terminal-terminal-ssh-tmux-failed = { terminal-ssh-tmux-failed }
terminal-terminal-ssh-warpify-timeout = { terminal-ssh-warpify-timeout }
terminal-terminal-ssh-unsupported-shell = { terminal-ssh-unsupported-shell }
terminal-terminal-ssh-tmux-install-error = { terminal-ssh-tmux-install-error }
terminal-terminal-ssh-tmux-not-installed-title = { terminal-ssh-tmux-not-installed-title }
terminal-terminal-ssh-unsupported-tmux-title = { terminal-ssh-unsupported-tmux-title }
terminal-terminal-ssh-tmux-failed-title = { terminal-ssh-tmux-failed-title }
terminal-terminal-ssh-tmux-install-timeout-title = { terminal-ssh-tmux-install-timeout-title }
terminal-terminal-ssh-warpify-timeout-title = { terminal-ssh-warpify-timeout-title }
terminal-terminal-ssh-unsupported-shell-title = { terminal-ssh-unsupported-shell-title }
terminal-terminal-ssh-tmux-install-error-title = { terminal-ssh-tmux-install-error-title }
terminal-terminal-ssh-error-warpifying-title = { terminal-ssh-error-warpifying-title }
terminal-terminal-ssh-feedback-message-before-link = { terminal-ssh-feedback-message-before-link }
terminal-terminal-ssh-feedback-link-text = { terminal-ssh-feedback-link-text }
terminal-terminal-ssh-feedback-message-after-link = { terminal-ssh-feedback-message-after-link }
terminal-terminal-ssh-warpify-without-tmux = { terminal-ssh-warpify-without-tmux }
terminal-terminal-ssh-continue-without-warpification = { terminal-ssh-continue-without-warpification }
terminal-terminal-settings = { terminal-settings }
terminal-terminal-new-terminal-session = { terminal-new-terminal-session }
terminal-terminal-zero-state-new-agent-conversation = { terminal-zero-state-new-agent-conversation }
terminal-terminal-zero-state-new-cloud-agent-conversation = { terminal-zero-state-new-cloud-agent-conversation }
terminal-terminal-zero-state-cycle-commands = { terminal-zero-state-cycle-commands }
terminal-terminal-zero-state-open-code-review = { terminal-zero-state-open-code-review }
terminal-terminal-zero-state-autodetect-nld = { terminal-zero-state-autodetect-nld }

## -- Double-prefix aliases for new terminal strings --
terminal-terminal-regenerate-agents-md = { terminal-regenerate-agents-md }
terminal-terminal-cli-agent-hint = { terminal-cli-agent-hint }
terminal-terminal-cloud-mode-v2-hint = { terminal-cloud-mode-v2-hint }
terminal-terminal-cloud-handoff-hint = { terminal-cloud-handoff-hint }
terminal-terminal-input-a11y-label = { terminal-input-a11y-label }
terminal-terminal-ai-command-search-hint = { terminal-ai-command-search-hint }
terminal-terminal-run-commands-hint = { terminal-run-commands-hint }
terminal-terminal-steer-agent-hint = { terminal-steer-agent-hint }
terminal-terminal-ask-follow-up = { terminal-ask-follow-up }
terminal-terminal-system-default-shell = { terminal-system-default-shell }
terminal-terminal-type-searched-phrase = { terminal-type-searched-phrase }
terminal-terminal-press-escape-to-quit = { terminal-press-escape-to-quit }
terminal-terminal-conversation-restored = { terminal-conversation-restored }
terminal-terminal-previous-session = { terminal-previous-session }
terminal-terminal-sharing-link-copied = { terminal-sharing-link-copied }
terminal-terminal-grants-ability-part1 = { terminal-grants-ability-part1 }
terminal-terminal-use-with-caution = { terminal-use-with-caution }
terminal-terminal-edit-requests = { terminal-edit-requests }
terminal-terminal-cancel-request = { terminal-cancel-request }

## -- Double-prefix aliases for inline banner strings (new) --

terminal-terminal-optimize-codebase-header = { terminal-optimize-codebase-header }
terminal-terminal-optimize-codebase-text = { terminal-optimize-codebase-text }
terminal-terminal-optimize = { terminal-optimize }
terminal-terminal-enable-alias-expansion = { terminal-enable-alias-expansion }
terminal-terminal-warp-can-auto-expand-aliases = { terminal-warp-can-auto-expand-aliases }
terminal-terminal-login-for-ai = { terminal-login-for-ai }
terminal-terminal-ai-features-unavailable = { terminal-ai-features-unavailable }
terminal-terminal-sign-up = { terminal-sign-up }
terminal-terminal-set-permissions = { terminal-set-permissions }
terminal-terminal-restricted-due-to-payment-issue = { terminal-restricted-due-to-payment-issue }
terminal-terminal-out-of-credits = { terminal-out-of-credits }
terminal-terminal-suggestion-explain = { terminal-suggestion-explain }
terminal-terminal-suggestion-fix = { terminal-suggestion-fix }
terminal-terminal-suggestion-install = { terminal-suggestion-install }
terminal-terminal-suggestion-code = { terminal-suggestion-code }
terminal-terminal-suggestion-deploy = { terminal-suggestion-deploy }
terminal-terminal-suggestion-something-else = { terminal-suggestion-something-else }
terminal-terminal-environment-started = { terminal-environment-started }
terminal-terminal-remote-control-active = { terminal-remote-control-active }
terminal-terminal-sharing-started = { terminal-sharing-started }
terminal-terminal-environment-ended = { terminal-environment-ended }
terminal-terminal-remote-control-stopped = { terminal-remote-control-stopped }
terminal-terminal-sharing-ended = { terminal-sharing-ended }
terminal-terminal-today = { terminal-today }
terminal-terminal-shell-process-exited-prematurely = { terminal-shell-process-exited-prematurely }
terminal-terminal-shell-init-output-visible = { terminal-shell-init-output-visible }
terminal-terminal-shell-process-exited = { terminal-shell-process-exited }

## -- Double-prefix aliases for share block modal strings --

terminal-terminal-share-title-optional = { terminal-share-title-optional }
terminal-terminal-share-embed-label = { terminal-share-embed-label }
terminal-terminal-share-error = { terminal-share-error }
terminal-terminal-share-link-copied = { terminal-share-link-copied }
terminal-terminal-share-embed-copied = { terminal-share-embed-copied }
terminal-terminal-share-creating = { terminal-share-creating }
terminal-terminal-share-embed-error = { terminal-share-embed-error }

## -- Double-prefix aliases for block list element strings --

terminal-terminal-block-tag-agent = { terminal-block-tag-agent }
terminal-terminal-block-save-workflow = { terminal-block-save-workflow }
terminal-terminal-block-secrets-cannot-save = { terminal-block-secrets-cannot-save }
terminal-terminal-session-restored-from = { $banner_intro_text } from { $timestamp }

## -- Double-prefix aliases for UDI strings --

terminal-terminal-udi-no-objects = { terminal-udi-no-objects }
terminal-terminal-udi-no-ssh = { terminal-udi-no-ssh }
terminal-terminal-udi-no-subshell = { terminal-udi-no-subshell }
terminal-terminal-udi-no-fs = { terminal-udi-no-fs }
terminal-terminal-udi-disabled-terminal-mode = { terminal-udi-disabled-terminal-mode }
terminal-terminal-udi-attach-context = { terminal-udi-attach-context }
terminal-terminal-udi-voice-input = { terminal-udi-voice-input }
terminal-terminal-udi-attach-file = { terminal-udi-attach-file }
terminal-terminal-udi-slash-commands = { terminal-udi-slash-commands }
terminal-terminal-udi-request-edit = { terminal-udi-request-edit }
terminal-terminal-udi-mode-locked = { terminal-udi-mode-locked }
terminal-terminal-udi-terminal = { terminal-udi-terminal }
terminal-terminal-udi-agent-mode = { terminal-udi-agent-mode }
terminal-terminal-starting-shell = { terminal-starting-shell }
terminal-terminal-loading-prompt = { terminal-loading-prompt }
terminal-terminal-when-enabled = { terminal-when-enabled }
terminal-terminal-auto-reload-explanation = { terminal-auto-reload-explanation }
terminal-terminal-enable-auto-reload-title = { terminal-enable-auto-reload-title }
terminal-terminal-enable-auto-reload = { terminal-enable-auto-reload }
terminal-terminal-team-data-not-found = { terminal-team-data-not-found }
terminal-terminal-sharing-in-warp-drive = { terminal-sharing-in-warp-drive }
terminal-terminal-drive-sharing-body-1 = { terminal-drive-sharing-body-1 }
terminal-terminal-drive-sharing-body-2 = { terminal-drive-sharing-body-2 }
terminal-terminal-share-object-name = Share { $name }
terminal-terminal-share-this-object-type = Share this { $object_type }
terminal-terminal-file-issue = { terminal-file-issue }
terminal-terminal-more-info = { terminal-more-info }
terminal-terminal-shell-process-exited = { terminal-shell-process-exited }
terminal-terminal-shell-could-not-start = { terminal-shell-could-not-start }
terminal-terminal-shell-exited-prematurely = { terminal-shell-exited-prematurely }
terminal-terminal-warpify-failure-subtext = Something went wrong while starting { $shell_detail } and Warpifying it, causing the process to terminate. Warpify script output is displayed here, which may point at a cause.
terminal-terminal-open-folder = { terminal-open-folder }
terminal-terminal-open-file = { terminal-open-file }
terminal-terminal-open-link = { terminal-open-link }
terminal-terminal-open-in-warp = { terminal-open-in-warp }
terminal-terminal-show-in-finder = { terminal-show-in-finder }
terminal-terminal-show-containing-folder = { terminal-show-containing-folder }
terminal-terminal-reveal-secret = { terminal-reveal-secret }
terminal-terminal-hide-secret = { terminal-hide-secret }
terminal-terminal-copy-secret = { terminal-copy-secret }
terminal-terminal-install-ssh-extension = { terminal-install-ssh-extension }
terminal-terminal-install-ssh-extension-desc = { terminal-install-ssh-extension-desc }
terminal-terminal-continue-without-installing = { terminal-continue-without-installing }
terminal-terminal-continue-without-desc = { terminal-continue-without-desc }
terminal-terminal-choose-remote-experience = { terminal-choose-remote-experience }
terminal-terminal-manage-warpify-settings = { terminal-manage-warpify-settings }
terminal-terminal-cannot-start-while-monitoring = { terminal-cannot-start-while-monitoring }
terminal-terminal-open-in-warp-path = Open { $path } in Warp
terminal-terminal-close-warp-banner = { terminal-close-warp-banner }
terminal-terminal-learn-more-markdown = { terminal-learn-more-markdown }
terminal-terminal-shell-default = { terminal-shell-default }
terminal-terminal-shell-bash = { terminal-shell-bash }
terminal-terminal-shell-zsh = { terminal-shell-zsh }
terminal-terminal-shell-fish = { terminal-shell-fish }
terminal-terminal-shell-powershell = { terminal-shell-powershell }
terminal-terminal-shell-windows-powershell = { terminal-shell-windows-powershell }
terminal-terminal-shell-custom = { terminal-shell-custom }
terminal-terminal-shell-docker-sandbox = { terminal-shell-docker-sandbox }
terminal-terminal-wsl-details = { terminal-wsl-details }
terminal-terminal-custom-shell-details = Custom: { $path }
terminal-terminal-what-happened-here = { terminal-what-happened-here }
terminal-terminal-checking = { terminal-checking }
terminal-terminal-installing = { terminal-installing }
terminal-terminal-updating = { terminal-updating }
terminal-terminal-initializing = { terminal-initializing }
terminal-terminal-starting-shell = { terminal-starting-shell }
terminal-terminal-what-is-the-command-to = { terminal-what-is-the-command-to }

## -- Double-prefix aliases for input i18n strings --

terminal-terminal-input-a11y-helper = { terminal-input-a11y-helper }
terminal-terminal-steer-agent-classic = { terminal-steer-agent-classic }
terminal-terminal-ask-follow-up-classic = { terminal-ask-follow-up-classic }
terminal-terminal-dynamic-enum-generate = { terminal-dynamic-enum-generate }
terminal-terminal-dynamic-enum-run = { terminal-dynamic-enum-run }
terminal-terminal-dynamic-enum-pending = { terminal-dynamic-enum-pending }
terminal-terminal-dynamic-enum-failure = { terminal-dynamic-enum-failure }
terminal-terminal-dynamic-enum-no-results = { terminal-dynamic-enum-no-results }
terminal-terminal-search-queries = { terminal-search-queries }
terminal-terminal-search-queries-rewind = { terminal-search-queries-rewind }
terminal-terminal-search-conversations = { terminal-search-conversations }
terminal-terminal-search-skills = { terminal-search-skills }
terminal-terminal-search-models = { terminal-search-models }
terminal-terminal-search-profiles = { terminal-search-profiles }
terminal-terminal-search-commands = { terminal-search-commands }
terminal-terminal-search-prompts = { terminal-search-prompts }
terminal-terminal-search-indexed-repos = { terminal-search-indexed-repos }
terminal-terminal-search-plans = { terminal-search-plans }

## -- Double-prefix aliases for SSH file upload strings --

terminal-terminal-waiting-for-password = { terminal-waiting-for-password }
terminal-terminal-uploading = { terminal-uploading }
terminal-terminal-uploaded = { terminal-uploaded }
terminal-terminal-failed-to-upload = { terminal-failed-to-upload }
terminal-terminal-clear-upload = { terminal-clear-upload }
terminal-terminal-file-uploads = { terminal-file-uploads }
terminal-terminal-upload-session = { terminal-upload-session }

## -- Double-prefix aliases for general settings descriptions --

terminal-terminal-setting-description-show-warning-before-quitting = { terminal-setting-description-show-warning-before-quitting }
terminal-terminal-setting-description-quit-on-last-window-closed = { terminal-setting-description-quit-on-last-window-closed }
terminal-terminal-setting-description-restore-session = { terminal-setting-description-restore-session }
terminal-terminal-setting-description-login-item = { terminal-setting-description-login-item }
terminal-terminal-setting-description-link-tooltip = { terminal-setting-description-link-tooltip }
terminal-terminal-setting-description-auto-open-code-review-pane = { terminal-setting-description-auto-open-code-review-pane }
terminal-terminal-setting-description-language = { terminal-setting-description-language }

## -- Double-prefix aliases for keybinding description strings --

terminal-terminal-alternate-terminal-paste = { terminal-alternate-terminal-paste }
terminal-terminal-toggle-cli-agent-rich-input = { terminal-toggle-cli-agent-rich-input }
terminal-terminal-accept-prompt-suggestion = { terminal-accept-prompt-suggestion }
terminal-terminal-copy-text-or-cancel-active-process = { terminal-copy-text-or-cancel-active-process }
terminal-terminal-cancel-active-process = { terminal-cancel-active-process }
terminal-terminal-focus-terminal-input = { terminal-focus-terminal-input }
terminal-terminal-reinput-selected-commands = { terminal-reinput-selected-commands }
terminal-terminal-reinput-selected-commands-as-root = { terminal-reinput-selected-commands-as-root }
terminal-terminal-find-in-terminal = { terminal-find-in-terminal }
terminal-terminal-select-closest-bookmark-up = { terminal-select-closest-bookmark-up }
terminal-terminal-select-closest-bookmark-down = { terminal-select-closest-bookmark-down }
terminal-terminal-open-block-context-menu = { terminal-open-block-context-menu }
terminal-terminal-toggle-team-workflows-modal = { terminal-toggle-team-workflows-modal }
terminal-terminal-copy-git-branch = { terminal-copy-git-branch }
terminal-terminal-clear-blocks = { terminal-clear-blocks }
terminal-terminal-move-cursor-word-left-executing-command = { terminal-move-cursor-word-left-executing-command }
terminal-terminal-move-cursor-word-right-executing-command = { terminal-move-cursor-word-right-executing-command }
terminal-terminal-move-cursor-home-executing-command = { terminal-move-cursor-home-executing-command }
terminal-terminal-move-cursor-end-executing-command = { terminal-move-cursor-end-executing-command }
terminal-terminal-delete-word-left-executing-command = { terminal-delete-word-left-executing-command }
terminal-terminal-delete-to-line-start-executing-command = { terminal-delete-to-line-start-executing-command }
terminal-terminal-delete-to-line-end-executing-command = { terminal-delete-to-line-end-executing-command }
terminal-terminal-backward-tabulation-executing-command = { terminal-backward-tabulation-executing-command }
terminal-terminal-select-previous-block = { terminal-select-previous-block }
terminal-terminal-select-next-block = { terminal-select-next-block }
terminal-terminal-share-selected-block = { terminal-share-selected-block }
terminal-terminal-bookmark-selected-block = { terminal-bookmark-selected-block }
terminal-terminal-find-within-selected-block = { terminal-find-within-selected-block }
terminal-terminal-copy-command-and-output = { terminal-copy-command-and-output }
terminal-terminal-copy-command-output = { terminal-copy-command-output }
terminal-terminal-copy-command = { terminal-copy-command }
terminal-terminal-scroll-output-up-one-line = { terminal-scroll-output-up-one-line }
terminal-terminal-scroll-output-down-one-line = { terminal-scroll-output-down-one-line }
terminal-terminal-scroll-output-up-one-page = { terminal-scroll-output-up-one-page }
terminal-terminal-scroll-output-down-one-page = { terminal-scroll-output-down-one-page }
terminal-terminal-scroll-to-top-of-selected-block = { terminal-scroll-to-top-of-selected-block }
terminal-terminal-scroll-to-bottom-of-selected-block = { terminal-scroll-to-bottom-of-selected-block }
terminal-terminal-select-all-blocks = { terminal-select-all-blocks }
terminal-terminal-expand-selected-blocks-above = { terminal-expand-selected-blocks-above }
terminal-terminal-expand-selected-blocks-below = { terminal-expand-selected-blocks-below }
terminal-terminal-attach-selected-block-as-agent-context = { terminal-attach-selected-block-as-agent-context }
terminal-terminal-attach-selected-text-as-agent-context = { terminal-attach-selected-text-as-agent-context }
terminal-terminal-attach-selection-as-agent-context = { terminal-attach-selection-as-agent-context }
terminal-terminal-ask-warp-ai-about-selection = { terminal-ask-warp-ai-about-selection }
terminal-terminal-ask-warp-ai-about-last-block = { terminal-ask-warp-ai-about-last-block }
terminal-terminal-ask-warp-ai = { terminal-ask-warp-ai }
terminal-terminal-insert-command-correction = { terminal-insert-command-correction }
terminal-terminal-setup-guide = { terminal-setup-guide }
terminal-terminal-import-external-settings = { terminal-import-external-settings }
terminal-terminal-share-current-session = { terminal-share-current-session }
terminal-terminal-stop-sharing-current-session = { terminal-stop-sharing-current-session }
terminal-terminal-toggle-block-filter-on-selected-or-last-block = { terminal-toggle-block-filter-on-selected-or-last-block }
terminal-terminal-toggle-sticky-command-header-in-active-pane = { terminal-toggle-sticky-command-header-in-active-pane }
terminal-terminal-toggle-auto-execute-mode = { terminal-toggle-auto-execute-mode }
terminal-terminal-toggle-queue-next-prompt = { terminal-toggle-queue-next-prompt }
terminal-terminal-write-current-codebase-index-snapshot = { terminal-write-current-codebase-index-snapshot }
terminal-terminal-load-agent-mode-conversation = { terminal-load-agent-mode-conversation }
terminal-terminal-toggle-pty-recording-for-session = { terminal-toggle-pty-recording-for-session }
terminal-terminal-initiate-project-for-warp = { terminal-initiate-project-for-warp }
terminal-terminal-add-current-folder-as-project = { terminal-add-current-folder-as-project }
terminal-terminal-toggle-conversation-details-panel = { terminal-toggle-conversation-details-panel }
terminal-terminal-set-input-mode-to-agent-mode = { terminal-set-input-mode-to-agent-mode }
terminal-terminal-set-input-mode-to-terminal-mode = { terminal-set-input-mode-to-terminal-mode }
terminal-terminal-toggle-hide-cli-responses = { terminal-toggle-hide-cli-responses }
terminal-terminal-show-warp-network-log = { terminal-show-warp-network-log }
terminal-terminal-clear-screen = { terminal-clear-screen }
terminal-terminal-edit-prompt = { terminal-edit-prompt }
terminal-terminal-experimental-toggle-classic-completions-mode = { terminal-experimental-toggle-classic-completions-mode }
terminal-terminal-command-search = { terminal-command-search }
terminal-terminal-history-search = { terminal-history-search }
terminal-terminal-open-completions-menu = { terminal-open-completions-menu }
terminal-terminal-workflows = { terminal-workflows }
terminal-terminal-open-ai-command-suggestions = { terminal-open-ai-command-suggestions }
terminal-terminal-trigger-auto-detection = { terminal-trigger-auto-detection }
terminal-terminal-clear-and-reset-ai-context-menu-query = { terminal-clear-and-reset-ai-context-menu-query }

## -- Double-prefix aliases for search accessibility labels --

terminal-terminal-search-conversation = Conversation: { $title }
terminal-terminal-search-command = Command: { $command }
terminal-terminal-search-ai-prompt = AI prompt: { $query }
terminal-terminal-search-plan = Plan: { $title }
terminal-terminal-search-profile = Profile: { $name }
terminal-terminal-search-prompt = Prompt: { $name }
terminal-terminal-search-repo = Indexed repository: { $name }
terminal-terminal-search-rewind = Rewind to: { $query } (no code changes)
terminal-terminal-search-skill = Skill: { $name }
terminal-terminal-search-query = Query: { $query }
terminal-terminal-search-block = Block: { $command }
terminal-terminal-warp-drive = { terminal-warp-drive }

## -- Double-prefix aliases for model spec and reasoning level strings --

terminal-terminal-model-specs-title = { terminal-model-specs-title }
terminal-terminal-model-specs-description = { terminal-model-specs-description }
terminal-terminal-reasoning-level-title = { terminal-reasoning-level-title }
terminal-terminal-reasoning-level-description = { terminal-reasoning-level-description }

## -- Double-prefix aliases for init project strings --

terminal-terminal-init-project-onboarding-text = { terminal-init-project-onboarding-text }
terminal-terminal-init-project-already-setup-text = { terminal-init-project-already-setup-text }

## -- Double-prefix aliases for init environment strings --

terminal-terminal-init-environment-explanation-text = { terminal-init-environment-explanation-text }
terminal-terminal-init-environment-no-repos-help-text = { terminal-init-environment-no-repos-help-text }

## -- Double-prefix aliases for toast messages --

terminal-terminal-copied-to-clipboard = { terminal-copied-to-clipboard }
terminal-terminal-failed-cloud-handoff = { terminal-failed-cloud-handoff }
terminal-terminal-images-removed-no-support = { terminal-images-removed-no-support }
terminal-terminal-skill-not-found = { terminal-skill-not-found }
terminal-terminal-no-active-conversation-export = { terminal-no-active-conversation-export }
terminal-terminal-file-exists-overwrite = { terminal-file-exists-overwrite }
terminal-terminal-conversation-exported = { terminal-conversation-exported }
terminal-terminal-permission-denied = { terminal-permission-denied }
terminal-terminal-directory-not-found = { terminal-directory-not-found }
terminal-terminal-file-already-exists = { terminal-file-already-exists }
terminal-terminal-preparing-handoff = { terminal-preparing-handoff }
terminal-terminal-invalid-uri = { terminal-invalid-uri }
terminal-terminal-invalid-uri-detail = { terminal-invalid-uri-detail }
terminal-terminal-project-rules-linked = { terminal-project-rules-linked }
terminal-terminal-installed-enabled = { terminal-installed-enabled }
terminal-terminal-failed-install = { terminal-failed-install }
terminal-terminal-installing-background = { terminal-installing-background }

## -- Double-prefix aliases for banner and notification strings --

terminal-terminal-yes-emacs-bindings = { terminal-yes-emacs-bindings }
terminal-terminal-no-keep-ide-bindings = { terminal-no-keep-ide-bindings }
terminal-terminal-oz-permission-run = Oz needs your permission to run `{ $command }`
terminal-terminal-oz-permission-read = { terminal-oz-permission-read }
terminal-terminal-oz-permission-search = { terminal-oz-permission-search }
terminal-terminal-oz-permission-edit = { terminal-oz-permission-edit }
terminal-terminal-oz-permission-shell = { terminal-oz-permission-shell }
terminal-terminal-oz-permission-confirm = { terminal-oz-permission-confirm }
terminal-terminal-ssh-connection-failed = { terminal-ssh-connection-failed }
terminal-terminal-latest-output = { terminal-latest-output }
terminal-terminal-status-after-duration =  { $status } after { $seconds }s
terminal-terminal-notification-finished =  finished
terminal-terminal-notification-failed =  failed
terminal-terminal-notification-error-prefix = Error:
terminal-terminal-notification-blocked =  blocked
terminal-terminal-notification-waiting-password =  is waiting for a password
terminal-terminal-warpify-for-features-with-key = You can press { $key } to Warpify this { $title } for more Warp features.
terminal-terminal-warpify-for-features = You can Warpify this { $title } for more Warp features.
terminal-terminal-title-recognized = { $title } recognized.
terminal-terminal-did-you-intend = { terminal-did-you-intend }
terminal-terminal-to-move-cursor = { terminal-to-move-cursor }
terminal-terminal-sharing-usage-exceeded = { terminal-sharing-usage-exceeded }
terminal-terminal-session-limit-exceeded = Session limit ({ $limit }) exceeded. Please reshare to continue.
terminal-terminal-session-internal-error = { terminal-session-internal-error }

## -- Double-prefix aliases for format strings with user-visible text --

terminal-terminal-default-shell = { terminal-default-shell }
terminal-terminal-docker-sandbox = { terminal-docker-sandbox }
terminal-terminal-custom-shell = Custom ({ $command })
terminal-terminal-exit-code = Exit code { $code }
terminal-terminal-installing-ssh-progress = Installing Warp SSH Extension... ({ $percent }%)
terminal-terminal-installing-ssh = Installing Warp SSH Extension...
terminal-terminal-updating-ssh = Updating Warp SSH Extension...
terminal-terminal-initializing = Initializing...
terminal-terminal-starting-shell-with-name = Starting { $name }...
terminal-terminal-discount-percent = { $percent }% off!
terminal-terminal-selected-label = selected
terminal-terminal-disabled-label = disabled
terminal-terminal-attached-as-context = `{ $name }` attached as context
terminal-terminal-attached-with-one-more = `{ $name }` and 1 other command attached as context
terminal-terminal-attached-with-more = `{ $name }` and { $count } other commands attached as context
terminal-terminal-to-remove = { terminal-to-remove }
terminal-terminal-selected-text-as-context = { terminal-selected-text-as-context }
terminal-terminal-enable-language-support = Enable { $language } support
terminal-terminal-install-and-enable-language = Install and enable { $language }
terminal-terminal-link-to-agents-md = Link existing { $file } to my AGENTS.md file
terminal-terminal-enable-language-for-codebase = Enable { $language } support for this codebase? This will give you smarter code navigation, inline error checking, and more.
terminal-terminal-show-more = Show { $count } more

terminal-no-code-restored = No code to be restored
terminal-project-skill = Project Skill
terminal-thinking = Thinking...
terminal-customizable-appearance = Customizable in appearance settings.
terminal-choose-setup-env = Choose how you'd like to set up your environment
terminal-aws-cli-required = The AWS CLI is required to authenticate with your organization's AWS Bedrock. Install it to continue.
terminal-slow-bootstrap-msg = Seems like your shell is taking a while to start...
terminal-more-info-link = More info
terminal-show-init-block = Show initialization block
terminal-use-agent-btn = Use agent
terminal-give-control-back-btn = Give control back to agent
terminal-ask-agent-assist-tooltip = Ask the Warp agent to assist
terminal-ask-agent-resume-tooltip = Ask the Warp agent to resume
terminal-enable-lang-support-desc = Would you like to enable available language support for this codebase? This will give you smarter code navigation and inline error checking.

## -- Double-prefix aliases for migrated UI strings --

terminal-terminal-share-session = { terminal-share-session }
terminal-terminal-shared-session-limit-reached = { terminal-shared-session-limit-reached }
terminal-terminal-shared-session-denied-subheader = { terminal-shared-session-denied-subheader }
terminal-terminal-view-plans = { terminal-view-plans }
terminal-terminal-start-sharing = { terminal-start-sharing }
terminal-terminal-stop-sharing = { terminal-stop-sharing }
terminal-terminal-continue-sharing = { terminal-continue-sharing }
terminal-terminal-make-editor = { terminal-make-editor }
terminal-terminal-deny = { terminal-deny }
terminal-terminal-requested-mode = { terminal-requested-mode }
terminal-terminal-waiting-for = { terminal-waiting-for }
terminal-terminal-create-team = { terminal-create-team }
terminal-terminal-manage-shared-blocks = { terminal-manage-shared-blocks }
terminal-terminal-install-and-enable = { terminal-install-and-enable }
terminal-terminal-enable-selected-languages = { terminal-enable-selected-languages }
terminal-terminal-are-you-still-there = { terminal-are-you-still-there }
terminal-terminal-sharing-will-end-due-to-inactivity = { terminal-sharing-will-end-due-to-inactivity }
terminal-terminal-edit-prompt = { terminal-edit-prompt }
terminal-terminal-warp-terminal-prompt = { terminal-warp-terminal-prompt }
terminal-terminal-shell-prompt-ps1 = { terminal-shell-prompt-ps1 }
terminal-terminal-restore-default = { terminal-restore-default }
terminal-terminal-cancel-request = { terminal-cancel-request }
terminal-terminal-no-code-restored = { terminal-no-code-restored }
terminal-terminal-project-skill = { terminal-project-skill }
terminal-terminal-thinking = { terminal-thinking }
terminal-terminal-customizable-appearance = { terminal-customizable-appearance }
terminal-terminal-choose-setup-env = { terminal-choose-setup-env }
terminal-terminal-aws-cli-required = { terminal-aws-cli-required }
terminal-terminal-slow-bootstrap-msg = { terminal-slow-bootstrap-msg }
terminal-terminal-more-info-link = { terminal-more-info-link }
terminal-terminal-show-init-block = { terminal-show-init-block }
terminal-terminal-use-agent-btn = { terminal-use-agent-btn }
terminal-terminal-give-control-back-btn = { terminal-give-control-back-btn }
terminal-terminal-ask-agent-assist-tooltip = { terminal-ask-agent-assist-tooltip }
terminal-terminal-ask-agent-resume-tooltip = { terminal-ask-agent-resume-tooltip }
terminal-terminal-enable-lang-support-desc = { terminal-enable-lang-support-desc }

## -- Plugin manager strings -----------------------------------------------------------

terminal-plugin-install-claude-title = Install Warp Plugin for Claude Code
terminal-plugin-install-claude-subtitle = Ensure that jq is installed on your machine. Then, run these commands.
terminal-plugin-add-repo-step = Add the Warp plugin marketplace repository
terminal-plugin-install-step = Install the Warp plugin
terminal-plugin-restart-activate = Restart Claude Code to activate the plugin.
terminal-plugin-claude-known-issues = There are some known issues with Claude Code's plugin system. If the plugin is not found after step 1, you can try manually adding an "extraKnownMarketplaces" entry to ~/.claude/settings.json.
terminal-plugin-update-claude-title = Update Warp Plugin for Claude Code
terminal-plugin-update-claude-subtitle = Run the following commands.
terminal-plugin-update-step = Install the latest plugin version
terminal-plugin-restart-update = Restart Claude Code to activate the update.
terminal-plugin-remove-marketplace-step = Remove the existing marketplace (if present)
terminal-plugin-readd-marketplace-step = Re-add the marketplace
terminal-plugin-install-codex-title = Enable Warp Notifications for Codex
terminal-plugin-install-codex-subtitle = Update Codex to the latest version, then enable in-focus notifications so Warp can display them while you work.
terminal-plugin-codex-update-step = Update Codex to the latest version.
terminal-plugin-codex-config-step = Set the notification condition to "always" in your Codex config. Open or create ~/.codex/config.toml and add:
terminal-plugin-restart-codex = Restart Codex to apply the changes.
terminal-plugin-install-gemini-title = Install Warp Plugin for Gemini CLI
terminal-plugin-install-gemini-subtitle = Run the following command, then restart Gemini CLI.
terminal-plugin-install-gemini-extension-step = Install the Warp extension
terminal-plugin-restart-gemini-plugin = Restart Gemini CLI to activate the plugin.
terminal-plugin-update-gemini-title = Update Warp Plugin for Gemini CLI
terminal-plugin-update-gemini-subtitle = Run the following command, then restart Gemini CLI.
terminal-plugin-update-gemini-extension-step = Update the Warp extension
terminal-plugin-restart-gemini-update-note = Restart Gemini CLI to activate the update.
terminal-plugin-install-opencode-title = Install Warp Plugin for OpenCode
terminal-plugin-opencode-install-subtitle = Add the Warp plugin to your OpenCode configuration, then restart OpenCode.
terminal-plugin-opencode-open-config-step = Open or create your opencode.json. This can be in your project root, or the global config path:
terminal-plugin-opencode-add-plugin-step = Add "@warp-dot-dev/opencode-warp" to the "plugin" array in the top-level JSON object:
terminal-plugin-opencode-restart-activate = Restart OpenCode to activate the plugin.
terminal-plugin-update-opencode-title = Update Warp Plugin for OpenCode
terminal-plugin-opencode-update-subtitle = Pin the plugin to the latest version in your opencode.json. OpenCode caches plugins per version spec, so changing the pin forces it to re-fetch on restart.
terminal-plugin-opencode-replace-plugin-step = Replace the existing "@warp-dot-dev/opencode-warp" entry in the "plugin" array with the explicit version:
terminal-plugin-opencode-restart-update = Restart OpenCode to load the updated plugin.
terminal-plugin-installed-restart = Warp plugin installed. Please restart the session to activate.
terminal-plugin-updated-restart = Warp plugin updated. Please restart the session to activate.
terminal-plugin-no-manager = No plugin manager available
terminal-plugin-auto-install-unsupported = Auto-install not supported for this agent
terminal-plugin-auto-update-unsupported = Auto-update not supported for this agent
terminal-plugin-restart-claude-activate = Warp plugin installed. Please run /reload-plugins to activate.
terminal-plugin-restart-claude-update = Warp plugin updated. Please run /reload-plugins to activate.
terminal-plugin-restart-gemini-activate = Warp plugin installed. Please restart Gemini CLI to activate.
terminal-plugin-restart-gemini-update = Warp plugin updated. Please restart Gemini CLI to activate.

## -- Inline banners -----------------------------------------------------------

terminal-enable-vim-title = Enable Warp's Vim keybindings?
terminal-aws-cli-not-installed-title = AWS CLI Not Installed

## -- Environment setup --------------------------------------------------------

terminal-connecting-host-step1 = Connecting to Host (Step 1/3)
terminal-creating-env-step2 = Creating Environment (Step 2/3)
terminal-starting-env-step3 = Starting Environment (Step 3/3)
terminal-running-setup = Running setup commands...
terminal-ran-setup = Ran setup commands
terminal-cloud-agent-failed = Cloud agent failed
terminal-quick-setup = Quick setup
terminal-quick-setup-desc = Select the GitHub repositories you'd like to work with and we'll suggest a base image and config
terminal-use-agent = Use the agent
terminal-use-agent-desc = Choose a locally set up project and we'll help you set up an environment based on it
terminal-env-setup-cancelled = Environment setup cancelled

## -- Share block modal --------------------------------------------------------

terminal-share-create-link = Create link
terminal-share-get-embed = Get embed
terminal-redact-secrets = Redact secrets (API keys, passwords, IP addresses, PII etc.)
terminal-command-and-output = Command and Output
terminal-command = Command
terminal-output = Output

terminal-terminal-share-create-link = { terminal-share-create-link }
terminal-terminal-share-get-embed = { terminal-share-get-embed }
terminal-terminal-redact-secrets = { terminal-redact-secrets }
terminal-terminal-command-and-output = { terminal-command-and-output }
terminal-terminal-command = { terminal-command }
terminal-terminal-output = { terminal-output }
