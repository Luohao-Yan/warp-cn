use crate::appearance::Appearance;
use crate::drive::DriveObjectType;
use crate::ui_components::blended_colors;
use crate::workspaces::workspace::{BillingMetadata, CustomerType};
use std::sync::LazyLock;
use warpui::elements::{
    Container, CornerRadius, CrossAxisAlignment, Flex, MainAxisSize, MouseStateHandle,
    ParentElement, Radius, Shrinkable, Text,
};
use warpui::fonts::Weight;
use warpui::ui_components::button::ButtonVariant;
use warpui::ui_components::components::{Coords, UiComponent, UiComponentStyles};
use warpui::{
    platform::Cursor, AppContext, Element, Entity, SingletonEntity, TypedActionView, View,
    ViewContext,
};

const BUTTON_PADDING: f32 = 12.;
const BUTTON_FONT_SIZE: f32 = 14.;
const BUTTON_BORDER_RADIUS: f32 = 4.;

static DEFAULT_DELINQUENT_ADMIN_MODAL_SUBHEADER: LazyLock<String> = LazyLock::new(|| crate::tr!("billing", "billing-delinquent-admin-subheader"));
static DEFAULT_DELINQUENT_ADMIN_ENTERPRISE_MODAL_SUBHEADER: LazyLock<String> = LazyLock::new(|| crate::tr!("billing", "billing-delinquent-admin-enterprise-subheader"));
static DEFAULT_DELINQUENT_MODAL_SUBHEADER: LazyLock<String> = LazyLock::new(|| crate::tr!("billing", "billing-delinquent-subheader"));
static DEFAULT_ADMIN_PROSUMER_MODAL_SUBHEADER: LazyLock<String> = LazyLock::new(|| crate::tr!("billing", "billing-admin-prosumer-subheader"));
static DEFAULT_PROSUMER_MODAL_SUBHEADER: LazyLock<String> = LazyLock::new(|| crate::tr!("billing", "billing-prosumer-subheader"));
static DEFAULT_ADMIN_MODAL_SUBHEADER: LazyLock<String> = LazyLock::new(|| crate::tr!("billing", "billing-admin-subheader"));
static DEFAULT_MODAL_SUBHEADER: LazyLock<String> = LazyLock::new(|| crate::tr!("billing", "billing-default-subheader"));
static VIEW_PLANS_TEXT: LazyLock<String> = LazyLock::new(|| crate::tr!("billing", "billing-compare-plans"));
static MANAGE_BILLING_BUTTON_TEXT: LazyLock<String> = LazyLock::new(|| crate::tr!("billing", "billing-manage-billing"));

#[derive(Default)]
struct MouseStateHandles {
    button_mouse_state: MouseStateHandle,
}

pub struct SharedObjectsCreationDeniedBody {
    object_type: Option<DriveObjectType>,
    has_admin_permissions: bool,
    is_delinquent_due_to_payment_issue: bool,
    customer_type: CustomerType,
    button_mouse_states: MouseStateHandles,
}

#[derive(Debug, Clone, Copy)]
pub enum SharedObjectsCreationDeniedBodyAction {
    Upgrade,
    ManageBilling,
}

pub enum SharedObjectsCreationDeniedBodyEvent {
    Upgrade,
    ManageBilling,
}

impl SharedObjectsCreationDeniedBody {
    pub fn new(object_type: Option<DriveObjectType>) -> Self {
        Self {
            object_type,
            has_admin_permissions: false,
            is_delinquent_due_to_payment_issue: false,
            customer_type: Default::default(),
            button_mouse_states: Default::default(),
        }
    }

    pub fn update_state(
        &mut self,
        object_type: DriveObjectType,
        has_admin_permissions: bool,
        is_delinquent_due_to_payment_issue: bool,
        customer_type: CustomerType,
        ctx: &mut ViewContext<Self>,
    ) {
        self.object_type = Some(object_type);
        self.has_admin_permissions = has_admin_permissions;
        self.is_delinquent_due_to_payment_issue = is_delinquent_due_to_payment_issue;
        self.customer_type = customer_type;
        ctx.notify();
    }
}

impl Entity for SharedObjectsCreationDeniedBody {
    type Event = SharedObjectsCreationDeniedBodyEvent;
}

impl View for SharedObjectsCreationDeniedBody {
    fn ui_name() -> &'static str {
        "SharedObjectsCreationDeniedBody"
    }

    fn render(&self, app: &AppContext) -> Box<dyn Element> {
        let appearance = Appearance::as_ref(app);
        let is_stripe_paid_plan = BillingMetadata::is_stripe_paid_plan(self.customer_type);

        let sub_header = match self.object_type {
            Some(object_type) => {
                match (self.is_delinquent_due_to_payment_issue, self.has_admin_permissions, self.customer_type) {
                    (true, true, _) => {
                        if is_stripe_paid_plan {
                            crate::tr!("billing", "billing-delinquent-admin-dynamic-subheader", object_type = object_type.to_string())
                        } else {
                            crate::tr!("billing", "billing-delinquent-admin-enterprise-dynamic-subheader", object_type = object_type.to_string())
                        }
                    },
                    (true, false, _) => crate::tr!("billing", "billing-delinquent-dynamic-subheader", object_type = object_type.to_string()),
                    (false, true, CustomerType::Prosumer) => {
                        crate::tr!("billing", "billing-admin-prosumer-dynamic-subheader", object_type = object_type.to_string())
                    }
                    (false, false, CustomerType::Prosumer) => {
                        crate::tr!("billing", "billing-prosumer-dynamic-subheader", object_type = object_type.to_string())
                    }
                    (false, true, _) => crate::tr!("billing", "billing-admin-dynamic-subheader", object_type = object_type.to_string()),
                    (false, false, _) => crate::tr!("billing", "billing-default-dynamic-subheader", object_type = object_type.to_string()),
                }
            }
            _ => match (
                self.is_delinquent_due_to_payment_issue,
                self.has_admin_permissions,
                self.customer_type,
            ) {
                (true, true, _) => {
                    if is_stripe_paid_plan {
                        DEFAULT_DELINQUENT_ADMIN_MODAL_SUBHEADER.clone()
                    } else {
                        DEFAULT_DELINQUENT_ADMIN_ENTERPRISE_MODAL_SUBHEADER.clone()
                    }
                }
                (true, false, _) => DEFAULT_DELINQUENT_MODAL_SUBHEADER.clone(),
                (false, true, CustomerType::Prosumer) => {
                    DEFAULT_ADMIN_PROSUMER_MODAL_SUBHEADER.clone()
                }
                (false, false, CustomerType::Prosumer) => DEFAULT_PROSUMER_MODAL_SUBHEADER.clone(),
                (false, true, _) => DEFAULT_ADMIN_MODAL_SUBHEADER.clone(),
                (false, false, _) => DEFAULT_MODAL_SUBHEADER.clone(),
            },
        };

        let mut body = Flex::column()
            .with_cross_axis_alignment(CrossAxisAlignment::Stretch)
            .with_child(
                Container::new(
                    Text::new(sub_header, appearance.ui_font_family(), 14.)
                        .with_color(blended_colors::text_sub(
                            appearance.theme(),
                            appearance.theme().background(),
                        ))
                        .finish(),
                )
                .finish(),
            );

        // Only render an action button if:
        // 1. the team is delinquent + user is an admin + the team is on a stripe paid plan
        // OR
        // 2. if the team is not delinquent.
        // In the case where the team is delinquent and user is NOT an admin, or if the
        // team is delinquent but the team is not on a stripe paid plan, we don't render
        // any action button.
        if self.is_delinquent_due_to_payment_issue
            && self.has_admin_permissions
            && is_stripe_paid_plan
        {
            body.add_child(
                Container::new(
                    Flex::row()
                        .with_child(
                            Shrinkable::new(
                                0.5,
                                self.render_button(
                                    appearance,
                                    MANAGE_BILLING_BUTTON_TEXT.clone(),
                                    self.button_mouse_states.button_mouse_state.clone(),
                                    SharedObjectsCreationDeniedBodyAction::ManageBilling,
                                ),
                            )
                            .finish(),
                        )
                        .with_main_axis_size(MainAxisSize::Max)
                        .finish(),
                )
                .with_margin_top(24.)
                .finish(),
            )
        } else if !self.is_delinquent_due_to_payment_issue {
            body.add_child(
                Container::new(
                    Flex::row()
                        .with_child(
                            Shrinkable::new(
                                0.5,
                                self.render_button(
                                    appearance,
                                    VIEW_PLANS_TEXT.clone(),
                                    self.button_mouse_states.button_mouse_state.clone(),
                                    SharedObjectsCreationDeniedBodyAction::Upgrade,
                                ),
                            )
                            .finish(),
                        )
                        .with_main_axis_size(MainAxisSize::Max)
                        .finish(),
                )
                .with_margin_top(24.)
                .finish(),
            )
        }

        body.finish()
    }
}

impl SharedObjectsCreationDeniedBody {
    fn render_button(
        &self,
        appearance: &Appearance,
        label: String,
        mouse_state: MouseStateHandle,
        action: SharedObjectsCreationDeniedBodyAction,
    ) -> Box<dyn Element> {
        appearance
            .ui_builder()
            .button(ButtonVariant::Accent, mouse_state)
            .with_centered_text_label(label)
            .with_style(UiComponentStyles {
                font_size: Some(BUTTON_FONT_SIZE),
                font_weight: Some(Weight::Semibold),
                border_radius: Some(CornerRadius::with_all(Radius::Pixels(BUTTON_BORDER_RADIUS))),
                padding: Some(Coords::uniform(BUTTON_PADDING)),
                ..Default::default()
            })
            .build()
            .with_cursor(Cursor::PointingHand)
            .on_click(move |ctx, _, _| ctx.dispatch_typed_action(action))
            .finish()
    }
}

impl TypedActionView for SharedObjectsCreationDeniedBody {
    type Action = SharedObjectsCreationDeniedBodyAction;

    fn handle_action(&mut self, action: &Self::Action, ctx: &mut ViewContext<Self>) {
        match action {
            SharedObjectsCreationDeniedBodyAction::Upgrade => {
                ctx.emit(SharedObjectsCreationDeniedBodyEvent::Upgrade)
            }
            SharedObjectsCreationDeniedBodyAction::ManageBilling => {
                ctx.emit(SharedObjectsCreationDeniedBodyEvent::ManageBilling)
            }
        }
    }
}
