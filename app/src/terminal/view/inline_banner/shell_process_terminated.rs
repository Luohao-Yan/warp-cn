use warpui::{elements::Text, Element};

use crate::appearance::Appearance;

use super::{
    render_inline_block_list_banner, InlineBannerContent, InlineBannerIcon, InlineBannerStyle,
};

pub fn render_shell_process_terminated_banner(
    appearance: &Appearance,
    was_premature_termination: bool,
) -> Box<dyn Element> {
    if was_premature_termination {
        render_inline_block_list_banner(
            InlineBannerStyle::CallToAction,
            appearance,
            InlineBannerContent {
                title: crate::tr!("terminal", "shell-process-exited-prematurely"),
                header_icon: Some(InlineBannerIcon {
                    asset_path: "bundled/svg/warning.svg",
                    aspect_ratio: 1.,
                    color_override: Some(appearance.theme().foreground().into_solid()),
                }),
                content: Some({
                    let text = crate::tr!("terminal", "shell-init-output-visible");
                    vec![Text::new(
                        text,
                        appearance.ui_font_family(),
                        appearance.ui_font_size(),
                    )]
                }),
                ..Default::default()
            },
        )
    } else {
        render_inline_block_list_banner(
            InlineBannerStyle::LowPriority,
            appearance,
            InlineBannerContent {
                title: crate::tr!("terminal", "shell-process-exited"),
                header_icon: Some(InlineBannerIcon {
                    asset_path: "bundled/svg/info.svg",
                    aspect_ratio: 1.,
                    ..Default::default()
                }),
                ..Default::default()
            },
        )
    }
}
