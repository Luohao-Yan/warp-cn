use warp_core::context_flag::ContextFlag;
use warp_core::features::FeatureFlag;
use warpui::ViewContext;

use super::{
    ContentItem, ContentSectionData, FeatureItem, FeatureSection, FeatureSectionData,
    ResourceCenterMainView, Section, Tip, TipAction, TipHint,
};

pub fn sections(ctx: &mut ViewContext<ResourceCenterMainView>) -> Vec<Section> {
    let mut sections = vec![Section::Changelog()];

    if FeatureFlag::AvatarInTabBar.is_enabled() {
        return sections;
    }

    let get_started = FeatureSectionData {
        section_name: FeatureSection::GettingStarted,
        items: vec![
            FeatureItem::new(
                &crate::tr!("resource_center", "rc-create-first-block"),
                &crate::tr!("resource_center", "rc-create-first-block-desc"),
                Tip::Hint(TipHint::CreateBlock),
                ctx,
            ),
            FeatureItem::new(
                &crate::tr!("resource_center", "rc-navigate-blocks"),
                &crate::tr!("resource_center", "rc-navigate-blocks-desc"),
                Tip::Hint(TipHint::BlockSelect),
                ctx,
            ),
            FeatureItem::new(
                &crate::tr!("resource_center", "rc-take-action-on-block"),
                &crate::tr!("resource_center", "rc-take-action-on-block-desc"),
                Tip::Hint(TipHint::BlockAction),
                ctx,
            ),
            FeatureItem::new(
                &crate::tr!("resource_center", "rc-open-command-palette"),
                &crate::tr!("resource_center", "rc-open-command-palette-desc"),
                Tip::Action(TipAction::CommandPalette),
                ctx,
            ),
            FeatureItem::new(
                &crate::tr!("resource_center", "rc-set-your-theme"),
                &crate::tr!("resource_center", "rc-set-your-theme-desc"),
                Tip::Action(TipAction::ThemePicker),
                ctx,
            ),
        ],
    };
    sections.push(Section::Feature(get_started));

    let maximize_warp = FeatureSectionData {
        section_name: FeatureSection::MaximizeWarp,
        items: maximize_warp_items(ctx),
    };
    sections.push(Section::Feature(maximize_warp));

    let advanced_setup = ContentSectionData {
        section_name: FeatureSection::AdvancedSetup,
        items: vec![
            ContentItem {
                title: crate::tr!("resource_center", "rc-use-custom-prompt"),
                description: crate::tr!("resource_center", "rc-use-custom-prompt-desc"),
                url: "https://docs.warp.dev/terminal/appearance/prompt",
                button_label: crate::tr!("resource_center", "rc-view-documentation"),
            },
            ContentItem {
                title: crate::tr!("resource_center", "rc-integrate-ide"),
                description: crate::tr!("resource_center", "rc-integrate-ide-desc"),
                url: "https://docs.warp.dev/terminal/integrations-and-plugins",
                button_label: crate::tr!("resource_center", "rc-view-documentation"),
            },
            ContentItem {
                title: crate::tr!("resource_center", "rc-how-warp-uses-warp"),
                description: crate::tr!("resource_center", "rc-how-warp-uses-warp-desc"),
                url: "https://www.warp.dev/blog/how-warp-uses-warp",
                button_label: crate::tr!("resource_center", "rc-read-article"),
            },
        ],
    };
    sections.push(Section::Content(advanced_setup));

    sections
}

fn maximize_warp_items(ctx: &mut ViewContext<ResourceCenterMainView>) -> Vec<FeatureItem> {
    let mut maximize_warp_items = vec![];

    maximize_warp_items.push(FeatureItem::new(
        &crate::tr!("resource_center", "rc-command-search"),
        &crate::tr!("resource_center", "rc-command-search-desc"),
        Tip::Action(TipAction::CommandSearch),
        ctx,
    ));

    maximize_warp_items.push(FeatureItem::new(
        &crate::tr!("resource_center", "rc-ai-command-search"),
        &crate::tr!("resource_center", "rc-ai-command-search-desc"),
        Tip::Action(TipAction::AiCommandSearch),
        ctx,
    ));

    if ContextFlag::CreateNewSession.is_enabled() {
        maximize_warp_items.push(FeatureItem::new(
            &crate::tr!("resource_center", "rc-split-panes"),
            &crate::tr!("resource_center", "rc-split-panes-desc"),
            Tip::Action(TipAction::SplitPane),
            ctx,
        ));
    }

    if ContextFlag::LaunchConfigurations.is_enabled() {
        maximize_warp_items.push(FeatureItem::new(
            &crate::tr!("resource_center", "rc-launch-configuration"),
            &crate::tr!("resource_center", "rc-launch-configuration-desc"),
            Tip::Action(TipAction::SaveNewLaunchConfig),
            ctx,
        ));
    }

    maximize_warp_items
}
