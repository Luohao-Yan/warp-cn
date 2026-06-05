use warpui::AppContext;

use crate::server::cloud_objects::update_manager::{
    InitiatedBy, ObjectOperation, OperationSuccessType,
};

use super::{CloudObject, GenericStringObjectFormat, JsonObjectType, ObjectType};

pub struct CloudObjectToastMessage;

impl CloudObjectToastMessage {
    pub fn toast_message(
        object: &dyn CloudObject,
        operation: &ObjectOperation,
        success_type: &OperationSuccessType,
        app: &AppContext,
    ) -> Option<String> {
        let object_name = object.model_type_name().to_owned();
        let object_name_lowercase = object_name.to_ascii_lowercase();

        match (object.object_type(), operation, success_type) {
            // We should only show toasts for creates initiated by the user, not by the system
            (_, ObjectOperation::Create { initiated_by: InitiatedBy::User }, OperationSuccessType::Success) => {
                let containing_object_name = object.containing_object_name(app);
                Some(crate::tr!("cloud_object", "saved-to", object_name = object_name, containing_object_name = containing_object_name))
            }
            // notebooks intentionally do not have an update message, as they are updated
            // as the user types and so toasts would be VERY noisy
            (
                ObjectType::Notebook,
                ObjectOperation::Update,
                OperationSuccessType::Success,
            ) => None,
            (_, ObjectOperation::Update, OperationSuccessType::Success) => {
                Some(crate::tr!("cloud_object", "updated", object_name = object_name))
            }
            (_, ObjectOperation::MoveToFolder, OperationSuccessType::Success) | (_, ObjectOperation::MoveToDrive, OperationSuccessType::Success) => {
                let containing_object_name = object.containing_object_name(app);
                Some(crate::tr!("cloud_object", "moved-to", object_name = object_name, containing_object_name = containing_object_name))
            }
            (_, ObjectOperation::Trash, OperationSuccessType::Success) => {
                Some(crate::tr!("cloud_object", "trashed", object_name = object_name))
            }
            (_, ObjectOperation::Untrash, OperationSuccessType::Success) => {
                Some(crate::tr!("cloud_object", "restored", object_name = object_name))
            }
            (_, ObjectOperation::Leave, OperationSuccessType::Success) => {
                Some(crate::tr!("cloud_object", "left-name", object_name = object_name))
            }
            (_, ObjectOperation::Create { initiated_by: InitiatedBy::User }, OperationSuccessType::Failure) => {
                Some(crate::tr!("cloud_object", "failed-create", object_name = object_name_lowercase))
            }
            (_, ObjectOperation::Create { initiated_by: InitiatedBy::User }, OperationSuccessType::Denied(message)) => {
                Some(message.to_string())
            }
            (_, ObjectOperation::Update, OperationSuccessType::Failure) => {
                Some(crate::tr!("cloud_object", "failed-update", object_name = object_name_lowercase))
            }
            (_, ObjectOperation::MoveToFolder, OperationSuccessType::Failure) | (_, ObjectOperation::MoveToDrive, OperationSuccessType::Failure) => {
                Some(crate::tr!("cloud_object", "failed-move", object_name = object_name_lowercase))
            }
            (_, ObjectOperation::Trash, OperationSuccessType::Failure) => {
                Some(crate::tr!("cloud_object", "failed-trash", object_name = object_name_lowercase))
            }
            (_, ObjectOperation::Untrash, OperationSuccessType::Failure) => {
                Some(crate::tr!("cloud_object", "failed-restore", object_name = object_name_lowercase))
            }
            // We should only show deletion failure toasts for user-initiated deletions.
            (_, ObjectOperation::Delete { initiated_by: InitiatedBy::User }, OperationSuccessType::Failure) => {
                Some(crate::tr!("cloud_object", "failed-delete", object_name = object_name_lowercase))
            }
            (_, ObjectOperation::Leave, OperationSuccessType::Failure) => {
                Some(crate::tr!("cloud_object", "failed-leave", object_name = object_name))
            }
            (
                ObjectType::Workflow,
                ObjectOperation::Update,
                OperationSuccessType::Rejection,
            ) => {
                Some(crate::tr!("cloud_object", "workflow-save-conflict"))
            }
            (
                ObjectType::GenericStringObject(GenericStringObjectFormat::Json(JsonObjectType::EnvVarCollection)),
                ObjectOperation::Update,
                OperationSuccessType::Rejection,
            ) => {
                Some(crate::tr!("cloud_object", "env-vars-save-conflict"))
            }
            (
                ObjectType::GenericStringObject(GenericStringObjectFormat::Json(JsonObjectType::AIFact)),
                ObjectOperation::Update,
                OperationSuccessType::Rejection,
            ) => {
                Some(crate::tr!("cloud_object", "rule-save-conflict"))
            }
            (_, ObjectOperation::TakeEditAccess, OperationSuccessType::Failure) => {
                Some(crate::tr!("cloud_object", "failed-start-editing", object_name = object_name_lowercase))
            }
            (_, ObjectOperation::UpdatePermissions, OperationSuccessType::Success) => {
                Some(crate::tr!("cloud_object", "permissions-updated", object_name = object_name_lowercase))
            }
            (_, ObjectOperation::UpdatePermissions, OperationSuccessType::Failure) => {
                Some(crate::tr!("cloud_object", "failed-update-permissions", object_name = object_name_lowercase))
            }
            _ => None,
        }
    }

    pub fn toast_deletion_confirm_message(
        num_objects: i32,
        operation: &ObjectOperation,
        success_type: &OperationSuccessType,
    ) -> Option<String> {
        let count_objects_message = match num_objects {
            1 => crate::tr!("cloud_object", "one-object"),
            _ => crate::tr!("cloud_object", "count-objects", count = num_objects as i64),
        };
        match (operation, success_type) {
            // We should only show deletion failure toasts for user-initiated deletions.
            (
                ObjectOperation::Delete {
                    initiated_by: InitiatedBy::User,
                },
                OperationSuccessType::Success,
            ) => Some(crate::tr!("cloud_object", "deleted-forever", count_objects_message = count_objects_message)),
            (ObjectOperation::EmptyTrash, OperationSuccessType::Success) => Some(crate::tr!("cloud_object", "trash-emptied", count_objects_message = count_objects_message)),
            (ObjectOperation::EmptyTrash, OperationSuccessType::Failure) => {
                Some(crate::tr!("cloud_object", "failed-empty-trash"))
            }
            (ObjectOperation::EmptyTrash, OperationSuccessType::Rejection) => {
                Some(crate::tr!("cloud_object", "no-objects-in-trash"))
            }
            _ => None,
        }
    }
}
