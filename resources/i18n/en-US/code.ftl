# =============================================================================
# code.ftl — Code editor, language servers, file actions
# =============================================================================
# Message IDs: code-{id}
# Used in app/src/code/*.rs
# =============================================================================

## -- Tab/file actions ---------------------------------------------------------

code-close-all-tabs = Close All Tabs
code-close-saved = Close Saved
code-close-saved-tabs = Close Saved Tabs
code-save-file = Save File
code-save-file-as = Save File As
code-file-saved = File saved
code-failed-to-save-file = Failed to save file.
code-failed-to-load-file = Failed to load file.
code-copy-file-path = Copy File Path

## -- Reveal in file manager ---------------------------------------------------

code-reveal-in-finder = Reveal in Finder
code-reveal-in-explorer = Reveal in Explorer
code-reveal-in-file-manager = Reveal in File Manager

## -- Language servers ----------------------------------------------------------

code-install-server = Install Server
code-install-servers = Install Servers
code-installing-server = Installing server…
code-enable-server = Enable Server
code-enable-servers = Enable Servers
code-manage-servers = Manage Servers
code-restart-server = Restart Server
code-start-server = Start Server
code-stop-server = Stop Server
code-remove-server = Remove Server
code-start-all-servers = Start All Servers
code-start-all-stopped-servers = Start All Stopped Servers
code-stop-all-servers = Stop All Servers
code-restart-all-servers = Restart All Servers
code-enable-ai-tab-config-skill = Enable AI Tab Config Skill
code-open-agent-input-tab-config-skill = Open Agent Input Tab Config Skill
code-language-server-unavailable-codebase = Language server unavailable for this codebase
code-language-support-not-enabled = Language support not enabled
code-language-support-unavailable = Language support unavailable
code-language-support-unavailable-file-type = Language support unavailable for this file type

code-open-agent-input-tab-config = Open agent input with the /update-tab-config skill
code-enable-ai-tab-config = Enable AI to use the /update-tab-config skill
code-lang-support-unavailable-file = Language support is unavailable for this file type
code-lang-support-not-enabled = Language support is not currently enabled for { $name }
code-this-codebase = this codebase
code-lang-server-unavailable = Language server is unavailable for this codebase
code-lang-support-unavailable = Language support is unavailable for { $name }

## -- Code actions -------------------------------------------------------------

code-comment-label = Comment
code-overwrite-label = Overwrite
code-update-label = Update
code-discard-this-version = Discard This Version
code-find-references = Find References
code-add-as-context = Add as context
code-attach-as-context = Attach as Context
code-suggested-fixes-last-command = Suggested fixes from last command
code-unknown-workspace = Unknown Workspace

## -- Markdown preview ---------------------------------------------------------

code-view-markdown-preview = View Markdown Preview
code-open-logs = Open Logs
## -- Find/replace ---------------------------------------------------------------

code-find-placeholder = Find
code-regex-toggle-tooltip = Use Regular Expression
code-case-sensitive-tooltip = Match Case
code-select-all = Select All
code-replace-all = Replace All
code-replace-label = Replace
code-find-within-block-tooltip = Find in selected block

## -- Find/replace additional strings ------------------------------------------------

code-find-next-occurrence = Find the next occurrence of your search query
code-find-prev-occurrence = Find the previous occurrence of your search query
code-match-index = { $current }/{ $total }
code-match-index-no-current = ?/{ $total }

## -- File tree ------------------------------------------------------------------

code-explorer-remote = The Project Explorer requires access to your local workspace, which isn't supported in remote sessions.
code-explorer-disabled = The Project Explorer requires access to your local workspace. Open a new session or navigate to an active session to view.
code-explorer-wsl = The Project Explorer doesn't currently work in WSL.

code-folder-too-many-files = Folder has too many files to display in the file explorer.
code-project-explorer-unavailable = Project explorer unavailable

code-file-label = File
code-folder-label = Folder
code-open-file = Open File
code-new-file = New File
code-open-in-new-tab = Open in New Tab
code-open-in-new-pane = Open in New Pane
code-cd-to-directory = cd to Directory
code-copy-relative-path = Copy Relative Path

## -- Code actions (additional) --------------------------------------------------

code-go-to-definition = Go to Definition
code-accept-and-save = Accept and Save
code-reject = Reject
code-saved-changes-not-reflected = Changes saved but not yet reflected in terminal
code-untitled = Untitled
code-language-support-not-enabled-workspace = Language support for { $root_name } is not currently enabled
code-use-oz-update-config = Use /update-tab-config skill

## -- Code view menu items -------------------------------------------------------

code-split-pane-right = Split pane right
code-split-pane-left = Split pane left
code-split-pane-down = Split pane down
code-split-pane-up = Split pane up
code-close-pane = Close pane

## -- Footer LSP menu items (lowercase for inline menus) -------------------------

code-footer-open-logs = Open logs
code-footer-restart-server = Restart server
code-footer-stop-server = Stop server
code-footer-start-server = Start server
code-footer-remove-server = Remove server
code-footer-restart-all-servers = Restart all servers
code-footer-stop-all-servers = Stop all servers
code-footer-start-all-servers = Start all servers
code-footer-start-all-stopped-servers = Start all stopped servers
code-footer-manage-servers = Manage servers

## -- Code review ----------------------------------------------------------------

code-review-tooltip = View changes
code-review-remote = Diffs only work for local workspaces.
code-review-disabled = Diffs only work for git repositories.
code-review-wsl = Diffs don't currently work in WSL.

## -- Code view additional strings ------------------------------------------------

code-hint = Hint
code-diagnostic = Diagnostic

## -- Gutter button tooltips ---------------------------------------------------

code-add-diff-hunk-as-context = Add diff hunk as context
code-save-changes-to-attach-as-context = Save changes to attach as context.
code-revert-diff-hunk = Revert diff hunk
code-save-changes-to-revert = Save changes to revert
code-add-comment-on-line = Add comment on line
code-save-changes-to-add-comment = Save changes to add comment
code-show-saved-comment = Show saved comment
code-suggested-fixes-based-on-your-last-command = Suggested fixes based on your last command:

## -- Keybinding descriptions ---------------------------------------------------

code-move-backward-one-word = Move Backward One Word
code-move-forward-one-word = Move Forward One Word
code-move-cursor-up = Move cursor up
code-move-cursor-down = Move cursor down
code-move-cursor-left = Move cursor left
code-move-cursor-right = Move cursor right
code-move-to-line-start = Move to line start
code-home = Home
code-move-to-line-end = Move to line end
code-end = End
code-cursor-at-buffer-start = Cursor at buffer start
code-cursor-at-buffer-end = Cursor at buffer end
code-select-one-word-to-the-left = Select one word to the left
code-select-one-word-to-the-right = Select one word to the right
code-select-one-character-to-the-left = Select one character to the left
code-select-one-character-to-the-right = Select one character to the right
code-select-up = Select up
code-select-down = Select down
code-select-to-start-of-line = Select to start of line
code-select-to-end-of-line = Select to end of line
code-select-to-line-end = Select To Line End
code-select-to-line-start = Select To Line Start
code-backspace = Backspace
code-toggle-comment = Toggle comment
code-scroll-down-half-page-vim = Scroll down half a page (vim)
code-scroll-up-half-page-vim = Scroll up half a page (vim)
code-cut-word-left = Cut word left
code-delete-word-left = Delete word left
code-cut-word-right = Cut word right
code-delete-word-right = Delete word right
code-cut-all-left = Cut all left
code-delete-all-left = Delete all left
code-cut-all-right = Cut all right
code-delete-all-right = Delete all right
code-exit-vim-insert-mode = Exit Vim insert mode
code-find-in-code-editor = Find in code editor
code-go-to-line = Go to line

## -- Code view additional bindings --

code-file-saved-toast = File saved.

## -- Find references and footer strings -----------------------------------------

code-loading = Loading...
code-cycle-suggestions = Cycle suggestions

code-showing-one-reference = Showing 1 reference
code-showing-references = Showing { $count } references
code-server-status-message = { $name }: { $message }
code-server-stopped = { $name }: stopped
code-server-error = { $name }: error
code-server-error-detail = { $name }: { $error }

## -- Double-prefix aliases for find references and footer strings ----------------

## -- Find bar accessibility strings --------------------------------------------

code-find-bar-description = Find bar
code-find-field-focused = Find field focused
code-find-no-results = No results
code-find-use-enter-navigate = Use Enter to navigate results
code-find-replace-field-focused = Replace field focused
code-find-replace-continue = Press Enter to continue replacing
code-find-replace-last = This is the last match
code-preserve-case-tooltip = Preserve Case

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

## -- Missing keys added for i18n completeness --

code-find-bar-with-matches = { $current } of { $total }
code-find-replace-success = { $count } replaced
code-find-result-of = of

## -- Code settings page strings (code_page.rs) ----------------------------

code-feature-name = Code
code-initialization-settings-header = Initialization Settings
code-codebase-indexing-label = Codebase indexing
code-codebase-index-description = Warp can automatically index code repositories as you navigate them, helping agents quickly understand context and provide solutions. Code is never stored on the server. If a codebase is unable to be indexed, Warp can still navigate your codebase and gain insights via grep and find tool calling.
code-warp-indexing-ignore-description = To exclude specific files or directories from indexing, add them to the .warpindexingignore file in your repository directory. These files will still be accessible to AI features, but they won't be included in codebase embeddings.
code-index-new-folder = Index new folder
code-auto-index-feature-name = Index new folders by default
code-auto-index-description = When set to true, Warp will automatically index code repositories as you navigate them - helping agents quickly understand context and provide targeted solutions.
code-indexing-disabled-admin = Team admins have disabled codebase indexing.
code-indexing-enabled-admin = Team admins have enabled codebase indexing.
code-indexing-disabled-global-ai = AI Features must be enabled to use codebase indexing.
code-codebase-index-limit-reached = You have reached the maximum number of codebase indices for your plan. Delete existing indices to auto-index new codebases.
code-initialized-indexed-folders = Initialized / indexed folders
code-no-folders-initialized = No folders have been initialized yet.
code-open-project-rules = Open project rules
code-indexing-label = INDEXING
code-lsp-servers-label = LSP SERVERS
code-index-no-index-created = No index created
code-index-discovered-chunks = Discovered { $total_nodes } chunks
code-index-syncing-progress = Syncing - { $completed_nodes } / { $total_nodes }
code-index-syncing = Syncing...
code-index-synced = Synced
code-index-codebase-too-large = Codebase too large
code-index-stale = Stale
code-index-failed = Failed
code-index-no-index-built = No index built
code-index-limit-reached = Index limit reached
code-index-unavailable = Unavailable
code-index-disabled = Disabled
code-index-queued = Queued
code-index-indexing-progress = Indexing - { $completed } / { $total }
code-index-indexing-partial = Indexing - { $completed }
code-index-indexing-zero = Indexing - 0 / { $total }
code-index-indexing = Indexing...
code-lsp-installed = Installed
code-lsp-installing = Installing...
code-lsp-checking = Checking...
code-lsp-available-download = Available for download
code-lsp-available = Available
code-lsp-busy = Busy
code-lsp-failed = Failed
code-lsp-stopped = Stopped
code-lsp-not-running = Not running
code-restart-server = Restart server
code-view-logs = View logs
code-codebase-indexing-category = Codebase Indexing
code-code-editor-review-category = Code Editor and Review
code-codebase-indexing-subpage = Codebase Indexing
code-auto-open-code-review = Auto open code review panel
code-auto-open-code-review-desc = When this setting is on, the code review panel will open on the first accepted diff of a conversation
code-show-code-review-btn = Show code review button
code-show-code-review-btn-desc = Show a button in the top right of the window to toggle the code review panel.
code-show-diff-stats-btn = Show diff stats on code review button
code-show-diff-stats-btn-desc = Show lines added and removed counts on the code review button.
code-project-explorer = Project explorer
code-project-explorer-desc = Adds an IDE-style project explorer / file tree to the left side tools panel.
code-global-file-search = Global file search
code-global-file-search-desc = Adds global file search to the left side tools panel.
code-show-hidden-files = Show hidden files in project explorer
code-show-hidden-files-desc = Show dotfiles and hidden files (starting with .) in the project explorer.
code-format-on-save = Format on save (requires an active language server)
code-format-on-save-desc = Only applies when a language server is active for the file. Automatically formats the file with the language server on save; other LSP features (hover, go-to-definition, references, diagnostics) are unaffected.

## -- MCP server list page strings (list_page.rs) --------------------------

code-mcp-description-text = Add MCP servers to extend the Warp Agent's capabilities. MCP servers expose data sources or tools to agents through a standardized interface, essentially acting like plugins. Add a custom server, or use the presets to get started with popular servers. You can also find team servers that have been shared with you here.
code-mcp-empty-state = Once you add a MCP server, it will be shown here.
code-mcp-no-search-results = No search results found
code-mcp-search-placeholder = Search MCP Servers
code-mcp-learn-more = Learn more.
code-mcp-auto-detect-desc = Automatically detect and spawn MCP servers from globally-scoped third-party AI agent configuration files (e.g. in your home directory). Servers detected inside a repository are never spawned automatically and must be enabled individually in the "Detected from" sections below.
code-mcp-see-providers = See supported providers.
code-mcp-my-mcps = My MCPs
code-mcp-shared-by-warp-and-team-name = Shared by Warp and { $team_name }
code-mcp-shared-by-warp-and-devices = Shared by Warp and from other devices
code-mcp-shared-from-warp = Shared from Warp
code-mcp-detected-from = Detected from { $provider }
code-mcp-global = global
code-mcp-shared-by-creator = Shared by: { $creator }
code-mcp-shared-by-team-member = Shared by a team member
code-mcp-from-another-device = From another device
code-mcp-shared-from-team = Shared from team

## -- MCP installation modal strings (installation_modal.rs) ---------------

code-mcp-install = Install
code-mcp-install-name = Install { $name }
code-mcp-no-server-selected = No MCP server selected

## -- MCP update modal strings (update_modal.rs) --------------------------

code-mcp-update = Update
code-mcp-update-name = Update { $name }
code-mcp-updates-available = This server has { $count } updates available, which would you like to proceed with?
code-mcp-another-device = another device
code-mcp-a-team-member = a team member
code-mcp-update-from = Update from { $publisher }
code-mcp-update-from-gallery = Update from { $name }
code-mcp-version = Version { $version }
code-mcp-no-updates = No updates available

## -- Custom inference modal strings (custom_inference_modal.rs) -----------

code-custom-inf-endpoint-desc = Provide your endpoint details below. You can add as many models from the endpoint as you'd like and can also provide aliases for the model picker in your input.
code-custom-inf-endpoint-name = Endpoint name
code-custom-inf-endpoint-url = Endpoint URL
code-custom-inf-api-key = API key
code-custom-inf-api-format = API format
code-custom-inf-model-name = Model name
code-custom-inf-model-alias = Model alias (optional)
code-custom-inf-add-model = + Add model
code-custom-inf-add-endpoint = Add endpoint
code-custom-inf-save = Save
code-custom-inf-name-placeholder = e.g., Zach's external models
code-custom-inf-url-placeholder = Please include 'https://'
code-custom-inf-api-key-placeholder = e.g., sk-...
code-custom-inf-model-name-placeholder = e.g., GLM-5-FP8
code-custom-inf-model-alias-placeholder = e.g., GLM-5

## -- Execution profile strings (execution_profile_view.rs) ----------------

code-exec-profile-never = Never
code-exec-profile-always-allow = Always allow
code-exec-profile-always-ask = Always ask
code-exec-profile-run-agents = Run agents:

## -- Remove endpoint dialog strings (remove_custom_endpoint_confirmation_dialog.rs) --

code-remove-endpoint-title = Remove endpoint?
code-remove-endpoint-desc = Are you sure you want to remove this endpoint? You won't be able to use its models in your agent sessions moving forward.
code-remove-endpoint-button = Remove endpoint

