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

## -- Team section strings --

drive-collaborate-with-teammates = Collaborate with { $count } of your teammates already on Warp.
drive-team-space-zero-state = Drag or move a personal workflow or notebook here to share it with your team.
drive-create-team = Create team
drive-view-teams-to-join = View teams to join
drive-view-team-to-join = View team to join
drive-learn-file-support = Learn about file support and formatting
drive-failed-upload-file = Failed to upload file to server
drive-failed-upload-folder = Failed to upload folder to server

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

drive-drive-amount-max = { drive-amount-max }
drive-drive-cancel = { drive-cancel }
drive-drive-cannot-undo = { drive-cannot-undo }
drive-drive-collection-name = { drive-collection-name }
drive-drive-confirm-delete-team = { drive-confirm-delete-team }
drive-drive-confirm-empty-trash = { drive-confirm-empty-trash }
drive-drive-confirm-leave-team = { drive-confirm-leave-team }
drive-drive-create = { drive-create }
drive-drive-delete-team-description = { drive-delete-team-description }
drive-drive-contact-admin = { drive-contact-admin }
drive-drive-contact-support = { drive-contact-support }
drive-drive-copy-prompt = { drive-copy-prompt }
drive-drive-copy-workflow-text = { drive-copy-workflow-text }
drive-drive-description = { drive-description }
drive-drive-empty-trash = { drive-empty-trash }
drive-drive-or = { drive-or }
drive-drive-enum-close = { drive-enum-close }
drive-drive-enum-command-placeholder = { drive-enum-command-placeholder }
drive-drive-enum-create = { drive-enum-create }
drive-drive-enum-dynamic = { drive-enum-dynamic }
drive-drive-enum-edit = { drive-enum-edit }
drive-drive-enum-name = { drive-enum-name }
drive-drive-enum-new = { drive-enum-new }
drive-drive-enum-save = { drive-enum-save }
drive-drive-enum-static = { drive-enum-static }
drive-drive-enum-variant = { drive-enum-variant }
drive-drive-enum-variants = { drive-enum-variants }
drive-drive-import = { drive-import }
drive-drive-folder-name = { drive-folder-name }
drive-drive-folders = { drive-folders }
drive-drive-import-cancel = { drive-import-cancel }
drive-drive-import-close = { drive-import-close }
drive-drive-import-title = { drive-import-title }
drive-drive-leave-team-description = { drive-leave-team-description }
drive-drive-notebook-name = { drive-notebook-name }
drive-drive-notebooks = { drive-notebooks }
drive-drive-rename = { drive-rename }
drive-drive-yes-delete = { drive-yes-delete }
drive-drive-yes-empty-trash = { drive-yes-empty-trash }
drive-drive-yes-leave = { drive-yes-leave }
drive-drive-menu-attach-session = { drive-menu-attach-session }
drive-drive-menu-collapse-all = { drive-menu-collapse-all }
drive-drive-menu-copy-id = { drive-menu-copy-id }
drive-drive-menu-copy-link = { drive-menu-copy-link }
drive-drive-menu-copy-variables = { drive-menu-copy-variables }
drive-drive-menu-delete-forever = { drive-menu-delete-forever }
drive-drive-menu-duplicate = { drive-menu-duplicate }
drive-drive-menu-edit = { drive-menu-edit }
drive-drive-menu-export = { drive-menu-export }
drive-drive-menu-load-in-subshell = { drive-menu-load-in-subshell }
drive-drive-menu-move-to = { drive-menu-move-to }
drive-drive-menu-open = { drive-menu-open }
drive-drive-menu-open-desktop = { drive-menu-open-desktop }
drive-drive-menu-rename = { drive-menu-rename }
drive-drive-menu-restore = { drive-menu-restore }
drive-drive-menu-retry = { drive-menu-retry }
drive-drive-menu-revert-to-server = { drive-menu-revert-to-server }
drive-drive-menu-share = { drive-menu-share }
drive-drive-menu-trash = { drive-menu-trash }
drive-drive-new-env-vars = { drive-new-env-vars }
drive-drive-new-folder = { drive-new-folder }
drive-drive-new-notebook = { drive-new-notebook }
drive-drive-new-prompt = { drive-new-prompt }
drive-drive-new-workflow = { drive-new-workflow }
drive-drive-object-env-var-collection = { drive-object-env-var-collection }
drive-drive-object-folder = { drive-object-folder }
drive-drive-object-notebook = { drive-object-notebook }
drive-drive-object-workflow = { drive-object-workflow }
drive-drive-offline-warning = { drive-offline-warning }
drive-drive-out-of-objects = { drive-out-of-objects }
drive-drive-remove = { drive-remove }
drive-drive-rules = { drive-rules }
drive-drive-restore = { drive-restore }
drive-drive-restricted-objects = { drive-restricted-objects }
drive-drive-retry-sync = { drive-retry-sync }
drive-drive-sharing-anyone-link = { drive-sharing-anyone-link }
drive-drive-sharing-only-invited = { drive-sharing-only-invited }
drive-drive-sharing-only-invited-teammates = { drive-sharing-only-invited-teammates }
drive-drive-sharing-teammates-link = { drive-sharing-teammates-link }
drive-drive-sort-a-to-z = { drive-sort-a-to-z }
drive-drive-sort-by = { drive-sort-by }
drive-drive-sort-last-trashed = { drive-sort-last-trashed }
drive-drive-sort-last-updated = { drive-sort-last-updated }
drive-drive-sort-type = { drive-sort-type }
drive-drive-sort-z-to-a = { drive-sort-z-to-a }
drive-drive-syncing-warp-drive = { drive-syncing-warp-drive }
drive-drive-trash-label = { drive-trash-label }
drive-drive-type-env-vars = { drive-type-env-vars }
drive-drive-type-folder = { drive-type-folder }
drive-drive-type-notebook = { drive-type-notebook }
drive-drive-type-prompt = { drive-type-prompt }
drive-drive-type-workflow = { drive-type-workflow }
drive-drive-untitled = { drive-untitled }
drive-drive-update-payment = { drive-update-payment }
drive-drive-upgrade-prompt = { drive-upgrade-prompt }
drive-drive-warp-drive = { drive-warp-drive }
drive-drive-workflows = { drive-workflows }
drive-drive-workflow-ai-provider-error = { drive-workflow-ai-provider-error }
drive-drive-workflow-ai-tooltip = { drive-workflow-ai-tooltip }
drive-drive-workflow-argument-default = { drive-workflow-argument-default }
drive-drive-workflow-argument-description = { drive-workflow-argument-description }
drive-drive-workflow-autofill = { drive-workflow-autofill }
drive-drive-workflow-bad-command = { drive-workflow-bad-command }
drive-drive-workflow-command-placeholder = { drive-workflow-command-placeholder }
drive-drive-workflow-copy-text = { drive-workflow-copy-text }
drive-drive-workflow-description-placeholder = { drive-workflow-description-placeholder }
drive-drive-workflow-discard = { drive-workflow-discard }
drive-drive-workflow-keep-editing = { drive-workflow-keep-editing }
drive-drive-workflow-loading = { drive-workflow-loading }
drive-drive-workflow-new-argument = { drive-workflow-new-argument }
drive-drive-workflow-out-of-credits-admin = { drive-workflow-out-of-credits-admin }
drive-drive-workflow-rate-limited = { drive-workflow-rate-limited }
drive-drive-workflow-save = { drive-workflow-save }
drive-drive-workflow-trash = { drive-workflow-trash }
drive-drive-workflow-unsaved = { drive-workflow-unsaved }
drive-drive-workflow-untitled = { drive-workflow-untitled }
drive-drive-who-has-access = { drive-who-has-access }
drive-drive-workflow-env-variables = { drive-workflow-env-variables }
drive-drive-failed-export = { drive-failed-export }
drive-drive-failed-export-name = Failed to export { $name }
drive-drive-collaborate-with-teammates = Collaborate with { $count } of your teammates already on Warp.
drive-drive-team-space-zero-state = { drive-team-space-zero-state }
drive-drive-create-team = { drive-create-team }
drive-drive-view-teams-to-join = { drive-view-teams-to-join }
drive-drive-view-team-to-join = { drive-view-team-to-join }
drive-drive-workflow-fill-arguments = { drive-workflow-fill-arguments }
drive-drive-sharing-no-access = { drive-sharing-no-access }
drive-drive-sharing-must-have-full = { drive-sharing-must-have-full }
drive-drive-sharing-access-suffix = { drive-sharing-access-suffix }
drive-drive-sharing-team-auto-permissions = { drive-sharing-team-auto-permissions }
drive-drive-sharing-owner-full-permissions = { drive-sharing-owner-full-permissions }
drive-drive-sharing-emails-label = { drive-sharing-emails-label }
drive-drive-sharing-invite-label = { drive-sharing-invite-label }
drive-drive-sharing-already-shared = { drive-sharing-already-shared }
drive-drive-sharing-invalid-address = { drive-sharing-invalid-address }
drive-drive-sharing-live-session = { drive-sharing-live-session }
drive-drive-sharing-can-view = { drive-sharing-can-view }
drive-drive-sharing-can-edit = { drive-sharing-can-edit }
drive-drive-sharing-full-access = { drive-sharing-full-access }
drive-drive-copy-link = { drive-copy-link }
drive-drive-learn-file-support = { drive-learn-file-support }
drive-drive-failed-upload-file = { drive-failed-upload-file }
drive-drive-failed-upload-folder = { drive-failed-upload-folder }
