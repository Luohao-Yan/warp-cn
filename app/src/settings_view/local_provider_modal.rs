use ::ai::api_keys::{ApiFormat, CustomEndpoint};
use warp_editor::editor::NavigationKey;
use warpui::elements::{
    Border, ClippedScrollStateHandle, ClippedScrollable, ConstrainedBox, Container,
    CornerRadius, CrossAxisAlignment, Empty, Expanded, Flex, MainAxisSize, MouseStateHandle,
    ParentElement, Radius, ScrollbarWidth, Text,
};
use warpui::fonts::FamilyId;
use warpui::ui_components::button::ButtonVariant;
use warpui::ui_components::components::{Coords, UiComponent, UiComponentStyles};
use warpui::{
    AppContext, Element, Entity, SingletonEntity, TypedActionView, View, ViewContext, ViewHandle,
};

use crate::appearance::{Appearance, AppearanceEvent};
use crate::editor::{
    EditorView, Event as EditorEvent, PropagateAndNoOpNavigationKeys, SingleLineEditorOptions,
    TextOptions,
};
use crate::modal::{Modal, ModalViewState};

const LABEL_FONT_SIZE: f32 = 12.;
const INPUT_WIDTH: f32 = 480.;
const DROPDOWN_WIDTH: f32 = 480.;

const MODEL_ROW_SPACING: f32 = 16.;
const REMOVE_MODEL_BUTTON_COL_WIDTH: f32 = 32.;
const MODEL_INPUT_WIDTH: f32 = (INPUT_WIDTH - MODEL_ROW_SPACING) / 2.;

// Preset provider definitions
struct PresetProvider {
    name: &'static str,
    url: &'static str,
    api_format: ApiFormat,
    requires_api_key: bool,
}

const PRESET_KIMI: PresetProvider = PresetProvider {
    name: "Kimi",
    url: "https://api.moonshot.cn/v1",
    api_format: ApiFormat::OpenAi,
    requires_api_key: true,
};

const PRESET_KIMI_CODING: PresetProvider = PresetProvider {
    name: "Kimi Coding",
    url: "https://api.kimi.com/coding/",
    api_format: ApiFormat::OpenAi,
    requires_api_key: true,
};

const PRESET_DEEPSEEK: PresetProvider = PresetProvider {
    name: "DeepSeek",
    url: "https://api.deepseek.com",
    api_format: ApiFormat::OpenAi,
    requires_api_key: true,
};

const PRESET_OLLAMA: PresetProvider = PresetProvider {
    name: "Ollama",
    url: "http://localhost:11434/v1",
    api_format: ApiFormat::OpenAi,
    requires_api_key: false,
};

const PRESET_ANTHROPIC: PresetProvider = PresetProvider {
    name: "Anthropic",
    url: "https://api.anthropic.com/v1",
    api_format: ApiFormat::Anthropic,
    requires_api_key: true,
};

#[derive(Debug, Clone, PartialEq, Eq)]
pub enum LocalProviderModalEvent {
    Close,
    AddProvider {
        name: String,
        url: String,
        api_key: String,
        api_format: ApiFormat,
        models: Vec<(String, Option<String>, Option<String>)>,
    },
    SaveProvider {
        index: usize,
        name: String,
        url: String,
        api_key: String,
        api_format: ApiFormat,
        models: Vec<(String, Option<String>, Option<String>)>,
    },
    RemoveProvider {
        index: usize,
    },
}

#[derive(Debug, Clone, PartialEq, Eq)]
pub enum LocalProviderModalAction {
    Cancel,
    Save,
    AddModel,
    RemoveModel(usize),
    RemoveProvider,
    SetApiFormatOpenAi,
    SetApiFormatAnthropic,
    ApplyPresetKimi,
    ApplyPresetKimiCoding,
    ApplyPresetDeepSeek,
    ApplyPresetOllama,
    ApplyPresetAnthropic,
}

struct ModelRow {
    name_editor: ViewHandle<EditorView>,
    alias_editor: ViewHandle<EditorView>,
    remove_mouse_state: MouseStateHandle,
    config_key: Option<String>,
}

pub struct LocalProviderModal {
    provider_name_editor: ViewHandle<EditorView>,
    provider_url_editor: ViewHandle<EditorView>,
    api_key_editor: ViewHandle<EditorView>,
    api_format: ApiFormat,
    model_rows: Vec<ModelRow>,
    remove_provider_mouse: MouseStateHandle,
    preset_kimi_mouse: MouseStateHandle,
    preset_kimi_coding_mouse: MouseStateHandle,
    preset_deepseek_mouse: MouseStateHandle,
    preset_ollama_mouse: MouseStateHandle,
    preset_anthropic_mouse: MouseStateHandle,
    format_openai_mouse: MouseStateHandle,
    format_anthropic_mouse: MouseStateHandle,
    add_model_mouse: MouseStateHandle,
    cancel_mouse: MouseStateHandle,
    save_mouse: MouseStateHandle,
    scroll_state: ClippedScrollStateHandle,
    editing_index: Option<usize>,
    url_has_error: bool,
}

impl LocalProviderModal {
    pub fn new(
        endpoint: Option<&CustomEndpoint>,
        editing_index: Option<usize>,
        ctx: &mut ViewContext<Self>,
    ) -> Self {
        ctx.subscribe_to_model(&Appearance::handle(ctx), |me, _, event, ctx| {
            if let AppearanceEvent::ThemeChanged = event {
                me.update_editor_text_colors(ctx);
            }
        });
        let font_family = Appearance::as_ref(ctx).ui_font_family();
        let text_colors = crate::settings_view::editor_text_colors(Appearance::as_ref(ctx));

        let provider_name_text_colors = text_colors.clone();
        let provider_name_editor = ctx.add_typed_action_view(move |ctx| {
            let options = SingleLineEditorOptions {
                text: TextOptions {
                    font_family_override: Some(font_family),
                    text_colors_override: Some(provider_name_text_colors.clone()),
                    ..Default::default()
                },
                propagate_and_no_op_vertical_navigation_keys:
                    PropagateAndNoOpNavigationKeys::Always,
                ..Default::default()
            };
            let mut editor = EditorView::single_line(options, ctx);
            editor.set_placeholder_text(crate::tr!("settings", "local-provider-name-placeholder"), ctx);
            if let Some(ep) = endpoint {
                editor.set_buffer_text(&ep.name, ctx);
            }
            editor
        });

        let provider_url_text_colors = text_colors.clone();
        let provider_url_editor = ctx.add_typed_action_view(move |ctx| {
            let options = SingleLineEditorOptions {
                text: TextOptions {
                    font_family_override: Some(font_family),
                    text_colors_override: Some(provider_url_text_colors.clone()),
                    ..Default::default()
                },
                propagate_and_no_op_vertical_navigation_keys:
                    PropagateAndNoOpNavigationKeys::Always,
                ..Default::default()
            };
            let mut editor = EditorView::single_line(options, ctx);
            editor.set_placeholder_text(crate::tr!("settings", "local-provider-url-placeholder"), ctx);
            if let Some(ep) = endpoint {
                editor.set_buffer_text(&ep.url, ctx);
            }
            editor
        });

        let api_key_text_colors = text_colors.clone();
        let api_key_editor = ctx.add_typed_action_view(move |ctx| {
            let options = SingleLineEditorOptions {
                is_password: true,
                text: TextOptions {
                    font_family_override: Some(font_family),
                    text_colors_override: Some(api_key_text_colors.clone()),
                    ..Default::default()
                },
                propagate_and_no_op_vertical_navigation_keys:
                    PropagateAndNoOpNavigationKeys::Always,
                ..Default::default()
            };
            let mut editor = EditorView::single_line(options, ctx);
            editor.set_placeholder_text(crate::tr!("settings", "local-provider-api-key-placeholder"), ctx);
            if let Some(ep) = endpoint {
                editor.set_buffer_text(&ep.api_key, ctx);
            }
            editor
        });

        let mut model_rows = Vec::new();
        if let Some(ep) = endpoint {
            for model in &ep.models {
                model_rows.push(Self::create_model_row(
                    Some(&model.name),
                    model.alias.as_deref(),
                    Some(model.config_key.clone()),
                    font_family,
                    &text_colors,
                    ctx,
                ));
            }
        }
        if model_rows.is_empty() {
            model_rows.push(Self::create_model_row(
                None,
                None,
                None,
                font_family,
                &text_colors,
                ctx,
            ));
        }

        ctx.subscribe_to_view(&provider_name_editor, |me, _, event, ctx| {
            me.handle_provider_name_event(event, ctx);
        });
        ctx.subscribe_to_view(&provider_url_editor, |me, _, event, ctx| {
            me.handle_provider_url_event(event, ctx);
        });
        let initial_url = provider_url_editor.as_ref(ctx).buffer_text(ctx);
        let url_has_error = !initial_url.trim().is_empty()
            && validate_local_url(&initial_url).is_err();
        ctx.subscribe_to_view(&api_key_editor, |me, _, event, ctx| {
            me.handle_api_key_event(event, ctx);
        });
        for row in &model_rows {
            let name_editor = row.name_editor.clone();
            ctx.subscribe_to_view(&name_editor, |me, editor, event, ctx| {
                me.handle_model_editor_event(&editor, event, ctx);
            });
            let alias_editor = row.alias_editor.clone();
            ctx.subscribe_to_view(&alias_editor, |me, editor, event, ctx| {
                me.handle_model_editor_event(&editor, event, ctx);
            });
        }

        let remove_provider_mouse = MouseStateHandle::default();

        let preset_kimi_mouse = MouseStateHandle::default();
        let preset_kimi_coding_mouse = MouseStateHandle::default();
        let preset_deepseek_mouse = MouseStateHandle::default();
        let preset_ollama_mouse = MouseStateHandle::default();
        let preset_anthropic_mouse = MouseStateHandle::default();
        let format_openai_mouse = MouseStateHandle::default();
        let format_anthropic_mouse = MouseStateHandle::default();

        let cancel_mouse = MouseStateHandle::default();

        let save_mouse = MouseStateHandle::default();

        let add_model_mouse = MouseStateHandle::default();

        let api_format = endpoint.map(|e| e.api_format).unwrap_or_default();

        Self {
            provider_name_editor,
            provider_url_editor,
            api_key_editor,
            api_format,
            model_rows,
            remove_provider_mouse,
            preset_kimi_mouse,
            preset_kimi_coding_mouse,
            preset_deepseek_mouse,
            preset_ollama_mouse,
            preset_anthropic_mouse,
            format_openai_mouse,
            format_anthropic_mouse,
            add_model_mouse,
            cancel_mouse,
            save_mouse,
            scroll_state: Default::default(),
            editing_index,
            url_has_error,
        }
    }

    fn create_model_row(
        name: Option<&str>,
        alias: Option<&str>,
        config_key: Option<String>,
        font_family: FamilyId,
        text_colors: &crate::editor::TextColors,
        ctx: &mut ViewContext<Self>,
    ) -> ModelRow {
        let tc = text_colors.clone();
        let name_editor = ctx.add_typed_action_view(move |ctx| {
            let options = SingleLineEditorOptions {
                text: TextOptions {
                    font_family_override: Some(font_family),
                    text_colors_override: Some(tc.clone()),
                    ..Default::default()
                },
                propagate_and_no_op_vertical_navigation_keys:
                    PropagateAndNoOpNavigationKeys::Always,
                ..Default::default()
            };
            let mut editor = EditorView::single_line(options, ctx);
            editor.set_placeholder_text(crate::tr!("settings", "local-provider-model-name-placeholder"), ctx);
            if let Some(n) = name {
                editor.set_buffer_text(n, ctx);
            }
            editor
        });

        let tc = text_colors.clone();
        let alias_editor = ctx.add_typed_action_view(move |ctx| {
            let options = SingleLineEditorOptions {
                text: TextOptions {
                    font_family_override: Some(font_family),
                    text_colors_override: Some(tc.clone()),
                    ..Default::default()
                },
                propagate_and_no_op_vertical_navigation_keys:
                    PropagateAndNoOpNavigationKeys::Always,
                ..Default::default()
            };
            let mut editor = EditorView::single_line(options, ctx);
            editor.set_placeholder_text(crate::tr!("settings", "local-provider-model-alias-placeholder"), ctx);
            if let Some(a) = alias {
                editor.set_buffer_text(a, ctx);
            }
            editor
        });

        ModelRow {
            name_editor,
            alias_editor,
            remove_mouse_state: Default::default(),
            config_key,
        }
    }

    pub fn prefill(
        &mut self,
        endpoint: Option<&CustomEndpoint>,
        editing_index: Option<usize>,
        ctx: &mut ViewContext<Self>,
    ) {
        self.editing_index = editing_index;
        self.provider_name_editor.update(ctx, |editor, ctx| {
            editor.set_buffer_text(endpoint.map(|e| e.name.as_str()).unwrap_or(""), ctx);
        });
        self.provider_url_editor.update(ctx, |editor, ctx| {
            editor.set_buffer_text(endpoint.map(|e| e.url.as_str()).unwrap_or(""), ctx);
        });
        let url = self.provider_url_editor.as_ref(ctx).buffer_text(ctx);
        self.url_has_error = !url.trim().is_empty() && validate_local_url(&url).is_err();
        self.api_key_editor.update(ctx, |editor, ctx| {
            editor.set_buffer_text(endpoint.map(|e| e.api_key.as_str()).unwrap_or(""), ctx);
        });
        self.api_format = endpoint.map(|e| e.api_format).unwrap_or_default();
        // Rebuild model rows
        self.model_rows.clear();
        let font_family = Appearance::as_ref(ctx).ui_font_family();
        let text_colors = crate::settings_view::editor_text_colors(Appearance::as_ref(ctx));
        if let Some(ep) = endpoint {
            for model in &ep.models {
                self.model_rows.push(Self::create_model_row(
                    Some(&model.name),
                    model.alias.as_deref(),
                    Some(model.config_key.clone()),
                    font_family,
                    &text_colors,
                    ctx,
                ));
            }
        }
        if self.model_rows.is_empty() {
            self.model_rows.push(Self::create_model_row(
                None,
                None,
                None,
                font_family,
                &text_colors,
                ctx,
            ));
        }
        for row in &self.model_rows {
            let name_editor = row.name_editor.clone();
            ctx.subscribe_to_view(&name_editor, |me, editor, event, ctx| {
                me.handle_model_editor_event(&editor, event, ctx);
            });
            let alias_editor = row.alias_editor.clone();
            ctx.subscribe_to_view(&alias_editor, |me, editor, event, ctx| {
                me.handle_model_editor_event(&editor, event, ctx);
            });
        }
    }

    pub fn on_open(&mut self, ctx: &mut ViewContext<Self>) {
        ctx.focus(&self.provider_name_editor);
        ctx.notify();
    }

    pub fn on_close(&mut self, ctx: &mut ViewContext<Self>) {
        self.provider_name_editor.update(ctx, |editor, ctx| {
            editor.clear_buffer_and_reset_undo_stack(ctx);
        });
        self.provider_url_editor.update(ctx, |editor, ctx| {
            editor.clear_buffer_and_reset_undo_stack(ctx);
        });
        self.api_key_editor.update(ctx, |editor, ctx| {
            editor.clear_buffer_and_reset_undo_stack(ctx);
        });
        for row in &self.model_rows {
            row.name_editor.update(ctx, |editor, ctx| {
                editor.clear_buffer_and_reset_undo_stack(ctx);
            });
            row.alias_editor.update(ctx, |editor, ctx| {
                editor.clear_buffer_and_reset_undo_stack(ctx);
            });
        }
    }

    fn update_editor_text_colors(&mut self, ctx: &mut ViewContext<Self>) {
        let text_colors = crate::settings_view::editor_text_colors(Appearance::as_ref(ctx));
        let mut editors = vec![
            self.provider_name_editor.clone(),
            self.provider_url_editor.clone(),
            self.api_key_editor.clone(),
        ];
        for row in &self.model_rows {
            editors.push(row.name_editor.clone());
            editors.push(row.alias_editor.clone());
        }
        for editor in editors {
            let colors = text_colors.clone();
            editor.update(ctx, move |editor, ctx| {
                editor.set_text_colors(colors, ctx);
            });
        }
    }

    fn apply_preset(&mut self, preset: &PresetProvider, ctx: &mut ViewContext<Self>) {
        self.provider_name_editor.update(ctx, |editor, ctx| {
            editor.set_buffer_text(preset.name, ctx);
        });
        self.provider_url_editor.update(ctx, |editor, ctx| {
            editor.set_buffer_text(preset.url, ctx);
        });
        if !preset.requires_api_key {
            self.api_key_editor.update(ctx, |editor, ctx| {
                editor.clear_buffer_and_reset_undo_stack(ctx);
            });
        }
        self.api_format = preset.api_format;
        self.url_has_error = false;
        ctx.notify();
    }

    fn save(&mut self, ctx: &mut ViewContext<Self>) {
        self.validate_url_field(ctx);
        if !self.is_valid(ctx) {
            return;
        }
        let name = self.provider_name_editor.as_ref(ctx).buffer_text(ctx);
        let url = self.provider_url_editor.as_ref(ctx).buffer_text(ctx);
        let api_key = self.api_key_editor.as_ref(ctx).buffer_text(ctx);
        let api_format = self.api_format;
        let models: Vec<(String, Option<String>, Option<String>)> = self
            .model_rows
            .iter()
            .map(|row| {
                let name = row.name_editor.as_ref(ctx).buffer_text(ctx);
                let alias = row.alias_editor.as_ref(ctx).buffer_text(ctx);
                let alias_opt = if alias.trim().is_empty() {
                    None
                } else {
                    Some(alias)
                };
                (name, alias_opt, row.config_key.clone())
            })
            .filter(|(name, _, _)| !name.trim().is_empty())
            .collect();
        if let Some(index) = self.editing_index {
            ctx.emit(LocalProviderModalEvent::SaveProvider {
                index,
                name,
                url,
                api_key,
                api_format,
                models,
            });
        } else {
            ctx.emit(LocalProviderModalEvent::AddProvider {
                name,
                url,
                api_key,
                api_format,
                models,
            });
        }
    }

    fn cancel(&mut self, ctx: &mut ViewContext<Self>) {
        ctx.emit(LocalProviderModalEvent::Close);
    }

    fn add_model(&mut self, ctx: &mut ViewContext<Self>) {
        let font_family = Appearance::as_ref(ctx).ui_font_family();
        let text_colors = crate::settings_view::editor_text_colors(Appearance::as_ref(ctx));
        let row = Self::create_model_row(None, None, None, font_family, &text_colors, ctx);
        let name_editor = row.name_editor.clone();
        ctx.subscribe_to_view(&name_editor, |me, editor, event, ctx| {
            me.handle_model_editor_event(&editor, event, ctx);
        });
        let alias_editor = row.alias_editor.clone();
        ctx.subscribe_to_view(&alias_editor, |me, editor, event, ctx| {
            me.handle_model_editor_event(&editor, event, ctx);
        });
        self.model_rows.push(row);
        ctx.notify();
    }

    fn remove_model(&mut self, index: usize, ctx: &mut ViewContext<Self>) {
        if index < self.model_rows.len() {
            let _row = self.model_rows.remove(index);
            ctx.notify();
        }
    }

    fn is_valid(&self, app: &AppContext) -> bool {
        let name = self.provider_name_editor.as_ref(app).buffer_text(app);
        let url = self.provider_url_editor.as_ref(app).buffer_text(app);
        let has_models = self.model_rows.iter().any(|row| {
            !row.name_editor
                .as_ref(app)
                .buffer_text(app)
                .trim()
                .is_empty()
        });
        is_local_provider_form_valid(&name, &url, has_models)
    }

    fn focus_next_editor(&self, current: &ViewHandle<EditorView>, ctx: &mut ViewContext<Self>) {
        let mut editors: Vec<&ViewHandle<EditorView>> = vec![
            &self.provider_name_editor,
            &self.provider_url_editor,
            &self.api_key_editor,
        ];
        for row in &self.model_rows {
            editors.push(&row.name_editor);
            editors.push(&row.alias_editor);
        }
        if let Some(pos) = editors.iter().position(|e| *e == current) {
            let next = (pos + 1) % editors.len();
            ctx.focus(editors[next]);
        }
    }

    fn focus_prev_editor(&self, current: &ViewHandle<EditorView>, ctx: &mut ViewContext<Self>) {
        let mut editors: Vec<&ViewHandle<EditorView>> = vec![
            &self.provider_name_editor,
            &self.provider_url_editor,
            &self.api_key_editor,
        ];
        for row in &self.model_rows {
            editors.push(&row.name_editor);
            editors.push(&row.alias_editor);
        }
        if let Some(pos) = editors.iter().position(|e| *e == current) {
            let prev = if pos == 0 { editors.len() - 1 } else { pos - 1 };
            ctx.focus(editors[prev]);
        }
    }

    fn handle_provider_name_event(&mut self, event: &EditorEvent, ctx: &mut ViewContext<Self>) {
        match event {
            EditorEvent::Navigate(NavigationKey::Tab) => {
                ctx.focus(&self.provider_url_editor);
            }
            EditorEvent::Navigate(NavigationKey::ShiftTab) => {
                self.focus_prev_editor(&self.provider_name_editor, ctx);
            }
            EditorEvent::Enter => {
                ctx.focus(&self.provider_url_editor);
            }
            EditorEvent::Escape => {
                self.cancel(ctx);
            }
            EditorEvent::Edited(_) => {
                ctx.notify();
            }
            _ => {}
        }
    }

    fn handle_provider_url_event(&mut self, event: &EditorEvent, ctx: &mut ViewContext<Self>) {
        match event {
            EditorEvent::Navigate(NavigationKey::Tab) => {
                self.validate_url_field(ctx);
                ctx.focus(&self.api_key_editor);
            }
            EditorEvent::Navigate(NavigationKey::ShiftTab) => {
                self.validate_url_field(ctx);
                ctx.focus(&self.provider_name_editor);
            }
            EditorEvent::Enter => {
                self.validate_url_field(ctx);
                ctx.focus(&self.api_key_editor);
            }
            EditorEvent::Escape => {
                self.cancel(ctx);
            }
            EditorEvent::Edited(_) => {
                if !self.validate_url_field(ctx) {
                    ctx.notify();
                }
            }
            _ => {}
        }
    }

    fn validate_url_field(&mut self, ctx: &mut ViewContext<Self>) -> bool {
        let url = self.provider_url_editor.as_ref(ctx).buffer_text(ctx);
        let had_error = self.url_has_error;
        self.url_has_error = !url.trim().is_empty() && validate_local_url(&url).is_err();
        let changed = self.url_has_error != had_error;
        if changed {
            ctx.notify();
        }
        changed
    }

    fn handle_api_key_event(&mut self, event: &EditorEvent, ctx: &mut ViewContext<Self>) {
        match event {
            EditorEvent::Navigate(NavigationKey::Tab) => {
                if let Some(first_row) = self.model_rows.first() {
                    ctx.focus(&first_row.name_editor);
                }
            }
            EditorEvent::Navigate(NavigationKey::ShiftTab) => {
                ctx.focus(&self.provider_url_editor);
            }
            EditorEvent::Enter => {
                if let Some(first_row) = self.model_rows.first() {
                    ctx.focus(&first_row.name_editor);
                }
            }
            EditorEvent::Escape => {
                self.cancel(ctx);
            }
            EditorEvent::Edited(_) => {
                ctx.notify();
            }
            _ => {}
        }
    }

    fn handle_model_editor_event(
        &mut self,
        editor: &ViewHandle<EditorView>,
        event: &EditorEvent,
        ctx: &mut ViewContext<Self>,
    ) {
        match event {
            EditorEvent::Navigate(NavigationKey::Tab) | EditorEvent::Enter => {
                self.focus_next_editor(editor, ctx);
            }
            EditorEvent::Navigate(NavigationKey::ShiftTab) => {
                self.focus_prev_editor(editor, ctx);
            }
            EditorEvent::Escape => {
                self.cancel(ctx);
            }
            EditorEvent::Edited(_) => {
                ctx.notify();
            }
            _ => {}
        }
    }
}

impl Entity for LocalProviderModal {
    type Event = LocalProviderModalEvent;
}

impl View for LocalProviderModal {
    fn ui_name() -> &'static str {
        "LocalProviderModal"
    }

    fn render(&self, app: &AppContext) -> Box<dyn Element> {
        let appearance = Appearance::as_ref(app);
        let theme = appearance.theme();

        let is_valid = self.is_valid(app);
        let is_editing = self.editing_index.is_some();

        let label_font_family = appearance.ui_font_family();
        let label_text_color = theme.active_ui_text_color().into();
        let label = move |text: String| {
            Text::new(text, label_font_family, LABEL_FONT_SIZE)
                .with_color(label_text_color)
                .finish()
        };

        let input_style = UiComponentStyles {
            width: Some(INPUT_WIDTH),
            ..Default::default()
        };

        let mut column = Flex::column();

        // Description
        column.add_child(
            Container::new(
                Text::new(
                    crate::tr!("settings", "local-provider-modal-description"),
                    appearance.ui_font_family(),
                    LABEL_FONT_SIZE,
                )
                .with_color(theme.nonactive_ui_text_color().into())
                .soft_wrap(true)
                .finish(),
            )
            .with_margin_bottom(16.)
            .finish(),
        );

        // Preset buttons
        column.add_child(
            Container::new(label(crate::tr!("settings", "local-provider-presets")))
                .with_margin_bottom(4.)
                .finish(),
        );
        let mut preset_row = Flex::row()
            .with_cross_axis_alignment(CrossAxisAlignment::Center)
            .with_spacing(8.);

        let xsmall_style = UiComponentStyles {
            height: Some(20.),
            font_size: Some(12.),
            padding: Some(Coords { top: 2., bottom: 2., left: 8., right: 8. }),
            ..Default::default()
        };

        preset_row.add_child(
            appearance.ui_builder()
                .button(ButtonVariant::Secondary, self.preset_kimi_mouse.clone())
                .with_text_label(crate::tr!("settings", "local-provider-preset-kimi").to_string())
                .with_style(xsmall_style.clone())
                .build()
                .on_click(|ctx, _, _| {
                    ctx.dispatch_typed_action(LocalProviderModalAction::ApplyPresetKimi);
                })
                .finish()
        );
        preset_row.add_child(
            appearance.ui_builder()
                .button(ButtonVariant::Secondary, self.preset_kimi_coding_mouse.clone())
                .with_text_label(crate::tr!("settings", "local-provider-preset-kimi-coding").to_string())
                .with_style(xsmall_style.clone())
                .build()
                .on_click(|ctx, _, _| {
                    ctx.dispatch_typed_action(LocalProviderModalAction::ApplyPresetKimiCoding);
                })
                .finish()
        );
        preset_row.add_child(
            appearance.ui_builder()
                .button(ButtonVariant::Secondary, self.preset_deepseek_mouse.clone())
                .with_text_label(crate::tr!("settings", "local-provider-preset-deepseek").to_string())
                .with_style(xsmall_style.clone())
                .build()
                .on_click(|ctx, _, _| {
                    ctx.dispatch_typed_action(LocalProviderModalAction::ApplyPresetDeepSeek);
                })
                .finish()
        );
        preset_row.add_child(
            appearance.ui_builder()
                .button(ButtonVariant::Secondary, self.preset_ollama_mouse.clone())
                .with_text_label(crate::tr!("settings", "local-provider-preset-ollama").to_string())
                .with_style(xsmall_style.clone())
                .build()
                .on_click(|ctx, _, _| {
                    ctx.dispatch_typed_action(LocalProviderModalAction::ApplyPresetOllama);
                })
                .finish()
        );
        preset_row.add_child(
            appearance.ui_builder()
                .button(ButtonVariant::Secondary, self.preset_anthropic_mouse.clone())
                .with_text_label(crate::tr!("settings", "local-provider-preset-anthropic").to_string())
                .with_style(xsmall_style.clone())
                .build()
                .on_click(|ctx, _, _| {
                    ctx.dispatch_typed_action(LocalProviderModalAction::ApplyPresetAnthropic);
                })
                .finish()
        );

        column.add_child(
            Container::new(preset_row.finish())
                .with_margin_bottom(16.)
                .finish(),
        );

        // API Format selector
        column.add_child(
            Container::new(label(crate::tr!("settings", "local-provider-api-format")))
                .with_margin_bottom(4.)
                .finish(),
        );

        let mut format_row = Flex::row()
            .with_cross_axis_alignment(CrossAxisAlignment::Center)
            .with_spacing(8.);

        let openai_active = self.api_format == ApiFormat::OpenAi;
        let openai_btn = appearance.ui_builder()
            .button(
                ButtonVariant::Secondary,
                self.format_openai_mouse.clone(),
            )
            .with_text_label(crate::tr!("settings", "local-provider-format-openai").to_string())
            .with_style(xsmall_style.clone());
        let openai_btn = if openai_active { openai_btn.active() } else { openai_btn };
        format_row.add_child(
            openai_btn
                .build()
                .on_click(|ctx, _, _| {
                    ctx.dispatch_typed_action(LocalProviderModalAction::SetApiFormatOpenAi);
                })
                .finish()
        );
        let anthropic_active = self.api_format == ApiFormat::Anthropic;
        let anthropic_btn = appearance.ui_builder()
            .button(
                ButtonVariant::Secondary,
                self.format_anthropic_mouse.clone(),
            )
            .with_text_label(crate::tr!("settings", "local-provider-format-anthropic").to_string())
            .with_style(xsmall_style.clone());
        let anthropic_btn = if anthropic_active { anthropic_btn.active() } else { anthropic_btn };
        format_row.add_child(
            anthropic_btn
                .build()
                .on_click(|ctx, _, _| {
                    ctx.dispatch_typed_action(LocalProviderModalAction::SetApiFormatAnthropic);
                })
                .finish()
        );

        column.add_child(
            Container::new(format_row.finish())
                .with_margin_bottom(16.)
                .finish(),
        );

        // Provider name
        column.add_child(
            Container::new(label(crate::tr!("settings", "local-provider-name")))
                .with_margin_bottom(4.)
                .finish(),
        );
        column.add_child(
            Container::new(
                appearance
                    .ui_builder()
                    .text_input(self.provider_name_editor.clone())
                    .with_style(input_style)
                    .build()
                    .finish(),
            )
            .with_margin_bottom(16.)
            .finish(),
        );

        // Base URL
        column.add_child(
            Container::new(label(crate::tr!("settings", "local-provider-url")))
                .with_margin_bottom(4.)
                .finish(),
        );
        let url_border_fill = if self.url_has_error {
            theme.ui_error_color().into()
        } else {
            theme.outline()
        };
        column.add_child(
            Container::new(
                appearance
                    .ui_builder()
                    .text_input(self.provider_url_editor.clone())
                    .with_style(input_style)
                    .build()
                    .finish(),
            )
            .with_border(Border::all(1.).with_border_fill(url_border_fill))
            .with_corner_radius(CornerRadius::with_all(Radius::Pixels(4.)))
            .with_margin_bottom(16.)
            .finish(),
        );

        // API Key (optional)
        column.add_child(
            Container::new(label(crate::tr!("settings", "local-provider-api-key")))
                .with_margin_bottom(4.)
                .finish(),
        );
        column.add_child(
            Container::new(
                appearance
                    .ui_builder()
                    .text_input(self.api_key_editor.clone())
                    .with_style(input_style)
                    .build()
                    .finish(),
            )
            .with_margin_bottom(16.)
            .finish(),
        );

        // Model rows
        let has_remove_model_button = self.model_rows.len() > 1;
        let mut model_labels = Flex::row()
            .with_main_axis_size(MainAxisSize::Max)
            .with_cross_axis_alignment(CrossAxisAlignment::Center)
            .with_spacing(MODEL_ROW_SPACING)
            .with_child(
                ConstrainedBox::new(label(crate::tr!("settings", "local-provider-model-name")))
                    .with_width(MODEL_INPUT_WIDTH)
                    .finish(),
            )
            .with_child(
                ConstrainedBox::new(label(crate::tr!("settings", "local-provider-model-alias")))
                    .with_width(MODEL_INPUT_WIDTH)
                    .finish(),
            );
        if has_remove_model_button {
            model_labels.add_child(
                ConstrainedBox::new(Empty::new().finish())
                    .with_width(REMOVE_MODEL_BUTTON_COL_WIDTH)
                    .finish(),
            );
        }

        column.add_child(
            Container::new(model_labels.finish())
                .with_margin_bottom(4.)
                .finish(),
        );

        for (i, row) in self.model_rows.iter().enumerate() {
            let name_input = appearance
                .ui_builder()
                .text_input(row.name_editor.clone())
                .with_style(UiComponentStyles {
                    width: Some(MODEL_INPUT_WIDTH),
                    ..Default::default()
                })
                .build()
                .finish();

            let alias_input = appearance
                .ui_builder()
                .text_input(row.alias_editor.clone())
                .with_style(UiComponentStyles {
                    width: Some(MODEL_INPUT_WIDTH),
                    ..Default::default()
                })
                .build()
                .finish();

            let remove_button = if self.model_rows.len() > 1 {
                appearance
                    .ui_builder()
                    .close_button(20., row.remove_mouse_state.clone())
                    .build()
                    .on_click(move |ctx, _, _| {
                        ctx.dispatch_typed_action(LocalProviderModalAction::RemoveModel(i));
                    })
                    .finish()
            } else {
                Empty::new().finish()
            };

            let mut row = Flex::row()
                .with_main_axis_size(MainAxisSize::Max)
                .with_cross_axis_alignment(CrossAxisAlignment::Center)
                .with_spacing(MODEL_ROW_SPACING)
                .with_child(name_input)
                .with_child(alias_input);
            if has_remove_model_button {
                row.add_child(
                    ConstrainedBox::new(remove_button)
                        .with_width(REMOVE_MODEL_BUTTON_COL_WIDTH)
                        .finish(),
                );
            }
            let row = row.finish();

            column.add_child(Container::new(row).with_margin_bottom(12.).finish());
        }

        // + Add model button
        column.add_child(
            Container::new(
                appearance.ui_builder()
                    .button(ButtonVariant::Secondary, self.add_model_mouse.clone())
                    .with_text_label(crate::tr!("settings", "local-provider-add-model").to_string())
                    .with_style(UiComponentStyles {
                        height: Some(24.),
                        font_size: Some(12.),
                        padding: Some(Coords { top: 2., bottom: 2., left: 8., right: 8. }),
                        ..Default::default()
                    })
                    .build()
                    .on_click(|ctx, _, _| {
                        ctx.dispatch_typed_action(LocalProviderModalAction::AddModel);
                    })
                    .finish()
            )
                .with_margin_bottom(24.)
                .finish(),
        );

        // Bottom buttons row
        let save_label = if is_editing {
            crate::tr!("settings", "local-provider-save")
        } else {
            crate::tr!("settings", "local-provider-add-button")
        };

        let mut buttons_row = Flex::row()
            .with_main_axis_size(MainAxisSize::Max)
            .with_cross_axis_alignment(CrossAxisAlignment::Center);

        // Remove button (only when editing)
        if is_editing {
            buttons_row.add_child(
                appearance.ui_builder()
                    .button(ButtonVariant::Error, self.remove_provider_mouse.clone())
                    .with_text_label(crate::tr!("settings", "local-provider-remove").to_string())
                    .with_style(UiComponentStyles {
                        height: Some(32.),
                        ..Default::default()
                    })
                    .build()
                    .on_click(|ctx, _, _| {
                        ctx.dispatch_typed_action(LocalProviderModalAction::RemoveProvider);
                    })
                    .finish()
            );
        }

        buttons_row.add_child(Expanded::new(1., Empty::new().finish()).finish());

        buttons_row.add_child(
            appearance.ui_builder()
                .button(ButtonVariant::Secondary, self.cancel_mouse.clone())
                .with_text_label(crate::tr!("settings", "local-provider-cancel").to_string())
                .build()
                .on_click(|ctx, _, _| {
                    ctx.dispatch_typed_action(LocalProviderModalAction::Cancel);
                })
                .finish()
        );

        buttons_row.add_child(
            Container::new(
                appearance.ui_builder()
                    .button(ButtonVariant::Secondary, self.save_mouse.clone())
                    .with_text_label(save_label.to_string())
                    .build()
                    .on_click(|ctx, _, _| {
                        ctx.dispatch_typed_action(LocalProviderModalAction::Save);
                    })
                    .finish()
            )
            .with_margin_left(12.)
            .finish(),
        );

        column.add_child(buttons_row.finish());

        ClippedScrollable::vertical(
            self.scroll_state.clone(),
            column.finish(),
            ScrollbarWidth::Auto,
            theme.nonactive_ui_detail().into(),
            theme.active_ui_detail().into(),
            warpui::elements::Fill::None,
        )
        .finish()
    }
}

/// Validate URL for local/third-party providers.
/// Unlike the strict validation in `custom_inference_modal.rs`, this
/// explicitly ALLOWS localhost, loopback, and private-network hosts
/// because local LLM servers (Ollama, LM Studio, etc.) run on them.
fn validate_local_url(url: &str) -> Result<(), &'static str> {
    if url.trim().is_empty() {
        return Ok(());
    }
    let parsed = url::Url::parse(url).map_err(|_| "Invalid URL")?;
    if !matches!(parsed.scheme(), "http" | "https") {
        return Err("URL must use HTTP or HTTPS");
    }
    let Some(_host) = parsed.host_str().filter(|h| !h.is_empty()) else {
        return Err("URL must include a host");
    };
    Ok(())
}

fn is_local_provider_form_valid(name: &str, url: &str, has_models: bool) -> bool {
    !name.trim().is_empty()
        && !url.trim().is_empty()
        && has_models
        && validate_local_url(url).is_ok()
}

impl TypedActionView for LocalProviderModal {
    type Action = LocalProviderModalAction;

    fn handle_action(&mut self, action: &Self::Action, ctx: &mut ViewContext<Self>) {
        match action {
            LocalProviderModalAction::Cancel => self.cancel(ctx),
            LocalProviderModalAction::Save => self.save(ctx),
            LocalProviderModalAction::AddModel => self.add_model(ctx),
            LocalProviderModalAction::RemoveModel(index) => self.remove_model(*index, ctx),
            LocalProviderModalAction::RemoveProvider => {
                if let Some(index) = self.editing_index {
                    ctx.emit(LocalProviderModalEvent::RemoveProvider { index });
                }
            }
            LocalProviderModalAction::SetApiFormatOpenAi => {
                self.api_format = ApiFormat::OpenAi;
                ctx.notify();
            }
            LocalProviderModalAction::SetApiFormatAnthropic => {
                self.api_format = ApiFormat::Anthropic;
                ctx.notify();
            }
            LocalProviderModalAction::ApplyPresetKimi => {
                self.apply_preset(&PRESET_KIMI, ctx);
            }
            LocalProviderModalAction::ApplyPresetKimiCoding => {
                self.apply_preset(&PRESET_KIMI_CODING, ctx);
            }
            LocalProviderModalAction::ApplyPresetDeepSeek => {
                self.apply_preset(&PRESET_DEEPSEEK, ctx);
            }
            LocalProviderModalAction::ApplyPresetOllama => {
                self.apply_preset(&PRESET_OLLAMA, ctx);
            }
            LocalProviderModalAction::ApplyPresetAnthropic => {
                self.apply_preset(&PRESET_ANTHROPIC, ctx);
            }
        }
    }
}

pub struct LocalProviderModalViewState {
    state: ModalViewState<Modal<LocalProviderModal>>,
}

impl LocalProviderModalViewState {
    pub fn new(state: ModalViewState<Modal<LocalProviderModal>>) -> Self {
        Self { state }
    }

    pub fn is_open(&self) -> bool {
        self.state.is_open()
    }

    pub fn render(&self) -> Box<dyn Element> {
        self.state.render()
    }

    pub fn set_title<T: View>(&mut self, title: Option<String>, ctx: &mut ViewContext<T>) {
        self.state.view.update(ctx, |modal, ctx| {
            modal.set_title(title);
            ctx.notify();
        });
    }

    pub fn prefill<T: View>(
        &mut self,
        endpoint: Option<&CustomEndpoint>,
        editing_index: Option<usize>,
        ctx: &mut ViewContext<T>,
    ) {
        self.state.view.update(ctx, |modal, ctx| {
            modal.body().update(ctx, |body, ctx| {
                body.prefill(endpoint, editing_index, ctx);
            });
        });
    }

    pub fn open<T: View>(&mut self, ctx: &mut ViewContext<T>) {
        self.state.open();
        self.state.view.update(ctx, |modal, ctx| {
            modal.body().update(ctx, |body, ctx| {
                body.on_open(ctx);
            });
        });
    }

    pub fn close<T: View>(&mut self, ctx: &mut ViewContext<T>) {
        self.state.close();
        self.state.view.update(ctx, |modal, ctx| {
            modal.body().update(ctx, |body, ctx| {
                body.on_close(ctx);
            });
        });
    }
}
