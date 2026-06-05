# =============================================================================
# drive.ftl — Warp Drive, sharing, import/export strings
# =============================================================================
# Message IDs: drive-{id}
# Used in app/src/drive/*.rs
# =============================================================================

## -- Drive sidebar -----------------------------------------------------------

drive-description = Share commands & knowledge with your teammates.
drive-type-folder = Folder
drive-type-notebook = Notebook
drive-type-workflow = Workflow
drive-type-prompt = Prompt
drive-type-env-vars = Environment variables
drive-new-folder = New folder
drive-new-notebook = New notebook
drive-new-workflow = New workflow
drive-new-prompt = New prompt
drive-new-env-vars = New environment variables
drive-import = Import
drive-remove = Remove
drive-offline-warning = You are offline. Some files will be read only.
drive-sort-by = Sort by
drive-retry-sync = Retry sync
drive-upgrade-prompt = Upgrade for access to more notebooks, workflows, shared sessions, and AI credits.
drive-restricted-objects = Shared objects have been restricted due to a subscription payment issue.
drive-update-payment = Please update your payment information to restore access.
drive-contact-support = Please contact support@warp.dev to restore access.
drive-contact-admin = Please contact a team admin to restore access.
drive-untitled = Untitled
drive-empty-trash = Empty trash
drive-collaborate = Collaborate with { $count } of your teammates already on Warp.
drive-trash-label = TRASH
drive-create-team = Create team
drive-or = Or
drive-trash = Trash
drive-warp-drive = Warp Drive
drive-sign-up-prompt = Sign up for free to increase your storage limit and unlock more features.
drive-sign-up = Sign up
drive-amount-max = { $amount }/{ $max_amount }
drive-out-of-objects = You've run out of { $object_type }s on your plan.
drive-compare-plans = Compare plans
drive-manage-billing = Manage billing

## -- Drive context menu items ------------------------------------------------

drive-menu-rename = Rename
drive-menu-copy-link = Copy link
drive-menu-share = Share
drive-menu-collapse-all = Collapse all
drive-menu-retry = Retry
drive-menu-revert-to-server = Revert to server
drive-menu-attach-session = Attach to active session
drive-menu-copy-id = Copy id
drive-menu-copy-variables = Copy variables
drive-menu-load-in-subshell = Load in subshell
drive-menu-open-desktop = Open on Desktop
drive-menu-duplicate = Duplicate
drive-menu-export = Export
drive-menu-open = Open
drive-menu-edit = Edit
drive-menu-trash = Trash
drive-menu-restore = Restore
drive-menu-delete-forever = Delete forever
drive-menu-move-to = Move to { $space_name }

## -- Drive object types (lowercase, for sentences) ---------------------------

drive-object-notebook = notebook
drive-object-workflow = workflow
drive-object-folder = folder
drive-object-env-var-collection = env var collection
drive-object-prompt = prompt
drive-object-ai-fact = ai fact
drive-object-ai-fact-collection = ai fact collection
drive-object-mcp-server = mcp server
drive-object-mcp-server-collection = mcp server collection

## -- Export ------------------------------------------------------------------

drive-open-in-finder = Open in Finder
drive-open-in-folder = Open in folder
drive-export-finished = Finished exporting objects
drive-export-failed = Failed to export { $name }
drive-export-failed-fallback = Export failed
drive-exported = Exported { $name }
drive-exported-fallback = Exported object

## -- Sharing -----------------------------------------------------------------

drive-sharing-no-access = No access
drive-sharing-invite = Invite
drive-sharing-already-shared = Already shared with { $email }
drive-sharing-invalid-address = Invalid address: { $email }
drive-sharing-who-has-access = Who has access
drive-sharing-live-session = Live session started at { $time } on { $date }
drive-sharing-only-invited = Only people invited
drive-sharing-anyone-link = Anyone with the link
drive-sharing-only-invited-teammates = Only invited teammates
drive-sharing-teammates-link = Teammates with the link
drive-sharing-must-have-full = You must have full access to manage permissions. You have
drive-sharing-access-suffix =  access.
drive-sharing-can-view = Can view
drive-sharing-can-edit = Can edit
drive-sharing-full-access = Full access
drive-sharing-copied-link = Copied link to { $object_name }.

## -- Cloud action confirmation ------------------------------------------------

drive-cancel = Cancel
drive-confirm-delete-team = Are you sure you want to delete this team?
drive-confirm-leave-team = Are you sure you want to leave this team?
drive-delete-team-description = Deleting this team will permanently delete it and all of its related content, including billing information or credits. You will not be able to restore them.
drive-leave-team-description = You will need to be reinvited in order to rejoin.
drive-yes-delete = Yes, delete
drive-yes-leave = Yes, leave

## -- Cloud object naming dialog -----------------------------------------------

drive-notebook-name = Notebook name
drive-folder-name = Folder name
drive-collection-name = Collection name
drive-create = Create
drive-rename = Rename

## -- Empty trash confirmation ------------------------------------------------

drive-confirm-empty-trash = Are you sure you want to empty the trash?
drive-cannot-undo = This action cannot be undone.
drive-yes-empty-trash = Yes, empty trash

## -- Import ------------------------------------------------------------------

drive-import-title = Import
drive-import-close = Close
drive-import-cancel = Cancel
drive-import-file-types = md, yaml, yml
drive-import-preparing = Preparing...
drive-import-choose-files = Choose files...
drive-import-parse-failed = Failed to parse file: { $error }

## -- Workflows ----------------------------------------------------------------

drive-workflow-untitled = Untitled workflow
drive-workflow-description-placeholder = Add a description
drive-workflow-command-placeholder = echo "Hello {{your_name}}" # insert arguments with curly braces\n# enter a single-line command or an entire shell script
drive-workflow-new-argument = New argument
drive-workflow-argument-description = Description
drive-workflow-argument-default = Default value (optional)
drive-workflow-save = Save workflow
drive-workflow-autofill = Autofill
drive-workflow-loading = Loading
drive-workflow-unsaved = You have unsaved changes.
drive-workflow-keep-editing = Keep editing
drive-workflow-discard = Discard changes
drive-workflow-copy-text = Copy workflow text
drive-workflow-trash = Trash
drive-workflow-ai-tooltip = Generate a title, descriptions, or parameters with Warp AI
drive-workflow-bad-command = Failed to generate metadata. Please try again with a different command.
drive-workflow-ai-provider-error = Something went wrong. Please try again.
drive-workflow-rate-limited = Looks like you're out of AI credits. Please try again later.
drive-workflow-out-of-credits-admin = Looks like you're out of AI credits. Contact a team admin to upgrade for more credits.
drive-enum-static = Static
drive-enum-dynamic = Dynamic

## -- Workflow enum creation ---------------------------------------------------

drive-enum-close = Close
drive-enum-new = New enum
drive-enum-edit = Edit enum
drive-enum-name = Name
drive-enum-create = Create
drive-enum-save = Save
drive-enum-variant = Variant
drive-enum-variants = Variants
drive-enum-command-placeholder = # Enter a shell command that generates variants, delimited by newlines.\n\ngit branch -a

## -- Additional model type names -----------------------------------------------

## -- Cloud action confirmation dialog (additional) ------------------------------

## -- Empty trash confirmation dialog (additional) -------------------------------

## -- Export (additional) --------------------------------------------------------

## -- Sharing dialog (additional) ------------------------------------------------

drive-sharing-emails-label = Emails
drive-sharing-invite-label = Invite
drive-sharing-must-have-full-access = You must have full access to manage permissions. You have
drive-sharing-team-auto-permissions = Team objects automatically grant full permissions to team members
drive-sharing-owner-full-permissions = Owners always have full permissions on their objects

## -- Export (additional) ------------------------------------------------

drive-export-failed-named = Failed to export "{ $name }".
drive-exported-named = Exported "{ $name }".

## -- Drive index additional strings ----------------------------------------------

drive-syncing-warp-drive = Syncing Warp Drive
drive-copy-prompt = Copy prompt
drive-copy-workflow-text = Copy workflow text
drive-share-object = Share Object
drive-open-team-settings = Open Team Settings
drive-view-plans = View Plans
## -- Sort order menu text -------------------------------------------------------

drive-sort-last-updated = Last updated
drive-sort-last-trashed = Last trashed
drive-sort-a-to-z = A to Z
drive-sort-z-to-a = Z to A
drive-sort-type = Type

## -- Additional button labels ----------------------------------------------------

drive-restore = Restore

## -- Workflow view menu items ---------------------------------------------------

drive-copy-link = Copy link
drive-open-on-desktop = Open on Desktop
drive-duplicate = Duplicate
drive-other = Other
drive-restore-workflow-tooltip = Restore workflow from trash
drive-notebooks = Notebooks
drive-workflows = Workflows
drive-folders = Folders
drive-rules = Rules
drive-menu-unshare = Unshare
drive-deleting-label = Deleting…
drive-executed-on = Executed on: { $time }
drive-export-finished-toast = Finished exporting objects
drive-sharing-copied-link-toast = Copied link to { $object_name }.

## -- Additional sharing dialog strings ----------------------------------------------

drive-who-has-access = Who has access

## -- Additional workflow view strings ------------------------------------------------

drive-workflow-fill-arguments = Fill out the arguments in this workflow and copy it to run in your terminal session
drive-workflow-env-variables = Environment variables

## -- Export failure strings --

drive-failed-export = Export failed
drive-failed-export-name = Failed to export { $name }

## -- Drive item additional strings -------------------------------------------

drive-from-owner = From { $owner }
drive-unknown-user = unknown user
drive-unknown-team = unknown team

## -- Drive index additional strings (continued) -------------------------------

drive-env-vars-type = Environment Variables
drive-agent-workflows-type = Agent Workflows
drive-ai-fact-type = AI Fact
drive-mcp-server-type = MCP Server
drive-mcp-servers-type = MCP Servers
drive-trash-warning = Items in the trash will be deleted forever after 30 days.

## -- Sharing inheritance strings -----------------------------------------------

drive-inherited-from = Inherited from { $parent }
drive-edit-inherited-tooltip = Edit inherited permissions on the parent folder
drive-inherited-permission = Inherited permission
drive-cannot-edit-inherited = Cannot edit inherited permissions
drive-anyone-with-link = Anyone with the link

## -- Team section strings -----------------------------------------------------

drive-collaborate-with-teammates = Collaborate with { $count } of your teammates already on Warp.
drive-team-space-zero-state = Drag or move a personal workflow or notebook here to share it with your team.
drive-create-team = Create team
drive-view-teams-to-join = View teams to join
drive-view-team-to-join = View team to join
drive-learn-file-support = Learn about file support and formatting
drive-failed-upload-file = Failed to upload file to server
drive-failed-upload-folder = Failed to upload folder to server

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

