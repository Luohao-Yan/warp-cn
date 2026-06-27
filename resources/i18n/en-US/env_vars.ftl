# =============================================================================
# env_vars.ftl — Environment variable collection / secret command strings
# =============================================================================
# Message IDs: env-vars-{id}
# Used in app/src/env_vars/*.rs
# =============================================================================

## -- Secret command dialog ----------------------------------------------------

env-vars-secret-command = Secret command
env-vars-command-placeholder = Command
env-vars-variables-label = Variables
env-vars-command-label = Command
env-vars-clear-secret = Clear secret

## -- Labels and placeholders ---------------------------------------------------

env-vars-title-label = Title
env-vars-description-label = Description
env-vars-value-label = Value
env-vars-variable-label = Variable
env-vars-title-placeholder = Add a title
env-vars-description-placeholder = Add a description
env-vars-load-label = Load

## -- Education text -----------------------------------------------------------

env-vars-education-text = Add secret or command. Warp never stores external secrets

## -- Trash banner -------------------------------------------------------------

env-vars-trash-banner-deleted = You no longer have access to these environment variables
env-vars-trash-banner-moved = Environment variables were moved to trash
env-vars-restore-tooltip = Restore environment variables from trash

## -- Unsaved changes dialog ---------------------------------------------------

env-vars-unsaved-changes = You have unsaved changes.
env-vars-keep-editing = Keep editing
env-vars-discard-changes = Discard changes

## -- Validation errors --------------------------------------------------------

env-vars-validation-enterprise = This environment variable cannot be created due to conflicts with your enterprise's secret redaction settings. Contact a team admin for details.
env-vars-validation-user = This environment variable cannot be created due to conflicts with your secret redaction settings. Save the secret as an environment variable (in your shell config or a .env file), or update your secret redaction settings in Settings > Privacy.

## -- Error toasts -------------------------------------------------------------

env-vars-invoke-error = An error occurred while trying to invoke the env var
env-vars-close-env-var-collection = Close Env Var Collection

## -- Type label ----------------------------------------------------------------

env-vars-type-label = Environment variables

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID

## -- Environment form strings --------------------------------------------------

env-search-placeholder = Search environments...
env-name-placeholder = Environment name
env-name-placeholder-short = e.g., dev-env
env-description-placeholder = e.g., this environment is for all front end focused agents
env-repos-placeholder-authed = Enter repos (owner/repo format)
env-repos-placeholder-authed-browse = Browse GitHub repos...
env-repos-placeholder-unauthed = Paste repo URL(s)
env-docker-image-label = Docker image reference
env-docker-image-label-short = Docker image
env-docker-image-placeholder = e.g. python:3.11, node:20-alpine
env-docker-image-placeholder-short = e.g., node:20-alpine
env-setup-commands-label = Setup command(s)
env-setup-commands-placeholder = e.g. cd my-repo && pip install -r requirements.txt
env-setup-commands-placeholder-short = e.g., node start
env-setup-commands-helper = Setup commands run independently. Each command runs from the workspace root (/workspace). If a command depends on the previous one, combine them with &&.
env-setup-commands-helper-short = Press Enter or click the submit button to add each command.
env-save-environment = Save environment
env-share-with-team = Share with team
env-edit-title = Edit environment
env-create-title = Create environment
env-cancel = Cancel
env-personal-warning = Personal environments cannot be used with external integrations or team API keys. For the best experience, use shared environments.
env-create-not-logged-in = Not logged in
env-create-title = Create environment
env-description-label = Description
env-repos-label = Repo(s)
env-auth-with-github = Auth with GitHub
env-github-repos-load-error = Couldn't load GitHub repos. You can paste repo URL(s), or retry.
env-github-repos-failed = Failed to load GitHub repositories
env-repo-helper-text = Type owner/repo and press Enter to add, or select from dropdown.
env-missing-repo = Missing a repo?
env-configure-access-github = Configure access on GitHub
env-no-repos-found = No repositories found
env-generating = Generating…
env-suggest-image = Suggest image
env-suggest-image-tooltip = Warp will suggest a Docker image based on your selected repositories.
env-open-image-tooltip = Open image at { $docker_hub_url }
env-name-label = Name
env-authenticate = Authenticate
env-suggest-image-auth-warning = You need to grant access to your GitHub repos to suggest a Docker image

