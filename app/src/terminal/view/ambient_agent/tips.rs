//! Tips for cloud mode loading screen.

use warpui::keymap::Keystroke;
use warpui::AppContext;

use crate::ai::agent_tips::AITip;

/// A cloud mode tip with text and optional link.
#[derive(Clone, Debug)]
pub struct CloudModeTip {
    text: String,
    link: Option<String>,
}

impl CloudModeTip {
    pub fn new(text: impl Into<String>, link: Option<impl Into<String>>) -> Self {
        Self {
            text: text.into(),
            link: link.map(|l| l.into()),
        }
    }
}

impl AITip for CloudModeTip {
    fn keystroke(&self, _app: &AppContext) -> Option<Keystroke> {
        None
    }

    fn link(&self) -> Option<String> {
        self.link.clone()
    }

    fn description(&self) -> &str {
        &self.text
    }

    // Uses the default implementation which adds "Tip: " prefix and parses backticks as inline code
}

/// Returns a collection of tips for the cloud mode loading screen.
pub fn get_cloud_mode_tips() -> Vec<CloudModeTip> {
    vec![
        CloudModeTip::new(
            crate::tr!("agent_tips", "install-slack-integration"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/integrations/slack"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "build-programmatic-agents"),
            Some("https://docs.warp.dev/reference/api-and-sdk"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "set-secrets"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/secrets"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "view-runs-status"),
            Some("https://oz.warp.dev"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "join-real-time"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/viewing-cloud-agent-runs"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "recurring-cron-agents"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/triggers/scheduled-agents"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "fix-bugs-linear"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/integrations/linear"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "respond-ci-failures"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/integrations/github-actions"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "github-actions-agent"),
            Some("https://github.com/warpdotdev/oz-agent-action"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "rest-api-trigger"),
            Some("https://docs.warp.dev/reference/api-and-sdk"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "docker-images-env"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/environments"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "share-session-links"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/viewing-cloud-agent-runs"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "cli-share-flag"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/platform"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "fork-locally"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/viewing-cloud-agent-runs"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "internal-tools-databases"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/integrations"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "clean-stale-flags"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/triggers/scheduled-agents"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "tag-oz-linear"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/integrations/linear"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "remote-dev-boxes"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/platform"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "mcp-servers-access"),
            Some("https://docs.warp.dev/agent-platform/capabilities/mcp"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "oz-agent-run"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/platform"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "teammate-runs-visibility"),
            Some("https://oz.warp.dev"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "triage-github-issues"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/integrations/github-actions"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "daily-issues-summaries"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/integrations/github-actions"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "review-prs-suggest"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/integrations/github-actions"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "oz-environment-create"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/environments"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "webhooks-trigger"),
            Some("https://docs.warp.dev/reference/api-and-sdk"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "restart-services-alerts"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/triggers"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "personal-secrets-credentials"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/secrets"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "team-secrets-infrastructure"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/secrets"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "nightly-dependency-checks"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/triggers/scheduled-agents"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "format-lint-schedule"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/triggers/scheduled-agents"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "oz-schedule-create"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/triggers/scheduled-agents"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "pause-resume-schedules"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/triggers/scheduled-agents"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "oz-mcp-list"),
            Some("https://docs.warp.dev/agent-platform/capabilities/mcp"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "slack-bot-delegates"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/integrations/slack"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "slack-mentions-context"),
            Some("https://docs.warp.dev/agent-platform/cloud-agents/integrations/slack"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "typescript-sdk-pipelines"),
            Some("https://docs.warp.dev/reference/api-and-sdk"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "python-sdk-pipelines"),
            Some("https://docs.warp.dev/reference/api-and-sdk"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "monitor-success-rates"),
            Some("https://docs.warp.dev/reference/api-and-sdk"),
        ),
        CloudModeTip::new(
            crate::tr!("agent_tips", "dashboard-team-activity"),
            Some("https://docs.warp.dev/reference/api-and-sdk"),
        ),
    ]
}
