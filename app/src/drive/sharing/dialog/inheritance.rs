//! Support for displaying inherited ACLs.

use warp_core::ui::appearance::Appearance;
use warpui::{
    elements::{CrossAxisAlignment, Flex, ParentElement as _},
    ui_components::components::UiComponent as _,
    AppContext, Element, SingletonEntity as _,
};

use super::style;
use crate::{
    cloud_object::{model::persistence::CloudModel, ServerObjectContainer},
    server::ids::SyncId,
};

/// UI state for inherited permissions.
pub struct InheritanceState {
    // The server API allows inheriting ACLs from drives as well, but we currently don't use this.
    source_folder: SyncId,
}

impl InheritanceState {
    /// Construct inheritance state for an object and the source of its possibly-inherited ACL.
    pub fn from_object_and_source(
        object_id: &SyncId,
        source: Option<&ServerObjectContainer>,
    ) -> Option<InheritanceState> {
        let source_folder = match source? {
            ServerObjectContainer::Folder { folder_uid } => SyncId::ServerId(*folder_uid),
            _ => return None,
        };
        // ACLs _on_ folders may include themselves as sources.
        if &source_folder == object_id {
            return None;
        }

        Some(InheritanceState {
            source_folder,
        })
    }

    pub fn details(&self, appearance: &Appearance, app: &AppContext) -> InheritanceDetails {
        let folder_name = CloudModel::as_ref(app)
            .get_folder(&self.source_folder)
            .map(|folder| &folder.model().name);

        match folder_name {
            Some(folder_name) => {
                let inherited_label = style::detail_text(
                    crate::tr!("drive", "drive-inherited-from", parent = folder_name.as_str()),
                    appearance,
                )
                .build()
                .finish();

                InheritanceDetails {
                    source_label: Flex::row()
                        .with_child(inherited_label)
                        .with_cross_axis_alignment(CrossAxisAlignment::Center)
                        .finish(),
                    tooltip_text: crate::tr!("drive", "drive-edit-inherited-tooltip").leak(),
                }
            }
            None => InheritanceDetails {
                source_label: style::detail_text(
                    crate::tr!("drive", "drive-inherited-permission"),
                    appearance,
                )
                .build()
                .finish(),
                tooltip_text: crate::tr!("drive", "drive-cannot-edit-inherited").leak(),
            },
        }
    }
}

/// Information to display about inherited permissions.
pub struct InheritanceDetails {
    /// A label element describing where an ACL was inherited from.
    pub source_label: Box<dyn Element>,
    /// A tooltip to show on disabled permission-editing controls.
    pub tooltip_text: &'static str,
}
