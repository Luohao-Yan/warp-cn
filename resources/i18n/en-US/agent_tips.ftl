# =============================================================================
# agent_tips.ftl — Agent tips strings
# =============================================================================
# Message IDs: agent-tips-{id}
# =============================================================================

agent-tips-install-slack-integration = Install the Oz Slack integration to trigger agents from any channel or DM.
agent-tips-build-programmatic-agents = Build programmatic agents using Oz's TypeScript and Python SDKs.
agent-tips-set-secrets = Set team or personal secrets for agents using the `oz secret` command.
agent-tips-view-runs-status = View all your agent runs and their status in the Oz web app.
agent-tips-join-real-time = Join any Oz cloud agent run in real-time using Agent Session Sharing.
agent-tips-recurring-cron-agents = Set up recurring agents that run on cron schedules for automated maintenance.
agent-tips-fix-bugs-linear = Create agents that automatically fix bugs when issues are filed in Linear.
agent-tips-respond-ci-failures = Build agents that respond to CI failures and attempt automatic fixes.
agent-tips-github-actions-agent = Run agents from GitHub Actions using the `oz-agent-action`.
agent-tips-rest-api-trigger = Call the Oz REST API to trigger agents from any backend service or internal tool.
agent-tips-docker-images-env = Create reusable environments with Docker images for consistent agent execution.
agent-tips-share-session-links = Share agent session links with your team for collaborative debugging.
agent-tips-cli-share-flag = Use the `--share` flag with the Oz CLI to enable session sharing from anywhere.
agent-tips-fork-locally = Fork a completed Oz cloud agent session into Warp to continue the work locally.
agent-tips-internal-tools-databases = Build internal tools that use agents to answer questions from your databases.
agent-tips-clean-stale-flags = Create a scheduled agent to clean up stale feature flags every week.
agent-tips-tag-oz-linear = Tag @Oz in Linear issues to automatically investigate and propose fixes.
agent-tips-remote-dev-boxes = Run agents on remote dev boxes or CI runners using the Oz CLI.
agent-tips-mcp-servers-access = Configure MCP servers to give Oz cloud agents access to GitHub, Linear, and Sentry.
agent-tips-oz-agent-run = Use `oz agent run` to kick off tasks without opening the Warp terminal.
agent-tips-teammate-runs-visibility = View your teammates' agent runs in the Oz web app for shared visibility.
agent-tips-triage-github-issues = Build agents that automatically triage and label incoming GitHub issues.
agent-tips-daily-issues-summaries = Set up an agent to generate daily summaries of newly opened issues.
agent-tips-review-prs-suggest = Create an agent that automatically reviews PRs and suggests improvements.
agent-tips-oz-environment-create = Use `oz environment create` to define reproducible execution contexts.
agent-tips-webhooks-trigger = Trigger agents from webhooks to respond to production incidents.
agent-tips-restart-services-alerts = Build an agent that restarts services or scales deployments when alerts fire.
agent-tips-personal-secrets-credentials = Use personal secrets for credentials that should only be used by your agents.
agent-tips-team-secrets-infrastructure = Use team secrets for shared infrastructure credentials across all agents.
agent-tips-nightly-dependency-checks = Create an agent that runs nightly to check for dependency updates.
agent-tips-format-lint-schedule = Build an agent that automatically formats and lints code on a schedule.
agent-tips-oz-schedule-create = Use `oz schedule create` to set up cron-triggered agents.
agent-tips-pause-resume-schedules = Pause and resume scheduled agents without deleting them using `oz schedule pause`.
agent-tips-oz-mcp-list = Use `oz mcp list` to see which MCP servers are available to your agents.
agent-tips-slack-bot-delegates = Build an internal Slack bot that delegates coding tasks to Oz agents.
agent-tips-slack-mentions-context = Create an agent that responds to @mentions in Slack threads with full context.
agent-tips-typescript-sdk-pipelines = Use the Oz TypeScript SDK to build custom automation pipelines.
agent-tips-python-sdk-pipelines = Use the Oz Python SDK to integrate agents into your data pipelines.
agent-tips-monitor-success-rates = Monitor agent success rates and runtimes using the Oz API.
agent-tips-dashboard-team-activity = Build a dashboard that tracks all agent activity across your team.

## -- Double-prefix aliases --

agent-tips-agent-tips-install-slack-integration = { agent-tips-install-slack-integration }
agent-tips-agent-tips-build-programmatic-agents = { agent-tips-build-programmatic-agents }
agent-tips-agent-tips-set-secrets = { agent-tips-set-secrets }
agent-tips-agent-tips-view-runs-status = { agent-tips-view-runs-status }
agent-tips-agent-tips-join-real-time = { agent-tips-join-real-time }
agent-tips-agent-tips-recurring-cron-agents = { agent-tips-recurring-cron-agents }
agent-tips-agent-tips-fix-bugs-linear = { agent-tips-fix-bugs-linear }
agent-tips-agent-tips-respond-ci-failures = { agent-tips-respond-ci-failures }
agent-tips-agent-tips-github-actions-agent = { agent-tips-github-actions-agent }
agent-tips-agent-tips-rest-api-trigger = { agent-tips-rest-api-trigger }
agent-tips-agent-tips-docker-images-env = { agent-tips-docker-images-env }
agent-tips-agent-tips-share-session-links = { agent-tips-share-session-links }
agent-tips-agent-tips-cli-share-flag = { agent-tips-cli-share-flag }
agent-tips-agent-tips-fork-locally = { agent-tips-fork-locally }
agent-tips-agent-tips-internal-tools-databases = { agent-tips-internal-tools-databases }
agent-tips-agent-tips-clean-stale-flags = { agent-tips-clean-stale-flags }
agent-tips-agent-tips-tag-oz-linear = { agent-tips-tag-oz-linear }
agent-tips-agent-tips-remote-dev-boxes = { agent-tips-remote-dev-boxes }
agent-tips-agent-tips-mcp-servers-access = { agent-tips-mcp-servers-access }
agent-tips-agent-tips-oz-agent-run = { agent-tips-oz-agent-run }
agent-tips-agent-tips-teammate-runs-visibility = { agent-tips-teammate-runs-visibility }
agent-tips-agent-tips-triage-github-issues = { agent-tips-triage-github-issues }
agent-tips-agent-tips-daily-issues-summaries = { agent-tips-daily-issues-summaries }
agent-tips-agent-tips-review-prs-suggest = { agent-tips-review-prs-suggest }
agent-tips-agent-tips-oz-environment-create = { agent-tips-oz-environment-create }
agent-tips-agent-tips-webhooks-trigger = { agent-tips-webhooks-trigger }
agent-tips-agent-tips-restart-services-alerts = { agent-tips-restart-services-alerts }
agent-tips-agent-tips-personal-secrets-credentials = { agent-tips-personal-secrets-credentials }
agent-tips-agent-tips-team-secrets-infrastructure = { agent-tips-team-secrets-infrastructure }
agent-tips-agent-tips-nightly-dependency-checks = { agent-tips-nightly-dependency-checks }
agent-tips-agent-tips-format-lint-schedule = { agent-tips-format-lint-schedule }
agent-tips-agent-tips-oz-schedule-create = { agent-tips-oz-schedule-create }
agent-tips-agent-tips-pause-resume-schedules = { agent-tips-pause-resume-schedules }
agent-tips-agent-tips-oz-mcp-list = { agent-tips-oz-mcp-list }
agent-tips-agent-tips-slack-bot-delegates = { agent-tips-slack-bot-delegates }
agent-tips-agent-tips-slack-mentions-context = { agent-tips-slack-mentions-context }
agent-tips-agent-tips-typescript-sdk-pipelines = { agent-tips-typescript-sdk-pipelines }
agent-tips-agent-tips-python-sdk-pipelines = { agent-tips-python-sdk-pipelines }
agent-tips-agent-tips-monitor-success-rates = { agent-tips-monitor-success-rates }
agent-tips-agent-tips-dashboard-team-activity = { agent-tips-dashboard-team-activity }
