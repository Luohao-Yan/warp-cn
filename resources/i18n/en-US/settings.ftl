# =============================================================================
# settings.ftl — Settings panel strings
# =============================================================================
# Message IDs: settings-{id}
# Used in app/src/settings_view/*.rs and app/src/settings/*.rs
# =============================================================================

## -- Navigation tabs ----------------------------------------------------------

settings-appearance-tab = Appearance
settings-general-tab = General
settings-terminal-tab = Terminal
settings-features-tab = Features
settings-ai-tab = AI
settings-code-tab = Code
settings-keybindings-tab = Keyboard shortcuts
settings-privacy-tab = Privacy
settings-about-tab = About
settings-account-tab = Account
settings-teams-tab = Teams
settings-referrals-tab = Referrals
settings-warp-drive-tab = Warp Drive
settings-warp-agent-tab = Warp Agent
settings-profiles-tab = Profiles
settings-mcp-servers-tab = MCP Servers
settings-billing-tab = Billing and usage
settings-shared-blocks-tab = Shared blocks
settings-warpify-tab = Warpify
settings-environments-tab = Environments
settings-knowledge-tab = Knowledge
settings-third-party-cli-agents = Third party CLI agents
settings-code-indexing = Indexing and projects
settings-editor-code-review = Editor and Code Review
settings-oz-cloud-api-keys = Oz Cloud API Keys

## -- Navigation umbrella labels -----------------------------------------------

settings-agents-umbrella = Agents
settings-code-umbrella = Code
settings-cloud-platform-umbrella = Cloud platform

## -- Sections and categories --------------------------------------------------

settings-section-general = General
settings-section-session = Session
settings-section-keys = Keys
settings-section-notifications = Notifications
settings-section-terminal-input = Terminal Input
settings-section-workflows = Workflows
settings-section-code-indexing = Codebase indexing
settings-section-editor-review = Editor & Code Review

## -- Labels -------------------------------------------------------------------

settings-open-settings-file = Open settings file
settings-theme-label = Theme
settings-font-label = Font
settings-font-size-label = Font size
settings-default-shell-label = Default shell
settings-working-directory-label = Working directory
settings-language-label = Language
settings-startup-label = Startup
settings-opacity-label = Opacity
settings-cursor-style-label = Cursor style
settings-scrollback-label = Scrollback lines
settings-autoupdate-label = Automatic updates
settings-telemetry-label = Telemetry
settings-ai-model-label = AI model
settings-ai-provider-label = AI provider
settings-agent-mode-label = Agent mode
settings-default-session-label = Default session mode

## -- Descriptions & hints -----------------------------------------------------

settings-open-settings-file-hint = Edit your configuration in the default editor
settings-language-description = Display language for the Warp UI

## -- Actions ------------------------------------------------------------------

settings-reset-to-defaults = Reset to defaults
settings-export-settings = Export settings
settings-import-settings = Import settings

## -- Misc ---------------------------------------------------------------------

settings-unsaved-changes = Unsaved changes
settings-unsaved-changes-description = You have unsaved changes. Do you want to save them?
settings-appearance-agent-font = Agent font
settings-appearance-all-available-fonts = All available fonts
settings-appearance-always = Always
settings-appearance-background-opacity = Background opacity
settings-appearance-blink-cursor = Blinking cursor
settings-appearance-blinking-cursor = Blinking cursor
settings-appearance-blocks = Blocks
settings-appearance-compact-mode = Compact mode
settings-appearance-create-custom-theme = Create your own custom theme
settings-appearance-current-theme = Current theme
settings-appearance-cursor = Cursor
settings-appearance-cursor-type = Cursor type
settings-appearance-dark = Dark
settings-appearance-default-label = Default
settings-appearance-dim-inactive-panes = Dim inactive panes
settings-appearance-directory-tab-colors = Directory tab colors
settings-appearance-enforce-min-contrast = Enforce minimum contrast
settings-appearance-focus-follows-mouse = Focus follows mouse
settings-appearance-font-size = Font size (px)
settings-appearance-font-weight = Font weight
settings-appearance-header-toolbar = Header toolbar layout
settings-appearance-icon = Icon
settings-appearance-input = Input
settings-appearance-input-position = Input position
settings-appearance-input-type = Input type
settings-appearance-left = Left
settings-appearance-light = Light
settings-appearance-line-height = Line height
settings-appearance-never = Never
settings-appearance-opacity = Opacity
settings-appearance-open-windows-size = Open windows at custom size
settings-appearance-respect-system-theme = Respect system theme
settings-appearance-right = Right
settings-appearance-system = Auto (system)
settings-appearance-tab-close-position = Tab close button position
settings-appearance-thin-strokes = Thin strokes
settings-appearance-zoom-level = Zoom level
settings-appearance-app-icon-classic = Classic
settings-appearance-app-icon-retro = Retro
settings-appearance-app-icon-simple = Simple
settings-appearance-blocks-header = Blocks
settings-appearance-contrast-medium = Medium
settings-appearance-contrast-off = Off
settings-appearance-contrast-strong = Strong
settings-appearance-cursor-block = Block
settings-appearance-cursor-header = Cursor
settings-appearance-cursor-underline = Underline
settings-appearance-cursor-vertical-bar = Vertical bar
settings-appearance-decoration-always-show = Always show tab bar
settings-appearance-decoration-hide-fullscreen = Hide tab bar if fullscreen
settings-appearance-decoration-on-hover = Only show tab bar on hover
settings-appearance-font-header = Font
settings-appearance-input-classic-1 = Classic 1
settings-appearance-input-classic-2 = Classic 2
settings-appearance-input-classic-3 = Classic 3
settings-appearance-input-header = Input
settings-appearance-input-pinned-bottom = Pinned to bottom
settings-appearance-input-pinned-top = Pinned to top
settings-appearance-input-universal = Universal
settings-appearance-input-waterfall = Waterfall
settings-appearance-tab-close-left = Left side of tab
settings-appearance-tab-close-right = Right side of tab
settings-appearance-theme-aurora = Aurora
settings-appearance-theme-comets = Comets
settings-appearance-theme-glass-sky = Glass Sky
settings-appearance-theme-glitch = Glitch
settings-appearance-theme-glow = Glow
settings-appearance-theme-header = Theme
settings-appearance-theme-holographic = Holographic
settings-appearance-theme-neon = Neon
settings-appearance-theme-novel = Novel
settings-appearance-theme-spring = Spring
settings-appearance-theme-sunset = Sunset
settings-appearance-theme-synthwave = Synthwave
settings-appearance-theme-wood = Wood
settings-appearance-thin-strokes-always = Always
settings-appearance-thin-strokes-auto = Auto
settings-appearance-thin-strokes-never = Never
settings-appearance-window-header = Window
settings-appearance-notebook-font-size = Notebook font size
settings-appearance-terminal-font = Terminal font
settings-appearance-zoom-level = Zoom level

## -- AI settings descriptions -------------------------------------------

settings-ai-all-features-desc = Controls whether all AI features are enabled.
settings-ai-proactive-features-desc = Controls whether proactive AI features like suggestions are enabled.
settings-ai-autodetect-nl-desc = Controls whether AI automatically detects natural language input.
settings-ai-nld-terminal-desc = Controls whether natural language detection is enabled in the terminal input.
settings-ai-command-denylist-desc = Commands to exclude from AI natural language autodetection.
settings-ai-intelligent-autosuggestions-desc = Controls whether AI-powered intelligent autosuggestions are enabled.
settings-ai-prompt-suggestions-desc = Controls whether prompt suggestions are shown in agent mode.
settings-ai-code-suggestions-desc = Controls whether AI code suggestions are enabled.
settings-ai-nl-autosuggestions-desc = Controls whether ghosted text autosuggestions are shown for AI input queries.
settings-ai-shared-block-title-desc = Controls whether titles are auto-generated when sharing blocks.
settings-ai-git-autogen-desc = Controls whether AI auto-generates commit messages and PR title/body in the code review dialogs.
settings-ai-rule-suggestions-desc = Controls whether the agent suggests rules to save after responses.
settings-ai-voice-input-desc = Controls whether voice input is enabled for AI interactions.
settings-ai-voice-toggle-key-desc = The key used to toggle voice input.
settings-ai-default-session-mode-desc = The default mode for new terminal sessions.
settings-ai-thinking-display-desc = Controls how agent thinking traces are displayed after streaming.
settings-ai-cmd-allowlist-desc = Commands that the agent can execute without explicit permission.
settings-ai-cmd-denylist-desc = Commands that the agent must always ask before executing.
settings-ai-readonly-cmd-desc = Whether the agent can auto-execute read-only commands without asking.
settings-ai-coding-perms-desc = The file read permission level for the agent.
settings-ai-file-read-allowlist-desc = File paths the agent can read without asking for permission.
settings-ai-aws-bedrock-creds-desc = Whether Warp should use your local AWS credentials for Bedrock-enabled requests.
settings-ai-aws-bedrock-auto-login-desc = Whether to automatically run the AWS login command when Bedrock credentials expire.
settings-ai-aws-bedrock-refresh-cmd-desc = The command to run to refresh AWS credentials for Bedrock.
settings-ai-aws-bedrock-profile-desc = The AWS profile name to use for Bedrock credentials.
settings-ai-memory-rules-desc = Whether the agent uses your saved rules during requests.
settings-ai-warp-drive-context-desc = Whether Warp Drive context is included in AI requests.
settings-ai-oz-updates-desc = Whether the "What's new" section is shown in the agent view.
settings-ai-warp-credits-byok-desc = Whether Warp credits can be used even when providing your own API key.
settings-ai-use-agent-footer-desc = Whether to show the "Use Agent" footer for terminal commands.
settings-ai-cli-agent-footer-desc = Whether to show the CLI agent footer for coding agent commands.
settings-ai-auto-toggle-rich-input-desc = Whether CLI agent Rich Input automatically closes and reopens based on the agent's blocked state.
settings-ai-auto-open-rich-input-desc = Whether CLI agent Rich Input automatically opens when a CLI agent session starts.
settings-ai-auto-dismiss-rich-input-desc = Whether CLI agent Rich Input automatically closes after the user submits a prompt.
settings-ai-cli-agent-mapping-desc = Maps custom toolbar command patterns to specific CLI agents.
settings-ai-cloud-computer-use-desc = Whether computer use is enabled for cloud agent conversations.
settings-ai-orchestration-desc = Whether multi-agent orchestration is enabled.
settings-ai-file-mcp-desc = Whether third-party file-based MCP servers are automatically detected.
settings-ai-agent-cmds-history-desc = Whether agent-executed commands are included in command history.
settings-ai-conversation-history-desc = Whether conversation history appears in the tools panel.
settings-ai-agent-notifications-desc = Whether agent notifications are shown.
settings-ai-attribution-desc = Whether the Warp Agent adds an attribution co-author line to commit messages and pull requests it creates.

## -- Missing settings keys (auto-generated) ----------------------------------------

settings-add-custom-keybindings = Add custom keybindings
settings-add-repo = Add Repo
settings-additional-members-cost-no-price = Additional members
settings-additional-members-cost-with-price = Additional members: { $monthly_cost }/mo monthly, { $yearly_cost }/yr annually
settings-admin = Admin
settings-admin-charged-prorated = You'll be charged a prorated amount for the remainder of your billing period
settings-allow-discover-domain = Allow users with { $domain } email to discover this team
settings-allow-discover-same-domain = Allow users with the same email domain to discover this team
settings-appearance-default-font = Default font: { $font }
settings-appearance-window-blur = Window blur: { $value }
settings-appearance-window-opacity = Window opacity: { $value }
settings-authorize = Authorize
settings-buy-more = Buy More
settings-cancel = Cancel
settings-cancel-button = Cancel
settings-choose-editor-code-panels = Open Code Review Panels With
settings-choose-editor-files = Open Files With
settings-choose-layout = Choose Layout
settings-choose-setup = Choose Setup
settings-clear-button = Clear
settings-command-label = Command Label
settings-compare-plans = Compare Plans
settings-compare-plans-link = Compare plans
settings-configure-keyboard-shortcuts = Configure keyboard shortcuts
settings-contact-admin-to-request-access = Contact your admin to request access
settings-contact-support-btn = Contact Support Btn
settings-create = Create
settings-default-app = Default application
settings-default-button = Default
settings-delete-environment-description = This will permanently delete { $name } and all associated variables
settings-delete-environment-title = Delete Environment?
settings-delete-mcp = Delete MCP Server
settings-delete-mcp-btn = Delete
settings-delete-mcp-local-desc = This will remove the MCP server from your local configuration
settings-delete-mcp-shared-desc = This will unshare and delete the MCP server
settings-delete-mcp-shared-title = Unshare and Delete MCP Server?
settings-delete-mcp-title = Delete MCP Server?
settings-delete-team = Delete Team
settings-deleted-invite = Deleted invite
settings-delinquent-admin-link = here
settings-delinquent-admin-non-self-serve = Your team has an unpaid bill. Some features may be restricted. Please contact your Warp account executive.
settings-delinquent-admin-prefix = Your team has an unpaid bill. Some features may be restricted. Please pay 
settings-delinquent-admin-self-serve-line1 = Your team has an unpaid bill. Some features may be restricted.
settings-delinquent-admin-suffix =  to update your billing information and restore access.
settings-delinquent-non-admin = Your team has an unpaid bill. Some features may be restricted. Contact your team admin for details.
settings-disable-feature = Disable Feature
settings-domain-restrictions-added = Domain Restrictions Added
settings-domain-restrictions-instructions = Domain Restrictions Instructions
settings-domains-placeholder = Enter domains...
settings-edit-tooltip = Edit
settings-edit-variables = Edit Variables
settings-email = Email
settings-email-expiry-instructions = Email Expiry Instructions
settings-emails-placeholder = Enter email addresses...
settings-enable-feature = Enable Feature
settings-env-id = ID: { $env_id }
settings-environments-description = Environments Description
settings-environments-title = Environments Title
settings-expired = Expired
settings-failed-add-domain-restriction = Failed to add domain restriction
settings-failed-delete-domain-restriction = Failed to delete domain restriction
settings-failed-delete-invite = Failed to delete invite
settings-failed-generate-billing-link = Failed to generate billing link
settings-failed-generate-upgrade-link = Failed to generate upgrade link
settings-failed-join-team = Failed to join team
settings-failed-rename-team = Failed to rename team
settings-failed-reset-invite-links = Failed to reset invite links
settings-failed-send-invite = Failed to send invite
settings-failed-toggle-invite-links = Failed to toggle invite links
settings-failed-toggle-team-discoverability = Failed to toggle team discoverability
settings-failed-transfer-team-ownership = Failed to transfer team ownership
settings-failed-update-team-member-role = Failed to update team member role
settings-free-plan-usage-limits = Free plan usage limits
settings-get-started = Get Started
settings-group-files-description = Configure how files are opened
settings-group-files-header = Files & Directories
settings-image-label = Docker Image: { $image }
settings-invalid-domains = Invalid Domains
settings-invalid-domains-toast = Invalid domains
settings-invalid-emails = Invalid Emails
settings-invalid-emails-toast = Invalid emails
settings-invite = Invite
settings-invite-by-email = Invite by Email
settings-invite-by-link = Invite by Link
settings-invite-link-instructions = Invite Link Instructions
settings-invites-on-the-way = Invites on the way!
settings-join = Join
settings-join-team-and-collaborate = Join a team and collaborate
settings-keybindings-search-placeholder = Keybindings Search Placeholder
settings-keyboard-shortcuts-not-synced = Keyboard Shortcuts Not Synced
settings-last-edited = Last edited { $time }
settings-last-used = Last used { $time }
settings-leave-team = Leave Team
settings-limit-hit-admin = Limit Hit Admin
settings-limit-hit-admin-no-upgrade = Limit Hit Admin No Upgrade
settings-limit-hit-non-admin = Limit Hit Non Admin
settings-link = Link
settings-link-copied-to-clipboard = Link copied to clipboard
settings-loading = Loading
settings-manage-billing-link = Manage Billing Link
settings-mcp-cannot-add-multiple = Mcp Cannot Add Multiple
settings-mcp-contains-secrets = Mcp Contains Secrets
settings-mcp-no-server-specified = Mcp No Server Specified
settings-no-environments = No Environments
settings-no-matches = No Matches
settings-non-admin-charged-prorated = Your team admin will be charged a prorated amount for the remainder of the billing period
settings-open-markdown-default = Open Markdown Default
settings-or-join-existing-team = Or join an existing team
settings-owner = Owner
settings-past-due = Past due
settings-pending = Pending
settings-personal = Personal
settings-plan-usage-limits = Plan usage limits
settings-refresh = Refresh
settings-regain-access-text = Regain Access Text
settings-remove-mcp-team-desc = Remove Mcp Team Desc
settings-remove-mcp-team-title = Remove Mcp Team Title
settings-repos-label = Repos: { $repos }
settings-reset-invite-links = Reset invite links
settings-retry = Retry
settings-save-button = Save Button
settings-search-placeholder = Search Placeholder
settings-set = Set
settings-setup-commands-label = Commands: { $commands }
settings-share-tooltip = Share Tooltip
settings-shared-by-warp = Shared By Warp
settings-shared-notebooks = Shared notebooks
settings-shared-workflows = Shared workflows
settings-shortcut-conflict-warning = Shortcut Conflict Warning
settings-sign-up = Sign Up
settings-successfully-left-team = Successfully left team
settings-successfully-renamed-team = Successfully renamed team
settings-suggested = Suggested
settings-team-create-description = Team Create Description
settings-team-limit-exceeded-admin-no-upgrade = Team Limit Exceeded Admin No Upgrade
settings-team-limit-exceeded-admin-upgrade = Team Limit Exceeded Admin Upgrade
settings-team-limit-exceeded-non-admin = Team Limit Exceeded Non Admin
settings-team-members = Team members
settings-team-name-placeholder = Team Name Placeholder
settings-teammate = Teammate
settings-teammates = Teammates
settings-teams = Teams
settings-to-reference-keybindings = To Reference Keybindings
settings-toggled-invite-links = Toggled invite links
settings-toggled-team-discoverability = Toggled team discoverability
settings-transfer-ownership-confirm = Are you sure you want to transfer ownership to { $email }?
settings-transferred-team-ownership = Transferred team ownership
settings-unpaid = Unpaid
settings-updated-team-member-role = Updated team member role
settings-upgrade-to-build = Upgrade to Build
settings-upgrade-to-lightspeed-plan = Upgrade to Lightspeed
settings-upgrade-to-turbo-plan = Upgrade to Turbo
settings-use-agent = Use Agent
settings-use-label = Use Label
settings-you-are-offline = You Are Offline

# === Session & Tab settings description keys ===

settings-startup-shell-override-desc = The shell to use when Warp starts up.
settings-new-session-shell-override-desc = The shell to use when opening a new session.
settings-honor-ps1-desc = Whether to use your shell's PS1 prompt instead of the Warp prompt.
settings-confirm-close-session-desc = Whether to show a confirmation dialog when closing a session.
settings-notifications-desc = Notification preferences for terminal events.
settings-show-model-selectors-in-prompt-desc = Whether to show AI model selectors in the input prompt.
settings-agent-toolbar-chips-desc = Controls the layout of context chips in the Agent Mode toolbar.
settings-cli-agent-toolbar-chips-desc = Controls the layout of context chips in the CLI Agent toolbar.
settings-notification-toast-duration-desc = How long notification toasts are displayed, in seconds.
settings-working-directory-config-desc = Controls the working directory used when opening new sessions.
settings-new-tab-placement-desc = Where new tabs are placed in the tab bar.
settings-tab-close-button-position-desc = Position of the close button on tabs.
settings-workspace-decoration-visibility-desc = When workspace decorations such as the tab bar are visible.
settings-directory-tab-colors-desc = Mapping of directory paths to their tab color assignments.
settings-header-toolbar-chip-selection-desc = Configuration for the header toolbar chips in the vertical tab panel header.
settings-vertical-tabs-view-mode-desc = Display mode for the vertical tab bar.
settings-vertical-tabs-display-granularity-desc = Granularity of rows displayed in the vertical tabs panel.
settings-vertical-tabs-tab-item-mode-desc = Tab item display mode in vertical tabs.
settings-vertical-tabs-primary-info-desc = The primary information displayed on vertical tabs.
settings-vertical-tabs-compact-subtitle-desc = Subtitle shown on compact vertical tabs.
settings-show-indicators-desc = Whether to show activity indicators on tabs.
settings-show-code-review-button-desc = Whether to show the code review button on tabs.
settings-show-code-review-diff-stats-desc = Whether to show lines added/removed counts on the code review button.
settings-preserve-active-tab-color-desc = Whether to preserve the active tab's color when switching tabs.
settings-use-vertical-tabs-desc = Whether to display tabs vertically instead of horizontally.
settings-show-vertical-tab-panel-restored-desc = When restoring a window, open the vertical tabs panel even if it was closed when the session was saved.
settings-use-latest-prompt-conversation-title-desc = Whether vertical tab names for agent conversations use the latest user prompt.
settings-vertical-tabs-show-pr-link-desc = Whether to show PR links on vertical tabs.
settings-vertical-tabs-show-diff-stats-desc = Whether to show diff stats on vertical tabs.
settings-vertical-tabs-show-details-hover-desc = Whether to show a details sidecar when hovering over a vertical tab.

## -- AI settings page strings --

settings-voice-input = Voice input
settings-voice-input-hold-key = Voice input (hold { $key_name } key)
settings-voice-key-none = None
settings-key-left = Left
settings-key-right = Right
settings-default-session-terminal = Terminal
settings-default-session-agent = Agent
settings-default-session-cloud-oz = Cloud Oz
settings-default-session-tab-config = Tab Config
settings-default-session-docker-sandbox = Local Docker Sandbox
settings-thinking-show-and-collapse = Show & collapse
settings-thinking-always-show = Always show
settings-thinking-never-show = Never show
settings-thinking-cmd-show-and-collapse = Set agent thinking display: show & collapse
settings-thinking-cmd-always-show = Set agent thinking display: always show
settings-thinking-cmd-never-show = Set agent thinking display: never show

## -- Settings display names for dropdowns --

settings-icon-default = Default
settings-icon-aurora = Aurora
settings-icon-classic-1 = Classic 1
settings-icon-classic-2 = Classic 2
settings-icon-classic-3 = Classic 3
settings-icon-comets = Comets
settings-icon-glass-sky = Glass Sky
settings-icon-glitch = Glitch
settings-icon-cow = Cow
settings-icon-glow = Glow
settings-icon-holographic = Holographic
settings-icon-mono = Mono
settings-icon-neon = Neon
settings-icon-original = Original
settings-icon-starburst = Starburst
settings-icon-sticker = Sticker
settings-icon-warp-1 = Warp 1
settings-cursor-bar = Bar
settings-cursor-block = Block
settings-cursor-underline = Underline
settings-tab-completions = Open completions menu
settings-tab-autosuggestions = Accept autosuggestion
settings-tab-user-defined = User defined
settings-platform-mac = Mac
settings-platform-linux = Linux
settings-platform-windows = Windows
settings-platform-web = Web
settings-platform-global = Global

## -- Primary keys for migrated UI strings --

settings-create-theme-from-image = Create theme from image
settings-delete-theme-confirm = Are you sure you want to delete this theme?
settings-1password-integrate-cli = Integrate 1Password app with CLI
settings-secret-fetch-failed = { $manager } didn't return secrets (likely not configured or authenticated)

settings-overage-limit-desc = Warp will prevent use of premium models when this dollar limit is reached. Resets on a monthly basis.
settings-no-match = No settings match your search.
settings-no-match-hint = You may want to try using different keywords or checking for any possible typos.
settings-no-api-keys = No API Keys
settings-create-key-desc = Create a key to manage external access to Warp

## -- Double-prefix aliases ---------------------------------------------------------

## -- Final missing keys -------------------------------------------------------------
settings-add-profile = Add Profile
settings-cancel-invite = Cancel Invite
settings-create-a-team = Create a team
settings-create-environment = Create environment
settings-delete-environment = Delete Environment
settings-demote-from-admin = Demote from Admin
settings-error-leaving-team = Error leaving team
settings-executable-path = Executable Path
settings-failed-load-invite-link = Failed to load invite link
settings-index-new-folder = Index new folder
settings-invite-on-the-way = Invite on the way!
settings-joined-team-success = Successfully joined { $team_name }
settings-last-used-never = Never
settings-launch-agent = Launch agent
settings-load-more = Load more
settings-make-team-discoverable = Make team discoverable
settings-manage-billing = Manage billing
settings-manage-plan = Manage plan
settings-new-tab = New Tab
settings-open-admin-panel = Open admin panel
settings-press-new-shortcut = Press new shortcut...
settings-promote-to-admin = Promote to Admin
settings-quick-setup = Quick setup
settings-quick-setup-description = Quick setup description
settings-remove-domain = Remove domain
settings-remove-from-team = Remove from team
settings-reset-links = Reset Links
settings-restrict-by-domain = Restrict by domain
settings-shared-by-warp-and-team = Shared by Warp & { $team_name }
settings-split-pane = Split Pane
settings-transfer-ownership = Transfer ownership
settings-use-agent-description = Use agent description
settings-use-window-blur = Use window blur
settings-view-my-runs = View my runs


# === New i18n entries added ===

settings-add-directory-color-button = Add directory color
settings-add-directory-label = + Add directory…
settings-api-key-agent-desc = This API key is tied to an agent and can make requests on behalf of the agent.
settings-api-key-failed-load-agents = Failed to load agents. Please close and try again.
settings-api-key-no-agents = No agents available. Create one first.
settings-api-key-no-team-error = Unable to create a team API key because there is no current team.
settings-api-key-personal-desc = This API key is tied to your user and can make requests against your Warp account.
settings-api-key-secret-shown-once = This secret key is shown only once. Copy and store it securely.
settings-api-key-team-desc = This API key is tied to your team and can make requests on behalf of your team.
settings-api-keys-description = Create and manage API keys to allow other Oz cloud agents to access your Warp account. For more information, visit the
settings-appearance-blinking-cursor = Blinking cursor
settings-appearance-columns = Columns
settings-appearance-compact-mode = Compact mode
settings-appearance-cursor-type = Cursor type
settings-appearance-custom-padding-alt-screen = Use custom padding in alt-screen
settings-appearance-dim-inactive-panes = Dim inactive panes
settings-appearance-focus-follows-mouse = Focus follows mouse
settings-appearance-input-type = Input type
settings-appearance-open-custom-size = Open new windows with custom size
settings-appearance-preserve-tab-color = Preserve active tab color for new tabs
settings-appearance-prompt-as-tab-title = Use latest user prompt as conversation title in tab names
settings-appearance-rows = Rows
settings-appearance-show-block-dividers = Show block dividers
settings-appearance-show-code-review = Show code review button
settings-appearance-show-jump-to-bottom = Show Jump to Bottom of Block button
settings-appearance-show-ligatures = Show ligatures in terminal
settings-appearance-show-tab-indicators = Show tab indicators
settings-appearance-sync-with-os = Sync with OS
settings-appearance-try-changing-gpu-settings =  Try changing the settings for the graphics backend or integrated GPU in Features > System.
settings-appearance-vertical-tab-layout = Use vertical tab layout
settings-appearance-vertical-tabs-restored = Show vertical tabs panel in restored windows
settings-appearance-vertical-tabs-restored-desc = When enabled, reopening or restoring a window opens the vertical tabs panel even if it was closed when the window was last saved.
settings-context-label = Context
settings-copied-label = Copied
settings-copy-label = Copy
settings-documentation-link = Documentation.
settings-expiration-1-day = 1 day
settings-expiration-30-days = 30 days
settings-expiration-90-days = 90 days
settings-expiration-never = Never
settings-features-active-screen = Active Screen
settings-features-agent-notifications = Show in-app agent notifications
settings-features-at-context-menu = Enable '@' context menu in terminal mode
settings-features-audible-bell = Use Audible Bell
settings-features-auto-code-review = Auto open code review panel
settings-features-auto-code-review-desc = When this setting is on, the code review panel will open on the first accepted diff of a conversation
settings-features-autocomplete-pairs = Autocomplete quotes, parentheses, and brackets
settings-features-autosuggestion-hint = Show autosuggestion keybinding hint
settings-features-autosuggestion-ignore = Show autosuggestion ignore button
settings-features-changelog-toast = Show changelog toast after updates
settings-features-confirm-close-shared = Confirm before closing shared session
settings-features-copy-on-select = Copy on select
settings-features-ctrl-tab-behavior = Ctrl+Tab behavior:
settings-features-desktop-notifications = Receive desktop notifications from Warp
settings-features-error-underlining = Error underlining for commands
settings-features-expand-aliases = Expand aliases as you type
settings-features-focus-reporting = Enable Focus Reporting
settings-features-global-hotkey = Global hotkey:
settings-features-global-workflows-search = Show Global Workflows in Command Search (ctrl-r)
settings-features-help-block = Show help block in new sessions
settings-features-input-message-line = Show terminal input message line
settings-features-left-alt-meta = Left Alt key is Meta
settings-features-left-option-meta = Left Option key is Meta
settings-features-linux-selection-clipboard = Honor linux selection clipboard
settings-features-linux-selection-clipboard-desc = Whether the Linux primary clipboard should be supported.
settings-features-max-rows-block = Maximum rows in a block
settings-features-middle-click-paste = Middle-click to paste
settings-features-mouse-reporting = Enable Mouse Reporting
settings-features-open-completions = Open completions menu as you type
settings-features-open-links-desktop = Open links in desktop app
settings-features-open-links-desktop-desc = Automatically open links in desktop app whenever possible.
settings-features-outline-symbols = Outline codebase symbols for '@' context menu
settings-features-prefer-integrated-gpu = Prefer rendering new windows with integrated GPU (low power)
settings-features-quit-on-close = Quit when all windows are closed
settings-features-restart-to-take-effect = Restart Warp for changes to take effect.
settings-features-restore-on-startup = Restore windows, tabs, and panes on startup
settings-features-right-alt-meta = Right Alt key is Meta
settings-features-right-option-meta = Right Option key is Meta
settings-features-scroll-lines = Lines scrolled by mouse wheel interval
settings-features-scroll-reporting = Enable Scroll Reporting
settings-features-see-docs = See docs.
settings-features-show-quit-warning = Show warning before quitting/logging out
settings-features-show-tooltip-links = Show tooltip on click on links
settings-features-slash-commands = Enable slash commands in terminal mode
settings-features-smart-selection = Double-click smart selection
settings-features-start-at-login = Start Warp at login
settings-features-sticky-command-header = Show sticky command header
settings-features-suggest-corrected = Suggest corrected commands
settings-features-syntax-highlighting = Syntax highlighting for commands
settings-features-use-wayland = Use Wayland for window management
settings-features-vim-clipboard = Set unnamed register as system clipboard
settings-features-vim-keybindings = Edit code and commands with Vim keybindings
settings-features-vim-status-bar = Show Vim status bar
settings-features-warp-ssh-wrapper = Warp SSH Wrapper
settings-features-wayland-description = Enabling this setting disables global hotkey support. When disabled, text may be blurry if your Wayland compositor is using fraction scaling (ex: 125%).
settings-features-wayland-no-restore = Window positions won't be restored on Wayland. 
settings-input-mode-pinned-bottom = Pin to the bottom (Warp mode)
settings-input-mode-pinned-top = Pin to the top (Reverse mode)
settings-input-mode-waterfall = Start at the top (Classic mode)
settings-keybinding-label = Keybinding

settings-asterisks = Asterisks
settings-strikethrough = Strikethrough
settings-always-show-secrets = Always show

settings-file-contains-error = Your settings file contains an error.
settings-file-contains-errors = Your settings file contains errors.
settings-ctrl-tab-activate-prev-next = Activate previous/next tab
settings-ctrl-tab-cycle-recent-session = Cycle most recent session
settings-ctrl-tab-cycle-recent-tab = Cycle most recent tab
settings-global-hotkey-disabled = Disabled
settings-global-hotkey-quake-mode = Dedicated hotkey window
settings-global-hotkey-activation = Show/hide all windows

settings-import-select-profile = Select a settings profile to import:
settings-import-looking = Looking for settings to import...
settings-import-new-session-effect = Some settings will take effect when you open a new session.
settings-import-reset-defaults = Reset to Warp defaults


# === Final missing entries ===

settings-appearance-cursor = Cursor
settings-appearance-default-no-color = Default (no color)
settings-appearance-fullscreen-apps = Full-screen Apps
settings-appearance-header-toolbar-layout = Header toolbar layout
settings-appearance-ligatures-performance-warning = Ligatures may reduce performance
settings-appearance-panes = Panes
settings-appearance-tools-panel-consistent = Tools panel visibility is consistent across tabs
settings-billing-default-max-spend = $200.00
settings-billing-your-selected = your selected
settings-env-create-not-logged-in = Unable to create environment: not logged in.
settings-env-created-success = Successfully created environment
settings-env-deleted-success = Environment deleted successfully
settings-env-save-not-exists = Unable to save: environment no longer exists.
settings-env-share-failed = Failed to share environment with team
settings-env-share-no-team = Unable to share environment: you are not currently on a team.
settings-env-share-not-synced = Unable to share environment: environment is not yet synced.
settings-env-shared-success = Successfully shared environment
settings-env-updated-success = Successfully updated environment
settings-features-click-set-hotkey = Click to set global hotkey
settings-features-default-mode = Default mode for new sessions
settings-features-default-shell = Default shell for new sessions
settings-features-new-sessions-effect = This change will take effect in new sessions
settings-features-scroll-lines-desc = Supports floating point values between 1 and 20.
settings-features-wayland-tooltip = Enables the use of Wayland
settings-features-workflows = Workflows
settings-features-working-directory = Working directory for new sessions
settings-mcp-authenticating = Authenticating...
settings-mcp-auto-spawn-servers = Auto-spawn servers from third-party agents
settings-mcp-available-install = Available to install
settings-mcp-detected-config = Detected from config file
settings-mcp-edit-config = Edit config
settings-mcp-finish-install-first = Finish the current MCP install before opening another install link.
settings-mcp-log-out = Log out
settings-mcp-no-template = Could not find cloud template
settings-mcp-no-tools = No tools available
settings-mcp-offline = Offline
settings-mcp-set-up = Set up
settings-mcp-share-server = Share server
settings-mcp-show-logs = Show logs
settings-mcp-shutting-down = Shutting down...
settings-mcp-starting = Starting server...
settings-mcp-update-available = Server update available
settings-mcp-view-logs = View logs
## -- CLI not installed strings ---------------------------------------------------

settings-cli-not-installed = { $name } CLI is not installed
settings-cli-install-doc = View { $name } CLI installation documentation

## -- Double-prefix aliases for CLI not installed strings ---------------------------

## -- Double-prefix aliases for migrated UI strings --

## -- Toggle action descriptions for debug/dev features -----------------------

settings-toggle-show-init-block = Show initialization block
settings-toggle-hide-init-block = Hide initialization block
settings-toggle-show-inband-commands = Show in-band command blocks
settings-toggle-hide-inband-commands = Hide in-band command blocks
settings-toggle-recording-mode = recording mode
settings-toggle-inband-generators = in-band generators for new sessions
settings-toggle-debug-network = debug network status
settings-toggle-memory-stats = memory statistics

## -- Language display names (shown in native script by convention) ------------

settings-lang-en-us = English (US)
settings-lang-zh-cn = 中文 (简体)
settings-lang-ja = 日本語

settings-sync = Settings Sync
