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

cloud_object-cloud-object-saved-to = { cloud-object-saved-to }
cloud_object-cloud-object-updated = { cloud-object-updated }
cloud_object-cloud-object-moved-to = { cloud-object-moved-to }
cloud_object-cloud-object-trashed = { cloud-object-trashed }
cloud_object-cloud-object-restored = { cloud-object-restored }
cloud_object-cloud-object-left-name = { cloud-object-left-name }
cloud_object-cloud-object-failed-create = { cloud-object-failed-create }
cloud_object-cloud-object-failed-update = { cloud-object-failed-update }
cloud_object-cloud-object-failed-move = { cloud-object-failed-move }
cloud_object-cloud-object-failed-trash = { cloud-object-failed-trash }
cloud_object-cloud-object-failed-restore = { cloud-object-failed-restore }
cloud_object-cloud-object-failed-delete = { cloud-object-failed-delete }
cloud_object-cloud-object-failed-leave = { cloud-object-failed-leave }
cloud_object-cloud-object-failed-start-editing = { cloud-object-failed-start-editing }
cloud_object-cloud-object-workflow-save-conflict = { cloud-object-workflow-save-conflict }
cloud_object-cloud-object-env-vars-save-conflict = { cloud-object-env-vars-save-conflict }
cloud_object-cloud-object-rule-save-conflict = { cloud-object-rule-save-conflict }
cloud_object-cloud-object-permissions-updated = { cloud-object-permissions-updated }
cloud_object-cloud-object-failed-update-permissions = { cloud-object-failed-update-permissions }
cloud_object-cloud-object-one-object = { cloud-object-one-object }
cloud_object-cloud-object-count-objects = { cloud-object-count-objects }
cloud_object-cloud-object-deleted-forever = { cloud-object-deleted-forever }
cloud_object-cloud-object-trash-emptied = { cloud-object-trash-emptied }
cloud_object-cloud-object-failed-empty-trash = { cloud-object-failed-empty-trash }
cloud_object-cloud-object-no-objects-in-trash = { cloud-object-no-objects-in-trash }
cloud_object-cloud-object-edited-time-ago = { cloud-object-edited-time-ago }
cloud_object-cloud-object-name-edited-time-ago = { cloud-object-name-edited-time-ago }
cloud_object-cloud-object-last-edited-by = { cloud-object-last-edited-by }
cloud_object-cloud-object-one-day-until-permanent-deletion = { cloud-object-one-day-until-permanent-deletion }
cloud_object-cloud-object-days-until-permanent-deletion = { cloud-object-days-until-permanent-deletion }
cloud_object-cloud-object-space-personal = { cloud-object-space-personal }
cloud_object-cloud-object-space-team = { cloud-object-space-team }
cloud_object-cloud-object-space-shared = { cloud-object-space-shared }
cloud_object-cloud-object-action-run-singular = { cloud-object-action-run-singular }
cloud_object-cloud-object-action-run-plural = { cloud-object-action-run-plural }
cloud_object-cloud-object-action-summary-zero-year = { cloud-object-action-summary-zero-year }
cloud_object-cloud-object-action-summary-day = { cloud-object-action-summary-day }
cloud_object-cloud-object-action-summary-week = { cloud-object-action-summary-week }
cloud_object-cloud-object-action-summary-month = { cloud-object-action-summary-month }
cloud_object-cloud-object-action-summary-year = { cloud-object-action-summary-year }
