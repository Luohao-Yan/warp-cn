# =============================================================================
# agent_tips.ftl — Agent tips strings
# =============================================================================
# Message IDs: agent-tips-{id}
# =============================================================================

agent-tips-install-slack-integration = 安装 Oz Slack 集成，从任何频道或私信触发 agent。
agent-tips-build-programmatic-agents = 使用 Oz 的 TypeScript 和 Python SDK 构建可编程 Agent。
agent-tips-set-secrets = 使用 `oz secret` 命令为 agent 设置团队或个人密钥。
agent-tips-view-runs-status = 在 Oz 网页应用中查看所有 agent 运行及其状态。
agent-tips-join-real-time = 使用 Agent 会话共享实时加入任何 Oz 云 agent 运行。
agent-tips-recurring-cron-agents = 设置按 cron 计划定期运行的 agent，实现自动化维护。
agent-tips-fix-bugs-linear = 创建在 Linear 中提交 issue 时自动修复 bug 的 agent。
agent-tips-respond-ci-failures = 构建响应 CI 失败并尝试自动修复的 agent。
agent-tips-github-actions-agent = 使用 `oz-agent-action` 从 GitHub Actions 运行 agent。
agent-tips-rest-api-trigger = 调用 Oz REST API 从任何后端服务或内部工具触发 agent。
agent-tips-docker-images-env = 使用 Docker 镜像创建可复用的环境，确保 agent 执行的一致性。
agent-tips-share-session-links = 与团队共享 agent 会话链接，便于协作调试。
agent-tips-cli-share-flag = 使用 Oz CLI 的 `--share` 标志从任何地方启用会话共享。
agent-tips-fork-locally = 将已完成的 Oz 云 agent 会话分支到 Warp，继续本地工作。
agent-tips-internal-tools-databases = 构建使用 agent 回答数据库问题的内部工具。
agent-tips-clean-stale-flags = 创建一个定期 agent，每周清理过期的 feature flag。
agent-tips-tag-oz-linear = 在 Linear issue 中 @Oz，自动调查并提出修复建议。
agent-tips-remote-dev-boxes = 使用 Oz CLI 在远程开发机或 CI 运行器上运行 agent。
agent-tips-mcp-servers-access = 配置 MCP 服务器，让 Oz 云 agent 访问 GitHub、Linear 和 Sentry。
agent-tips-oz-agent-run = 使用 `oz agent run` 无需打开 Warp 终端即可启动任务。
agent-tips-teammate-runs-visibility = 在 Oz 网页应用中查看队友的 agent 运行，实现共享可见性。
agent-tips-triage-github-issues = 构建自动分类和标记传入 GitHub issue 的 agent。
agent-tips-daily-issues-summaries = 设置一个 agent 生成每日新 issue 摘要。
agent-tips-review-prs-suggest = 创建一个自动审查 PR 并提出改进建议的 agent。
agent-tips-oz-environment-create = 使用 `oz environment create` 定义可复现的执行上下文。
agent-tips-webhooks-trigger = 通过 webhook 触发 agent 以响应生产事件。
agent-tips-restart-services-alerts = 构建在告警触发时重启服务或扩展部署的 agent。
agent-tips-personal-secrets-credentials = 使用个人密钥存储仅供你的 agent 使用的凭据。
agent-tips-team-secrets-infrastructure = 使用团队密钥存储所有 agent 共享的基础设施凭据。
agent-tips-nightly-dependency-checks = 创建一个每夜运行检查依赖更新的 agent。
agent-tips-format-lint-schedule = 构建一个按计划自动格式化和 lint 代码的 agent。
agent-tips-oz-schedule-create = 使用 `oz schedule create` 设置 cron 触发的 agent。
agent-tips-pause-resume-schedules = 使用 `oz schedule pause` 暂停和恢复定期 agent，无需删除。
agent-tips-oz-mcp-list = 使用 `oz mcp list` 查看你的 agent 可用的 MCP 服务器。
agent-tips-slack-bot-delegates = 构建将编码任务委托给 Oz agent 的内部 Slack 机器人。
agent-tips-slack-mentions-context = 创建一个在 Slack 线程中回复 @提及并带有完整上下文的 agent。
agent-tips-typescript-sdk-pipelines = 使用 Oz TypeScript SDK 构建自定义自动化管道。
agent-tips-python-sdk-pipelines = 使用 Oz Python SDK 将 agent 集成到数据管道中。
agent-tips-monitor-success-rates = 使用 Oz API 监控 agent 成功率和运行时间。
agent-tips-dashboard-team-activity = 构建跟踪团队所有 agent 活动的仪表盘。

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
