# =============================================================================
# cloud_object.ftl — Cloud object toast messages, metadata, and space names
# =============================================================================
# Message IDs: cloud_object-{id}
# Used in app/src/cloud_object/*.rs
# =============================================================================

## -- Toast messages (success) ------------------------------------------------

cloud-object-saved-to = { $object_name } saved to { $containing_object_name }
cloud-object-updated = { $object_name } updated
cloud-object-moved-to = { $object_name } moved to { $containing_object_name }
cloud-object-trashed = { $object_name } trashed
cloud-object-restored = { $object_name } restored
cloud-object-left-name = Left { $object_name }

## -- Toast messages (failure) ------------------------------------------------

cloud-object-failed-create = Failed to create { $object_name }
cloud-object-failed-update = Failed to update { $object_name }
cloud-object-failed-move = Failed to move { $object_name }
cloud-object-failed-trash = Failed to trash { $object_name }
cloud-object-failed-restore = Failed to restore { $object_name }
cloud-object-failed-delete = Failed to delete { $object_name }
cloud-object-failed-leave = Failed to leave { $object_name }
cloud-object-failed-start-editing = Failed to start editing { $object_name }

## -- Toast messages (rejection) ----------------------------------------------

cloud-object-workflow-save-conflict = This workflow could not be saved because changes were made while you were editing.
cloud-object-env-vars-save-conflict = Environment variables could not be saved because changes were made while you were editing.
cloud-object-rule-save-conflict = Rule could not be saved because changes were made while you were editing.

## -- Toast messages (permissions) --------------------------------------------

cloud-object-permissions-updated = Successfully updated permissions for { $object_name }
cloud-object-failed-update-permissions = Failed to update permissions for { $object_name }

## -- Toast messages (deletion confirmation) -----------------------------------

cloud-object-one-object = 1 object
cloud-object-count-objects = { $count } objects
cloud-object-deleted-forever = { $count_objects_message } deleted forever
cloud-object-trash-emptied = Trash emptied: { $count_objects_message } deleted forever
cloud-object-failed-empty-trash = Failed to empty trash
cloud-object-no-objects-in-trash = No objects in trash to empty

## -- Semantic editing history -------------------------------------------------

cloud-object-edited-time-ago = Edited { $time_ago }
cloud-object-name-edited-time-ago = { $name } edited { $time_ago }
cloud-object-last-edited-by = Last edited by { $name }

## -- Semantic permadeletion countdown -----------------------------------------

cloud-object-one-day-until-permanent-deletion = 1 day until permanent deletion
cloud-object-days-until-permanent-deletion = { $days_left } days until permanent deletion

## -- Space names --------------------------------------------------------------

cloud-object-space-personal = Personal
cloud-object-space-team = Team
cloud-object-space-shared = Shared with me

## -- Action history summary ---------------------------------------------------

cloud-object-action-run-singular = run
cloud-object-action-run-plural = runs
cloud-object-action-summary-zero-year = 0 runs in the last year
cloud-object-action-summary-day = { $count } { $action_word } in the last day
cloud-object-action-summary-week = { $count } { $action_word } in the last week
cloud-object-action-summary-month = { $count } { $action_word } in the last month
cloud-object-action-summary-year = { $count } { $action_word } in the last year

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

