# =============================================================================
# workspace.ftl — Workspace, tab, and pane labels
# =============================================================================
# Message IDs: workspace-{id}
# Used in app/src/workspace/*.rs
# =============================================================================

## -- Pane / tab kind labels ---------------------------------------------------

workspace-pane-terminal = Terminal
workspace-pane-code = Code
workspace-pane-code-diff = Code Diff
workspace-pane-file = File
workspace-pane-notebook = Notebook
workspace-pane-workflow = Workflow
workspace-pane-settings = Settings
workspace-pane-env-vars = Environment Variables
workspace-pane-environments = Environments
workspace-pane-ai-fact = AI Fact
workspace-pane-ai-document = AI Document
workspace-pane-execution-profile = Execution Profile

workspace-terminal = Terminal
workspace-code = Code
workspace-file = File
workspace-notebook = Notebook
workspace-workflow = Workflow
workspace-environments = Environments
workspace-rewind = Rewind
workspace-placeholder = Placeholder

## -- Menu items ---------------------------------------------------------------

workspace-menu-new-terminal = New Terminal
workspace-menu-new-code-tab = New Code Tab
workspace-menu-new-notebook = New Notebook
workspace-menu-new-workflow = New Workflow
workspace-menu-open-settings = Open Settings
workspace-menu-close-tab = Close Tab
workspace-menu-close-window = Close Window

## -- Dialog titles & body -----------------------------------------------------

workspace-close-session-title = Close session
workspace-close-session-body = Are you sure you want to close this session?
workspace-delete-conversation-title = Delete conversation
workspace-delete-conversation-body = This action cannot be undone.
workspace-rewind-confirmation-title = Rewind
workspace-rewind-confirmation-body = Are you sure you want to rewind the terminal?

## -- Search -------------------------------------------------------------------

workspace-search-placeholder = Search…
workspace-global-search-label = Global Search
workspace-file-search-placeholder = Search files…

## -- Misc ---------------------------------------------------------------------

workspace-home-label = Home
workspace-welcome-web = Welcome to Warp on Web
workspace-edit-toolbar = Edit toolbar
workspace-recent-label = Recent
workspace-pinned-label = Pinned
workspace-empty-state-title = No results
workspace-empty-state-description = Try a different search term or adjust your filters.
workspace-project-explorer = Project explorer
workspace-global-search = Global search
workspace-warp-drive-label = Warp Drive
workspace-agent-conversations = Agent conversations
workspace-close-panel = Close panel
workspace-crash-recovery-message = We detected a crash during application startup, and adjusted your configuration to be safer.
workspace-default-user-display-name = User

workspace-rearrange-toolbar = Re-arrange toolbar items
workspace-update-warp = Update Warp
workspace-app-outdated = Your app is out of date. Please update to get the latest features.
workspace-features-may-not-work = Some Warp features may not work on older versions. Please update.
workspace-tab-config-chip = Access your tab configs here.
workspace-login-expired = Your login has expired.
workspace-sign-in = Sign in
workspace-sign-in-again = Please sign in again to restore access to cloud-based features.
workspace-update-now = Update now
workspace-unable-to-update = A new version is available but Warp is unable to perform the update.
workspace-unable-to-launch = Warp was unable to launch the new installed version.
workspace-local-docker-sandbox = Local Docker Sandbox
workspace-reopen-closed-session = Reopen closed session
workspace-last-run-command = Last run command { $command }
workspace-last-ai-interaction = Last AI interaction: { $prompt }
workspace-currently-running = Currently running { $command }
workspace-currently-running-ai = Currently running AI interaction: { $prompt }
workspace-current-version-is = Current version is { $version }
workspace-install-update = Install update ({ $version })
workspace-updating-to = Updating to ({ $version })
workspace-update-warp-manually = Update Warp manually
workspace-update-and-relaunch = Update and relaunch Warp
workspace-whats-new = What's new
workspace-feedback = Feedback
workspace-view-warp-logs = View Warp logs
workspace-slack = Slack
workspace-upgrade = Upgrade
workspace-invite-friend = Invite a friend
workspace-sign-up = Sign up
workspace-toast-warp-updated = Warp updated!

## -- Workspace view strings -------------------------------------------------------

workspace-search-repos = Search repos
workspace-search-tabs = Search tabs…
workspace-new-worktree-config = New worktree config
workspace-new-tab-config = New tab config
workspace-new-worktree-repo = New worktree: { $repo_display_name }
workspace-new-worktree-repo-branch = New worktree: { $repo_display_name }, { $base_branch }
workspace-new-worktree-repo-name = New worktree: { $repo_display_name }, { $name }
workspace-new-tab = New Tab
workspace-tab-configs = Tab configs
workspace-offline-tooltip = Some features may be unavailable offline
workspace-open-repository = Open repository
workspace-open-repository-tooltip = Navigate to a repo and initialize it for coding
workspace-close-panel = Close panel
workspace-maximize = Maximize
workspace-minimize = Minimize
workspace-code-review = Code review
workspace-toggle-maximize = Toggle Maximize Code Review Panel

## -- Conversation list view strings ------------------------------------------------

workspace-view-all = View all
workspace-section-active = ACTIVE
workspace-section-past = PAST
workspace-no-conversations-yet = No conversations yet
workspace-conversations-subtitle = Your active and past conversations with local and ambient agents will appear here.
workspace-no-matching-conversations = No matching conversations
workspace-share-conversation = Share conversation
workspace-fork-in-new-pane = Fork in new pane
workspace-fork-in-new-tab = Fork in new tab
workspace-cannot-delete-conversation-tooltip = This conversation cannot be deleted
workspace-conversations-cannot-delete = Conversations cannot be deleted while in progress.
workspace-conversation = Conversation
workspace-unknown = Unknown
workspace-show-less = Show less

## -- OpenWarp launch modal strings ------------------------------------------------

workspace-openwarp-badge = New
workspace-openwarp-title = Warp is now open-source
workspace-openwarp-description = You, our community, can participate in building Warp using an agent-first workflow.
workspace-openwarp-contribute-title = Contribute
workspace-openwarp-contribute-desc = Warp's client code is now open source. Get started by using the /feedback skill to open an issue, and follow the contribution guidelines
workspace-openwarp-contribute-link = here
workspace-openwarp-automated-title = Open Automated Development
workspace-openwarp-automated-desc = The Warp repo is managed by an agent-first workflow powered by
workspace-openwarp-automated-link = Oz
workspace-openwarp-auto-weights-title = Introducing 'auto (open-weights)'
workspace-openwarp-auto-weights-desc = We've added a new auto model that picks the best open weight model for a task, like Kimi or MiniMax.
workspace-openwarp-visit-repo = Visit the repo

## -- HOA Onboarding strings ------------------------------------------------------

workspace-onboarding-see-whats-new = See what's new
workspace-onboarding-next = Next
workspace-onboarding-dismiss = Dismiss
workspace-onboarding-finish = Finish
workspace-onboarding-vertical-tabs-title = Introducing vertical tabs - the new default
workspace-onboarding-vertical-tabs-desc = Vertical tabs show all open agent and terminal panes, grouped by tab. Customize what information you want to see to support your workflow.
workspace-onboarding-switch-horizontal = Switch back to horizontal tabs
workspace-onboarding-inbox-title = Meet your new agent inbox
workspace-onboarding-inbox-desc = Warp pipes through notifications from any CLI coding agent into a unified notification center that works across all coding agents and harnesses.
workspace-onboarding-inbox-learn-more = Learn more

## -- WASM view strings -----------------------------------------------------------

workspace-open-in-warp = Open in Warp
workspace-open-desktop-question = Open in Warp Desktop?
workspace-future-links-desktop = Future links will automatically open on desktop.
workspace-download-desktop-question = Download Warp Desktop?
workspace-intelligent-terminal-promo = Warp is the intelligent terminal with AI and your dev team's knowledge built-in.
workspace-always-open-web = Always open { $object_kind } on the web?
workspace-change-in-settings = You can change this at any time in settings.
workspace-warp-drive-objects = Warp Drive objects
workspace-shared-sessions = shared sessions
workspace-warp-links = Warp links
workspace-view-all-cloud-runs = View all cloud runs

## -- Right panel strings ----------------------------------------------------------

workspace-no-repo-selected = no repo is selected for code review
workspace-session-cwd-unavailable = session cwd is unavailable or not local
workspace-session-outside-repo = session cwd is not inside selected repo
workspace-ai-disabled-review = AI is disabled for Warp review destinations
workspace-terminal-executing = terminal is currently executing a command
workspace-input-box-not-visible = terminal input box is not visible

## -- Tab context menu ----------------------------------------------------------------

workspace-menu-stop-sharing = Stop sharing
workspace-menu-share-session = Share session
workspace-menu-stop-sharing-all = Stop sharing all
workspace-menu-copy-link = Copy link
workspace-menu-copy-tab-title = Copy tab title
workspace-menu-copy-pane-title = Copy pane title
workspace-menu-copy-branch = Copy branch
workspace-menu-copy-working-directory = Copy working directory
workspace-menu-copy-pull-request-link = Copy pull request link
workspace-menu-rename-tab = Rename tab
workspace-menu-reset-tab-name = Reset tab name
workspace-menu-move-tab-down = Move Tab Down
workspace-menu-move-tab-right = Move Tab Right
workspace-menu-move-tab-up = Move Tab Up
workspace-menu-move-tab-left = Move Tab Left
workspace-menu-close-other-tabs = Close other tabs
workspace-menu-close-tabs-below = Close Tabs Below
workspace-menu-close-tabs-right = Close Tabs to the Right
workspace-menu-save-new-config = Save as new config
workspace-menu-default-no-color = Default (no color)
workspace-menu-cloud-agent-run = Cloud agent run

workspace-no-tabs-open = No tabs open

## -- Codex modal strings ---------------------------------------------------------

workspace-use-latest-codex-model = Use latest codex model
workspace-new = New
workspace-learn-more = Learn more
workspace-close = Close

## -- Quit / close warning strings ---------------------------------------------

workspace-quit-save-button = Save
workspace-quit-dont-save-button = Don't Save
workspace-quit-show-processes = Show running processes
workspace-quit-yes-close = Yes, close
workspace-quit-yes-quit = Yes, quit
workspace-quit-close-pane = Close pane?
workspace-quit-close-tab = Close tab?
workspace-quit-close-tabs = Close tabs?
workspace-quit-close-window = Close window?
workspace-quit-warp = Quit Warp?
workspace-quit-save-changes = Save changes?
workspace-quit-running-processes =
    You have { $count ->
        [1] 1 running process
       *[other] { $count } running processes
    } in this { $target }.
workspace-quit-running-processes-windows =
    You have { $count ->
        [1] 1 running process
       *[other] { $count } running processes
    } in { $window_count } windows.
workspace-quit-running-processes-tabs =
    You have { $count ->
        [1] 1 running process
       *[other] { $count } running processes
    } in { $tab_count } tabs.
workspace-quit-shared-session =
    You are sharing { $count ->
        [1] 1 session
       *[other] { $count } sessions
    } in this { $target }.
workspace-quit-unsaved-changes = You have unsaved file changes in this { $target }.
workspace-quit-unsaved-editor-changes =
    Do you want to save the changes you made to { $file_name }? Your changes will be discarded if you don't save them.
workspace-quit-unsaved-editor-unnamed =
    Do you want to save the changes you made to this file? Your changes will be discarded if you don't save them.

## -- Get started view strings ---------------------------------------------------

workspace-welcome-to-warp = Welcome to Warp
workspace-agentic-dev-env = The Agentic Development Environment

## -- Login gated feature strings --

workspace-importing-to-team-drive = Importing to a team drive
workspace-creating-team-notebook = Creating a team notebook
workspace-creating-team-workflow = Creating a team workflow
workspace-creating-team-folder = Creating a team folder
workspace-creating-team-env-var-collection = Creating a team environment variable collection
workspace-creating-team-prompt = Creating a team prompt
workspace-sharing-session = Sharing a session
workspace-close-session-question = Close session?
workspace-close-session-sharing-warning = You are about to close a session that is currently being shared. Closing it will end sharing for everyone.
workspace-delete-conversation = Delete conversation?
workspace-delete-conversation-named = Delete '{ $title }'?
workspace-delete-conversation-warning = This conversation will be permanently deleted. This action cannot be undone.

## -- Header toolbar strings -----------------------------------------------------

workspace-toolbar-tabs-panel = Tabs Panel
workspace-toolbar-tools-panel = Tools Panel
workspace-toolbar-agent-management = Agent Management
workspace-toolbar-code-review = Code Review
workspace-toolbar-notifications = Notifications
workspace-toolbar-available-items = Available items

## -- Network log strings --------------------------------------------------------

workspace-network-log-header = Network log
workspace-network-log-refresh-tooltip = Refresh

## -- Welcome banner strings -----------------------------------------------------

workspace-welcome-banner-title = Introducing universal agent support: level up any coding agent with Warp
workspace-banner-vertical-tabs = Vertical tabs
workspace-banner-vertical-tabs-desc = Rich tab titles and metadata like git branch, worktree, and PR. Fully customizable.
workspace-banner-tab-configs = Tab configs
workspace-banner-tab-configs-desc = Tab-level schema to set your directory, startup commands, theme, and worktree with one click
workspace-banner-agent-inbox = Agent inbox
workspace-banner-agent-inbox-desc = Notifications when any agent needs your attention, also accessible in a central inbox
workspace-banner-native-review = Native code review
workspace-banner-native-review-desc = Send inline comments from Warp's code review directly to Claude Code, Codex, or OpenCode

## -- Tab config step strings ----------------------------------------------------

workspace-tab-config-step-title = Create your first tab config
workspace-tab-config-step-desc = Set up a reusable starting point for your tabs. Pick a repo, choose a session type, and optionally attach a worktree. Use it whenever you want to open a tab with this setup.

## -- Keybinding description strings ------------------------------------------------

workspace-dump-debug-info = Dump debug info
workspace-crash-app-macos = Crash the app (for testing sentry-cocoa)
workspace-crash-app-other = Crash the app (for testing sentry-native)
workspace-debug-log-review-comment-status = [Debug] Log review comment send status for active tab
workspace-trigger-panic = Trigger a panic (for testing sentry-rust)
workspace-open-view-tree-debugger = Open view tree debugger
workspace-debug-view-ftux = [Debug] View first-time user experience
workspace-debug-open-build-plan-migration-modal = [Debug] Open Build Plan Migration Modal
workspace-debug-reset-build-plan-migration-modal-state = [Debug] Reset Build Plan Migration Modal State
workspace-debug-un-dismiss-aws-login-banner = [Debug] Un-dismiss AWS login banner
workspace-debug-open-oz-launch-modal = [Debug] Open Oz Launch Modal
workspace-debug-reset-oz-launch-modal-state = [Debug] Reset Oz Launch Modal State
workspace-debug-open-openwarp-launch-modal = [Debug] Open OpenWarp Launch Modal
workspace-debug-reset-openwarp-launch-modal-state = [Debug] Reset OpenWarp Launch Modal State
workspace-debug-open-orchestration-launch-modal = [Debug] Open Orchestration Launch Modal
workspace-debug-reset-orchestration-launch-modal-state = [Debug] Reset Orchestration Launch Modal State
workspace-debug-install-opencode-warp-plugin = [Debug] Install OpenCode Warp plugin
workspace-debug-use-local-opencode-warp-plugin = [Debug] Use local OpenCode Warp plugin (testing only)
workspace-debug-open-session-config-modal = [Debug] Open Session Config Modal
workspace-debug-start-hoa-onboarding-flow = [Debug] Start HOA Onboarding Flow
workspace-sample-process = Sample Process
workspace-dump-heap-profile = Dump heap profile (can only be done once)
workspace-switch-to-next-tab = Switch to next tab
workspace-switch-to-prev-tab = Switch to previous tab
workspace-create-new-window = Create New Window
workspace-new-file = New File
workspace-zoom-in = Zoom In
workspace-zoom-out = Zoom Out
workspace-reset-zoom = Reset Zoom
workspace-increase-zoom-level = Increase zoom level
workspace-decrease-zoom-level = Decrease zoom level
workspace-reset-zoom-level-default = Reset zoom level to default
workspace-increase-font-size = Increase font size
workspace-decrease-font-size = Decrease font size
workspace-reset-font-size-default = Reset font size to default
workspace-toggle-project-explorer = Toggle project explorer
workspace-open-theme-picker = Open theme picker
workspace-open-tab-configs-menu = Open tab configs menu
workspace-switch-to-1st-tab = Switch to 1st tab
workspace-switch-to-2nd-tab = Switch to 2nd tab
workspace-switch-to-3rd-tab = Switch to 3rd tab
workspace-switch-to-4th-tab = Switch to 4th tab
workspace-switch-to-5th-tab = Switch to 5th tab
workspace-switch-to-6th-tab = Switch to 6th tab
workspace-switch-to-7th-tab = Switch to 7th tab
workspace-switch-to-8th-tab = Switch to 8th tab
workspace-switch-to-last-tab = Switch to last tab
workspace-activate-prev-tab = Activate previous tab
workspace-activate-next-tab = Activate next tab
workspace-activate-prev-pane = Activate previous pane
workspace-activate-next-pane = Activate next pane
workspace-toggle-mouse-reporting = Toggle Mouse Reporting
workspace-create-team-notebook = Create a new team notebook
workspace-create-personal-notebook = Create a new personal notebook
workspace-create-team-workflow = Create a new team workflow
workspace-create-personal-workflow = Create a new personal workflow
workspace-create-team-folder = Create a new team folder
workspace-create-personal-folder = Create a new personal folder
workspace-create-new-tab = Create new tab
workspace-new-terminal-tab = New Terminal Tab
workspace-new-agent-tab = New Agent Tab
workspace-new-cloud-agent-tab = New Cloud Agent Tab
workspace-open-left-panel = Open Left Panel
workspace-toggle-code-review = Toggle code review
workspace-toggle-vertical-tabs-panel = Toggle vertical tabs panel
workspace-left-panel-agent-conversations = Left Panel: Agent conversations
workspace-left-panel-project-explorer = Left Panel: Project explorer
workspace-left-panel-global-search = Left Panel: Global search
workspace-left-panel-warp-drive = Left Panel: Warp Drive
workspace-open-global-search = Open global search
workspace-toggle-warp-drive = Toggle Warp Drive
workspace-toggle-agent-conversation-list-view = Toggle Agent conversation list view
workspace-close-focused-panel = Close focused panel
workspace-toggle-command-palette = Toggle command palette
workspace-move-tab-left = Move tab left
workspace-move-tab-right = Move tab right
workspace-toggle-keyboard-shortcuts = Toggle keyboard shortcuts
workspace-open-keybindings-editor = Open keybindings editor
workspace-toggle-sticky-command-header = Toggle sticky command header
workspace-a11y-concise = [a11y] Set concise accessibility announcements
workspace-a11y-verbose = [a11y] Set verbose accessibility announcements
workspace-rename-current-tab = Rename the current tab
workspace-rename-current-pane = Rename the current pane
workspace-quit-warp = Quit Warp
workspace-close-window = Close Window
workspace-close-current-tab = Close the current tab
workspace-close-other-tabs = Close other tabs
workspace-close-tabs-to-right = Close tabs to the right
workspace-turn-notifications-on = Turn notifications on
workspace-turn-notifications-off = Turn notifications off
workspace-toggle-navigation-palette = Toggle navigation palette
workspace-launch-configuration-palette = Launch configuration palette
workspace-toggle-files-palette = Toggle Files Palette
workspace-save-new-launch-config = Save new launch configuration
workspace-search-warp-drive = Search Warp Drive
workspace-install-update-relaunch = Install update and relaunch
workspace-check-for-updates = Check for updates
workspace-log-out = Log out
workspace-toggle-resource-center = Toggle resource center
workspace-export-all-warp-drive = Export all Warp Drive objects
workspace-install-oz-cli = Install Oz CLI command
workspace-uninstall-oz-cli = Uninstall Oz CLI command
workspace-view-latest-changelog = View latest changelog
workspace-new-agent-pane = { $label }
workspace-toggle-warp-ai = Toggle Warp AI
workspace-switch-focus-left = Switch Focus to Left Panel
workspace-switch-focus-right = Switch Focus to Right Panel
workspace-import-personal-drive = Import To Personal Drive
workspace-import-team-drive = Import To Team Drive
workspace-copy-access-token = Copy access token to clipboard
workspace-open-repository = Open repository
workspace-open-ai-rules = Open AI Rules
workspace-open-mcp-servers = Open MCP Servers
workspace-jump-to-latest-agent-task = Jump to latest agent task
workspace-toggle-notification-mailbox = Toggle notification mailbox
workspace-toggle-agent-management-view = Toggle the agent management view
workspace-open-settings = Open Settings
workspace-open-settings-account = Open Settings: Account
workspace-open-settings-appearance = Open Settings: Appearance
workspace-open-settings-shared-blocks = Open Settings: Shared Blocks
workspace-open-settings-keyboard-shortcuts = Open Settings: Keyboard Shortcuts
workspace-open-settings-about = Open Settings: About
workspace-open-settings-teams = Open Settings: Teams
workspace-open-settings-privacy = Open Settings: Privacy
workspace-open-settings-warpify = Open Settings: Warpify
workspace-open-settings-ai = Open Settings: AI
workspace-open-settings-billing-usage = Open Settings: Billing and usage
workspace-open-settings-code = Open Settings: Code
workspace-open-settings-referrals = Open Settings: Referrals
workspace-open-settings-environments = Open Settings: Environments
workspace-open-settings-mcp-servers = Open Settings: MCP Servers
workspace-open-settings-file = Open settings file
workspace-create-team-env-vars = Create new team environment variables
workspace-create-personal-env-vars = Create new personal environment variables
workspace-create-personal-prompt = Create a new personal prompt
workspace-create-team-prompt = Create a new team prompt
workspace-invite-people = Invite People...
workspace-join-slack = Join our Slack community (opens external link)
workspace-view-user-docs = View user docs (opens external link)
workspace-send-feedback = Send feedback (opens external link)
workspace-view-warp-logs = View Warp logs
workspace-view-privacy-policy = View privacy policy (opens external link)
workspace-resize-pane-move-divider-left = Resize pane > Move divider left
workspace-resize-pane-move-divider-right = Resize pane > Move divider right
workspace-resize-pane-move-divider-up = Resize pane > Move divider up
workspace-resize-pane-move-divider-down = Resize pane > Move divider down
workspace-terminal-session = Terminal session
workspace-share-pane = Share pane
workspace-add-repository = Add repository

## -- DismissibleToast and user-visible message strings from view.rs --------------------

workspace-failed-to-prepare-handoff = Failed to prepare handoff. Please try again.
workspace-starting-cloud-environment = Starting cloud environment for this session...
workspace-resource-not-found-or-access-denied = Resource not found or access denied
workspace-command-still-running = A command in this session is still running.
workspace-cannot-open-new-terminal-session = Cannot open a new terminal session
workspace-no-terminal-pane-open = No terminal pane open. Open a new pane to attach as context.
workspace-plan-already-in-context = This plan is already in context.
workspace-plan-synced-to-warp-drive = Plan synced to your Warp Drive
workspace-workflow-no-longer-available = This workflow is no longer available.
workspace-out-of-ai-credits = Out of AI credits
workspace-upgrade-for-more-credits = Upgrade for more credits
workspace-check-out-latest-version = Check out the latest version and try again.
workspace-view-changelog = View changelog
workspace-conversation-forking-failed = Conversation forking failed.
workspace-failed-to-load-conversation = Failed to load conversation
workspace-failed-to-load-conversation-data = Failed to load conversation data
workspace-failed-to-load-conversation-for-forking = Failed to load conversation for forking
workspace-failed-to-load-tab-config = Failed to load tab config: { $friendly_path } ({ $error })
workspace-failed-to-remove-tab-config = Failed to remove tab config: { $error }
workspace-failed-to-install-cli = Failed to install CLI: { $error }
workspace-failed-to-uninstall-cli = Failed to uninstall CLI: { $error }
workspace-failed-to-create-log-bundle = Failed to create log bundle: { $error }
workspace-successfully-installed-cli = Successfully installed { $command_name } CLI
workspace-successfully-uninstalled-cli = Successfully uninstalled CLI
workspace-forked-conversation = Forked "{ $title }"
workspace-failed-to-delete-conversation-exit-agent-view = Failed to delete conversation. Please exit the agent view and try again.
workspace-conversation-deleted = Conversation deleted
workspace-disabled-all-synced-inputs = Disabled all synchronized inputs.
workspace-disabled = disabled
workspace-enabled = enabled
workspace-you-mouse-reporting = You { $verb } mouse reporting.
workspace-you-synced-inputs-all-tabs = You { $verb } synchronized inputs in all tabs.
workspace-you-synced-inputs-this-tab = You { $verb } synchronized inputs in this tab.
workspace-press-to-undo = Press { $key } to undo.
workspace-a11y-verbosity-announcements-set = { $verbosity } accessibility announcements set
workspace-local-network-access-hint = Have Warp installed but redirecting to download page?\nEnable Local Network Access for { $server_root_url } in your browser.
workspace-notifications-permission-denied = Notification permissions were denied. You may need to enable them in your browser settings.
workspace-troubleshoot-notifications = Troubleshoot notifications
workspace-staging-api-call-failed = Staging API call failed. Please try again later.
workspace-feedback-placeholder = Send us feedback!
workspace-search-recent-repos-and-conversations = Search recent repos and conversations
workspace-remote-control-link-copied = Remote control link copied.
workspace-add-new-repo =  + Add new repo
workspace-prompt-placeholder = Ask Warp AI...
workspace-codex-initial-prompt = Use Codex in Warp
workspace-linear-issue = Create Linear issue
workspace-command-from-warp-ai = Command from Warp AI
workspace-command-from-oz = Command from Oz
workspace-ask-warp-ai-description = Ask Warp AI for a command or suggestion
workspace-fix-with-oz = Fix with Oz
workspace-fix-settings-query = Fix: { $error_description }
workspace-pane-settings = Pane Settings
workspace-rename-pane = Rename pane
workspace-rename-active-pane = Rename active pane
workspace-reset-pane-name = Reset pane name
workspace-reset-active-pane-name = Reset active pane name
workspace-open-config = Open { $name }
workspace-app-out-of-date-needs-update = App is out of date and needs update
workspace-restart-app-and-update-now = Restart app and update now
workspace-more-info = More info
workspace-introducing-oz = Introducing Oz
workspace-upgrade-ai-usage = Upgrade for more AI usage
workspace-search-sessions-agents-files = Search sessions, agents, files...
workspace-warp-essentials = Warp essentials
workspace-code-review-panel = Code review
workspace-sampling-process-3s = Sampling process for 3 seconds...
workspace-process-sample-saved = Process sample saved to { $output_path }
workspace-failed-to-sample-process = Failed to sample process (check logs)
workspace-failed-to-determine-home-directory = Failed to determine home directory
workspace-worktree-config-name = { $repo_display_name }
workspace-offline-tooltip = Some features may be unavailable offline
workspace-failed-to-parse-opencode-json = Failed to parse opencode.json: { $error }
workspace-failed-to-read-opencode-json = Failed to read opencode.json: { $error }
workspace-opencode-json-unexpected-structure = opencode.json has unexpected structure (plugin is not an array)
workspace-process-sample-default-filename = sample.txt
workspace-run-agent-mode-workflow = Run agent mode workflow

## -- Sync inputs and keybinding strings ---

workspace-stop-synchronizing-any-panes = Stop Synchronizing Any Panes
workspace-toggle-synchronizing-all-panes-in-current-tab = Toggle Synchronizing All Panes in Current Tab
workspace-toggle-synchronizing-all-panes-in-all-tabs = Toggle Synchronizing All Panes in All Tabs
workspace-toggle-maximize-code-review-panel = Toggle Maximize Code Review Panel

## -- Rewind confirmation dialog strings ---

workspace-rewind-no-affect-files = Rewinding does not affect files edited manually or via shell commands.
workspace-rewind-ai-confirmation-body = Are you sure you want to rewind? This will restore your code and conversation to before this point, and cancel any commands the agent is currently running. A copy of the original conversation will be saved in your conversation history.

## -- Global search strings ---

workspace-search-in-files = Search in files
workspace-toggle-case-sensitivity = Toggle Case Sensitivity
workspace-toggle-regex = Toggle Regex
workspace-global-search-capped-results = The result set only contains a subset of all matches. Be more specific in your search to narrow down results.
workspace-global-search-title = Global search
workspace-search-in-files-desc = Search in files across your current directories.
workspace-global-search-unavailable = Global search unavailable
workspace-global-search-unavailable-desc = Global search requires access to your local workspace. Open a new session or navigate to an active session to view.
workspace-global-search-remote-desc = Global search requires access to your local workspace, which isn't supported in remote sessions
workspace-global-search-unsupported-desc = Global search doesn't currently work in Git Bash or WSL.
workspace-global-search-failed = Global search failed.

## -- Oz launch modal strings ---

workspace-oz-subtext = Infinitely scalable coding agent -- run in local sessions or in the cloud.
workspace-cloud-agents = Cloud agents
workspace-agent-automations = Agent automations
workspace-agent-automations-short = Agent automations
workspace-agent-management = Agent management
workspace-agent-management-short = Agent management
workspace-a-little-gift = A little gift
workspace-launch-credits = Launch credits
workspace-break-out-of-your-laptop = Break out of your laptop with cloud agents
workspace-orchestrate-agents = Orchestrate agents, turning Skills into automations
workspace-track-local-and-cloud = Track local and cloud agents seamlessly
workspace-1000-free-credits = 1,000 free cloud agent credits when you upgrade to Warp Build
workspace-oz-cloud-agents-content = Spin up cloud agents with zero setup. Oz manages compute so you can focus on what matters.
workspace-oz-agent-automations-content = Create agent automations in seconds by connecting Skills to triggers. Oz will run them whenever you need.
workspace-oz-agent-management-content = Track all of your agents across local and cloud environments in one place.
workspace-oz-launch-credits-content = As a thank you to our early users, you get 1,000 free cloud agent launch credits with Warp Build.
workspace-next = Next
workspace-try-it-out = Try it out
workspace-skip-for-now = Skip for now
workspace-sync-conversations-to-cloud = Sync conversations to cloud
workspace-sync-conversations-desc = Agent conversations stored in the cloud can be shared with anyone with one click, and allow conversations to be continued across devices and on logout.

## -- Orchestration launch modal strings ---

workspace-run-any-agent-harness = Run any agent harness in the cloud
workspace-run-any-agent-harness-desc = Use Oz to spin up Claude Code or Codex agents in the cloud; Oz will help you track and steer the agents.
workspace-multi-agent-orchestration = Multi-agent orchestration
workspace-multi-agent-orchestration-desc = Warp Agents will now orchestrate swarms of subagents, allowing you to parallelize tasks.
workspace-agent-memory = Agent Memory
workspace-agent-memory-desc = Agents will now store and access long-term memories, enabling self-improvement over time.
workspace-research-preview = Research preview
workspace-orchestrate-any-agent = Orchestrate any agent, anywhere
workspace-orchestration-improvements = We've made major improvements to Warp's cloud agent orchestration platform, Oz.

## -- Primary keys for migrated UI strings --

workspace-read-only = Read-only
workspace-sign-in-to-edit = . Sign in to edit

workspace-command-search = Command Search
workspace-im-looking-for = I'm looking for...
workspace-example-queries = Example queries
workspace-new-worktree = New worktree
workspace-autogenerate-branch-name = Autogenerate worktree branch name
workspace-select-directory = Select directory
workspace-select-git-repo = Select a git repository to enable worktree support
workspace-auto-create-worktree = Automatically create a worktree when opening a new tab
workspace-must-select-worktree = You must select that you want to automatically create a worktree in order to select this
workspace-auto-generate-branch = Auto-generate worktree branch name

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID -------

workspace-workspace-ai-disabled-review = { workspace-ai-disabled-review }
workspace-workspace-agent-conversations = { workspace-agent-conversations }
workspace-workspace-cannot-delete-conversation-tooltip = { workspace-cannot-delete-conversation-tooltip }
workspace-workspace-close-panel = { workspace-close-panel }
workspace-workspace-code-review = { workspace-code-review }
workspace-workspace-conversation = { workspace-conversation }
workspace-workspace-conversations-cannot-delete = { workspace-conversations-cannot-delete }
workspace-workspace-conversations-subtitle = { workspace-conversations-subtitle }
workspace-workspace-crash-recovery-message = { workspace-crash-recovery-message }
workspace-workspace-current-version-is = { workspace-current-version-is }
workspace-workspace-default-user-display-name = { workspace-default-user-display-name }
workspace-workspace-feedback = { workspace-feedback }
workspace-workspace-fork-in-new-pane = { workspace-fork-in-new-pane }
workspace-workspace-fork-in-new-tab = { workspace-fork-in-new-tab }
workspace-workspace-global-search = { workspace-global-search }
workspace-workspace-home-label = { workspace-home-label }
workspace-workspace-input-box-not-visible = { workspace-input-box-not-visible }
workspace-workspace-install-update = { workspace-install-update }
workspace-workspace-invite-friend = { workspace-invite-friend }
workspace-workspace-local-docker-sandbox = { workspace-local-docker-sandbox }
workspace-workspace-maximize = { workspace-maximize }
workspace-workspace-menu-close-other-tabs = { workspace-menu-close-other-tabs }
workspace-workspace-menu-close-tabs-below = { workspace-menu-close-tabs-below }
workspace-workspace-menu-close-tabs-right = { workspace-menu-close-tabs-right }
workspace-workspace-menu-cloud-agent-run = { workspace-menu-cloud-agent-run }
workspace-workspace-menu-copy-branch = { workspace-menu-copy-branch }
workspace-workspace-menu-copy-link = { workspace-menu-copy-link }
workspace-workspace-menu-copy-pane-title = { workspace-menu-copy-pane-title }
workspace-workspace-menu-copy-pull-request-link = { workspace-menu-copy-pull-request-link }
workspace-workspace-menu-copy-tab-title = { workspace-menu-copy-tab-title }
workspace-workspace-menu-copy-working-directory = { workspace-menu-copy-working-directory }
workspace-workspace-menu-default-no-color = { workspace-menu-default-no-color }
workspace-workspace-menu-move-tab-down = { workspace-menu-move-tab-down }
workspace-workspace-menu-move-tab-left = { workspace-menu-move-tab-left }
workspace-workspace-menu-move-tab-right = { workspace-menu-move-tab-right }
workspace-workspace-menu-move-tab-up = { workspace-menu-move-tab-up }
workspace-workspace-menu-rename-tab = { workspace-menu-rename-tab }
workspace-workspace-menu-reset-tab-name = { workspace-menu-reset-tab-name }
workspace-workspace-menu-save-new-config = { workspace-menu-save-new-config }
workspace-workspace-menu-share-session = { workspace-menu-share-session }
workspace-workspace-menu-stop-sharing = { workspace-menu-stop-sharing }
workspace-workspace-menu-stop-sharing-all = { workspace-menu-stop-sharing-all }
workspace-workspace-minimize = { workspace-minimize }
workspace-workspace-new-tab = { workspace-new-tab }
workspace-workspace-new-tab-config = { workspace-new-tab-config }
workspace-workspace-new-worktree-config = { workspace-new-worktree-config }
workspace-workspace-new-worktree-repo = New worktree: { $repo_display_name }
workspace-workspace-new-worktree-repo-branch = New worktree: { $repo_display_name }, { $base_branch }
workspace-workspace-new-worktree-repo-name = New worktree: { $repo_display_name }, { $name }
workspace-workspace-no-conversations-yet = { workspace-no-conversations-yet }
workspace-workspace-no-matching-conversations = { workspace-no-matching-conversations }
workspace-workspace-no-repo-selected = { workspace-no-repo-selected }
workspace-workspace-onboarding-dismiss = { workspace-onboarding-dismiss }
workspace-workspace-onboarding-finish = { workspace-onboarding-finish }
workspace-workspace-onboarding-inbox-desc = { workspace-onboarding-inbox-desc }
workspace-workspace-onboarding-inbox-learn-more = { workspace-onboarding-inbox-learn-more }
workspace-workspace-onboarding-inbox-title = { workspace-onboarding-inbox-title }
workspace-workspace-onboarding-next = { workspace-onboarding-next }
workspace-workspace-onboarding-see-whats-new = { workspace-onboarding-see-whats-new }
workspace-workspace-onboarding-switch-horizontal = { workspace-onboarding-switch-horizontal }
workspace-workspace-onboarding-vertical-tabs-desc = { workspace-onboarding-vertical-tabs-desc }
workspace-workspace-onboarding-vertical-tabs-title = { workspace-onboarding-vertical-tabs-title }
workspace-workspace-open-in-warp = { workspace-open-in-warp }
workspace-workspace-open-repository = { workspace-open-repository }
workspace-workspace-open-repository-tooltip = { workspace-open-repository-tooltip }
workspace-workspace-openwarp-auto-weights-desc = { workspace-openwarp-auto-weights-desc }
workspace-workspace-openwarp-auto-weights-title = { workspace-openwarp-auto-weights-title }
workspace-workspace-openwarp-automated-desc = { workspace-openwarp-automated-desc }
workspace-workspace-openwarp-automated-link = { workspace-openwarp-automated-link }
workspace-workspace-openwarp-automated-title = { workspace-openwarp-automated-title }
workspace-workspace-openwarp-badge = { workspace-openwarp-badge }
workspace-workspace-openwarp-contribute-desc = { workspace-openwarp-contribute-desc }
workspace-workspace-openwarp-contribute-link = { workspace-openwarp-contribute-link }
workspace-workspace-openwarp-contribute-title = { workspace-openwarp-contribute-title }
workspace-workspace-openwarp-description = { workspace-openwarp-description }
workspace-workspace-openwarp-title = { workspace-openwarp-title }
workspace-workspace-openwarp-visit-repo = { workspace-openwarp-visit-repo }
workspace-workspace-pane-settings = { workspace-pane-settings }
workspace-workspace-project-explorer = { workspace-project-explorer }
workspace-workspace-rearrange-toolbar = { workspace-rearrange-toolbar }
workspace-workspace-welcome-web = { workspace-welcome-web }
workspace-workspace-edit-toolbar = { workspace-edit-toolbar }
workspace-workspace-update-warp = { workspace-update-warp }
workspace-workspace-app-outdated = { workspace-app-outdated }
workspace-workspace-features-may-not-work = { workspace-features-may-not-work }
workspace-workspace-tab-config-chip = { workspace-tab-config-chip }
workspace-workspace-login-expired = { workspace-login-expired }
workspace-workspace-sign-in = { workspace-sign-in }
workspace-workspace-sign-in-again = { workspace-sign-in-again }
workspace-workspace-update-now = { workspace-update-now }
workspace-workspace-unable-to-update = { workspace-unable-to-update }
workspace-workspace-unable-to-launch = { workspace-unable-to-launch }
workspace-workspace-reopen-closed-session = { workspace-reopen-closed-session }
workspace-workspace-search-repos = { workspace-search-repos }
workspace-workspace-search-tabs = { workspace-search-tabs }
workspace-workspace-section-active = { workspace-section-active }
workspace-workspace-section-past = { workspace-section-past }
workspace-workspace-session-cwd-unavailable = { workspace-session-cwd-unavailable }
workspace-workspace-session-outside-repo = { workspace-session-outside-repo }
workspace-workspace-share-conversation = { workspace-share-conversation }
workspace-workspace-show-less = { workspace-show-less }
workspace-workspace-sign-up = { workspace-sign-up }
workspace-workspace-slack = { workspace-slack }
workspace-workspace-tab-configs = { workspace-tab-configs }
workspace-workspace-terminal-executing = { workspace-terminal-executing }
workspace-workspace-toast-warp-updated = { workspace-toast-warp-updated }
workspace-workspace-unknown = { workspace-unknown }
workspace-workspace-update-and-relaunch = { workspace-update-and-relaunch }
workspace-workspace-update-warp-manually = { workspace-update-warp-manually }
workspace-workspace-updating-to = { workspace-updating-to }
workspace-workspace-upgrade = { workspace-upgrade }
workspace-workspace-view-all = { workspace-view-all }
workspace-workspace-view-all-cloud-runs = { workspace-view-all-cloud-runs }
workspace-workspace-view-warp-logs = { workspace-view-warp-logs }
workspace-workspace-whats-new = { workspace-whats-new }
workspace-workspace-close = { workspace-close }
workspace-workspace-learn-more = { workspace-learn-more }
workspace-workspace-new = { workspace-new }
workspace-workspace-no-tabs-open = { workspace-no-tabs-open }
workspace-workspace-use-latest-codex-model = { workspace-use-latest-codex-model }
workspace-workspace-open-desktop-question = { workspace-open-desktop-question }
workspace-workspace-future-links-desktop = { workspace-future-links-desktop }
workspace-workspace-download-desktop-question = { workspace-download-desktop-question }
workspace-workspace-intelligent-terminal-promo = { workspace-intelligent-terminal-promo }
workspace-workspace-always-open-web = { workspace-always-open-web }
workspace-workspace-change-in-settings = { workspace-change-in-settings }
workspace-workspace-warp-drive-label = { workspace-warp-drive-label }
workspace-workspace-warp-drive-objects = { workspace-warp-drive-objects }
workspace-workspace-shared-sessions = { workspace-shared-sessions }
workspace-workspace-warp-links = { workspace-warp-links }
workspace-workspace-welcome-to-warp = { workspace-welcome-to-warp }
workspace-workspace-agentic-dev-env = { workspace-agentic-dev-env }
workspace-quit-quit-save-button = { workspace-quit-save-button }
workspace-quit-quit-dont-save-button = { workspace-quit-dont-save-button }
workspace-quit-quit-show-processes = { workspace-quit-show-processes }
workspace-quit-quit-yes-close = { workspace-quit-yes-close }
workspace-quit-quit-yes-quit = { workspace-quit-yes-quit }
workspace-quit-quit-close-pane = { workspace-quit-close-pane }
workspace-quit-quit-close-tab = { workspace-quit-close-tab }
workspace-quit-quit-close-tabs = { workspace-quit-close-tabs }
workspace-quit-quit-close-window = { workspace-quit-close-window }
workspace-quit-quit-warp = { workspace-quit-warp }
workspace-quit-quit-save-changes = { workspace-quit-save-changes }
workspace-quit-quit-running-processes = { workspace-quit-running-processes }
workspace-quit-quit-running-processes-windows = { workspace-quit-running-processes-windows }
workspace-quit-quit-running-processes-tabs = { workspace-quit-running-processes-tabs }
workspace-quit-quit-shared-session = { workspace-quit-shared-session }
workspace-quit-quit-unsaved-changes = { workspace-quit-unsaved-changes }
workspace-quit-quit-unsaved-editor-changes = { workspace-quit-unsaved-editor-changes }
workspace-quit-quit-unsaved-editor-unnamed = { workspace-quit-unsaved-editor-unnamed }

workspace-failed-config-dir = Failed to create config directory: { $error }

## -- Double-prefix aliases for DismissibleToast and user-visible messages from view.rs --

workspace-workspace-failed-to-prepare-handoff = { workspace-failed-to-prepare-handoff }
workspace-workspace-starting-cloud-environment = { workspace-starting-cloud-environment }
workspace-workspace-resource-not-found-or-access-denied = { workspace-resource-not-found-or-access-denied }
workspace-workspace-command-still-running = { workspace-command-still-running }
workspace-workspace-cannot-open-new-terminal-session = { workspace-cannot-open-new-terminal-session }
workspace-workspace-no-terminal-pane-open = { workspace-no-terminal-pane-open }
workspace-workspace-plan-already-in-context = { workspace-plan-already-in-context }
workspace-workspace-plan-synced-to-warp-drive = { workspace-plan-synced-to-warp-drive }
workspace-workspace-workflow-no-longer-available = { workspace-workflow-no-longer-available }
workspace-workspace-out-of-ai-credits = { workspace-out-of-ai-credits }
workspace-workspace-upgrade-for-more-credits = { workspace-upgrade-for-more-credits }
workspace-workspace-check-out-latest-version = { workspace-check-out-latest-version }
workspace-workspace-view-changelog = { workspace-view-changelog }
workspace-workspace-conversation-forking-failed = { workspace-conversation-forking-failed }
workspace-workspace-failed-to-load-conversation = { workspace-failed-to-load-conversation }
workspace-workspace-failed-to-load-conversation-data = { workspace-failed-to-load-conversation-data }
workspace-workspace-failed-to-load-conversation-for-forking = { workspace-failed-to-load-conversation-for-forking }
workspace-workspace-failed-to-load-tab-config = { workspace-failed-to-load-tab-config }
workspace-workspace-failed-to-remove-tab-config = { workspace-failed-to-remove-tab-config }
workspace-workspace-failed-to-install-cli = { workspace-failed-to-install-cli }
workspace-workspace-failed-to-uninstall-cli = { workspace-failed-to-uninstall-cli }
workspace-workspace-failed-to-create-log-bundle = { workspace-failed-to-create-log-bundle }
workspace-workspace-successfully-installed-cli = { workspace-successfully-installed-cli }
workspace-workspace-successfully-uninstalled-cli = { workspace-successfully-uninstalled-cli }
workspace-workspace-forked-conversation = { workspace-forked-conversation }
workspace-workspace-failed-to-delete-conversation-exit-agent-view = { workspace-failed-to-delete-conversation-exit-agent-view }
workspace-workspace-conversation-deleted = { workspace-conversation-deleted }
workspace-workspace-disabled-all-synced-inputs = { workspace-disabled-all-synced-inputs }
workspace-workspace-disabled = { workspace-disabled }
workspace-workspace-enabled = { workspace-enabled }
workspace-workspace-you-mouse-reporting = You { $verb } mouse reporting.
workspace-workspace-you-synced-inputs-all-tabs = You { $verb } synchronized inputs in all tabs.
workspace-workspace-you-synced-inputs-this-tab = You { $verb } synchronized inputs in this tab.
workspace-workspace-press-to-undo = Press { $key } to undo.
workspace-workspace-a11y-verbosity-announcements-set = { $verbosity } accessibility announcements set
workspace-workspace-local-network-access-hint = Have Warp installed but redirecting to download page?\nEnable Local Network Access for { $server_root_url } in your browser.
workspace-workspace-notifications-permission-denied = { workspace-notifications-permission-denied }
workspace-workspace-troubleshoot-notifications = { workspace-troubleshoot-notifications }
workspace-workspace-staging-api-call-failed = { workspace-staging-api-call-failed }
workspace-workspace-feedback-placeholder = { workspace-feedback-placeholder }
workspace-workspace-prompt-placeholder = { workspace-prompt-placeholder }
workspace-workspace-codex-initial-prompt = { workspace-codex-initial-prompt }
workspace-workspace-linear-issue = { workspace-linear-issue }
workspace-workspace-command-from-warp-ai = { workspace-command-from-warp-ai }
workspace-workspace-command-from-oz = { workspace-command-from-oz }
workspace-workspace-ask-warp-ai-description = { workspace-ask-warp-ai-description }
workspace-workspace-fix-with-oz = { workspace-fix-with-oz }
workspace-workspace-fix-settings-query = Fix: { $error_description }
workspace-workspace-pane-settings = { workspace-pane-settings }
workspace-workspace-rename-pane = { workspace-rename-pane }
workspace-workspace-rename-active-pane = { workspace-rename-active-pane }
workspace-workspace-reset-pane-name = { workspace-reset-pane-name }
workspace-workspace-reset-active-pane-name = { workspace-reset-active-pane-name }
workspace-workspace-open-config = Open { $name }
workspace-workspace-app-out-of-date-needs-update = { workspace-app-out-of-date-needs-update }
workspace-workspace-restart-app-and-update-now = { workspace-restart-app-and-update-now }
workspace-workspace-more-info = { workspace-more-info }
workspace-workspace-introducing-oz = { workspace-introducing-oz }
workspace-workspace-upgrade-ai-usage = { workspace-upgrade-ai-usage }
workspace-workspace-search-sessions-agents-files = { workspace-search-sessions-agents-files }
workspace-workspace-warp-essentials = { workspace-warp-essentials }
workspace-workspace-code-review-panel = { workspace-code-review-panel }
workspace-workspace-sampling-process-3s = { workspace-sampling-process-3s }
workspace-workspace-process-sample-saved = Process sample saved to { $output_path }
workspace-workspace-failed-to-sample-process = { workspace-failed-to-sample-process }
workspace-workspace-failed-to-determine-home-directory = { workspace-failed-to-determine-home-directory }
workspace-workspace-worktree-config-name = { workspace-worktree-config-name }
workspace-workspace-offline-tooltip = { workspace-offline-tooltip }
workspace-workspace-failed-to-parse-opencode-json = Failed to parse opencode.json: { $error }
workspace-workspace-failed-to-read-opencode-json = Failed to read opencode.json: { $error }
workspace-workspace-opencode-json-unexpected-structure = { workspace-opencode-json-unexpected-structure }
workspace-workspace-process-sample-default-filename = { workspace-process-sample-default-filename }
workspace-workspace-run-agent-mode-workflow = { workspace-run-agent-mode-workflow }
workspace-workspace-search-recent-repos-and-conversations = { workspace-search-recent-repos-and-conversations }
workspace-workspace-remote-control-link-copied = { workspace-remote-control-link-copied }
workspace-workspace-add-new-repo = { workspace-add-new-repo }

## -- Double-prefix aliases for new workspace strings ---

workspace-workspace-toolbar-tabs-panel = { workspace-toolbar-tabs-panel }
workspace-workspace-toolbar-tools-panel = { workspace-toolbar-tools-panel }
workspace-workspace-toolbar-agent-management = { workspace-toolbar-agent-management }
workspace-workspace-toolbar-code-review = { workspace-toolbar-code-review }
workspace-workspace-toolbar-notifications = { workspace-toolbar-notifications }
workspace-workspace-toolbar-available-items = { workspace-toolbar-available-items }
workspace-workspace-network-log-header = { workspace-network-log-header }
workspace-workspace-network-log-refresh-tooltip = { workspace-network-log-refresh-tooltip }
workspace-workspace-welcome-banner-title = { workspace-welcome-banner-title }
workspace-workspace-banner-vertical-tabs = { workspace-banner-vertical-tabs }
workspace-workspace-banner-vertical-tabs-desc = { workspace-banner-vertical-tabs-desc }
workspace-workspace-banner-tab-configs = { workspace-banner-tab-configs }
workspace-workspace-banner-tab-configs-desc = { workspace-banner-tab-configs-desc }
workspace-workspace-banner-agent-inbox = { workspace-banner-agent-inbox }
workspace-workspace-banner-agent-inbox-desc = { workspace-banner-agent-inbox-desc }
workspace-workspace-banner-native-review = { workspace-banner-native-review }
workspace-workspace-banner-native-review-desc = { workspace-banner-native-review-desc }
workspace-workspace-tab-config-step-title = { workspace-tab-config-step-title }
workspace-workspace-tab-config-step-desc = { workspace-tab-config-step-desc }
workspace-workspace-untitled-tab = { workspace-untitled-tab }
workspace-workspace-untitled-pane = { workspace-untitled-pane }
workspace-workspace-global-search-no-results = { workspace-global-search-no-results }
workspace-workspace-global-search-single-result = { workspace-global-search-single-result }
workspace-workspace-global-search-multiple-results = { workspace-global-search-multiple-results }
workspace-workspace-global-search-file-singular = { workspace-global-search-file-singular }
workspace-workspace-global-search-file-plural = { workspace-global-search-file-plural }
workspace-workspace-new-worktree-repo = New worktree: { $repo_display_name }
workspace-workspace-new-worktree-repo-branch = New worktree: { $repo_display_name }, { $base_branch }
workspace-workspace-new-worktree-repo-name = New worktree: { $repo_display_name }, { $name }

## -- Untitled labels ---

workspace-untitled-tab = Untitled tab
workspace-untitled-pane = Untitled pane

## -- Global search strings ---

workspace-global-search-no-results = No results found. Review your gitignore files.
workspace-global-search-single-result = 1 result in { $files } { $file_word }
workspace-global-search-multiple-results = { $count } results in { $files } { $file_word }
workspace-global-search-file-singular = file
workspace-global-search-file-plural = files

workspace-workspace-terminal = { workspace-terminal }
workspace-workspace-code = { workspace-code }
workspace-workspace-file = { workspace-file }
workspace-workspace-notebook = { workspace-notebook }
workspace-workspace-workflow = { workspace-workflow }
workspace-workspace-environments = { workspace-environments }
workspace-workspace-rewind = { workspace-rewind }
workspace-workspace-pane-execution-profile = { workspace-pane-execution-profile }

## -- Double-prefix aliases for keybinding descriptions ---

workspace-workspace-dump-debug-info = { workspace-dump-debug-info }
workspace-workspace-crash-app-macos = { workspace-crash-app-macos }
workspace-workspace-crash-app-other = { workspace-crash-app-other }
workspace-workspace-debug-log-review-comment-status = { workspace-debug-log-review-comment-status }
workspace-workspace-trigger-panic = { workspace-trigger-panic }
workspace-workspace-open-view-tree-debugger = { workspace-open-view-tree-debugger }
workspace-workspace-debug-view-ftux = { workspace-debug-view-ftux }
workspace-workspace-debug-open-build-plan-migration-modal = { workspace-debug-open-build-plan-migration-modal }
workspace-workspace-debug-reset-build-plan-migration-modal-state = { workspace-debug-reset-build-plan-migration-modal-state }
workspace-workspace-debug-un-dismiss-aws-login-banner = { workspace-debug-un-dismiss-aws-login-banner }
workspace-workspace-debug-open-oz-launch-modal = { workspace-debug-open-oz-launch-modal }
workspace-workspace-debug-reset-oz-launch-modal-state = { workspace-debug-reset-oz-launch-modal-state }
workspace-workspace-debug-open-openwarp-launch-modal = { workspace-debug-open-openwarp-launch-modal }
workspace-workspace-debug-reset-openwarp-launch-modal-state = { workspace-debug-reset-openwarp-launch-modal-state }
workspace-workspace-debug-open-orchestration-launch-modal = { workspace-debug-open-orchestration-launch-modal }
workspace-workspace-debug-reset-orchestration-launch-modal-state = { workspace-debug-reset-orchestration-launch-modal-state }
workspace-workspace-debug-install-opencode-warp-plugin = { workspace-debug-install-opencode-warp-plugin }
workspace-workspace-debug-use-local-opencode-warp-plugin = { workspace-debug-use-local-opencode-warp-plugin }
workspace-workspace-debug-open-session-config-modal = { workspace-debug-open-session-config-modal }
workspace-workspace-debug-start-hoa-onboarding-flow = { workspace-debug-start-hoa-onboarding-flow }
workspace-workspace-sample-process = { workspace-sample-process }
workspace-workspace-dump-heap-profile = { workspace-dump-heap-profile }
workspace-workspace-switch-to-next-tab = { workspace-switch-to-next-tab }
workspace-workspace-switch-to-prev-tab = { workspace-switch-to-prev-tab }
workspace-workspace-create-new-window = { workspace-create-new-window }
workspace-workspace-new-file = { workspace-new-file }
workspace-workspace-zoom-in = { workspace-zoom-in }
workspace-workspace-zoom-out = { workspace-zoom-out }
workspace-workspace-reset-zoom = { workspace-reset-zoom }
workspace-workspace-increase-font-size = { workspace-increase-font-size }
workspace-workspace-decrease-font-size = { workspace-decrease-font-size }
workspace-workspace-reset-font-size-default = { workspace-reset-font-size-default }
workspace-workspace-toggle-project-explorer = { workspace-toggle-project-explorer }
workspace-workspace-open-theme-picker = { workspace-open-theme-picker }
workspace-workspace-open-tab-configs-menu = { workspace-open-tab-configs-menu }
workspace-workspace-switch-to-1st-tab = { workspace-switch-to-1st-tab }
workspace-workspace-switch-to-2nd-tab = { workspace-switch-to-2nd-tab }
workspace-workspace-switch-to-3rd-tab = { workspace-switch-to-3rd-tab }
workspace-workspace-switch-to-4th-tab = { workspace-switch-to-4th-tab }
workspace-workspace-switch-to-5th-tab = { workspace-switch-to-5th-tab }
workspace-workspace-switch-to-6th-tab = { workspace-switch-to-6th-tab }
workspace-workspace-switch-to-7th-tab = { workspace-switch-to-7th-tab }
workspace-workspace-switch-to-8th-tab = { workspace-switch-to-8th-tab }
workspace-workspace-switch-to-last-tab = { workspace-switch-to-last-tab }
workspace-workspace-activate-prev-tab = { workspace-activate-prev-tab }
workspace-workspace-activate-next-tab = { workspace-activate-next-tab }
workspace-workspace-activate-prev-pane = { workspace-activate-prev-pane }
workspace-workspace-activate-next-pane = { workspace-activate-next-pane }
workspace-workspace-toggle-mouse-reporting = { workspace-toggle-mouse-reporting }
workspace-workspace-create-team-notebook = { workspace-create-team-notebook }
workspace-workspace-create-personal-notebook = { workspace-create-personal-notebook }
workspace-workspace-create-team-workflow = { workspace-create-team-workflow }
workspace-workspace-create-personal-workflow = { workspace-create-personal-workflow }
workspace-workspace-create-team-folder = { workspace-create-team-folder }
workspace-workspace-create-personal-folder = { workspace-create-personal-folder }
workspace-workspace-create-new-tab = { workspace-create-new-tab }
workspace-workspace-new-terminal-tab = { workspace-new-terminal-tab }
workspace-workspace-new-agent-tab = { workspace-new-agent-tab }
workspace-workspace-new-cloud-agent-tab = { workspace-new-cloud-agent-tab }
workspace-workspace-open-left-panel = { workspace-open-left-panel }
workspace-workspace-toggle-code-review = { workspace-toggle-code-review }
workspace-workspace-toggle-vertical-tabs-panel = { workspace-toggle-vertical-tabs-panel }
workspace-workspace-left-panel-agent-conversations = { workspace-left-panel-agent-conversations }
workspace-workspace-left-panel-project-explorer = { workspace-left-panel-project-explorer }
workspace-workspace-left-panel-global-search = { workspace-left-panel-global-search }
workspace-workspace-left-panel-warp-drive = { workspace-left-panel-warp-drive }
workspace-workspace-open-global-search = { workspace-open-global-search }
workspace-workspace-toggle-warp-drive = { workspace-toggle-warp-drive }
workspace-workspace-toggle-agent-conversation-list-view = { workspace-toggle-agent-conversation-list-view }
workspace-workspace-close-focused-panel = { workspace-close-focused-panel }
workspace-workspace-toggle-command-palette = { workspace-toggle-command-palette }
workspace-workspace-move-tab-left = { workspace-move-tab-left }
workspace-workspace-move-tab-right = { workspace-move-tab-right }
workspace-workspace-toggle-keyboard-shortcuts = { workspace-toggle-keyboard-shortcuts }
workspace-workspace-open-keybindings-editor = { workspace-open-keybindings-editor }
workspace-workspace-toggle-sticky-command-header = { workspace-toggle-sticky-command-header }
workspace-workspace-a11y-concise = { workspace-a11y-concise }
workspace-workspace-a11y-verbose = { workspace-a11y-verbose }
workspace-workspace-rename-current-tab = { workspace-rename-current-tab }
workspace-workspace-rename-current-pane = { workspace-rename-current-pane }
workspace-workspace-quit-warp = { workspace-quit-warp }
workspace-workspace-close-window = { workspace-close-window }
workspace-workspace-close-current-tab = { workspace-close-current-tab }
workspace-workspace-close-other-tabs = { workspace-close-other-tabs }
workspace-workspace-close-tabs-to-right = { workspace-close-tabs-to-right }
workspace-workspace-turn-notifications-on = { workspace-turn-notifications-on }
workspace-workspace-turn-notifications-off = { workspace-turn-notifications-off }
workspace-workspace-toggle-navigation-palette = { workspace-toggle-navigation-palette }
workspace-workspace-launch-configuration-palette = { workspace-launch-configuration-palette }
workspace-workspace-toggle-files-palette = { workspace-toggle-files-palette }
workspace-workspace-save-new-launch-config = { workspace-save-new-launch-config }
workspace-workspace-search-warp-drive = { workspace-search-warp-drive }
workspace-workspace-install-update-relaunch = { workspace-install-update-relaunch }
workspace-workspace-check-for-updates = { workspace-check-for-updates }
workspace-workspace-log-out = { workspace-log-out }
workspace-workspace-toggle-resource-center = { workspace-toggle-resource-center }
workspace-workspace-export-all-warp-drive = { workspace-export-all-warp-drive }
workspace-workspace-install-oz-cli = { workspace-install-oz-cli }
workspace-workspace-uninstall-oz-cli = { workspace-uninstall-oz-cli }
workspace-workspace-view-latest-changelog = { workspace-view-latest-changelog }
workspace-workspace-new-agent-pane = { workspace-new-agent-pane }
workspace-workspace-toggle-warp-ai = { workspace-toggle-warp-ai }
workspace-workspace-switch-focus-left = { workspace-switch-focus-left }
workspace-workspace-switch-focus-right = { workspace-switch-focus-right }
workspace-workspace-import-personal-drive = { workspace-import-personal-drive }
workspace-workspace-import-team-drive = { workspace-import-team-drive }
workspace-workspace-copy-access-token = { workspace-copy-access-token }
workspace-workspace-open-repository = { workspace-open-repository }
workspace-workspace-open-ai-rules = { workspace-open-ai-rules }
workspace-workspace-open-mcp-servers = { workspace-open-mcp-servers }
workspace-workspace-jump-to-latest-agent-task = { workspace-jump-to-latest-agent-task }
workspace-workspace-toggle-notification-mailbox = { workspace-toggle-notification-mailbox }
workspace-workspace-toggle-agent-management-view = { workspace-toggle-agent-management-view }
workspace-workspace-open-settings = { workspace-open-settings }
workspace-workspace-open-settings-account = { workspace-open-settings-account }
workspace-workspace-open-settings-appearance = { workspace-open-settings-appearance }
workspace-workspace-open-settings-shared-blocks = { workspace-open-settings-shared-blocks }
workspace-workspace-open-settings-keyboard-shortcuts = { workspace-open-settings-keyboard-shortcuts }
workspace-workspace-open-settings-about = { workspace-open-settings-about }
workspace-workspace-open-settings-teams = { workspace-open-settings-teams }
workspace-workspace-open-settings-privacy = { workspace-open-settings-privacy }
workspace-workspace-open-settings-warpify = { workspace-open-settings-warpify }
workspace-workspace-open-settings-ai = { workspace-open-settings-ai }
workspace-workspace-open-settings-billing-usage = { workspace-open-settings-billing-usage }
workspace-workspace-open-settings-code = { workspace-open-settings-code }
workspace-workspace-open-settings-referrals = { workspace-open-settings-referrals }
workspace-workspace-open-settings-environments = { workspace-open-settings-environments }
workspace-workspace-open-settings-mcp-servers = { workspace-open-settings-mcp-servers }
workspace-workspace-open-settings-file = { workspace-open-settings-file }
workspace-workspace-create-team-env-vars = { workspace-create-team-env-vars }
workspace-workspace-create-personal-env-vars = { workspace-create-personal-env-vars }
workspace-workspace-create-personal-prompt = { workspace-create-personal-prompt }
workspace-workspace-create-team-prompt = { workspace-create-team-prompt }
workspace-workspace-invite-people = { workspace-invite-people }
workspace-workspace-join-slack = { workspace-join-slack }
workspace-workspace-view-user-docs = { workspace-view-user-docs }
workspace-workspace-send-feedback = { workspace-send-feedback }
workspace-workspace-view-warp-logs = { workspace-view-warp-logs }
workspace-workspace-view-privacy-policy = { workspace-view-privacy-policy }
workspace-workspace-increase-zoom-level = { workspace-increase-zoom-level }
workspace-workspace-decrease-zoom-level = { workspace-decrease-zoom-level }
workspace-workspace-reset-zoom-level-default = { workspace-reset-zoom-level-default }
workspace-workspace-placeholder = { workspace-placeholder }
workspace-workspace-importing-to-team-drive = { workspace-importing-to-team-drive }
workspace-workspace-creating-team-notebook = { workspace-creating-team-notebook }
workspace-workspace-creating-team-workflow = { workspace-creating-team-workflow }
workspace-workspace-creating-team-folder = { workspace-creating-team-folder }
workspace-workspace-creating-team-env-var-collection = { workspace-creating-team-env-var-collection }
workspace-workspace-creating-team-prompt = { workspace-creating-team-prompt }
workspace-workspace-sharing-session = { workspace-sharing-session }
workspace-workspace-close-session-question = { workspace-close-session-question }
workspace-workspace-close-session-sharing-warning = { workspace-close-session-sharing-warning }
workspace-workspace-delete-conversation = { workspace-delete-conversation }
workspace-workspace-delete-conversation-named = { workspace-delete-conversation-named }
workspace-workspace-delete-conversation-warning = { workspace-delete-conversation-warning }

## -- Build plan migration modal strings ------------------------------------------

workspace-auto-reload = Auto-reload
workspace-saving-label = Saving...
workspace-get-started = Get Started
workspace-auto-reload-title = Use auto-reload to never miss a beat.
workspace-auto-reload-description = Auto-reload will automatically purchase credits at your selected rate when your account balance reaches 100 credits. Your monthly spend limit is set at your legacy plan's monthly cost and can be updated in Settings > Billing & usage.
workspace-welcome-new-business-plan = Welcome to the New Business Plan
workspace-welcome-warp-build = Welcome to Warp Build
workspace-intro-business-plan = Your workspace has been updated to the new Warp Business Plan as the legacy Business plan is sunset.
workspace-intro-build-plan = Your workspace has been updated to the Warp Build Plan as the legacy Pro, Turbo, and Lightspeed plans are sunset.
workspace-pricing-header-business-plan = The new Business plan is a primarily usage-based plan, starting at:
workspace-pricing-header-build-plan = Warp Build is a primarily usage-based plan, starting at:
workspace-price-per-user-month = ${ $price } per user per month
workspace-price-per-user-month-annual = ${ $price } per user per month for annual plans
workspace-features-header-business-plan = The new Business plan comes with:
workspace-features-header-build-plan = Build comes with:
workspace-base-credits-per-month = { $credits } base credits per month
workspace-access-reload-credits = Access to Reload credits and volume-based discounts
workspace-bring-your-own-api-key = Bring your own API key
workspace-saml-based-sso = SAML-based SSO
workspace-team-wide-zero-data-retention = Automatically enforced team-wide Zero Data Retention
workspace-and-more = And more...
workspace-learn-more-pricing-page = Learn more on our <a>pricing page</a>.
workspace-oops-team-data-not-found = Oops, something went wrong; your team data could not be found.
workspace-failed-auto-reload = Failed to enable auto-reload. Please try updating your settings in Billing & usage.
workspace-reload-denomination = ${ $price } / { $credits } credits

## -- Free tier limit hit modal strings --------------------------------------------

workspace-you-are-out-of-credits = You're out of credits
workspace-to-continue-using-ai-upgrade = To continue using AI, please upgrade your plan.
workspace-build-plan-price-includes = The Build plan is ${ $price }/month which includes everything in the free tier plus:
workspace-build-plan-includes = The Build plan includes everything in the free tier plus:
workspace-credits-per-month = { $credits } Credits per month
workspace-extended-credits-per-month = Extended Credits per month
workspace-access-frontier-models = Access to frontier OpenAI, Anthropic, and Google models
workspace-access-reload-credits-link = Access to <a>Reload Credits</a>
workspace-extended-cloud-agents = Extended cloud agents access
workspace-upgrade-plan = Upgrade plan

## -- Cloud agent capacity modal strings -------------------------------------------

workspace-concurrent-limit-reached = Concurrent cloud agent limit reached
workspace-concurrent-limit-explanation = This cloud run is queued because your team has reached the maximum number of concurrent cloud agents. It will start automatically when another cloud run finishes.
workspace-you-are-out-of-ai-credits = You're out of AI credits
workspace-out-of-credits-explanation = This cloud run stopped because your team has used all available AI credits for the current billing period.
workspace-upgrade-more-concurrent-agents = Upgrade your plan for more concurrent cloud agents.
workspace-upgrade-continue-cloud-agents = Upgrade your plan to continue running cloud agents.
workspace-paid-plans-start-at = Paid plans start at ${ $price }/month and include everything in your free trial plus:
workspace-paid-plans-include = Paid plans include everything in your free trial plus:
workspace-business-plan-starts-at = The Business plan starts at ${ $price }/month and includes everything on your current plan plus:
workspace-business-plan-include = The Business plan includes everything on your current plan plus:
workspace-ai-credits-per-month = { $credits } AI credits per month
workspace-extended-ai-credits-per-month = Extended AI credits per month
workspace-multiplier-concurrent-agents = { $multiplier } the number of concurrent cloud agents
workspace-open-billing = Open billing
workspace-view-options = View options
workspace-no-tabs-match-search = No tabs match your search.
workspace-new-session = New session
workspace-view-as = View as
workspace-tab-item = Tab item
workspace-focused-session = Focused session
workspace-pane-title-as = Pane title as
workspace-additional-metadata = Additional metadata
workspace-requires-github-cli = Requires the GitHub CLI to be installed and authenticated
workspace-diff-stats = Diff stats
workspace-show-details-on-hover = Show details on hover
workspace-summary = Summary
workspace-density = Density
workspace-command-conversation = Command / Conversation
workspace-working-directory = Working Directory
workspace-branch = Branch
workspace-show = Show
workspace-pr-link = PR link
workspace-summary-more = + { $count } more
workspace-and-count-more = and { $count } more
workspace-other = Other
workspace-unsaved = Unsaved

workspace-use-codex-models-in-warp = Use Codex models in Warp
workspace-codex-description-1 = Codex is OpenAI's most advanced agentic coding model for real-world engineering.
workspace-codex-description-2 = Use Codex directly in Oz and leverage features like in-app code review, agent session sharing and file editing.

## -- Double-prefix aliases for modal strings --------------------------------------

workspace-workspace-auto-reload = { workspace-auto-reload }
workspace-workspace-saving-label = { workspace-saving-label }
workspace-workspace-get-started = { workspace-get-started }
workspace-workspace-auto-reload-title = { workspace-auto-reload-title }
workspace-workspace-auto-reload-description = { workspace-auto-reload-description }
workspace-workspace-welcome-new-business-plan = { workspace-welcome-new-business-plan }
workspace-workspace-welcome-warp-build = { workspace-welcome-warp-build }
workspace-workspace-intro-business-plan = { workspace-intro-business-plan }
workspace-workspace-intro-build-plan = { workspace-intro-build-plan }
workspace-workspace-pricing-header-business-plan = { workspace-pricing-header-business-plan }
workspace-workspace-pricing-header-build-plan = { workspace-pricing-header-build-plan }
workspace-workspace-price-per-user-month = { workspace-price-per-user-month }
workspace-workspace-price-per-user-month-annual = { workspace-price-per-user-month-annual }
workspace-workspace-features-header-business-plan = { workspace-features-header-business-plan }
workspace-workspace-features-header-build-plan = { workspace-features-header-build-plan }
workspace-workspace-base-credits-per-month = { workspace-base-credits-per-month }
workspace-workspace-access-reload-credits = { workspace-access-reload-credits }
workspace-workspace-bring-your-own-api-key = { workspace-bring-your-own-api-key }
workspace-workspace-saml-based-sso = { workspace-saml-based-sso }
workspace-workspace-team-wide-zero-data-retention = { workspace-team-wide-zero-data-retention }
workspace-workspace-and-more = { workspace-and-more }
workspace-workspace-learn-more-pricing-page = { workspace-learn-more-pricing-page }
workspace-workspace-oops-team-data-not-found = { workspace-oops-team-data-not-found }
workspace-workspace-failed-auto-reload = { workspace-failed-auto-reload }
workspace-workspace-reload-denomination = { workspace-reload-denomination }
workspace-workspace-you-are-out-of-credits = { workspace-you-are-out-of-credits }
workspace-workspace-to-continue-using-ai-upgrade = { workspace-to-continue-using-ai-upgrade }
workspace-workspace-build-plan-price-includes = { workspace-build-plan-price-includes }
workspace-workspace-build-plan-includes = { workspace-build-plan-includes }
workspace-workspace-credits-per-month = { workspace-credits-per-month }
workspace-workspace-extended-credits-per-month = { workspace-extended-credits-per-month }
workspace-workspace-access-frontier-models = { workspace-access-frontier-models }
workspace-workspace-access-reload-credits-link = { workspace-access-reload-credits-link }
workspace-workspace-extended-cloud-agents = { workspace-extended-cloud-agents }
workspace-workspace-upgrade-plan = { workspace-upgrade-plan }
workspace-workspace-concurrent-limit-reached = { workspace-concurrent-limit-reached }
workspace-workspace-concurrent-limit-explanation = { workspace-concurrent-limit-explanation }
workspace-workspace-you-are-out-of-ai-credits = { workspace-you-are-out-of-ai-credits }
workspace-workspace-out-of-credits-explanation = { workspace-out-of-credits-explanation }
workspace-workspace-upgrade-more-concurrent-agents = { workspace-upgrade-more-concurrent-agents }
workspace-workspace-upgrade-continue-cloud-agents = { workspace-upgrade-continue-cloud-agents }
workspace-workspace-paid-plans-start-at = { workspace-paid-plans-start-at }
workspace-workspace-paid-plans-include = { workspace-paid-plans-include }
workspace-workspace-business-plan-starts-at = { workspace-business-plan-starts-at }
workspace-workspace-business-plan-include = { workspace-business-plan-include }
workspace-workspace-ai-credits-per-month = { workspace-ai-credits-per-month }
workspace-workspace-extended-ai-credits-per-month = { workspace-extended-ai-credits-per-month }
workspace-workspace-multiplier-concurrent-agents = { workspace-multiplier-concurrent-agents }
workspace-workspace-open-billing = { workspace-open-billing }
workspace-workspace-view-options = { workspace-view-options }
workspace-workspace-no-tabs-match-search = { workspace-no-tabs-match-search }
workspace-workspace-new-session = { workspace-new-session }
workspace-workspace-view-as = { workspace-view-as }
workspace-workspace-tab-item = { workspace-tab-item }
workspace-workspace-focused-session = { workspace-focused-session }
workspace-workspace-pane-title-as = { workspace-pane-title-as }
workspace-workspace-additional-metadata = { workspace-additional-metadata }
workspace-workspace-requires-github-cli = { workspace-requires-github-cli }
workspace-workspace-diff-stats = { workspace-diff-stats }
workspace-workspace-show-details-on-hover = { workspace-show-details-on-hover }
workspace-workspace-summary = { workspace-summary }
workspace-workspace-density = { workspace-density }
workspace-workspace-command-conversation = { workspace-command-conversation }
workspace-workspace-working-directory = { workspace-working-directory }
workspace-workspace-branch = { workspace-branch }
workspace-workspace-show = { workspace-show }
workspace-workspace-pr-link = { workspace-pr-link }
workspace-workspace-summary-more = { workspace-summary-more }
workspace-workspace-and-count-more = { workspace-and-count-more }
workspace-workspace-other = { workspace-other }
workspace-workspace-unsaved = { workspace-unsaved }
workspace-workspace-use-codex-models-in-warp = { workspace-use-codex-models-in-warp }
workspace-workspace-codex-description-1 = { workspace-codex-description-1 }
workspace-workspace-codex-description-2 = { workspace-codex-description-2 }

## -- Double-prefix aliases for new workspace strings ---

workspace-workspace-stop-synchronizing-any-panes = { workspace-stop-synchronizing-any-panes }
workspace-workspace-toggle-synchronizing-all-panes-in-current-tab = { workspace-toggle-synchronizing-all-panes-in-current-tab }
workspace-workspace-toggle-synchronizing-all-panes-in-all-tabs = { workspace-toggle-synchronizing-all-panes-in-all-tabs }
workspace-workspace-toggle-maximize-code-review-panel = { workspace-toggle-maximize-code-review-panel }
workspace-workspace-rewind-no-affect-files = { workspace-rewind-no-affect-files }
workspace-workspace-rewind-ai-confirmation-body = { workspace-rewind-ai-confirmation-body }
workspace-workspace-search-in-files = { workspace-search-in-files }
workspace-workspace-toggle-case-sensitivity = { workspace-toggle-case-sensitivity }
workspace-workspace-toggle-regex = { workspace-toggle-regex }
workspace-workspace-global-search-capped-results = { workspace-global-search-capped-results }
workspace-workspace-global-search-title = { workspace-global-search-title }
workspace-workspace-search-in-files-desc = { workspace-search-in-files-desc }
workspace-workspace-global-search-unavailable = { workspace-global-search-unavailable }
workspace-workspace-global-search-unavailable-desc = { workspace-global-search-unavailable-desc }
workspace-workspace-global-search-remote-desc = { workspace-global-search-remote-desc }
workspace-workspace-global-search-unsupported-desc = { workspace-global-search-unsupported-desc }
workspace-workspace-global-search-failed = { workspace-global-search-failed }
workspace-workspace-oz-subtext = { workspace-oz-subtext }
workspace-workspace-cloud-agents = { workspace-cloud-agents }
workspace-workspace-agent-automations = { workspace-agent-automations }
workspace-workspace-agent-automations-short = { workspace-agent-automations-short }
workspace-workspace-agent-management = { workspace-agent-management }
workspace-workspace-agent-management-short = { workspace-agent-management-short }
workspace-workspace-a-little-gift = { workspace-a-little-gift }
workspace-workspace-launch-credits = { workspace-launch-credits }
workspace-workspace-break-out-of-your-laptop = { workspace-break-out-of-your-laptop }
workspace-workspace-orchestrate-agents = { workspace-orchestrate-agents }
workspace-workspace-track-local-and-cloud = { workspace-track-local-and-cloud }
workspace-workspace-1000-free-credits = { workspace-1000-free-credits }
workspace-workspace-oz-cloud-agents-content = { workspace-oz-cloud-agents-content }
workspace-workspace-oz-agent-automations-content = { workspace-oz-agent-automations-content }
workspace-workspace-oz-agent-management-content = { workspace-oz-agent-management-content }
workspace-workspace-oz-launch-credits-content = { workspace-oz-launch-credits-content }
workspace-workspace-next = { workspace-next }
workspace-workspace-try-it-out = { workspace-try-it-out }
workspace-workspace-skip-for-now = { workspace-skip-for-now }
workspace-workspace-sync-conversations-to-cloud = { workspace-sync-conversations-to-cloud }
workspace-workspace-sync-conversations-desc = { workspace-sync-conversations-desc }
workspace-workspace-run-any-agent-harness = { workspace-run-any-agent-harness }
workspace-workspace-run-any-agent-harness-desc = { workspace-run-any-agent-harness-desc }
workspace-workspace-multi-agent-orchestration = { workspace-multi-agent-orchestration }
workspace-workspace-multi-agent-orchestration-desc = { workspace-multi-agent-orchestration-desc }
workspace-workspace-agent-memory = { workspace-agent-memory }
workspace-workspace-agent-memory-desc = { workspace-agent-memory-desc }
workspace-workspace-research-preview = { workspace-research-preview }
workspace-workspace-orchestrate-any-agent = { workspace-orchestrate-any-agent }
workspace-workspace-orchestration-improvements = { workspace-orchestration-improvements }
workspace-workspace-resize-pane-move-divider-left = { workspace-resize-pane-move-divider-left }
workspace-workspace-resize-pane-move-divider-right = { workspace-resize-pane-move-divider-right }
workspace-workspace-resize-pane-move-divider-up = { workspace-resize-pane-move-divider-up }
workspace-workspace-resize-pane-move-divider-down = { workspace-resize-pane-move-divider-down }
workspace-workspace-terminal-session = { workspace-terminal-session }
workspace-workspace-share-pane = { workspace-share-pane }
workspace-workspace-add-repository = { workspace-add-repository }

## -- Plan tier names -----------------------------------------------------------

workspace-plan-free = Free
workspace-plan-turbo = Turbo
workspace-plan-team = Team
workspace-plan-pro = Pro
workspace-plan-early-adopter = Early adopter
workspace-plan-enterprise = Enterprise
workspace-plan-business = Business
workspace-plan-lightspeed = Lightspeed
workspace-plan-build = Build
workspace-plan-max = Max

## -- Team deletion errors -------------------------------------------------------

workspace-team-delete-active-sub = Your team cannot be deleted with an active subscription.
workspace-team-delete-unused-credits = Your team cannot be deleted with unused add-on credits.
workspace-team-delete-members = Your team cannot be deleted with other team members.

## -- Moved to cloud string --------------------------------------------------------

workspace-moved-to-cloud = { $title } (Moved to cloud)

## -- Double-prefix alias for moved to cloud string --

workspace-workspace-moved-to-cloud = { $title } (Moved to cloud)

## -- Double-prefix alias for failed config dir string --

workspace-workspace-failed-config-dir = { workspace-failed-config-dir }

## -- Double-prefix aliases for migrated UI strings --

workspace-workspace-read-only = { workspace-read-only }
workspace-workspace-sign-in-to-edit = { workspace-sign-in-to-edit }
workspace-workspace-last-run-command = Last run command { $command }
workspace-workspace-last-ai-interaction = Last AI interaction: { $prompt }
workspace-workspace-currently-running = Currently running { $command }
workspace-workspace-currently-running-ai = Currently running AI interaction: { $prompt }
workspace-workspace-command-search = { workspace-command-search }
workspace-workspace-im-looking-for = { workspace-im-looking-for }
workspace-workspace-example-queries = { workspace-example-queries }
workspace-workspace-new-worktree = { workspace-new-worktree }
workspace-workspace-autogenerate-branch-name = { workspace-autogenerate-branch-name }
workspace-workspace-select-directory = { workspace-select-directory }
workspace-workspace-select-git-repo = { workspace-select-git-repo }
workspace-workspace-auto-create-worktree = { workspace-auto-create-worktree }
workspace-workspace-must-select-worktree = { workspace-must-select-worktree }
workspace-workspace-auto-generate-branch = { workspace-auto-generate-branch }
