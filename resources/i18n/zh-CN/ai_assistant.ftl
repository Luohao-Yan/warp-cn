# =============================================================================
# ai_assistant.ftl — AI 助手/代理字符串
# =============================================================================
# Message IDs: ai_assistant-ai-{id}
# =============================================================================

## -- 代理模式标签 --------------------------------------------------------

ai_assistant-ai-agent-mode-terminal = 终端
ai_assistant-ai-agent-mode-agent = 代理
ai_assistant-ai-agent-mode-cloud-agent = Cloud Oz

## -- 聊天/对话 ------------------------------------------------------

ai_assistant-ai-chat-placeholder = 提问…
ai_assistant-ai-chat-send-label = 发送
ai_assistant-ai-chat-stop-label = 停止
ai_assistant-ai-chat-clear-label = 清除对话
ai_assistant-ai-chat-thinking-label = 思考中…
ai_assistant-ai-chat-error-label = 出现错误，请重试。
ai_assistant-ai-chat-retry-label = 重试
ai_assistant-ai-chat-copy-response = 复制回复
ai_assistant-ai-chat-insert-response = 插入到终端
ai_assistant-ai-chat-new-conversation = 新对话

## -- 模型选择 ----------------------------------------------------------

ai_assistant-ai-model-select-label = 模型：
ai_assistant-ai-model-fast-label = 快速
ai_assistant-ai-model-smart-label = 智能
ai_assistant-ai-model-custom-label = 自定义

## -- 上下文芯片 -----------------------------------------------------------

ai_assistant-ai-context-add-file = 添加文件
ai_assistant-ai-context-add-folder = 添加文件夹
ai_assistant-ai-context-add-web = 添加网页
ai_assistant-ai-context-attached-files = 已附加的文件
ai_assistant-ai-context-clear-all = 清除全部

## -- 自动检测 -----------------------------------------------------------

ai_assistant-ai-natural-language-enabled = 自然语言检测已启用
ai_assistant-ai-natural-language-disabled = 自然语言检测已禁用
ai_assistant-ai-command-denylist-hint = 从 AI 自动检测中排除的命令

## -- 代理管理视图筛选标签和选项 --------------------------

ai_assistant-ai-filter-status-label = 状态
ai_assistant-ai-filter-status-all = 全部
ai_assistant-ai-filter-status-working = 处理中
ai_assistant-ai-filter-status-done = 已完成
ai_assistant-ai-filter-status-failed = 失败
ai_assistant-ai-filter-source-label = 来源
ai_assistant-ai-filter-created-on-label = 创建时间
ai_assistant-ai-filter-has-artifact-label = 有产物
ai_assistant-ai-filter-harness-label = 运行方式
ai_assistant-ai-filter-environment-label = 环境
ai_assistant-ai-filter-created-by-label = 创建者
ai_assistant-ai-filter-last-24-hours = 过去24小时
ai_assistant-ai-filter-past-3-days = 过去3天
ai_assistant-ai-filter-last-week = 过去一周
ai_assistant-ai-filter-pull-request = 拉取请求
ai_assistant-ai-filter-plan = 计划
ai_assistant-ai-filter-screenshot = 截图
ai_assistant-ai-filter-file = 文件
ai_assistant-ai-filter-unknown = 未知
ai_assistant-ai-filter-clear-filters = 清除筛选
ai_assistant-ai-filter-clear-all = 全部清除
ai_assistant-ai-filter-no-results = 没有匹配的结果
ai_assistant-ai-filter-all = 全部
ai_assistant-ai-filter-none = 无
ai_assistant-ai-environment-label = 环境

## -- AI 文档视图溢出菜单项 -----------------------------------

ai_assistant-ai-doc-copy-link = 复制链接
ai_assistant-ai-doc-show-in-warp-drive = 在 Warp Drive 中显示
ai_assistant-ai-doc-save-as-markdown = 保存为 Markdown 文件
ai_assistant-ai-doc-attach-to-active-session = 附加到活动会话
ai_assistant-ai-doc-copy-plan-id = 复制计划 ID

## -- 其他 ---------------------------------------------------------------------

ai_assistant-ai-os-not-available = 此操作系统上不可用 AI 提供商
ai_assistant-ai-provider-not-configured = AI 提供商未配置
ai_assistant-ai-configure-provider = 配置 AI 提供商
ai-invalid-file-name = 无效文件名
ai-review-comment = 审查评论
ai-invalid-api-key-for-provider = { $provider } 的 API 密钥无效

## -- 代理管理视图 / 操作按钮 -------------------------------------

ai_assistant-ai-all = 全部
ai_assistant-ai-all-tooltip = 查看自己的代理任务及所有共享团队任务
ai_assistant-ai-personal = 个人
ai_assistant-ai-personal-tooltip = 查看自己创建的代理任务
ai_assistant-ai-view-agents = 查看代理
ai_assistant-ai-clear-filters = 清除筛选
ai_assistant-ai-clear-all = 全部清除
ai_assistant-ai-search = 搜索
ai_assistant-ai-new-agent = 新建代理
ai_assistant-ai-unknown = 未知
ai_assistant-ai-get-started = 开始使用
ai_assistant-ai-visit-oz = 访问 Oz
ai_assistant-ai-runs = 运行
ai_assistant-ai-loading-agents = 正在加载代理...
ai_assistant-ai-no-filter-results = 没有匹配筛选条件的结果
ai_assistant-ai-created-on = 创建时间
ai_assistant-ai-has-artifact = 有产物
ai_assistant-ai-pull-request = 拉取请求
ai_assistant-ai-plan = 计划
ai_assistant-ai-screenshot = 截图
ai_assistant-ai-file = 文件
ai_assistant-ai-none = 无
ai_assistant-ai-last-24-hours = 过去24小时
ai_assistant-ai-past-3-days = 过去3天
ai_assistant-ai-last-week = 过去一周
ai_assistant-ai-environment = 环境
ai_assistant-ai-created-by = 创建者
ai_assistant-ai-session-expired = 会话已过期
ai_assistant-ai-no-session-available = 无可用会话
ai_assistant-ai-agent-label = 代理
ai_assistant-ai-executor-label = 执行者
ai_assistant-ai-loading-cloud-agent-runs = 正在加载云端代理运行

## -- 代理管理 / 通知 ------------------------------------------

ai_assistant-ai-mark-all-as-read = 全部标为已读
ai_assistant-ai-notifications-title = 通知
ai_assistant-ai-no-notifications = 没有通知
ai_assistant-ai-close-tooltip = 关闭

## -- 云端设置指南 ---------------------------------------------------------

ai_assistant-ai-cloud-agents-getting-started = Oz 云端代理入门
ai_assistant-ai-cloud-agents-subtitle = 通过集成（Linear、Slack）、事件（GitHub、内置定时任务）或 Oz SDK/CLI，直接在 Warp 中启动 Oz 云端代理。
ai_assistant-ai-check-out-the = 查看
ai_assistant-ai-oz-documentation = Oz 文档
ai_assistant-ai-to-learn-more =  以了解更多。
ai_assistant-ai-quick-start-visit = 快速开始：访问 oz.warp.dev 体验基于 UI 的设置流程。
ai_assistant-ai-manual-setup-create-integration = 手动设置：使用 Oz CLI 创建 Slack 或 Linear 集成
ai_assistant-ai-create-an-environment = 创建环境
ai_assistant-ai-first-set-up-environment = 首先，设置一个环境来创建集成。
ai_assistant-ai-use-warps-env-setup = 使用 Warp 的环境设置命令，让代理协助您完成配置。
ai_assistant-ai-visit-docs = 访问文档
ai_assistant-ai-or-supply-docker-image = 或者，提供您自己的 Docker 镜像。
ai_assistant-ai-create-an-integration = 创建集成
ai_assistant-ai-integrate-slack-linear = 集成 Slack 或 Linear，通过 @Warp 给 Warp 的代理分配任务。
ai_assistant-ai-wf-create-environment = 创建环境
ai_assistant-ai-wf-create-environment-cli = 创建环境 (CLI)
ai_assistant-ai-wf-create-slack-integration = 创建 Slack 集成
ai_assistant-ai-wf-create-linear-integration = 创建 Linear 集成
ai_assistant-ai-wf-create-env-arg-repo = 仓库的 GitHub 链接或本地文件路径
ai_assistant-ai-wf-create-env-cli-arg-name = 环境名称
ai_assistant-ai-wf-create-env-cli-arg-image = 环境使用的 Docker 镜像
ai_assistant-ai-wf-integration-arg-env-id = 要集成的环境 ID

## -- AI 文档视图 ----------------------------------------------------------

ai_assistant-ai-show-version-history-tooltip = 显示版本历史
ai_assistant-ai-update-agent = 更新代理
ai_assistant-ai-restore = 恢复
ai_assistant-ai-save-and-sync-tooltip = 保存并自动同步此计划到您的 Warp Drive
ai_assistant-ai-plan-synced-message = 此计划已同步到您的 Warp Drive，您的编辑将自动保存。
ai_assistant-ai-copy-link = 复制链接
ai_assistant-ai-show-in-warp-drive = 在 Warp Drive 中显示
ai_assistant-ai-save-as-markdown = 保存为 Markdown 文件
ai_assistant-ai-attach-to-active-session = 附加到活动会话
ai_assistant-ai-copy-plan-id = 复制计划 ID
ai_assistant-ai-link-copied-toast = 链接已复制到剪贴板
ai_assistant-ai-plan-id-copied-toast = 计划 ID 已复制到剪贴板
ai_assistant-ai-planning-document = 计划文档
ai_assistant-ai-untitled = 无标题

## -- 代理输入页脚 / 操作按钮和工具提示 ---------------------------

ai_assistant-ai-enable-nld-tooltip = 启用终端命令自动检测
ai_assistant-ai-disable-nld-tooltip = 禁用终端命令自动检测
ai_assistant-ai-fast-forward-on-tooltip = 关闭所有代理操作自动批准
ai_assistant-ai-fast-forward-off-tooltip = 自动批准此任务的所有代理操作
ai_assistant-ai-start-remote-control-tooltip = 开始远程控制
ai_assistant-ai-start-remote-control-login-tooltip = 登录以使用 /remote-control
ai_assistant-ai-voice-input-tooltip = 语音输入
ai_assistant-ai-attach-file-tooltip = 附加文件
ai_assistant-ai-hand-off-to-cloud-tooltip = 移交至云端
ai_assistant-ai-file-explorer-label = 文件浏览器
ai_assistant-ai-file-explorer-tooltip = 打开文件浏览器
ai_assistant-ai-rich-input-label = 富文本输入
ai_assistant-ai-rich-input-tooltip = 打开富文本输入
ai_assistant-ai-hide-rich-input-label = 隐藏富文本输入
ai_assistant-ai-hide-rich-input-tooltip = 隐藏富文本输入
ai_assistant-ai-open-coding-agent-settings-tooltip = 打开编码代理设置
ai_assistant-ai-enable-notifications-label = 启用通知
ai_assistant-ai-install-plugin-tooltip = 安装 Warp 插件以在 Warp 中启用富代理通知
ai_assistant-ai-notifications-setup-instructions-label = 通知设置说明
ai_assistant-ai-notifications-setup-instructions-tooltip = 查看 Warp 插件安装说明
ai_assistant-ai-update-warp-plugin-label = 更新 Warp 插件
ai_assistant-ai-update-plugin-tooltip = Warp 插件有新版本可用
ai_assistant-ai-plugin-update-instructions-label = 插件更新说明
ai_assistant-ai-plugin-update-instructions-tooltip = 查看 Warp 插件更新说明
ai_assistant-ai-dismiss-tooltip = 关闭
ai_assistant-ai-stop-sharing-label = 停止共享
ai_assistant-ai-stop-sharing-tooltip = 停止共享
ai_assistant-ai-context-window-usage-tooltip = 上下文窗口使用量

## -- 待处理用户查询块 --------------------------------------------------

ai_assistant-ai-remove-queued-prompt = 移除排队中的提示
ai_assistant-ai-send-now = 立即发送
ai_assistant-ai-queued = 已排队

## -- Block.rs 操作按钮标签和工具提示 ---------------------------------

ai_assistant-ai-open-in-github-tooltip = 在 GitHub 中打开
ai_assistant-ai-open-in-code-review = 在代码审查中打开
ai_assistant-ai-manage-rules = 管理规则
ai_assistant-ai-review-changes = 审查更改
ai_assistant-ai-open-all-in-code-review = 全部在代码审查中打开
ai_assistant-ai-dismiss-suggestion = 关闭
ai_assistant-ai-dont-show-again = 不再显示
ai_assistant-ai-rewind = 回退
ai_assistant-ai-rewind-tooltip = 回退到此块之前
ai_assistant-ai-cancel = 取消
ai_assistant-ai-copied-to-clipboard = 已复制到剪贴板
ai_assistant-ai-thank-you-feedback = 感谢您的反馈！
ai_assistant-ai-follow-up-conversation-tooltip = 继续现有对话

## -- 建议规则弹窗 ------------------------------------------------------

ai_assistant-ai-suggested-rule-header = 建议规则
ai_assistant-ai-add-rule = 添加规则
ai_assistant-ai-edit-rule = 编辑规则
ai_assistant-ai-editing-disabled-offline = 离线时编辑功能已禁用。
ai_assistant-ai-name-label = 名称
ai_assistant-ai-rule-label = 规则

## -- 取消摘要对话框 -----------------------------------------------

ai_assistant-ai-cancel-summarization = 取消摘要
ai_assistant-ai-continue-summarization = 继续摘要

## -- 遥测横幅 ----------------------------------------------------------

ai_assistant-ai-telemetry-title-existing = 我们已更新遥测政策。
ai_assistant-ai-telemetry-title-new = 帮助我们改进 Warp。
ai_assistant-ai-telemetry-description = 我们可能会收集某些控制台交互以改进 Warp 的 AI 功能。您可以随时选择退出。
ai_assistant-ai-manage-privacy-settings = 管理隐私设置

## -- AWS Bedrock 凭证错误 ---------------------------------------------

ai_assistant-ai-aws-auth-failed = 使用 { $model_name } 时 AWS Bedrock 认证失败。请运行 `{ $login_command }` 刷新您的 AWS 凭证。
ai_assistant-ai-always-run-auto = 始终自动运行
ai_assistant-ai-refresh-aws-credentials = 刷新 AWS 凭证
ai_assistant-ai-configure = 配置
ai_assistant-ai-running-login-command = 正在运行 `{ $login_command }`...
ai-aws-credentials-not-found = 未找到 { $profile_reference } 的 AWS 凭证。请使用 AWS CLI 登录或更新您的 AWS 凭证配置，然后刷新。
ai-aws-credentials-timeout = 加载 AWS 凭证超时。请刷新后重试。
ai-aws-credentials-invalid-config = { $profile_reference } 在您的本地 AWS 配置中无效或不完整。请更新您的 AWS 配置文件设置和凭证，然后刷新。
ai-aws-credentials-provider-error = 无法从您配置的提供者加载 AWS 凭证。请刷新您的 AWS 登录后重试。
ai-aws-credentials-unexpected-error = 加载 AWS 凭证时出现意外错误。请刷新您的 AWS 登录后重试。
ai-aws-credentials-unable-to-load = 无法加载 AWS 凭证。请刷新您的 AWS 登录后重试。
ai-aws-credentials-refresh-interrupted = 凭证刷新被中断
ai-aws-profile-reference-default = 默认 AWS 配置文件
ai-aws-profile-reference-named = AWS 配置文件 `{ $profile }`
ai-aws-profile-reference-default-capitalized = 默认 AWS 配置文件
ai-aws-profile-reference-named-capitalized = AWS 配置文件 `{ $profile }`

## -- 代理提问视图 ----------------------------------------------------

ai_assistant-ai-type-answer = 输入答案并按 Enter
ai_assistant-ai-skip-all = 全部跳过
ai_assistant-ai-next = 下一个
ai_assistant-ai-other = 其他...
ai_assistant-ai-agent-questions = 代理问题
ai_assistant-ai-questions-unavailable = 问题不可用
ai_assistant-ai-questions-skipped = 问题已跳过
ai_assistant-ai-questions-skipped-autoapprove = 因自动批准而跳过的问题
ai_assistant-ai-allow-agent-questions = 允许代理提问：
ai_assistant-ai-answered-question = 已回答问题
ai_assistant-ai-answered-all-questions = 已回答全部 { $total } 个问题
ai_assistant-ai-skipped = 已跳过

## -- 执行配置编辑器 --------------------------------------------------

ai_assistant-ai-profile-editor-header = 配置编辑器
ai_assistant-ai-profile-agent-decides = 代理决定
ai_assistant-ai-profile-always-allow = 始终允许
ai_assistant-ai-profile-always-ask = 始终询问
ai_assistant-ai-profile-ask-on-first-write = 首次写入时询问
ai_assistant-ai-profile-never = 从不
ai_assistant-ai-profile-never-ask = 从不询问
ai_assistant-ai-profile-ask-unless-autoapprove = 除非自动批准否则询问
ai_assistant-ai-profile-frontier-unavailable = 免费计划不提供前沿模型。请升级
ai_assistant-ai-edit-profile = 编辑配置
ai_assistant-ai-delete-profile = 删除配置
ai_assistant-ai-select-mcp-servers = 选择 MCP 服务器
ai_assistant-ai-profile-eg-ls = 例如 ls .*
ai_assistant-ai-profile-eg-rm = 例如 rm .*
ai_assistant-ai-profile-eg-repo = 例如 ~/code-repos/repo
ai_assistant-ai-profile-eg-yolo = 例如 "YOLO code"

## -- 请求命令 ---------------------------------------------------------

ai_assistant-ai-reject = 拒绝
ai_assistant-ai-run = 运行
ai_assistant-ai-edit-command = 编辑
ai_assistant-ai-done = 完成
ai_assistant-ai-generating-command = 正在生成命令...
ai_assistant-ai-agent-monitoring-command = 代理正在监控命令...
ai_assistant-ai-agent-needs-input = 代理需要您的输入才能继续
ai_assistant-ai-user-in-control = 用户控制中。
ai_assistant-ai-user-stopped-agent = 已暂停代理。用户控制中。
ai_assistant-ai-user-take-control = 用户控制中
ai_assistant-ai-agent-errored = 代理出现问题。请接管控制。
ai_assistant-ai-viewing-command-detail = 正在查看命令详情
ai_assistant-ai-viewing-mcp-tool-detail = 正在查看 MCP 工具调用详情
ai_assistant-ai-ok-run-command = 可以运行此命令并读取输出吗？
ai_assistant-ai-ok-call-mcp-tool = 可以调用此 MCP 工具吗？
ai_assistant-ai-edit-requested-command = 编辑请求的命令
ai_assistant-ai-auto-approve = 自动批准
ai_assistant-ai-copied-from = 复制自

## -- 代码差异视图 --------------------------------------------------------

ai_assistant-ai-expand = 展开
ai_assistant-ai-collapse = 折叠
ai_assistant-ai-open-config = 打开配置
ai_assistant-ai-no-file-name = 无文件名
ai_assistant-ai-file-renamed-no-changes = 文件已重命名（无更改）
ai_assistant-ai-dont-show-banners = 不再显示建议代码横幅
ai_assistant-ai-manage-banner-settings = 管理建议代码横幅设置
ai-settings-ai = 设置 > AI
ai_assistant-ai-settings-ai = { ai-settings-ai }
ai_assistant-ai-requested-edit = 请求的编辑
ai_assistant-ai-review-changes-tooltip = 审查更改
ai_assistant-ai-expand-tooltip = 展开
ai_assistant-ai-collapse-tooltip = 折叠
ai_assistant-ai-edit-code-diff = 编辑代码差异
ai_assistant-ai-refine = 优化
ai_assistant-ai-dismiss = 关闭
ai_assistant-ai-accept-and-continue = 接受并继续由代理执行
ai_assistant-ai-iterate-with-agent = 与代理迭代
ai_assistant-ai-file-new = { $file_name }（新建）
ai_assistant-ai-file-deleted = { $file_name }（已删除）
ai_assistant-ai-failed-revert = 无法还原 { $file_name } 的更改
ai_assistant-ai-file-suffix = 文件
ai_assistant-ai-renamed-suffix = （已重命名）
ai_assistant-ai-deleted-file-suffix = （已删除文件）

## -- 建议单元测试 ------------------------------------------------------

ai_assistant-ai-generate-tests = 生成测试
ai_assistant-ai-dismiss-tests = 关闭
ai_assistant-ai-dont-show-suggested-banners = 不再显示建议代码横幅
ai_assistant-ai-manage-suggested-settings = 设置 > AI

## -- Toast 消息 ---------------------------------------------------------------

ai_assistant-ai-copied-branch-name = 已复制分支名
ai_assistant-ai-failed-prepare-file-download = 文件下载准备失败。
ai_assistant-ai-downloaded-file = 已下载 { $filename }。
ai_assistant-ai-failed-download-file = 下载 { $filename } 失败。
ai_assistant-ai-plugin-install-failed-toast = 无法自动安装插件。请再次点击芯片查看手动安装步骤。
ai_assistant-ai-plugin-installed-restart-toast = Warp 插件已安装。请重启会话以激活。
ai_assistant-ai-plugin-updated-restart-toast = Warp 插件已更新。请重启会话以激活。
ai_assistant-ai-installing-warp-plugin = 正在安装 Warp 插件...
ai_assistant-ai-failed-install-warp-plugin = Warp 插件安装失败
ai_assistant-ai-updating-warp-plugin = 正在更新 Warp 插件...
ai_assistant-ai-failed-update-warp-plugin = Warp 插件更新失败
ai_assistant-ai-voice-microphone-access = 语音输入启动失败（可能需要启用麦克风访问）
ai_assistant-ai-voice-enabled-toast = 语音输入已启用。您也可以按住 `{ $key }` 键来激活语音输入（在设置 > AI > 语音中配置）

## -- 事实视图 ------------------------------------------------------------------

ai_assistant-ai-edit-api-keys = 编辑 API 密钥
ai_assistant-ai-open-file = 打开文件

## -- 向用户提问视图 -----------------------------------------------------------

ai_assistant-ai-type-answer-placeholder = 输入您的回答并按 Enter
ai_assistant-ai-select-all-that-apply = （选择所有适用项）
ai_assistant-ai-questions-skipped-auto-approve = 因自动批准而跳过问题
ai_assistant-ai-allow-agent-ask-questions = 允许代理提问：
ai_assistant-ai-prev-nav = 上一页
ai_assistant-ai-next-nav = 下一页
ai_assistant-ai-answered-of-questions = 已回答 { $answered_count}/{ $total } 个问题
ai_assistant-ai-skipped-answer = 已跳过
ai_assistant-ai-question-prefix = 问：{ $question }
ai_assistant-ai-answer-prefix = 答：{ $answer }

## -- 执行配置文件编辑器 -------------------------------------------------------

ai_assistant-ai-profile-editor = 配置文件编辑器
ai_assistant-ai-agent-decides = 代理决定
ai_assistant-ai-always-allow = 始终允许
ai_assistant-ai-always-ask = 始终询问
ai_assistant-ai-ask-on-first-write = 首次写入时询问
ai_assistant-ai-never = 从不
ai_assistant-ai-never-ask = 从不询问
ai_assistant-ai-ask-unless-auto-approve = 除非自动批准否则询问
ai_assistant-ai-command-allowlist-placeholder = 例如 ls .*
ai_assistant-ai-command-denylist-placeholder = 例如 rm .*
ai_assistant-ai-directory-allowlist-placeholder = 例如 ~/code-repos/repo
ai_assistant-ai-profile-name-placeholder = 例如 "YOLO code"
ai_assistant-ai-default-profile-name = 默认
ai_assistant-ai-upgrade-footer = 免费计划无法使用前沿模型。升级
ai_assistant-ai-upgrade-link = 升级

## -- 执行配置文件编辑器 UI 辅助 -------------------------------------------------

ai_assistant-ai-default-profile-name-cannot-change = 默认配置文件名称无法更改。
ai_assistant-ai-models-section = 模型
ai_assistant-ai-base-model = 基础模型
ai_assistant-ai-base-model-desc = 此模型作为代理背后的主要引擎。它驱动大多数交互，并在必要时为规划或代码生成等任务调用其他模型。Warp 可能会根据模型可用性或辅助任务（如对话摘要）自动切换到备用模型。
ai_assistant-ai-context-window = 上下文窗口
ai_assistant-ai-context-window-desc = 基础模型的工作记忆——它可以一次考虑的对话、代码和文档的标记数量。更大的窗口可以在更大的代码库上实现更长的对话和更连贯的响应，代价是更高的延迟和计算使用量。
ai_assistant-ai-full-terminal-use-model = 完整终端使用模型
ai_assistant-ai-full-terminal-use-model-desc = 当代理在数据库 shell、调试器、REPL 或开发服务器等交互式终端应用程序中操作时使用的模型——读取实时输出并向 PTY 写入命令。
ai_assistant-ai-computer-use-model = 计算机使用模型
ai_assistant-ai-computer-use-model-desc = 当代理通过鼠标移动、点击和键盘输入控制您的计算机以与图形应用程序交互时使用的模型。
ai_assistant-ai-permissions-section = 权限
ai_assistant-ai-apply-code-diffs = 应用代码差异
ai_assistant-ai-read-files = 读取文件
ai_assistant-ai-execute-commands = 执行命令
ai_assistant-ai-interact-with-running-commands = 与运行中的命令交互
ai_assistant-ai-computer-use = 计算机使用
ai_assistant-ai-ask-questions = 提问
ai_assistant-ai-call-mcp-servers = 调用 MCP 服务器
ai_assistant-ai-workspace-override-tooltip = 此选项由您的组织设置强制执行，无法自定义。
ai_assistant-ai-directory-allowlist = 目录白名单
ai_assistant-ai-directory-allowlist-desc = 授予代理对某些目录的文件访问权限。
ai_assistant-ai-command-allowlist = 命令白名单
ai_assistant-ai-command-allowlist-desc = 匹配可由 Oz 自动执行的命令的正则表达式。
ai_assistant-ai-command-denylist = 命令黑名单
ai_assistant-ai-command-denylist-desc = 匹配 Oz 必须请求许可才能执行的命令的正则表达式。
ai_assistant-ai-mcp-allowlist = MCP 白名单
ai_assistant-ai-mcp-allowlist-desc = 允许 Oz 调用的 MCP 服务器。
ai_assistant-ai-mcp-denylist = MCP 黑名单
ai_assistant-ai-mcp-denylist-desc = 不允许 Oz 调用的 MCP 服务器。
ai_assistant-ai-mcp-server-fallback = MCP 服务器 { $uuid }
ai_assistant-ai-plan-auto-sync = 计划自动同步
ai_assistant-ai-plan-auto-sync-desc = 此代理创建的计划将自动添加并同步到 Warp Drive。
ai_assistant-ai-call-web-tools = 调用网络工具
ai_assistant-ai-call-web-tools-desc = 代理在有助于完成任务时可使用网络搜索。

## -- 权限描述 -----------------------------------------------------------------

ai_assistant-ai-permission-agent-decides-desc = 代理选择最安全的路径：自信时自主行动，不确定时请求批准。
ai_assistant-ai-permission-always-allow-desc = 给予代理完全自主权——无需任何手动批准。
ai_assistant-ai-permission-always-ask-desc = 要求代理在采取任何行动前获得明确批准。
ai_assistant-ai-permission-ask-on-first-write-desc = 代理在首次需要与运行中的命令交互时会请求许可。之后，将在该命令的其余部分自动继续。
ai_assistant-ai-permission-write-always-ask-desc = 代理每次与运行中的命令交互时都会请求许可。
ai_assistant-ai-permission-computer-use-never-desc = 计算机使用工具已禁用，代理无法使用。
ai_assistant-ai-permission-computer-use-always-ask-desc = 要求代理在使用计算机使用工具前获得明确批准。
ai_assistant-ai-permission-computer-use-always-allow-desc = 给予代理完全自主权，无需批准即可使用计算机使用工具。
ai_assistant-ai-permission-unknown-desc = 未知设置。
ai_assistant-ai-permission-ask-except-auto-approve-desc = 代理可能会提问并暂停等待您的回复，但在自动批准开启时会自动继续。
ai_assistant-ai-permission-never-ask-desc = 代理不会提问，将以最佳判断继续。
ai_assistant-ai-permission-always-ask-question-desc = 代理可能会提问，即使在自动批准开启时也会暂停等待您的回复。

ai-assistant-edit-requested-command = 编辑请求的命令

## -- 硬编码 UI 文本附加 i18n 字符串 --------------------------------

ai_assistant-ai-accept = 接受
ai_assistant-ai-view-in-oz = 在 Oz 中查看
ai_assistant-ai-view-in-oz-tooltip = 在 Oz 网页应用中查看此运行
ai_assistant-ai-initialize-project = 初始化项目
ai_assistant-ai-delete-rule = 删除规则
ai_assistant-ai-choose-your-agent = 选择你的代理
ai_assistant-ai-suggested = 推荐
ai_assistant-ai-cloud-agent = 云端代理
ai_assistant-ai-local-agent = 本地代理
ai_assistant-ai-open-conversation = 打开会话
ai_assistant-ai-cancel-task = 取消任务
ai_assistant-ai-fork-conversation = 派生会话
ai_assistant-ai-view-details = { ai-view-details }
ai_assistant-ai-copy-link-to-run = 复制运行链接
ai_assistant-ai-notif-filter-all = 全部标签
ai_assistant-ai-notif-filter-unread = 未读
ai_assistant-ai-notif-filter-errors = 错误

# -- Agent type selector --
ai_assistant-ai-cloud-agent-desc = 在您选择的云环境中自主运行。适用于并行或长时间运行的任务。
ai_assistant-ai-local-agent-desc = 在您的本机上运行，需要监督。适用于快速的交互式任务。

## -- Additional AI assistant strings --
ai-feature-name = Warp AI
ai-ask-text = 询问 Warp AI
ai-zero-state-script-prompt = 编写一个连接到 AWS EC2 实例的脚本。
ai-zero-state-git-prompt = 如何撤销 git 中最近的提交？
ai-how-do-i-fix = 如何修复这个问题？
ai-show-examples = 显示示例。
ai-enter-custom-docker-image = 输入自定义 Docker 镜像名称：
ai-dont-show-suggested-code-banners = 不再显示建议代码横幅
ai-rules-header = 规则
ai-rules-description = 规则通过提供结构化的指导原则来增强代理，帮助保持一致性、强制执行最佳实践，并适应特定工作流，包括代码库或更广泛的任务。
ai-search-rules = 搜索规则
ai-zero-state-text = 添加规则后，将在此处显示。
ai-zero-state-project-text = 为项目生成 WARP.md 规则文件后，将在此处显示。
ai-disabled-banner-text = 您的规则已禁用，不会在会话中作为上下文使用。您可以
ai-disabled-banner-link-text = 重新启用
ai-disabled-banner-text-2 =  随时。
ai-global-scope-tab = 全局
ai-project-based-scope-tab = 基于项目
ai-rule-name-placeholder = 例如 Rust 规则
ai-rule-description-placeholder = 例如 在 Rust 中永远不要使用 unwrap
ai-refine = 优化
ai-dismiss = 关闭
ai-accept-and-continue = 接受并继续由代理执行
ai-iterate-with-agent = 与代理迭代
ai-file-new = { $file_name }（新建）
ai-file-deleted = { $file_name }（已删除）
ai-failed-revert = 无法还原 { $file_name } 的更改
ai-file-suffix = 文件
ai-renamed-suffix = （已重命名）
ai-deleted-file-suffix = （已删除文件）

## -- Agent tip strings --

ai-tip-label = 提示：
ai-tip-slash-commands = `/` 打开斜杠命令菜单，访问快速智能体操作。
ai-tip-toggle-nl-detection = <keybinding> 切换自然语言检测，在智能体和终端输入之间切换。
ai-tip-plan = `/plan` <prompt> 在执行前为智能体创建计划。
ai-tip-command-palette = <keybinding> 打开命令面板，访问 Warp 操作和快捷键。
ai-tip-store-workflows = 将可复用的工作流、笔记本和提示词存储到你的
ai-tip-redirect-agent = 输入新提示词可在智能体运行时重定向。
ai-tip-at-context = `@` 从文件、块或 Warp Drive 对象添加上下文到提示词。
ai-tip-attach-block = <keybinding> 将上条命令输出附加为智能体上下文。
ai-tip-init-repo = `/init` 索引代码仓库，让智能体理解你的代码库。
ai-tip-agent-profiles = 添加智能体配置文件，自定义每个会话的权限和模型。
ai-tip-fork-conversation = 右键点击块从该点分叉对话。
ai-tip-copy-output = 右键点击块复制对话输出。
ai-tip-drag-image = 将图片拖入面板，附加为智能体上下文。
ai-tip-interactive-tools = 提示智能体控制交互式工具，如 node、python、postgres、gdb 或 vim。
ai-tip-code-review = <keybinding> 打开代码审查面板，查看智能体的更改。
ai-tip-add-mcp = `/add-mcp` 向工作区添加 MCP 服务器。
ai-tip-open-mcp = `/open-mcp-servers` 查看并与团队共享 MCP 服务器。
ai-tip-create-environment = `/create-environment` 将代码仓库转为远程 Docker 环境，供智能体运行。
ai-tip-add-prompt = `/add-prompt` 创建可复用的提示词，用于重复工作流。
ai-tip-add-rule = `/add-rule` 创建全局智能体规则。
ai-tip-fork = `/fork` 创建当前对话的全新副本，可选择附带新提示词。
ai-tip-open-code-review = `/open-code-review` 打开代码审查面板，检查智能体生成的差异。
ai-tip-new = `/new` 开始具有干净上下文的新智能体对话。
ai-tip-compact = `/compact` 总结当前对话，释放上下文窗口空间。
ai-tip-usage = `/usage` 显示当前 AI 额度使用情况。
ai-tip-oz-command = 使用 `oz` 命令在无头模式下运行 Oz 智能体，适用于远程机器。
ai-tip-selected-text-context = 右键点击选中文本，附加为智能体上下文。
ai-tip-agents-md = 使用 `AGENTS.md` 或 `CLAUDE.md` 应用项目范围规则。
ai-tip-paste-url = 粘贴 URL，将该网页附加为智能体上下文。
ai-tip-warpify-ssh = Warpify 远程 SSH 会话，在该环境中启用 Oz。
ai-tip-switch-profiles = 切换智能体配置文件，快速更改模型和智能体权限。
ai-tip-init-warp-md = `/init` 生成 `WARP.md` 文件，为智能体定义项目规则。
ai-tip-auto-approve = <keybinding> 自动批准智能体在本会话剩余时间的命令和差异。
ai-tip-cancel-task = <keybinding> 取消当前智能体任务。
ai-warp-drive-period = Warp Drive。
ai-tip-voice-input = 按住 <keybinding> 直接对智能体语音输入提示词。

## -- 输出视图字符串 --

ai-conversation-summarized = 对话已摘要
ai-thought-for-duration = 思考了 { $duration }
ai-searched = 已搜索
ai-searching = 搜索中
ai-conversation-label = 对话
ai-this-conversation = 本对话
ai-sorry-bad-experience-single = 抱歉此次交互体验不佳。我们已退还您 1 积分。感谢您的反馈！
ai-sorry-bad-experience-plural = 抱歉此次交互体验不佳。我们已退还您 { $count } 积分。感谢您的反馈！
ai-response-wont-count = 此回复不会计入您的用量。
ai-always-allow-file-access-coding = 始终允许编码任务的文件访问
ai-always-allow-file-access-repo = 始终允许此仓库的文件访问
ai-manage-autonomy-permissions = 管理 AI 自主权权限
ai-search-in = 在 { $path } 中搜索
ai-searching-in = 正在 { $path } 中搜索
ai-no-relevant-files = 未找到相关文件。
ai-search-failed-not-indexed = 在 { $path } 中搜索失败，因为代码库未索引
ai-search-failed = 在 { $path } 中搜索失败
ai-search-cancelled = 在 { $path } 中的搜索已取消
ai-in-path-cancelled =  在 { $path } 中已取消
ai-in-path =  在 { $path } 中
ai-failed-read-files = 读取文件失败
ai-open-skill = 打开技能
ai-stopped-task-with-index = 已停止任务 { $current }/{ $total }："{ $title }"
ai-stopped-task-with-name = 已停止任务："{ $task_name }"
ai-stopped-task = 已停止任务
ai-resume-conversation = 恢复对话
ai-could-not-apply-changes = 无法将更改应用到文件。
ai-suggestion-edited-in-another-tab = 此建议正在另一个标签页中编辑。
ai-new-conversation-started = 已开始新对话
ai-continuing-current-conversation = 正在继续当前对话
ai-new-conversation-cancelled = 新对话建议已取消
ai-start-a-new-conversation = 开始新对话
ai-topic-changed = 话题似乎发生了变化。您是否想开始一个新对话？
ai-the-current-directory = 当前目录
ai-grep-for = 搜索
ai-grepping-for = 搜索中
ai-cancelled-grep = 已取消在 { $path } 中对以下模式的搜索
ai-grep-patterns = 在 { $path } 中搜索以下模式
ai-grepping-patterns = 正在 { $path } 中搜索以下模式
ai-search-files-match = 搜索匹配的文件
ai-finding-files-match = 查找匹配的文件
ai-cancelled-search-files = 已取消在 { $path } 中对匹配以下模式的文件的搜索
ai-find-files-match = 在 { $path } 中查找匹配以下模式的文件
ai-finding-files-match = 正在 { $path } 中查找匹配以下模式的文件
ai-comment-addressed = 已处理的评论："{ $content }"
ai-ok-read-mcp-resource = 可以读取此 MCP 资源吗？
ai-upload-artifact = 上传产物：{ $file_path }
ai-description-label = 描述：{ $description }
ai-status-uploaded = 状态：已上传产物 { $artifact_uid }
ai-status-upload-failed = 状态：上传失败：{ $error }
ai-uploaded-file = 已上传文件：{ $filepath }
ai-view-screenshot = 查看截图
ai-ok-computer-control = 可以使用计算机控制来完成此任务吗？
ai-references = 引用
ai-suggestions = 建议：
ai-good-response = 好评
ai-bad-response = 差评
ai-continue-conversation = 继续对话
ai-fork-conversation = 分支对话
ai-show-credit-usage = 显示积分使用详情
ai-debug-output = 调试输出
ai-listing-messages = 列表中
ai-grepping-for-patterns = 搜索中
ai-grepping-for-patterns-with-query = 搜索模式：{ $query }
ai-reading-messages = 正在读取 { $count } 条消息

## -- Static prompt suggestion strings --

ai-code-feature-or-fix-bug-in-arg1 = 编写功能或修复 { $arg1 } 中的 bug
ai-help-code-feature-or-fix-bug-in-arg1 = 帮我编写功能或修复 { $arg1 } 中的 bug
ai-implement-feature-or-fix-bug-in-arg1 = 在 { $arg1 } 中实现一个功能或修复 bug。需要任何细节都可以问我。
ai-help-create-pull-request = 帮我创建一个拉取请求。
ai-help-start-new-project = 帮我开始一个新项目
ai-help-start-new-project-ask-details = 帮我开始一个新项目。需要任何细节都可以问我。
ai-help-start-nodejs-project = 帮我开始一个 Node.js 项目
ai-help-start-nodejs-project-ask-details = 帮我开始一个 Node.js 项目。需要任何细节都可以问我。
ai-help-create-new-react-app = 帮我创建新的 React 应用
ai-help-create-new-react-app-called-arg1 = 帮我创建名为 { $arg1 } 的新 React 应用。需要任何细节都可以问我。
ai-help-create-new-nextjs-app = 帮我创建新的 Next.js 应用
ai-help-create-new-nextjs-app-called-arg1 = 帮我创建名为 { $arg1 } 的新 Next.js 应用。需要任何细节都可以问我。
ai-help-start-rust-project-for-arg1 = 帮我开始 { $arg1 } 的 Rust 项目
ai-help-start-rust-project-for-arg1-ask-details = 帮我开始 { $arg1 } 的 Rust 项目。需要任何细节都可以问我。
ai-help-start-poetry-project-for-arg1 = 帮我开始 { $arg1 } 的 Poetry 项目
ai-help-start-poetry-project-for-arg1-ask-details = 帮我开始 { $arg1 } 的 Poetry 项目。需要任何细节都可以问我。
ai-help-start-django-project-for-arg1 = 帮我开始 { $arg1 } 的 Django 项目
ai-help-start-django-project-for-arg1-ask-details = 帮我开始 { $arg1 } 的 Django 项目。需要任何细节都可以问我。
ai-help-start-rails-app-for-arg1 = 帮我开始 { $arg1 } 的 Rails 应用
ai-help-start-rails-app-for-arg1-ask-details = 帮我开始 { $arg1 } 的 Rails 应用。需要任何细节都可以问我。
ai-help-start-gradle-maven-project = 帮我开始一个 Gradle/Maven 项目
ai-help-start-gradle-maven-project-ask-details = 帮我开始一个 Gradle/Maven 项目。需要任何细节都可以问我。
ai-help-start-go-project-for-arg1 = 帮我开始 { $arg1 } 的 Go 项目
ai-help-start-go-project-for-arg1-ask-details = 帮我开始 { $arg1 } 的 Go 项目。需要任何细节都可以问我。
ai-help-start-swift-project = 帮我开始一个 Swift 项目
ai-help-start-swift-project-ask-details = 帮我开始一个 Swift 项目。需要任何细节都可以问我。
ai-help-start-terraform-configuration = 帮我开始一个 Terraform 配置
ai-help-start-terraform-configuration-ask-details = 帮我开始一个 Terraform 配置。需要任何细节都可以问我。
ai-help-set-up-prisma-in-this-project = 帮我在此项目中设置 Prisma
ai-help-set-up-prisma-in-this-project-query = 帮我在此项目中设置 Prisma。
ai-help-install-dependencies-for-arg1 = 帮我为 { $arg1 } 安装依赖。
ai-help-set-up-new-ruby-project = 帮我设置新的 Ruby 项目
ai-help-set-up-new-ruby-project-ask-details = 帮我设置新的 Ruby 项目。需要任何细节都可以问我。
ai-help-set-up-modelfile-for-arg1 = 帮我为 { $arg1 } 设置 Modelfile。
ai-help-understand-resource-utilization-in-cluster = 帮我了解集群中的资源利用情况。
ai-help-inspect-kubernetes-resources = 帮我检查 Kubernetes 资源。
ai-help-manage-running-containers = 帮我管理运行中的容器。
ai-help-manage-docker-images = 帮我管理 Docker 镜像。
ai-help-manage-troubleshoot-arg1-docker-compose = 帮我管理或使用 Docker Compose 排查 { $arg1 } 的问题
ai-help-manage-troubleshoot-arg1-docker-compose-query = 帮我管理或使用 Docker Compose 排查 { $arg1 } 的问题。
ai-help-configure-containers-to-use-arg1 = 帮我配置容器使用 { $arg1 }。
ai-help-set-up-customize-vagrant-box-arg1 = 帮我设置或自定义 Vagrant box { $arg1 }。
ai-help-provision-environment-troubleshoot-vagrant = 帮我配置环境或排查 Vagrant 启动问题。
ai-help-search-code-across-files-for-arg1 = 帮我在文件中搜索 { $arg1 } 的代码。
ai-help-search-code-across-files-with-arg1 = 帮我使用 { $arg1 } 在文件中搜索代码。
ai-walk-me-through-generating-ssh-key = 带我完成生成 SSH 密钥的步骤。

## -- AI assistant panel hardcoded UI strings --

ai_assistant-zero-state-help-text = Shift + Ctrl + 空格 选择区块或文本，向 Warp AI 提问。
ai_assistant-zero-state-files-prompt = 如何查找包含特定文本的所有文件？
ai_assistant-init-placeholder-text =  提问…
ai_assistant-followup-placeholder-text =  输入回复或点击上方的选项…
ai_assistant-restart-button-text = 重启
ai_assistant-close-warp-ai = 关闭 Warp AI
ai_assistant-focus-terminal-input-from-warp-ai = 从 Warp AI 聚焦终端输入
ai_assistant-restart-warp-ai = 重启 Warp AI
ai_assistant-explain-the-following = 解释以下内容：\n
ai_assistant-what-should-i-do-next = \n接下来我该做什么？
ai_assistant-how-do-i-fix-this-block = \n如何修复这个问题？
ai_assistant-i-ran-the-command = 我运行了命令：`
ai_assistant-and-got-the-following-output = ` 并得到以下输出：\n
ai_assistant-character-limit-exceeded = 已超出字符限制。
ai_assistant-copy-transcript-to-clipboard = 复制对话到剪贴板
ai_assistant-generating-answer = 正在生成回答...
ai_assistant-ai-responses-can-be-inaccurate = AI 回答可能不准确。
ai_assistant-warp-ai-might-forget-earlier-answers = 随着对话变长，Warp AI 可能会忘记之前的回答。
ai_assistant-copy-code-to-clipboard = 复制代码到剪贴板 [Cmd + C]
ai_assistant-insert-code-into-terminal-input = 将代码插入终端输入 [Cmd + Enter]
ai_assistant-save-as-workflow = 保存为工作流 [Cmd + S]
ai_assistant-copy-answer-to-clipboard = 复制回答到剪贴板
ai_assistant-after-time = { $time }之后
ai_assistant-later = 稍后
ai_assistant-out-of-credits-upgrade = 您的额度似乎已用完。请在{ $next_time }后重试。\n\n[升级]({ $upgrade_url })以获取更多额度。
ai_assistant-out-of-credits-contact-admin = 您的额度似乎已用完。请在{ $next_time }后重试。\n\n请联系团队管理员升级以获取更多额度。
ai_assistant-out-of-credits = 您的额度似乎已用完。请在{ $next_time }后重试。
ai_assistant-technical-difficulties = 我们目前遇到了技术困难，请稍后重试。
ai_assistant-credits-used = 已使用额度：{ $num_requests_used } / { $request_limit }。
ai_assistant-until-refresh = 距刷新还有 { $next_refresh_time }。
ai_assistant-duration-days = { $count } 天
ai_assistant-duration-hours = { $count } 小时
ai_assistant-duration-minutes = { $count } 分钟

## -- 代理状态字符串 -------------------------------------------------------

ai-assistant-addressed-comments = 已处理 { $count } 条评论
ai-assistant-received-messages = 已接收 { $count } 条消息
ai-assistant-received-events = 已接收 { $count } 个代理事件
ai-assistant-seconds = { $count } 秒
ai-assistant-minutes = { $count } 分钟

## -- 已迁移 UI 字符串的主键 --

ai-cancel-summarization = 取消摘要
ai-continue-summarization = 继续摘要
ai-attach-as-agent-context = 附为代理上下文
ai-new-agent-pane = 新建代理面板
ai-follow-up-with-existing-conversation = 继续已有对话
ai-invalid-api-key = 您的 API 密钥无效。请通过 '--api-key' 或 WARP_API_KEY 环境变量提供有效的密钥。
ai-invalid-credentials = 您的凭据无效。请使用 { $cli } login 重新登录。
ai-one-credit = { $count } 额度
ai-credits = { $count } 额度
ai-credits-decimal = { $count } 额度
ai-aws-region-label = AWS 区域：
ai-aws-access-key-id-label = AWS 访问密钥 ID：
ai-now-using-default-model = 现在使用 Full Terminal Agent 的默认模型。
ai-run-in-cloud-env = 在隔离的云环境中运行你的代理任务。
ai-recent-activity = 最近活动
ai-view-changelog = 查看更新日志
ai-recommended = 推荐
ai-always-ask-permission = 你的配置文件设置为始终询问执行命令的权限。
ai-no-urls-fetched = 未获取到 URL
ai-no-urls-found = 未找到 URL
ai-view-details = 查看详情

## -- Blocklist 代理视图和编排字符串 --

ai-deleted-conversation = 已删除的对话
ai-untitled-conversation = 无标题对话
ai-agent-fallback = 代理
ai-unknown-agent = 未知代理
ai-focus-pane = 聚焦面板
ai-stop-agent = 停止代理
ai-kill-agent = 终止代理
ai-new-cloud-agent-conversation = 新的 Oz 云端代理对话
ai-new-agent-conversation = 新的 Oz 代理对话
ai-new-cloud-agent-body = 在下方发送提示词以开始新对话
ai-cloud-agents-description = 使用云端代理来运行并行代理、构建自主运行的代理，并随时随地查看您的代理状态。
ai-visit-cloud-docs = 访问文档
ai-choose-environment-tooltip = 选择环境
ai-agent-environment-label = 代理环境
ai-sending-message-to = 正在向
ai-started-agent = 已启动代理
ai-cancelled-suffix = 已取消。
ai-failed-start-agent = 启动代理失败
ai-failed-start-remote-agent = 启动远程代理失败
ai-start-agent-prefix = 启动代理
ai-start-remote-agent-prefix = 启动远程代理
ai-starting-agent = 正在启动代理
ai-starting-remote-agent = 正在启动远程代理
ai-locally-suffix = 本地。
ai-remotely-suffix = 远程。
ai-manage-command-execution = 管理命令执行设置
ai-autoexecute-readonly-speedbump = 始终允许 Oz 执行只读命令（依赖模型）
ai-deleted = 已删除
ai-restored = 已恢复
ai-continued = 已继续
ai-couldnt-navigate = 无法导航到对话。
ai-warp-docs = Warp 文档
ai-add-as-context = 添加为上下文
ai-open-in-warp = 在 Warp 中打开
ai-run-in-terminal = 在终端中运行
ai-one-update = { $count } 次更新
ai-update-count = { $count } 次更新
ai-switch-model = 切换模型

## -- 模型禁用原因工具提示 --

ai-model-disabled-admin = 此模型已被您的团队管理员禁用。
ai-model-out-of-requests = 请升级您的套餐以发送更多请求。
ai-model-provider-outage = 由于提供商服务中断，此模型暂时不可用。
ai-model-requires-upgrade = 请升级您的套餐以访问此模型。
ai-model-unavailable = 此模型不可用。

## -- Artifact button and label strings --

ai-untitled-plan = 无标题计划
ai-screenshots-label = 截图
ai-copy-branch-name = 复制分支名
ai-view-screenshots = 查看截图
ai-download-file = 下载文件
ai-file-type-label = 文件
ai-artifact-failed-load = 加载失败
ai-daily-summary = 每日摘要
ai-dashboard-screenshot = 仪表板截图
ai-pr-label = PR
ai-file-fallback-name = 文件

## -- Double-prefix aliases for new AI assistant strings --
ai_assistant-ai-enter-custom-docker-image = { ai-enter-custom-docker-image }
ai_assistant-ai-dont-show-suggested-code-banners = { ai-dont-show-suggested-code-banners }
ai_assistant-ai-ai-cancel = { ai-cancel }
ai_assistant-ai-ai-run = { ai-run }
ai_assistant-ai-rules-header = { ai-rules-header }
ai_assistant-ai-rules-description = { ai-rules-description }
ai_assistant-ai-search-rules = { ai-search-rules }
ai_assistant-ai-zero-state-text = { ai-zero-state-text }
ai_assistant-ai-zero-state-project-text = { ai-zero-state-project-text }
ai_assistant-ai-disabled-banner-text = { ai-disabled-banner-text }
ai_assistant-ai-disabled-banner-link-text = { ai-disabled-banner-link-text }
ai_assistant-ai-disabled-banner-text-2 = { ai-disabled-banner-text-2 }
ai_assistant-ai-global-scope-tab = { ai-global-scope-tab }
ai_assistant-ai-project-based-scope-tab = { ai-project-based-scope-tab }
ai_assistant-ai-rule-name-placeholder = { ai-rule-name-placeholder }
ai_assistant-ai-rule-description-placeholder = { ai-rule-description-placeholder }

## -- Blocklist 代理视图和编排字符串的双前缀别名 --

ai_assistant-ai-deleted-conversation = { ai-deleted-conversation }
ai_assistant-ai-untitled-conversation = { ai-untitled-conversation }
ai_assistant-ai-agent-fallback = { ai-agent-fallback }
ai_assistant-ai-unknown-agent = { ai-unknown-agent }
ai_assistant-ai-focus-pane = { ai-focus-pane }
ai_assistant-ai-stop-agent = { ai-stop-agent }
ai_assistant-ai-kill-agent = { ai-kill-agent }
ai_assistant-ai-new-cloud-agent-conversation = { ai-new-cloud-agent-conversation }
ai_assistant-ai-new-agent-conversation = { ai-new-agent-conversation }
ai_assistant-ai-new-cloud-agent-body = { ai-new-cloud-agent-body }
ai_assistant-ai-cloud-agents-description = { ai-cloud-agents-description }
ai_assistant-ai-visit-cloud-docs = { ai-visit-cloud-docs }
ai_assistant-ai-choose-environment-tooltip = { ai-choose-environment-tooltip }
ai_assistant-ai-agent-environment-label = { ai-agent-environment-label }
ai_assistant-ai-sending-message-to = { ai-sending-message-to }
ai_assistant-ai-started-agent = { ai-started-agent }
ai_assistant-ai-cancelled-suffix = { ai-cancelled-suffix }
ai_assistant-ai-failed-start-agent = { ai-failed-start-agent }
ai_assistant-ai-failed-start-remote-agent = { ai-failed-start-remote-agent }
ai_assistant-ai-start-agent-prefix = { ai-start-agent-prefix }
ai_assistant-ai-start-remote-agent-prefix = { ai-start-remote-agent-prefix }
ai_assistant-ai-starting-agent = { ai-starting-agent }
ai_assistant-ai-starting-remote-agent = { ai-starting-remote-agent }
ai_assistant-ai-locally-suffix = { ai-locally-suffix }
ai_assistant-ai-remotely-suffix = { ai-remotely-suffix }
ai_assistant-ai-manage-command-execution = { ai-manage-command-execution }
ai_assistant-ai-autoexecute-readonly-speedbump = { ai-autoexecute-readonly-speedbump }
ai_assistant-ai-deleted = { ai-deleted }
ai_assistant-ai-restored = { ai-restored }
ai_assistant-ai-continued = { ai-continued }
ai_assistant-ai-couldnt-navigate = { ai-couldnt-navigate }
ai_assistant-ai-warp-docs = { ai-warp-docs }
ai_assistant-ai-add-as-context = { ai-add-as-context }
ai_assistant-ai-open-in-warp = { ai-open-in-warp }
ai_assistant-ai-run-in-terminal = { ai-run-in-terminal }
ai_assistant-ai-one-update = { $count }
ai_assistant-ai-update-count = { $count }
ai_assistant-ai-switch-model = { ai-switch-model }

## -- Double-prefix aliases for static prompt suggestion strings --

ai_assistant-ai-code-feature-or-fix-bug-in-arg1 = { ai-code-feature-or-fix-bug-in-arg1 }
ai_assistant-ai-help-code-feature-or-fix-bug-in-arg1 = { ai-help-code-feature-or-fix-bug-in-arg1 }
ai_assistant-ai-implement-feature-or-fix-bug-in-arg1 = { ai-implement-feature-or-fix-bug-in-arg1 }
ai_assistant-ai-help-create-pull-request = { ai-help-create-pull-request }
ai_assistant-ai-help-start-new-project = { ai-help-start-new-project }
ai_assistant-ai-help-start-new-project-ask-details = { ai-help-start-new-project-ask-details }
ai_assistant-ai-help-start-nodejs-project = { ai-help-start-nodejs-project }
ai_assistant-ai-help-start-nodejs-project-ask-details = { ai-help-start-nodejs-project-ask-details }
ai_assistant-ai-help-create-new-react-app = { ai-help-create-new-react-app }
ai_assistant-ai-help-create-new-react-app-called-arg1 = { ai-help-create-new-react-app-called-arg1 }
ai_assistant-ai-help-create-new-nextjs-app = { ai-help-create-new-nextjs-app }
ai_assistant-ai-help-create-new-nextjs-app-called-arg1 = { ai-help-create-new-nextjs-app-called-arg1 }
ai_assistant-ai-help-start-rust-project-for-arg1 = { ai-help-start-rust-project-for-arg1 }
ai_assistant-ai-help-start-rust-project-for-arg1-ask-details = { ai-help-start-rust-project-for-arg1-ask-details }
ai_assistant-ai-help-start-poetry-project-for-arg1 = { ai-help-start-poetry-project-for-arg1 }
ai_assistant-ai-help-start-poetry-project-for-arg1-ask-details = { ai-help-start-poetry-project-for-arg1-ask-details }
ai_assistant-ai-help-start-django-project-for-arg1 = { ai-help-start-django-project-for-arg1 }
ai_assistant-ai-help-start-django-project-for-arg1-ask-details = { ai-help-start-django-project-for-arg1-ask-details }
ai_assistant-ai-help-start-rails-app-for-arg1 = { ai-help-start-rails-app-for-arg1 }
ai_assistant-ai-help-start-rails-app-for-arg1-ask-details = { ai-help-start-rails-app-for-arg1-ask-details }
ai_assistant-ai-help-start-gradle-maven-project = { ai-help-start-gradle-maven-project }
ai_assistant-ai-help-start-gradle-maven-project-ask-details = { ai-help-start-gradle-maven-project-ask-details }
ai_assistant-ai-help-start-go-project-for-arg1 = { ai-help-start-go-project-for-arg1 }
ai_assistant-ai-help-start-go-project-for-arg1-ask-details = { ai-help-start-go-project-for-arg1-ask-details }
ai_assistant-ai-help-start-swift-project = { ai-help-start-swift-project }
ai_assistant-ai-help-start-swift-project-ask-details = { ai-help-start-swift-project-ask-details }
ai_assistant-ai-help-start-terraform-configuration = { ai-help-start-terraform-configuration }
ai_assistant-ai-help-start-terraform-configuration-ask-details = { ai-help-start-terraform-configuration-ask-details }
ai_assistant-ai-help-set-up-prisma-in-this-project = { ai-help-set-up-prisma-in-this-project }
ai_assistant-ai-help-set-up-prisma-in-this-project-query = { ai-help-set-up-prisma-in-this-project-query }
ai_assistant-ai-help-install-dependencies-for-arg1 = { ai-help-install-dependencies-for-arg1 }
ai_assistant-ai-help-set-up-new-ruby-project = { ai-help-set-up-new-ruby-project }
ai_assistant-ai-help-set-up-new-ruby-project-ask-details = { ai-help-set-up-new-ruby-project-ask-details }
ai_assistant-ai-help-set-up-modelfile-for-arg1 = { ai-help-set-up-modelfile-for-arg1 }
ai_assistant-ai-help-understand-resource-utilization-in-cluster = { ai-help-understand-resource-utilization-in-cluster }
ai_assistant-ai-help-inspect-kubernetes-resources = { ai-help-inspect-kubernetes-resources }
ai_assistant-ai-help-manage-running-containers = { ai-help-manage-running-containers }
ai_assistant-ai-help-manage-docker-images = { ai-help-manage-docker-images }
ai_assistant-ai-help-manage-troubleshoot-arg1-docker-compose = { ai-help-manage-troubleshoot-arg1-docker-compose }
ai_assistant-ai-help-manage-troubleshoot-arg1-docker-compose-query = { ai-help-manage-troubleshoot-arg1-docker-compose-query }
ai_assistant-ai-help-configure-containers-to-use-arg1 = { ai-help-configure-containers-to-use-arg1 }
ai_assistant-ai-help-set-up-customize-vagrant-box-arg1 = { ai-help-set-up-customize-vagrant-box-arg1 }
ai_assistant-ai-help-provision-environment-troubleshoot-vagrant = { ai-help-provision-environment-troubleshoot-vagrant }
ai_assistant-ai-help-search-code-across-files-for-arg1 = { ai-help-search-code-across-files-for-arg1 }
ai_assistant-ai-help-search-code-across-files-with-arg1 = { ai-help-search-code-across-files-with-arg1 }
ai_assistant-ai-walk-me-through-generating-ssh-key = { ai-walk-me-through-generating-ssh-key }

## -- AI 区块加载和状态消息字符串 --
ai-agent-waiting-for-instructions = 代理正在等待指令...
ai-error-apology-text = 抱歉，我无法完成该请求。
ai-internal-warp-error = 内部 Warp 错误。
ai-warping = 正在变换...
ai-adjusting-tasks = 正在调整任务...
ai-generating-fix = 正在生成修复...
ai-creating-diff = 正在创建差异...
ai-preparing-question = 正在准备问题...
ai-generating-plan = 正在生成计划...
ai-updating-plan = 正在更新计划...
ai-summarizing-conversation = 正在总结对话...
ai-summarizing-command-output = 正在总结命令输出...
ai-searching-codebase = 正在搜索代码库...
ai-reading-files = 正在读取文件...
ai-grepping = 正在搜索...
ai-finding-files = 正在查找文件...
ai-executing-command = 正在执行命令...
ai-writing-command-input = 正在写入命令输入...
ai-waiting-for-command-exit = 正在等待命令退出...
ai-searching-the-web = 正在搜索网页...
ai-fetching-pr-comments = 正在获取 PR 评论...
ai-blocked-write-to-command = 我可以向这个正在运行的命令写入以下内容吗？
ai-blocked-reading-files = 授予对以下文件的访问权限？
ai-blocked-searching-codebase = 授予对以下仓库的访问权限？
ai-blocked-grep-file-glob = 我可以搜索此目录中的文件吗？
ai-session-expired-text = 会话将在一周后过期，且无法重新打开。
ai-default-planning-document-title = 规划文档
ai-agent-prompt-to-interact = 提示代理与之交互
ai-agent-waiting-on-instructions = 代理正在等待指令
ai-agent-waiting-for-command-exit = 代理正在等待命令退出
ai-agent-blocked = 代理需要您的许可才能继续
ai-agent-in-control = 代理正在控制中
ai-user-in-control = 用户正在控制

## -- 编排控件字符串 --

ai-edit-agent-toolbelt = 编辑代理工具栏
ai-edit-cli-agent-toolbelt = 编辑 CLI 代理工具栏
ai-available-chips = 可用芯片
ai-orchestration-env-none-label = (无环境)
ai-default-model-label = 默认模型
ai-agent-location-label = 代理位置
ai-local-label = 本地
ai-cloud-label = 云端
ai-agent-harness-label = 代理运行方式
ai-host-label = 主机
ai-environment-label = 环境
ai-base-model-label = 基础模型
ai-opencode-cloud-disabled-reason = 云端尚不支持 OpenCode。请切换到本地或选择其他运行方式。
ai-recommend-select-env = 建议为云端代理选择一个环境。
ai-recommend-create-env = 建议为云端代理创建一个环境。

## -- 编排配置块字符串 --

ai-use-orchestration = 使用编排
ai-orchestration-description = 将此工作分解为多个代理的协调流。
ai-base-model-helper = 所有代理使用的主要模型。
ai-oz-updates-header = Oz 最新动态
ai-prompt-label = 提示词
ai-generating-title = 正在生成标题...
ai-blocked-upload-artifact = 允许上传此产物？
ai-blocked-transfer-control = 代理请求您接管控制。

## -- 对话使用量视图字符串 --

ai-usage-summary-header = 使用概要
ai-credits-spent-last-response = 消耗额度（上次回复）
ai-credits-spent-total = 消耗额度（总计）
ai-credits-spent = 消耗额度
ai-tool-calls = 工具调用
ai-models-label = 模型
ai-change-model-settings = 您可以在 AI 设置页面更改全终端使用所用的模型
ai-context-window-used = 上下文窗口已用
ai-tool-call-summary-header = 工具调用概要
ai-files-changed = 已更改文件
ai-diffs-applied = 已应用差异
ai-commands-executed = 已执行命令
ai-last-response-time-header = 上次回复时间
ai-time-to-first-token = 首个令牌时间
ai-total-agent-response-time = 智能体总响应时间
ai-total-time-including-tools = 总时间（包括工具调用）

## -- 代码库索引速度提示横幅字符串 --

ai-index-codebase-question = 索引代码库？
ai-index-codebase-text = 索引帮助代理快速理解上下文并提供有针对性的解决方案。代码绝不会存储在服务器上。
ai-index-codebase-button = 索引代码库
ai-allow-automatic-indexing = 允许自动索引
ai-indexing-codebase = 正在索引代码库
ai-view-status = 查看状态

## -- 代码库索引速度提示横幅字符串的双前缀别名 --

ai_assistant-ai-index-codebase-question = { ai-index-codebase-question }
ai_assistant-ai-index-codebase-text = { ai-index-codebase-text }
ai_assistant-ai-index-codebase-button = { ai-index-codebase-button }
ai_assistant-ai-allow-automatic-indexing = { ai-allow-automatic-indexing }
ai_assistant-ai-indexing-codebase = { ai-indexing-codebase }
ai_assistant-ai-view-status = { ai-view-status }

## -- 运行代理卡片字符串 --

ai-run-agents-card-title = 我可以为此任务启动额外的代理吗？
ai-reject-label = 拒绝
ai-accept-label = 接受
ai-orchestration-disabled-message = 编排功能当前已禁用。请在计划卡片上重新启用以启动。
ai-configuring-agents = 正在配置代理…
ai-spawn-agents-cancelled = 生成代理已取消
ai-failed-to-start-orchestration = 启动编排失败
ai-spawn-agents-summary = 生成 { $count } 个代理来处理此任务。
ai-agents-count-label = 代理 ({ $count })
ai-spawned-one-agent = 已生成 1 个代理
ai-spawned-agents = 已生成 { $total } 个代理
ai-spawned-of-agents = 已生成 { $launched}/{ $total } 个代理
ai-orchestration-disabled-with-reason = 编排功能当前已禁用。请在计划卡片上重新启用以启动。({ $reason })
ai-failed-to-start-orchestration-with-error = 启动编排失败：{ $error }
ai-spawning-one-agent = 正在生成 1 个代理…
ai-spawning-agents = 正在生成 { $total } 个代理…

## -- Double-prefix aliases for AI block loading and status message strings --
ai_assistant-ai-agent-waiting-for-instructions = { ai-agent-waiting-for-instructions }
ai_assistant-ai-error-apology-text = { ai-error-apology-text }
ai_assistant-ai-internal-warp-error = { ai-internal-warp-error }
ai_assistant-ai-warping = { ai-warping }
ai_assistant-ai-adjusting-tasks = { ai-adjusting-tasks }
ai_assistant-ai-generating-fix = { ai-generating-fix }
ai_assistant-ai-creating-diff = { ai-creating-diff }
ai_assistant-ai-preparing-question = { ai-preparing-question }
ai_assistant-ai-generating-plan = { ai-generating-plan }
ai_assistant-ai-updating-plan = { ai-updating-plan }
ai_assistant-ai-summarizing-conversation = { ai-summarizing-conversation }
ai_assistant-ai-summarizing-command-output = { ai-summarizing-command-output }
ai_assistant-ai-searching-codebase = { ai-searching-codebase }
ai_assistant-ai-reading-files = { ai-reading-files }
ai_assistant-ai-grepping = { ai-grepping }
ai_assistant-ai-finding-files = { ai-finding-files }
ai_assistant-ai-executing-command = { ai-executing-command }
ai_assistant-ai-writing-command-input = { ai-writing-command-input }
ai_assistant-ai-waiting-for-command-exit = { ai-waiting-for-command-exit }
ai_assistant-ai-searching-the-web = { ai-searching-the-web }
ai_assistant-ai-fetching-pr-comments = { ai-fetching-pr-comments }
ai_assistant-ai-blocked-write-to-command = { ai-blocked-write-to-command }
ai_assistant-ai-blocked-reading-files = { ai-blocked-reading-files }
ai_assistant-ai-blocked-searching-codebase = { ai-blocked-searching-codebase }
ai_assistant-ai-blocked-grep-file-glob = { ai-blocked-grep-file-glob }
ai_assistant-ai-session-expired-text = { ai-session-expired-text }
ai_assistant-ai-default-planning-document-title = { ai-default-planning-document-title }
ai_assistant-ai-agent-prompt-to-interact = { ai-agent-prompt-to-interact }
ai_assistant-ai-agent-waiting-on-instructions = { ai-agent-waiting-on-instructions }
ai_assistant-ai-agent-waiting-for-command-exit = { ai-agent-waiting-for-command-exit }
ai_assistant-ai-agent-blocked = { ai-agent-blocked }
ai_assistant-ai-agent-in-control = { ai-agent-in-control }
ai_assistant-ai-user-in-control = { ai-user-in-control }

## -- 编排控件字符串双前缀别名 --

ai_assistant-ai-edit-agent-toolbelt = { ai-edit-agent-toolbelt }
ai_assistant-ai-edit-cli-agent-toolbelt = { ai-edit-cli-agent-toolbelt }
ai_assistant-ai-available-chips = { ai-available-chips }
ai_assistant-ai-orchestration-env-none-label = { ai-orchestration-env-none-label }
ai_assistant-ai-default-model-label = { ai-default-model-label }
ai_assistant-ai-agent-location-label = { ai-agent-location-label }
ai_assistant-ai-local-label = { ai-local-label }
ai_assistant-ai-cloud-label = { ai-cloud-label }
ai_assistant-ai-agent-harness-label = { ai-agent-harness-label }
ai_assistant-ai-host-label = { ai-host-label }
ai_assistant-ai-environment-label = { ai-environment-label }
ai_assistant-ai-base-model-label = { ai-base-model-label }
ai_assistant-ai-opencode-cloud-disabled-reason = { ai-opencode-cloud-disabled-reason }
ai_assistant-ai-recommend-select-env = { ai-recommend-select-env }
ai_assistant-ai-recommend-create-env = { ai-recommend-create-env }

## -- 编排配置块字符串双前缀别名 --

ai_assistant-ai-use-orchestration = { ai-use-orchestration }
ai_assistant-ai-orchestration-description = { ai-orchestration-description }
ai_assistant-ai-base-model-helper = { ai-base-model-helper }
ai_assistant-ai-oz-updates-header = { ai-oz-updates-header }
ai_assistant-ai-prompt-label = { ai-prompt-label }
ai_assistant-ai-generating-title = { ai-generating-title }
ai_assistant-ai-blocked-upload-artifact = { ai-blocked-upload-artifact }
ai_assistant-ai-blocked-transfer-control = { ai-blocked-transfer-control }

## -- 运行代理卡片字符串双前缀别名 --

ai_assistant-ai-run-agents-card-title = { ai-run-agents-card-title }
ai_assistant-ai-reject-label = { ai-reject-label }
ai_assistant-ai-accept-label = { ai-accept-label }
ai_assistant-ai-orchestration-disabled-message = { ai-orchestration-disabled-message }
ai_assistant-ai-configuring-agents = { ai-configuring-agents }
ai_assistant-ai-spawn-agents-cancelled = { ai-spawn-agents-cancelled }
ai_assistant-ai-failed-to-start-orchestration = { ai-failed-to-start-orchestration }
ai_assistant-ai-spawn-agents-summary = { ai-spawn-agents-summary }
ai_assistant-ai-agents-count-label = { ai-agents-count-label }
ai_assistant-ai-spawned-one-agent = { ai-spawned-one-agent }
ai_assistant-ai-spawned-agents = { ai-spawned-agents }
ai_assistant-ai-spawned-of-agents = { ai-spawned-of-agents }
ai_assistant-ai-orchestration-disabled-with-reason = { ai-orchestration-disabled-with-reason }
ai_assistant-ai-failed-to-start-orchestration-with-error = { ai-failed-to-start-orchestration-with-error }
ai_assistant-ai-spawning-one-agent = { ai-spawning-one-agent }
ai_assistant-ai-spawning-agents = { ai-spawning-agents }

## -- Prompt alert strings --

ai-telemetry-disabled-primary-text = 要使用 AI 功能，
ai-enable-analytics-action-text = 启用分析
ai-upgrade-to-build-action-text = 升级
ai-no-connection-primary-text = 无互联网连接
ai-anonymous-user-request-limit-hard-gate-primary-text = 已达上限 -
ai-delinquent-due-to-payment-issue-primary-text = 因付款问题而受限
ai-out-of-requests-primary-text = 额度已用完
ai-anonymous-user-request-limit-action-text = 注册获取更多 AI 额度
ai-delinquent-due-to-payment-issue-action-text = 管理账单
ai-overages-toggleable-but-not-enabled-action-text = 启用高级超额
ai-monthly-overages-spend-limit-reached-action-text = 提高月度支出上限
ai-upgrade-text = 升级
ai-compare-plans-text = 比较方案
ai-contact-support-text = 联系支持
ai-non-admin-contact-admin-text = ，请联系团队管理员
ai-non-admin-ask-admin-to-enable-overages-text = ，请让团队管理员启用超额
ai-non-admin-ask-admin-to-increase-overages-text = ，请让团队管理员提高超额上限
ai-upgrade-to-build-text = 升级至 Build
ai-use-your-own-api-keys-text = 使用你自己的 API 密钥
ai-add-credits-text = 添加额度

## -- 代理视图 / 区块列表 UI 字符串 --

ai-open-plan = 打开计划
ai-open-pull-request = 打开拉取请求
ai-enable-figma-mcp = 启用 Figma MCP
ai-starting-shell = 正在启动 Shell...
ai-open-in-different-pane = 在其他窗格中打开
ai-open-in-new-pane = 在新窗格中打开
ai-open-in-new-tab = 在新标签页中打开
ai-enable-desktop-notifications = 启用桌面通知，当代理需要您关注时获得提醒。
ai-open-palette = 打开面板
ai-show-diff-view = 显示差异视图

## -- Agent management notification strings --

ai-notification-from-codex = 来自 Codex 的通知
ai-task-completed = 任务已完成。
ai-waiting-for-input = 等待输入。
ai-child-agent = 子代理
ai-agent-task = 代理任务
ai-child-agent-completed = 子代理已完成。
ai-task-cancelled = 任务已取消。
ai-child-agent-cancelled = 子代理已取消。
ai-child-agent-error = 子代理遇到错误。
ai-something-went-wrong = 出了点问题。

## -- Double-prefix aliases for agent view / blocklist UI strings --

ai_assistant-ai-open-plan = { ai-open-plan }
ai_assistant-ai-open-pull-request = { ai-open-pull-request }
ai_assistant-ai-enable-figma-mcp = { ai-enable-figma-mcp }
ai_assistant-ai-starting-shell = { ai-starting-shell }
ai_assistant-ai-open-in-different-pane = { ai-open-in-different-pane }
ai_assistant-ai-open-in-new-pane = { ai-open-in-new-pane }
ai_assistant-ai-open-in-new-tab = { ai-open-in-new-tab }
ai_assistant-ai-enable-desktop-notifications = { ai-enable-desktop-notifications }
ai_assistant-ai-open-palette = { ai-open-palette }
ai_assistant-ai-show-diff-view = { ai-show-diff-view }

## -- Double-prefix aliases for prompt alert strings --

ai_assistant-ai-telemetry-disabled-primary-text = { ai-telemetry-disabled-primary-text }
ai_assistant-ai-enable-analytics-action-text = { ai-enable-analytics-action-text }
ai_assistant-ai-upgrade-to-build-action-text = { ai-upgrade-to-build-action-text }
ai_assistant-ai-no-connection-primary-text = { ai-no-connection-primary-text }
ai_assistant-ai-anonymous-user-request-limit-hard-gate-primary-text = { ai-anonymous-user-request-limit-hard-gate-primary-text }
ai_assistant-ai-delinquent-due-to-payment-issue-primary-text = { ai-delinquent-due-to-payment-issue-primary-text }
ai_assistant-ai-out-of-requests-primary-text = { ai-out-of-requests-primary-text }
ai_assistant-ai-anonymous-user-request-limit-action-text = { ai-anonymous-user-request-limit-action-text }
ai_assistant-ai-delinquent-due-to-payment-issue-action-text = { ai-delinquent-due-to-payment-issue-action-text }
ai_assistant-ai-overages-toggleable-but-not-enabled-action-text = { ai-overages-toggleable-but-not-enabled-action-text }
ai_assistant-ai-monthly-overages-spend-limit-reached-action-text = { ai-monthly-overages-spend-limit-reached-action-text }
ai_assistant-ai-upgrade-text = { ai-upgrade-text }
ai_assistant-ai-compare-plans-text = { ai-compare-plans-text }
ai_assistant-ai-contact-support-text = { ai-contact-support-text }
ai_assistant-ai-non-admin-contact-admin-text = { ai-non-admin-contact-admin-text }
ai_assistant-ai-non-admin-ask-admin-to-enable-overages-text = { ai-non-admin-ask-admin-to-enable-overages-text }
ai_assistant-ai-non-admin-ask-admin-to-increase-overages-text = { ai-non-admin-ask-admin-to-increase-overages-text }
ai_assistant-ai-upgrade-to-build-text = { ai-upgrade-to-build-text }
ai_assistant-ai-use-your-own-api-keys-text = { ai-use-your-own-api-keys-text }
ai_assistant-ai-add-credits-text = { ai-add-credits-text }

## -- Toolbar item display labels --

ai-context-chip = 上下文芯片
ai-model-selector = 模型选择器
ai-autodetection = 自动检测
ai-voice-input = 语音输入
ai-attach-file = 附加文件
ai-context-usage = 上下文使用量
ai-share-session = /remote-control
ai-fast-forward = 快进
ai-handoff-to-cloud = 交接至云端

ai-assistant-voice-limit-hit = 您已达到语音请求的上限。您的限额将在下一个周期刷新。
ai-assistant-voice-error = 处理您的语音输入时发生错误。
ai-assistant-no-image-support = 所选模型不支持图片作为上下文。
ai-assistant-image-limit = { $count ->
    [1] 1 张图片未附加 - { $reason }。
   *[other] { $count } 张图片未附加 - { $reason }。
}
ai-assistant-image-limit-query = 每次查询限制为 { $count } 张
ai-assistant-image-limit-conversation = 每次对话限制为 { $count } 张
ai-assistant-unsupported-images = { $count ->
    [1] 1 张图片未附加 - 支持的类型为 PNG、JPG、GIF、WEBP。
   *[other] { $count } 张图片未附加 - 支持的类型为 PNG、JPG、GIF、WEBP。
}
ai-assistant-image-read-errors = { $count ->
    [1] 1 张图片未附加 - 读取文件失败。
   *[other] { $count } 张图片未附加 - 读取文件失败。
}
ai-assistant-copied-to-clipboard = 已复制到剪贴板

## -- Double-prefix aliases for AI assistant hardcoded UI text strings --
ai_assistant-ai-feature-name = { ai-feature-name }
ai_assistant-ai-ask-text = { ai-ask-text }
ai_assistant-ai-zero-state-script-prompt = { ai-zero-state-script-prompt }
ai_assistant-ai-zero-state-git-prompt = { ai-zero-state-git-prompt }
ai_assistant-ai-how-do-i-fix = { ai-how-do-i-fix }
ai_assistant-ai-show-examples = { ai-show-examples }
ai_assistant-ai-invalid-file-name = { ai-invalid-file-name }
ai_assistant-ai-review-comment = { ai-review-comment }
ai_assistant-ai-invalid-api-key-for-provider = { ai-invalid-api-key-for-provider }

## -- Double-prefix aliases for code diff view strings --
ai_assistant-ai-refine = { ai-refine }
ai_assistant-ai-dismiss = { ai-dismiss }
ai_assistant-ai-accept-and-continue = { ai-accept-and-continue }
ai_assistant-ai-iterate-with-agent = { ai-iterate-with-agent }
ai_assistant-ai-file-new = { ai-file-new }
ai_assistant-ai-file-deleted = { ai-file-deleted }
ai_assistant-ai-failed-revert = { ai-failed-revert }
ai_assistant-ai-file-suffix = { ai-file-suffix }
ai_assistant-ai-renamed-suffix = { ai-renamed-suffix }
ai_assistant-ai-deleted-file-suffix = { ai-deleted-file-suffix }

## -- Double-prefix aliases for toolbar item display labels --

ai_assistant-ai-context-chip = { ai-context-chip }
ai_assistant-ai-model-selector = { ai-model-selector }
ai_assistant-ai-autodetection = { ai-autodetection }
ai_assistant-ai-voice-input = { ai-voice-input }
ai_assistant-ai-attach-file = { ai-attach-file }
ai_assistant-ai-context-usage = { ai-context-usage }
ai_assistant-ai-share-session = { ai-share-session }
ai_assistant-ai-fast-forward = { ai-fast-forward }
ai_assistant-ai-handoff-to-cloud = { ai-handoff-to-cloud }

## -- Conversation details panel strings --

ai-conversation-fallback-title = 对话
ai-cloud-agent-run = 云端智能体运行
ai-copied-branch-name = 已复制分支名称
ai-agent-label = 智能体
ai-harness-label = 运行环境
ai-open-in-oz = 在 Oz 中打开
ai-open-in-github = 在 GitHub 中打开
ai-initial-query = 初始查询
ai-artifacts-label = 产物
ai-env-setup-commands = 环境设置命令
ai-env-details = 环境详情
ai-env-name = 名称：{$name}
ai-env-id-label = ID
ai-env-image-label = 镜像
ai-directory-label = 目录
ai-conversation-id-label = 对话 ID
ai-run-id-label = 运行 ID
ai-credits-used = 已用额度
ai-run-time = 运行时间
ai-created-on = 创建于

## -- Double-prefix aliases for agent management notification strings --

ai_assistant-ai-notification-from-codex = { ai-notification-from-codex }
ai_assistant-ai-task-completed = { ai-task-completed }
ai_assistant-ai-waiting-for-input = { ai-waiting-for-input }
ai_assistant-ai-child-agent = { ai-child-agent }
ai_assistant-ai-agent-task = { ai-agent-task }
ai_assistant-ai-child-agent-completed = { ai-child-agent-completed }
ai_assistant-ai-task-cancelled = { ai-task-cancelled }
ai_assistant-ai-child-agent-cancelled = { ai-child-agent-cancelled }
ai_assistant-ai-child-agent-error = { ai-child-agent-error }
ai_assistant-ai-something-went-wrong = { ai-something-went-wrong }

## -- Double-prefix aliases for AWS credentials error strings --

ai_assistant-ai-aws-credentials-not-found = { ai-aws-credentials-not-found }
ai_assistant-ai-aws-credentials-timeout = { ai-aws-credentials-timeout }
ai_assistant-ai-aws-credentials-invalid-config = { ai-aws-credentials-invalid-config }
ai_assistant-ai-aws-credentials-provider-error = { ai-aws-credentials-provider-error }
ai_assistant-ai-aws-credentials-unexpected-error = { ai-aws-credentials-unexpected-error }
ai_assistant-ai-aws-credentials-unable-to-load = { ai-aws-credentials-unable-to-load }
ai_assistant-ai-aws-credentials-refresh-interrupted = { ai-aws-credentials-refresh-interrupted }
ai_assistant-ai-aws-profile-reference-default = { ai-aws-profile-reference-default }
ai_assistant-ai-aws-profile-reference-named = { ai-aws-profile-reference-named }
ai_assistant-ai-aws-profile-reference-default-capitalized = { ai-aws-profile-reference-default-capitalized }
ai_assistant-ai-aws-profile-reference-named-capitalized = { ai-aws-profile-reference-named-capitalized }

## -- Double-prefix aliases for conversation details panel strings --

ai_assistant-ai-conversation-fallback-title = { ai-conversation-fallback-title }
ai_assistant-ai-cloud-agent-run = { ai-cloud-agent-run }
ai_assistant-ai-copied-branch-name = { ai-copied-branch-name }
ai_assistant-ai-agent-label = { ai-agent-label }
ai_assistant-ai-harness-label = { ai-harness-label }
ai_assistant-ai-open-in-oz = { ai-open-in-oz }
ai_assistant-ai-open-in-github = { ai-open-in-github }
ai_assistant-ai-initial-query = { ai-initial-query }
ai_assistant-ai-artifacts-label = { ai-artifacts-label }
ai_assistant-ai-env-setup-commands = { ai-env-setup-commands }
ai_assistant-ai-env-details = { ai-env-details }
ai_assistant-ai-env-name = { ai-env-name }
ai_assistant-ai-env-id-label = { ai-env-id-label }
ai_assistant-ai-env-image-label = { ai-env-image-label }
ai_assistant-ai-directory-label = { ai-directory-label }
ai_assistant-ai-conversation-id-label = { ai-conversation-id-label }
ai_assistant-ai-run-id-label = { ai-run-id-label }
ai_assistant-ai-credits-used = { ai-credits-used }
ai_assistant-ai-run-time = { ai-run-time }
ai_assistant-ai-created-on = { ai-created-on }

## -- Double-prefix aliases for conversation usage view strings --

ai_assistant-ai-usage-summary-header = { ai-usage-summary-header }
ai_assistant-ai-credits-spent-last-response = { ai-credits-spent-last-response }
ai_assistant-ai-credits-spent-total = { ai-credits-spent-total }
ai_assistant-ai-credits-spent = { ai-credits-spent }
ai_assistant-ai-tool-calls = { ai-tool-calls }
ai_assistant-ai-models-label = { ai-models-label }
ai_assistant-ai-change-model-settings = { ai-change-model-settings }
ai_assistant-ai-context-window-used = { ai-context-window-used }
ai_assistant-ai-tool-call-summary-header = { ai-tool-call-summary-header }
ai_assistant-ai-files-changed = { ai-files-changed }
ai_assistant-ai-diffs-applied = { ai-diffs-applied }
ai_assistant-ai-commands-executed = { ai-commands-executed }
ai_assistant-ai-last-response-time-header = { ai-last-response-time-header }
ai_assistant-ai-time-to-first-token = { ai-time-to-first-token }
ai_assistant-ai-total-agent-response-time = { ai-total-agent-response-time }
ai_assistant-ai-total-time-including-tools = { ai-total-time-including-tools }

## -- Double-prefix aliases for agent tip strings --

ai_assistant-ai-tip-label = { ai-tip-label }
ai_assistant-ai-tip-slash-commands = { ai-tip-slash-commands }
ai_assistant-ai-tip-toggle-nl-detection = { ai-tip-toggle-nl-detection }
ai_assistant-ai-tip-plan = { ai-tip-plan }
ai_assistant-ai-tip-command-palette = { ai-tip-command-palette }
ai_assistant-ai-tip-store-workflows = { ai-tip-store-workflows }
ai_assistant-ai-tip-redirect-agent = { ai-tip-redirect-agent }
ai_assistant-ai-tip-at-context = { ai-tip-at-context }
ai_assistant-ai-tip-attach-block = { ai-tip-attach-block }
ai_assistant-ai-tip-init-repo = { ai-tip-init-repo }
ai_assistant-ai-tip-agent-profiles = { ai-tip-agent-profiles }
ai_assistant-ai-tip-fork-conversation = { ai-tip-fork-conversation }
ai_assistant-ai-tip-copy-output = { ai-tip-copy-output }
ai_assistant-ai-tip-drag-image = { ai-tip-drag-image }
ai_assistant-ai-tip-interactive-tools = { ai-tip-interactive-tools }
ai_assistant-ai-tip-code-review = { ai-tip-code-review }
ai_assistant-ai-tip-add-mcp = { ai-tip-add-mcp }
ai_assistant-ai-tip-open-mcp = { ai-tip-open-mcp }
ai_assistant-ai-tip-create-environment = { ai-tip-create-environment }
ai_assistant-ai-tip-add-prompt = { ai-tip-add-prompt }
ai_assistant-ai-tip-add-rule = { ai-tip-add-rule }
ai_assistant-ai-tip-fork = { ai-tip-fork }
ai_assistant-ai-tip-open-code-review = { ai-tip-open-code-review }
ai_assistant-ai-tip-new = { ai-tip-new }
ai_assistant-ai-tip-compact = { ai-tip-compact }
ai_assistant-ai-tip-usage = { ai-tip-usage }
ai_assistant-ai-tip-oz-command = { ai-tip-oz-command }
ai_assistant-ai-tip-selected-text-context = { ai-tip-selected-text-context }
ai_assistant-ai-tip-agents-md = { ai-tip-agents-md }
ai_assistant-ai-tip-paste-url = { ai-tip-paste-url }
ai_assistant-ai-tip-warpify-ssh = { ai-tip-warpify-ssh }
ai_assistant-ai-tip-switch-profiles = { ai-tip-switch-profiles }
ai_assistant-ai-tip-init-warp-md = { ai-tip-init-warp-md }
ai_assistant-ai-tip-auto-approve = { ai-tip-auto-approve }
ai_assistant-ai-tip-cancel-task = { ai-tip-cancel-task }
ai_assistant-ai-warp-drive-period = { ai-warp-drive-period }
ai_assistant-ai-tip-voice-input = { ai-tip-voice-input }

## -- Block view common strings --

ai-calling-mcp-tool = 正在调用"{$name}" MCP 工具...
ai-reading-mcp-resource = 正在读取"{$name}" MCP 资源...
ai-take-over = 接管
ai-take-over-tooltip = 接管命令控制
ai-show-responses = 显示回复
ai-hide-responses = 隐藏回复
ai-show-agent-responses = 显示智能体回复
ai-hide-agent-responses = 隐藏智能体回复
ai-stop-agent-task = 停止智能体任务
ai-auto-queue-on = 自动排队已开启：下一个提示词将被排队
ai-auto-queue-off = 智能体回复时自动排队下一个提示词
ai-turn-off-auto-approve = 关闭自动批准所有智能体操作
ai-auto-approve-all = 自动批准此任务的所有智能体操作
ai-check-now = 立即检查
ai-check-now-tooltip = 让智能体立即检查此命令，跳过定时器。
ai-mermaid-diagram = Mermaid 图表
ai-server-overloaded = Warp 当前负载过高，请稍后重试。
ai-invalid-api-key = 提供的 API 密钥无效
ai-failed-authenticate-provider = 使用 { $model_name } 时无法通过 { $provider } 认证，请检查您的 API 密钥是否正确。
ai-credit-limit-reached = 您已达到额度上限。额度将于 { $date } 重置。
ai-send-feedback = 发送反馈
ai-debug-information = 调试信息：{ $debug_info }
ai-copy-debug-id = 复制调试 ID
ai-exit = 退出
ai-exit-agent-input = 退出智能体输入
ai-plan-update-tooltip = 此计划有智能体未意识到的更改。{$save_action} 以停止智能体当前任务并发送更新的计划
ai-updated-plan = 我已更新了计划。
ai-address-comments = 处理这些评论
ai-source-label = 来源：{$source}
ai-run-time-label = 运行时间：{$run_time}
ai-credits-used-label = 已用额度：{$usage}
ai-task-blocked = 任务已阻塞
ai-not-started = 未开始
ai-auth-failed = 认证失败
ai-tasks-label = 任务
ai-generate-tests = 生成测试
ai-orchestrator = 编排器
ai-out-of-credits-upgrade = 额度不足。请升级 Warp 套餐以继续运行云端智能体。
ai-server-overloaded-short = Warp 当前暂时过载，请稍后重试。
ai-cloud-agent-failed = 云端智能体运行失败
ai-cloud-followup-finished = 云端后续处理在新会话可用前已完成
ai-secret-raw-value = 原始值
ai-secret-anthropic-key = Anthropic API 密钥
ai-secret-anthropic-bedrock-access = Anthropic Bedrock 访问密钥
ai-secret-anthropic-bedrock-key = Anthropic Bedrock API 密钥
ai-secret-openai-key = OpenAI API 密钥
ai-view-todo-list = 查看待办列表
ai-ai-view-todo-list = { ai-view-todo-list }
ai-starting-env-step-3 = 正在启动环境 (步骤 3/3)
ai-creating-env-step-2 = 正在创建环境 (步骤 2/3)
ai-connecting-host-step-1 = 正在连接主机 (步骤 1/3)
ai-missing-github-auth = 缺少 GitHub 身份验证。
ai-authenticate-github = 验证 GitHub
ai-cloud-agent-cancelled = 云端智能体运行已取消
ai-setting-up-env = 正在设置环境
ai-primary-model-failed-with-name = 主模型 ({$primary}) 失败。正在使用备用模型重试。
ai-primary-model-failed = 主模型失败。正在使用备用模型重试。
ai-warping-with-model = 正在使用 {$name} 处理。
ai-warping-with-another-model = 正在使用其他模型处理。
ai-ai-starting-env-step-3 = { ai-starting-env-step-3 }
ai-ai-creating-env-step-2 = { ai-creating-env-step-2 }
ai-ai-connecting-host-step-1 = { ai-connecting-host-step-1 }
ai-ai-missing-github-auth = { ai-missing-github-auth }
ai-ai-authenticate-github = { ai-authenticate-github }
ai-ai-cloud-agent-cancelled = { ai-cloud-agent-cancelled }
ai-ai-setting-up-env = { ai-setting-up-env }
ai-ai-primary-model-failed-with-name = { ai-primary-model-failed-with-name }
ai-ai-primary-model-failed = { ai-primary-model-failed }
ai-ai-warping-with-model = { ai-warping-with-model }
ai-ai-warping-with-another-model = { ai-warping-with-another-model }
ai-default-profile-name = 默认
ai-agent-mode-eval-profile-name = 代理模式评估
ai-default-cli-profile-name = 默认 (CLI)
ai-ai-default-profile-name = { ai-default-profile-name }
ai-ai-agent-mode-eval-profile-name = { ai-agent-mode-eval-profile-name }
ai-ai-default-cli-profile-name = { ai-default-cli-profile-name }
ai-resume-when-network =
    {$error_message}
    网络连接恢复后将继续对话...
ai-attempting-resume =
    {$error_message}
    正在尝试继续对话...

ai-error-formatting-json = JSON 格式化出错
ai-mcp-error = 错误：{$error}
ai-tool-call-cancelled = 工具调用已取消
ai-mcp-response =
    {$command}
    响应：{$result}
ai-ai-error-formatting-json = { ai-error-formatting-json }
ai-ai-mcp-error = { ai-mcp-error }
ai-ai-tool-call-cancelled = { ai-tool-call-cancelled }
ai-ai-mcp-response = { ai-mcp-response }

## -- AI facts view additional strings --

ai-offline-banner-text = 您当前处于离线状态。部分规则将变为只读。
ai-rule-editor-title = 规则编辑器

ai_assistant-ai-offline-banner-text = { ai-offline-banner-text }
ai_assistant-ai-rule-editor-title = { ai-rule-editor-title }

## -- 错误分类字符串 --

ai-internal-error-retry = 发生内部错误。请重新运行您的任务。如果问题持续存在，请联系支持。
ai-terminal-session-failed = 终端会话启动失败。请重新运行您的任务。
ai-share-session-internal-error = 由于内部错误，无法共享代理会话。请重新运行您的任务。
ai-share-session-failed = 无法共享代理会话：{$reason}
ai-share-session-disabled = 您的账户未启用会话共享。这可能是因为管理员已为您的团队禁用了会话共享。请确认团队设置中是否启用了会话共享，或尝试不使用 --share 标志运行。
ai-share-session-timeout = 无法共享代理会话：等待会话共享服务器响应超时。请检查您的网络连接后重试。
ai-share-session-interrupted = 会话共享在完成之前被中断。请重新运行您的任务。
ai-warp-drive-sync-failed = Warp Drive 同步失败。请检查您的网络连接后重试。
ai-auth-required = 需要认证。请通过 '{$bin} login' 登录，通过 '--api-key' 提供 API 密钥，或设置 WARP_API_KEY 环境变量。
ai-cloud-provider-setup-failed = 配置云访问时出错：{$err}
ai-mcp-server-not-found = 未找到 MCP 服务器 {$uuid}。请验证该服务器是否存在于您的 Warp Drive 中，且 UUID 是否正确。
ai-mcp-startup-failed = 一个或多个 MCP 服务器启动失败。请检查您的 MCP 服务器配置是否有效，以及服务器进程是否可运行。
ai-mcp-json-parse-error = 无法解析 MCP 服务器 JSON 配置：{$msg}
ai-mcp-missing-variables = MCP 服务器配置缺少必需变量。请提供所有必需的环境变量或模板值。
ai-profile-not-found = 未找到代理配置"{$name}"。请检查配置 ID 并确保其存在于您团队的 Warp Drive 中。
ai-workflow-not-found = 未找到 ID 为 {$id} 的已保存提示词。请验证该提示词是否存在于您的 Warp Drive 中。
ai-environment-not-found = 未找到环境 '{$id}'。请验证环境 ID 并确保其存在于您的团队设置中。
ai-environment-setup-failed-msg = 环境设置失败：{$msg}。请检查您的仓库 URL 和设置命令。
ai-invalid-working-directory = 工作目录 '{$path}' 不存在或不是目录。请验证您的环境配置中的路径。
ai-task-cancelled-msg = 任务已取消。
ai-agent-blocked = 代理在等待用户确认以下操作时被阻塞：{$blocked_action}
ai-team-metadata-timeout = 刷新团队元数据超时。请检查您的网络连接后重试。
ai-skill-resolution-failed = 技能解析失败：{$msg}
ai-config-build-failed = 无法构建代理配置：{$err}
ai-prompt-resolution-failed = 无法解析运行的提示词：{$err}
ai-secrets-fetch-failed = 无法获取任务密钥：{$err}
ai-aws-bedrock-credentials-failed = 无法初始化 AWS Bedrock 凭证：{$msg}
ai-conversation-load-failed = 无法加载对话：{$msg}
ai-conversation-harness-mismatch = 对话 {$conversation_id} 由 {$expected} 运行环境生成，但请求了 --harness {$got}。请使用 --harness {$expected} 重新运行（或省略 --harness 以匹配）来继续此对话。
ai-task-harness-mismatch = 任务 {$task_id} 使用 {$expected} 运行环境创建，但请求了 --harness {$got}。请使用 --harness {$expected} 重新运行（或省略 --harness 以匹配）来继续此任务。
ai-conversation-resume-state-missing = 对话 {$conversation_id} 没有 {$harness} 运行环境的存储记录。之前的运行可能在保存任何状态之前崩溃了。
ai-harness-command-failed = 运行环境命令以代码 {$exit_code} 退出
ai-harness-setup-failed = 运行环境 '{$harness}' 验证失败：{$reason}
ai-harness-config-setup-failed = 运行环境 '{$harness}' 配置设置失败：{$error}
ai-allow-btn = 允许
ai-refine-btn = 优化
ai-take-over-btn = 接管
ai-take-control-btn = 接管控制

## -- 错误分类字符串双前缀别名 --

ai_assistant-ai-internal-error-retry = { ai-internal-error-retry }
ai_assistant-ai-terminal-session-failed = { ai-terminal-session-failed }
ai_assistant-ai-share-session-internal-error = { ai-share-session-internal-error }
ai_assistant-ai-share-session-failed = { ai-share-session-failed }
ai_assistant-ai-share-session-disabled = { ai-share-session-disabled }
ai_assistant-ai-share-session-timeout = { ai-share-session-timeout }
ai_assistant-ai-share-session-interrupted = { ai-share-session-interrupted }
ai_assistant-ai-warp-drive-sync-failed = { ai-warp-drive-sync-failed }
ai_assistant-ai-auth-required = { ai-auth-required }
ai_assistant-ai-cloud-provider-setup-failed = { ai-cloud-provider-setup-failed }
ai_assistant-ai-mcp-server-not-found = { ai-mcp-server-not-found }
ai_assistant-ai-mcp-startup-failed = { ai-mcp-startup-failed }
ai_assistant-ai-mcp-json-parse-error = { ai-mcp-json-parse-error }
ai_assistant-ai-mcp-missing-variables = { ai-mcp-missing-variables }
ai_assistant-ai-profile-not-found = { ai-profile-not-found }
ai_assistant-ai-workflow-not-found = { ai-workflow-not-found }
ai_assistant-ai-environment-not-found = { ai-environment-not-found }
ai_assistant-ai-environment-setup-failed-msg = { ai-environment-setup-failed-msg }
ai_assistant-ai-invalid-working-directory = { ai-invalid-working-directory }
ai_assistant-ai-task-cancelled-msg = { ai-task-cancelled-msg }
ai_assistant-ai-agent-blocked = { ai-agent-blocked }
ai_assistant-ai-team-metadata-timeout = { ai-team-metadata-timeout }
ai_assistant-ai-skill-resolution-failed = { ai-skill-resolution-failed }
ai_assistant-ai-config-build-failed = { ai-config-build-failed }
ai_assistant-ai-prompt-resolution-failed = { ai-prompt-resolution-failed }
ai_assistant-ai-secrets-fetch-failed = { ai-secrets-fetch-failed }
ai_assistant-ai-aws-bedrock-credentials-failed = { ai-aws-bedrock-credentials-failed }
ai_assistant-ai-conversation-load-failed = { ai-conversation-load-failed }
ai_assistant-ai-conversation-harness-mismatch = { ai-conversation-harness-mismatch }
ai_assistant-ai-task-harness-mismatch = { ai-task-harness-mismatch }
ai_assistant-ai-conversation-resume-state-missing = { ai-conversation-resume-state-missing }
ai_assistant-ai-harness-command-failed = { ai-harness-command-failed }
ai_assistant-ai-harness-setup-failed = { ai-harness-setup-failed }
ai_assistant-ai-harness-config-setup-failed = { ai-harness-config-setup-failed }

## -- 输出视图字符串双前缀别名 --

ai_assistant-ai-conversation-summarized = { ai-conversation-summarized }
ai_assistant-ai-thought-for-duration = { ai-thought-for-duration }
ai_assistant-ai-searched = { ai-searched }
ai_assistant-ai-searching = { ai-searching }
ai_assistant-ai-conversation-label = { ai-conversation-label }
ai_assistant-ai-this-conversation = { ai-this-conversation }
ai_assistant-ai-sorry-bad-experience-single = { ai-sorry-bad-experience-single }
ai_assistant-ai-sorry-bad-experience-plural = { ai-sorry-bad-experience-plural }
ai_assistant-ai-response-wont-count = { ai-response-wont-count }
ai_assistant-ai-always-allow-file-access-coding = { ai-always-allow-file-access-coding }
ai_assistant-ai-always-allow-file-access-repo = { ai-always-allow-file-access-repo }
ai_assistant-ai-manage-autonomy-permissions = { ai-manage-autonomy-permissions }
ai_assistant-ai-search-in = { ai-search-in }
ai_assistant-ai-searching-in = { ai-searching-in }
ai_assistant-ai-no-relevant-files = { ai-no-relevant-files }
ai_assistant-ai-search-failed-not-indexed = { ai-search-failed-not-indexed }
ai_assistant-ai-search-failed = { ai-search-failed }
ai_assistant-ai-search-cancelled = { ai-search-cancelled }
ai_assistant-ai-in-path-cancelled = { ai-in-path-cancelled }
ai_assistant-ai-in-path = { ai-in-path }
ai_assistant-ai-failed-read-files = { ai-failed-read-files }
ai_assistant-ai-open-skill = { ai-open-skill }
ai_assistant-ai-stopped-task-with-index = { ai-stopped-task-with-index }
ai_assistant-ai-stopped-task-with-name = { ai-stopped-task-with-name }
ai_assistant-ai-stopped-task = { ai-stopped-task }
ai_assistant-ai-resume-conversation = { ai-resume-conversation }
ai_assistant-ai-could-not-apply-changes = { ai-could-not-apply-changes }
ai_assistant-ai-suggestion-edited-in-another-tab = { ai-suggestion-edited-in-another-tab }
ai_assistant-ai-new-conversation-started = { ai-new-conversation-started }
ai_assistant-ai-continuing-current-conversation = { ai-continuing-current-conversation }
ai_assistant-ai-new-conversation-cancelled = { ai-new-conversation-cancelled }
ai_assistant-ai-start-a-new-conversation = { ai-start-a-new-conversation }
ai_assistant-ai-topic-changed = { ai-topic-changed }
ai_assistant-ai-the-current-directory = { ai-the-current-directory }
ai_assistant-ai-grep-for = { ai-grep-for }
ai_assistant-ai-grepping-for = { ai-grepping-for }
ai_assistant-ai-cancelled-grep = { ai-cancelled-grep }
ai_assistant-ai-grep-patterns = { ai-grep-patterns }
ai_assistant-ai-grepping-patterns = { ai-grepping-patterns }
ai_assistant-ai-search-files-match = { ai-search-files-match }
ai_assistant-ai-finding-files-match = { ai-finding-files-match }
ai_assistant-ai-cancelled-search-files = { ai-cancelled-search-files }
ai_assistant-ai-find-files-match = { ai-find-files-match }
ai_assistant-ai-finding-files-match = { ai-finding-files-match }
ai_assistant-ai-comment-addressed = { ai-comment-addressed }
ai_assistant-ai-ok-read-mcp-resource = { ai-ok-read-mcp-resource }
ai_assistant-ai-upload-artifact = { ai-upload-artifact }
ai_assistant-ai-description-label = { ai-description-label }
ai_assistant-ai-status-uploaded = { ai-status-uploaded }
ai_assistant-ai-status-upload-failed = { ai-status-upload-failed }
ai_assistant-ai-uploaded-file = { ai-uploaded-file }
ai_assistant-ai-view-screenshot = { ai-view-screenshot }
ai_assistant-ai-ok-computer-control = { ai-ok-computer-control }
ai_assistant-ai-references = { ai-references }
ai_assistant-ai-suggestions = { ai-suggestions }
ai_assistant-ai-good-response = { ai-good-response }
ai_assistant-ai-bad-response = { ai-bad-response }
ai_assistant-ai-continue-conversation = { ai-continue-conversation }
ai_assistant-ai-fork-conversation = { ai-fork-conversation }
ai_assistant-ai-show-credit-usage = { ai-show-credit-usage }
ai_assistant-ai-debug-output = { ai-debug-output }
ai_assistant-ai-listing-messages = { ai-listing-messages }
ai_assistant-ai-grepping-for-patterns = { ai-grepping-for-patterns }
ai_assistant-ai-grepping-for-patterns-with-query = { ai-grepping-for-patterns-with-query }
ai_assistant-ai-reading-messages = { ai-reading-messages }
ai_assistant-ai-assistant-edit-requested-command = { ai-assistant-edit-requested-command }
ai_assistant-ai-assistant-voice-limit-hit = { ai-assistant-voice-limit-hit }
ai_assistant-ai-assistant-voice-error = { ai-assistant-voice-error }
ai_assistant-ai-assistant-no-image-support = { ai-assistant-no-image-support }
ai_assistant-ai-assistant-image-limit = { ai-assistant-image-limit }
ai_assistant-ai-assistant-image-limit-query = { ai-assistant-image-limit-query }
ai_assistant-ai-assistant-image-limit-conversation = { ai-assistant-image-limit-conversation }
ai_assistant-ai-assistant-unsupported-images = { ai-assistant-unsupported-images }
ai_assistant-ai-assistant-image-read-errors = { ai-assistant-image-read-errors }
ai_assistant-ai-assistant-copied-to-clipboard = { ai-assistant-copied-to-clipboard }

## -- 代理状态字符串双前缀别名 -----------------------------------------------

ai_assistant-ai-assistant-addressed-comments = { ai-assistant-addressed-comments }
ai_assistant-ai-assistant-received-messages = { ai-assistant-received-messages }
ai_assistant-ai-assistant-received-events = { ai-assistant-received-events }
ai_assistant-ai-assistant-seconds = { ai-assistant-seconds }
ai_assistant-ai-assistant-minutes = { ai-assistant-minutes }

## -- 已迁移 UI 字符串的双前缀别名 --

ai_assistant-ai-cancel-summarization = { ai-cancel-summarization }
ai_assistant-ai-continue-summarization = { ai-continue-summarization }
ai_assistant-ai-attach-as-agent-context = { ai-attach-as-agent-context }
ai_assistant-ai-new-agent-pane = { ai-new-agent-pane }
ai_assistant-ai-follow-up-with-existing-conversation = { ai-follow-up-with-existing-conversation }
ai_assistant-ai-invalid-api-key = { ai-invalid-api-key }
ai_assistant-ai-invalid-credentials = { $cli } login。
ai_assistant-ai-one-credit = { $count } 额度
ai_assistant-ai-credits = { $count } 额度
ai_assistant-ai-credits-decimal = { $count } 额度
ai_assistant-ai-aws-region-label = { ai-aws-region-label }
ai_assistant-ai-aws-access-key-id-label = { ai-aws-access-key-id-label }
ai_assistant-ai-now-using-default-model = { ai-now-using-default-model }
ai_assistant-ai-run-in-cloud-env = { ai-run-in-cloud-env }
ai_assistant-ai-recent-activity = { ai-recent-activity }
ai_assistant-ai-view-changelog = { ai-view-changelog }
ai_assistant-ai-recommended = { ai-recommended }
ai_assistant-ai-always-ask-permission = { ai-always-ask-permission }
ai_assistant-ai-no-urls-fetched = { ai-no-urls-fetched }
ai_assistant-ai-no-urls-found = { ai-no-urls-found }
ai_assistant-ai-allow-btn = { ai-allow-btn }
ai_assistant-ai-refine-btn = { ai-refine-btn }
ai_assistant-ai-take-over-btn = { ai-take-over-btn }
ai_assistant-ai-take-control-btn = { ai-take-control-btn }
