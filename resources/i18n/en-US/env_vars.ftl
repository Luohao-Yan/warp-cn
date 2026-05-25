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

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID

env-vars-env-vars-secret-command = { env-vars-secret-command }
env-vars-env-vars-command-placeholder = { env-vars-command-placeholder }
env-vars-env-vars-variables-label = { env-vars-variables-label }
env-vars-env-vars-command-label = { env-vars-command-label }
env-vars-env-vars-clear-secret = { env-vars-clear-secret }
env-vars-env-vars-title-label = { env-vars-title-label }
env-vars-env-vars-description-label = { env-vars-description-label }
env-vars-env-vars-value-label = { env-vars-value-label }
env-vars-env-vars-variable-label = { env-vars-variable-label }
env-vars-env-vars-title-placeholder = { env-vars-title-placeholder }
env-vars-env-vars-description-placeholder = { env-vars-description-placeholder }
env-vars-env-vars-load-label = { env-vars-load-label }
env-vars-env-vars-education-text = { env-vars-education-text }
env-vars-env-vars-trash-banner-deleted = { env-vars-trash-banner-deleted }
env-vars-env-vars-trash-banner-moved = { env-vars-trash-banner-moved }
env-vars-env-vars-restore-tooltip = { env-vars-restore-tooltip }
env-vars-env-vars-unsaved-changes = { env-vars-unsaved-changes }
env-vars-env-vars-keep-editing = { env-vars-keep-editing }
env-vars-env-vars-discard-changes = { env-vars-discard-changes }
env-vars-env-vars-validation-enterprise = { env-vars-validation-enterprise }
env-vars-env-vars-validation-user = { env-vars-validation-user }
env-vars-env-vars-invoke-error = { env-vars-invoke-error }
env-vars-env-vars-close-env-var-collection = { env-vars-close-env-var-collection }
