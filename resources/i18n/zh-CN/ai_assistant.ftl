# =============================================================================
# ai_assistant.ftl — AI 助手/智能体字符串
# =============================================================================
# Message IDs: ai_assistant-ai-{id}
# =============================================================================

## -- 智能体模式标签 --------------------------------------------------------

ai-assistant-ai-agent-mode-terminal = 终端
ai-assistant-ai-agent-mode-agent = 智能体
ai-assistant-ai-agent-mode-cloud-agent = Cloud Oz

## -- 聊天/对话 ------------------------------------------------------

ai-assistant-ai-chat-placeholder = 提问…
ai-assistant-ai-chat-send-label = 发送
ai-assistant-ai-chat-stop-label = 停止
ai-assistant-ai-chat-clear-label = 清除对话
ai-assistant-ai-chat-thinking-label = 思考中…
ai-assistant-ai-chat-error-label = 出现错误，请重试。
ai-assistant-ai-chat-retry-label = 重试
ai-assistant-ai-chat-copy-response = 复制回复
ai-assistant-ai-chat-insert-response = 插入到终端
ai-assistant-ai-chat-new-conversation = 新对话

## -- 模型选择 ----------------------------------------------------------

ai-assistant-ai-model-select-label = 模型：
ai-assistant-ai-model-fast-label = 快速
ai-assistant-ai-model-smart-label = 智能
ai-assistant-ai-model-custom-label = 自定义

## -- 上下文芯片 -----------------------------------------------------------

ai-assistant-ai-context-add-file = 添加文件
ai-assistant-ai-context-add-folder = 添加文件夹
ai-assistant-ai-context-add-web = 添加网页
ai-assistant-ai-context-attached-files = 已附加的文件
ai-assistant-ai-context-clear-all = 清除全部

## -- 自动检测 -----------------------------------------------------------

ai-assistant-ai-natural-language-enabled = 自然语言检测已启用
ai-assistant-ai-natural-language-disabled = 自然语言检测已禁用
ai-assistant-ai-command-denylist-hint = 从 AI 自动检测中排除的命令

## -- 智能体管理视图筛选标签和选项 --------------------------

ai-assistant-ai-filter-status-label = 状态
ai-assistant-ai-filter-status-all = 全部
ai-assistant-ai-filter-status-working = 处理中
ai-assistant-ai-filter-status-done = 已完成
ai-assistant-ai-filter-status-failed = 失败
ai-assistant-ai-filter-source-label = 来源
ai-assistant-ai-filter-created-on-label = 创建时间
ai-assistant-ai-filter-has-artifact-label = 有产物
ai-assistant-ai-filter-harness-label = 运行方式
ai-assistant-ai-filter-environment-label = 环境
ai-assistant-ai-filter-created-by-label = 创建者
ai-assistant-ai-filter-last-24-hours = 过去24小时
ai-assistant-ai-filter-past-3-days = 过去3天
ai-assistant-ai-filter-last-week = 过去一周
ai-assistant-ai-filter-pull-request = 拉取请求
ai-assistant-ai-filter-plan = 计划
ai-assistant-ai-filter-screenshot = 截图
ai-assistant-ai-filter-file = 文件
ai-assistant-ai-filter-unknown = 未知
ai-assistant-ai-filter-clear-filters = 清除筛选
ai-assistant-ai-filter-clear-all = 全部清除
ai-assistant-ai-filter-no-results = 没有匹配的结果
ai-assistant-ai-filter-all = 全部
ai-assistant-ai-filter-none = 无
ai-assistant-ai-environment-label = 环境

## -- AI 文档视图溢出菜单项 -----------------------------------

ai-assistant-ai-doc-copy-link = 复制链接
ai-assistant-ai-doc-show-in-warp-drive = 在 Warp Drive 中显示
ai-assistant-ai-doc-save-as-markdown = 保存为 Markdown 文件
ai-assistant-ai-doc-attach-to-active-session = 附加到活动会话
ai-assistant-ai-doc-copy-plan-id = 复制计划 ID

## -- 其他 ---------------------------------------------------------------------

ai-assistant-ai-os-not-available = 此操作系统上不可用 AI 提供商
ai-assistant-ai-provider-not-configured = AI 提供商未配置
ai-assistant-ai-configure-provider = 配置 AI 提供商
ai-assistant-ai-invalid-file-name = 无效文件名
ai-assistant-ai-review-comment = 审查评论
ai-assistant-ai-invalid-api-key-for-provider = { $provider } 的 API 密钥无效

## -- 智能体管理视图 / 操作按钮 -------------------------------------

ai-assistant-ai-all = 全部
ai-assistant-ai-all-tooltip = 查看自己的智能体任务及所有共享团队任务
ai-assistant-ai-personal = 个人
ai-assistant-ai-personal-tooltip = 查看自己创建的智能体任务
ai-assistant-ai-view-agents = 查看智能体
ai-assistant-ai-clear-filters = 清除筛选
ai-assistant-ai-clear-all = 全部清除
ai-assistant-ai-search = 搜索
ai-assistant-ai-new-agent = 新建智能体
ai-assistant-ai-unknown = 未知
ai-assistant-ai-get-started = 开始使用
ai-assistant-ai-visit-oz = 访问 Oz
ai-assistant-ai-runs = 运行
ai-assistant-ai-loading-agents = 正在加载智能体...
ai-assistant-ai-no-filter-results = 没有匹配筛选条件的结果
ai-assistant-ai-created-on = 创建时间
ai-assistant-ai-has-artifact = 有产物
ai-assistant-ai-pull-request = 拉取请求
ai-assistant-ai-plan = 计划
ai-assistant-ai-screenshot = 截图
ai-assistant-ai-file = 文件
ai-assistant-ai-none = 无
ai-assistant-ai-last-24-hours = 过去24小时
ai-assistant-ai-past-3-days = 过去3天
ai-assistant-ai-last-week = 过去一周
ai-assistant-ai-environment = 环境
ai-assistant-ai-created-by = 创建者
ai-assistant-ai-session-expired = 会话已过期
ai-assistant-ai-no-session-available = 无可用会话
ai-assistant-ai-agent-label = 智能体
ai-assistant-ai-executor-label = 执行者
ai-assistant-ai-loading-cloud-agent-runs = 正在加载云端智能体运行

## -- 智能体管理 / 通知 ------------------------------------------

ai-assistant-ai-mark-all-as-read = 全部标为已读
ai-assistant-ai-notifications-title = 通知
ai-assistant-ai-no-notifications = 没有通知
ai-assistant-ai-close-tooltip = 关闭

## -- 云端设置指南 ---------------------------------------------------------

ai-assistant-ai-cloud-agents-getting-started = Oz 云端智能体入门
ai-assistant-ai-cloud-agents-subtitle = 通过集成（Linear、Slack）、事件（GitHub、内置定时任务）或 Oz SDK/CLI，直接在 Warp 中启动 Oz 云端智能体。
ai-assistant-ai-check-out-the = 查看
ai-assistant-ai-oz-documentation = Oz 文档
ai-assistant-ai-to-learn-more =  以了解更多。
ai-assistant-ai-quick-start-visit = 快速开始：访问 oz.warp.dev 体验基于 UI 的设置流程。
ai-assistant-ai-manual-setup-create-integration = 手动设置：使用 Oz CLI 创建 Slack 或 Linear 集成
ai-assistant-ai-create-an-environment = 创建环境
ai-assistant-ai-first-set-up-environment = 首先，设置一个环境来创建集成。
ai-assistant-ai-use-warps-env-setup = 使用 Warp 的环境设置命令，让智能体协助您完成配置。
ai-assistant-ai-visit-docs = 访问文档
ai-assistant-ai-or-supply-docker-image = 或者，提供您自己的 Docker 镜像。
ai-assistant-ai-create-an-integration = 创建集成
ai-assistant-ai-integrate-slack-linear = 集成 Slack 或 Linear，通过 @Warp 给 Warp 的智能体分配任务。
ai-assistant-ai-wf-create-environment = 创建环境
ai-assistant-ai-wf-create-environment-cli = 创建环境 (CLI)
ai-assistant-ai-wf-create-slack-integration = 创建 Slack 集成
ai-assistant-ai-wf-create-linear-integration = 创建 Linear 集成
ai-assistant-ai-wf-create-env-arg-repo = 仓库的 GitHub 链接或本地文件路径
ai-assistant-ai-wf-create-env-cli-arg-name = 环境名称
ai-assistant-ai-wf-create-env-cli-arg-image = 环境使用的 Docker 镜像
ai-assistant-ai-wf-integration-arg-env-id = 要集成的环境 ID

## -- AI 文档视图 ----------------------------------------------------------

ai-assistant-ai-show-version-history-tooltip = 显示版本历史
ai-assistant-ai-update-agent = 更新智能体
ai-assistant-ai-restore = 恢复
ai-assistant-ai-save-and-sync-tooltip = 保存并自动同步此计划到您的 Warp Drive
ai-assistant-ai-plan-synced-message = 此计划已同步到您的 Warp Drive，您的编辑将自动保存。
ai-assistant-ai-copy-link = 复制链接
ai-assistant-ai-show-in-warp-drive = 在 Warp Drive 中显示
ai-assistant-ai-save-as-markdown = 保存为 Markdown 文件
ai-assistant-ai-attach-to-active-session = 附加到活动会话
ai-assistant-ai-copy-plan-id = 复制计划 ID
ai-assistant-ai-link-copied-toast = 链接已复制到剪贴板
ai-assistant-ai-plan-id-copied-toast = 计划 ID 已复制到剪贴板
ai-assistant-ai-planning-document = 计划文档
ai-assistant-ai-untitled = 无标题

## -- 智能体输入页脚 / 操作按钮和工具提示 ---------------------------

ai-assistant-ai-enable-nld-tooltip = 启用终端命令自动检测
ai-assistant-ai-disable-nld-tooltip = 禁用终端命令自动检测
ai-assistant-ai-fast-forward-on-tooltip = 关闭所有智能体操作自动批准
ai-assistant-ai-fast-forward-off-tooltip = 自动批准此任务的所有智能体操作
ai-assistant-ai-start-remote-control-tooltip = 开始远程控制
ai-assistant-ai-start-remote-control-login-tooltip = 登录以使用 /remote-control
ai-assistant-ai-voice-input-tooltip = 语音输入
ai-assistant-ai-attach-file-tooltip = 附加文件
ai-assistant-ai-hand-off-to-cloud-tooltip = 移交至云端
ai-assistant-ai-file-explorer-label = 文件浏览器
ai-assistant-ai-file-explorer-tooltip = 打开文件浏览器
ai-assistant-ai-rich-input-label = 富文本输入
ai-assistant-ai-rich-input-tooltip = 打开富文本输入
ai-assistant-ai-hide-rich-input-label = 隐藏富文本输入
ai-assistant-ai-hide-rich-input-tooltip = 隐藏富文本输入
ai-assistant-ai-open-coding-agent-settings-tooltip = 打开编码智能体设置
ai-assistant-ai-enable-notifications-label = 启用通知
ai-assistant-ai-install-plugin-tooltip = 安装 Warp 插件以在 Warp 中启用富智能体通知
ai-assistant-ai-notifications-setup-instructions-label = 通知设置说明
ai-assistant-ai-notifications-setup-instructions-tooltip = 查看 Warp 插件安装说明
ai-assistant-ai-update-warp-plugin-label = 更新 Warp 插件
ai-assistant-ai-update-plugin-tooltip = Warp 插件有新版本可用
ai-assistant-ai-plugin-update-instructions-label = 插件更新说明
ai-assistant-ai-plugin-update-instructions-tooltip = 查看 Warp 插件更新说明
ai-assistant-ai-dismiss-tooltip = 关闭
ai-assistant-ai-stop-sharing-label = 停止共享
ai-assistant-ai-stop-sharing-tooltip = 停止共享
ai-assistant-ai-context-window-usage-tooltip = 上下文窗口使用量

## -- 待处理用户查询块 --------------------------------------------------

ai-assistant-ai-remove-queued-prompt = 移除排队中的提示
ai-assistant-ai-send-now = 立即发送
ai-assistant-ai-queued = 已排队

## -- Block.rs 操作按钮标签和工具提示 ---------------------------------

ai-assistant-ai-open-in-github-tooltip = 在 GitHub 中打开
ai-assistant-ai-open-in-code-review = 在代码审查中打开
ai-assistant-ai-manage-rules = 管理规则
ai-assistant-ai-review-changes = 审查更改
ai-assistant-ai-open-all-in-code-review = 全部在代码审查中打开
ai-assistant-ai-dismiss-suggestion = 关闭
ai-assistant-ai-dont-show-again = 不再显示
ai-assistant-ai-rewind = 回退
ai-assistant-ai-rewind-tooltip = 回退到此块之前
ai-assistant-ai-cancel = 取消
ai-assistant-ai-copied-to-clipboard = 已复制到剪贴板
ai-assistant-ai-thank-you-feedback = 感谢您的反馈！
ai-assistant-ai-follow-up-conversation-tooltip = 继续现有对话

## -- 建议规则弹窗 ------------------------------------------------------

ai-assistant-ai-suggested-rule-header = 建议规则
ai-assistant-ai-add-rule = 添加规则
ai-assistant-ai-edit-rule = 编辑规则
ai-assistant-ai-editing-disabled-offline = 离线时编辑功能已禁用。
ai-assistant-ai-name-label = 名称
ai-assistant-ai-rule-label = 规则

## -- 取消摘要对话框 -----------------------------------------------

ai-assistant-ai-cancel-summarization = 取消摘要
ai-assistant-ai-continue-summarization = 继续摘要

## -- 遥测横幅 ----------------------------------------------------------

ai-assistant-ai-telemetry-title-existing = 我们已更新遥测政策。
ai-assistant-ai-telemetry-title-new = 帮助我们改进 Warp。
ai-assistant-ai-telemetry-description = 我们可能会收集某些控制台交互以改进 Warp 的 AI 功能。您可以随时选择退出。
ai-assistant-ai-manage-privacy-settings = 管理隐私设置

## -- AWS Bedrock 凭证错误 ---------------------------------------------

ai-assistant-ai-aws-auth-failed = 使用 { $model_name } 时 AWS Bedrock 认证失败。请运行 `{ $login_command }` 刷新您的 AWS 凭证。
ai-assistant-ai-always-run-auto = 始终自动运行
ai-assistant-ai-refresh-aws-credentials = 刷新 AWS 凭证
ai-assistant-ai-configure = 配置
ai-assistant-ai-running-login-command = 正在运行 `{ $login_command }`...
ai-assistant-ai-aws-credentials-not-found = 未找到 { $profile_reference } 的 AWS 凭证。请使用 AWS CLI 登录或更新您的 AWS 凭证配置，然后刷新。
ai-assistant-ai-aws-credentials-timeout = 加载 AWS 凭证超时。请刷新后重试。
ai-assistant-ai-aws-credentials-invalid-config = { $profile_reference } 在您的本地 AWS 配置中无效或不完整。请更新您的 AWS 配置文件设置和凭证，然后刷新。
ai-assistant-ai-aws-credentials-provider-error = 无法从您配置的提供者加载 AWS 凭证。请刷新您的 AWS 登录后重试。
ai-assistant-ai-aws-credentials-unexpected-error = 加载 AWS 凭证时出现意外错误。请刷新您的 AWS 登录后重试。
ai-assistant-ai-aws-credentials-unable-to-load = 无法加载 AWS 凭证。请刷新您的 AWS 登录后重试。
ai-assistant-ai-aws-credentials-refresh-interrupted = 凭证刷新被中断
ai-assistant-ai-aws-profile-reference-default = 默认 AWS 配置文件
ai-assistant-ai-aws-profile-reference-named = AWS 配置文件 `{ $profile }`
ai-assistant-ai-aws-profile-reference-default-capitalized = 默认 AWS 配置文件
ai-assistant-ai-aws-profile-reference-named-capitalized = AWS 配置文件 `{ $profile }`

## -- 智能体提问视图 ----------------------------------------------------

ai-assistant-ai-type-answer = 输入答案并按 Enter
ai-assistant-ai-skip-all = 全部跳过
ai-assistant-ai-next = 下一个
ai-assistant-ai-other = 其他...
ai-assistant-ai-agent-questions = 智能体问题
ai-assistant-ai-questions-unavailable = 问题不可用
ai-assistant-ai-questions-skipped = 问题已跳过
ai-assistant-ai-questions-skipped-autoapprove = 因自动批准而跳过的问题
ai-assistant-ai-allow-agent-questions = 允许智能体提问：
ai-assistant-ai-answered-question = 已回答问题
ai-assistant-ai-answered-all-questions = 已回答全部 { $total } 个问题
ai-assistant-ai-skipped = 已跳过

## -- 执行配置编辑器 --------------------------------------------------

ai-assistant-ai-profile-editor-header = 配置编辑器
ai-assistant-ai-profile-agent-decides = 智能体决定
ai-assistant-ai-profile-always-allow = 始终允许
ai-assistant-ai-profile-always-ask = 始终询问
ai-assistant-ai-profile-ask-on-first-write = 首次写入时询问
ai-assistant-ai-profile-never = 从不
ai-assistant-ai-profile-never-ask = 从不询问
ai-assistant-ai-profile-ask-unless-autoapprove = 除非自动批准否则询问
ai-assistant-ai-profile-frontier-unavailable = 免费计划不提供前沿模型。请升级
ai-assistant-ai-edit-profile = 编辑配置
ai-assistant-ai-delete-profile = 删除配置
ai-assistant-ai-select-mcp-servers = 选择 MCP 服务器
ai-assistant-ai-profile-eg-ls = 例如 ls .*
ai-assistant-ai-profile-eg-rm = 例如 rm .*
ai-assistant-ai-profile-eg-repo = 例如 ~/code-repos/repo
ai-assistant-ai-profile-eg-yolo = 例如 "YOLO code"

## -- 请求命令 ---------------------------------------------------------

ai-assistant-ai-reject = 拒绝
ai-assistant-ai-run = 运行
ai-assistant-ai-edit-command = 编辑
ai-assistant-ai-done = 完成
ai-assistant-ai-generating-command = 正在生成命令...
ai-assistant-ai-agent-monitoring-command = 智能体正在监控命令...
ai-assistant-ai-agent-needs-input = 智能体需要您的输入才能继续
ai-assistant-ai-user-in-control = 用户控制中。
ai-assistant-ai-user-stopped-agent = 已暂停智能体。用户控制中。
ai-assistant-ai-user-take-control = 用户控制中
ai-assistant-ai-agent-errored = 智能体出现问题。请接管控制。
ai-assistant-ai-viewing-command-detail = 正在查看命令详情
ai-assistant-ai-viewing-mcp-tool-detail = 正在查看 MCP 工具调用详情
ai-assistant-ai-ok-run-command = 可以运行此命令并读取输出吗？
ai-assistant-ai-ok-call-mcp-tool = 可以调用此 MCP 工具吗？
ai-assistant-ai-edit-requested-command = 编辑请求的命令
ai-assistant-ai-auto-approve = 自动批准
ai-assistant-ai-copied-from = 复制自

## -- 代码差异视图 --------------------------------------------------------

ai-assistant-ai-expand = 展开
ai-assistant-ai-collapse = 折叠
ai-assistant-ai-open-config = 打开配置
ai-assistant-ai-no-file-name = 无文件名
ai-assistant-ai-file-renamed-no-changes = 文件已重命名（无更改）
ai-assistant-ai-dont-show-banners = 不再显示建议代码横幅
ai-assistant-ai-manage-banner-settings = 管理建议代码横幅设置
ai-assistant-ai-settings-ai = 设置 > AI
ai-assistant-ai-requested-edit = 请求的编辑
ai-assistant-ai-review-changes-tooltip = 审查更改
ai-assistant-ai-expand-tooltip = 展开
ai-assistant-ai-collapse-tooltip = 折叠
ai-assistant-ai-edit-code-diff = 编辑代码差异
ai-assistant-ai-refine = 优化
ai-assistant-ai-dismiss = 关闭
ai-assistant-ai-accept-and-continue = 接受并继续由智能体执行
ai-assistant-ai-iterate-with-agent = 与智能体迭代
ai-assistant-ai-file-new = { $file_name }（新建）
ai-assistant-ai-file-deleted = { $file_name }（已删除）
ai-assistant-ai-failed-revert = 无法还原 { $file_name } 的更改
ai-assistant-ai-file-suffix = 文件
ai-assistant-ai-renamed-suffix = （已重命名）
ai-assistant-ai-deleted-file-suffix = （已删除文件）

## -- 建议单元测试 ------------------------------------------------------

ai-assistant-ai-generate-tests = 生成测试
ai-assistant-ai-dismiss-tests = 关闭
ai-assistant-ai-dont-show-suggested-banners = 不再显示建议代码横幅
ai-assistant-ai-manage-suggested-settings = 设置 > AI

## -- Toast 消息 ---------------------------------------------------------------

ai-assistant-ai-copied-branch-name = 已复制分支名
ai-assistant-ai-failed-prepare-file-download = 文件下载准备失败。
ai-assistant-ai-downloaded-file = 已下载 { $filename }。
ai-assistant-ai-failed-download-file = 下载 { $filename } 失败。
ai-assistant-ai-plugin-install-failed-toast = 无法自动安装插件。请再次点击芯片查看手动安装步骤。
ai-assistant-ai-plugin-installed-restart-toast = Warp 插件已安装。请重启会话以激活。
ai-assistant-ai-plugin-updated-restart-toast = Warp 插件已更新。请重启会话以激活。
ai-assistant-ai-installing-warp-plugin = 正在安装 Warp 插件...
ai-assistant-ai-failed-install-warp-plugin = Warp 插件安装失败
ai-assistant-ai-updating-warp-plugin = 正在更新 Warp 插件...
ai-assistant-ai-failed-update-warp-plugin = Warp 插件更新失败
ai-assistant-ai-voice-microphone-access = 语音输入启动失败（可能需要启用麦克风访问）
ai-assistant-ai-voice-enabled-toast = 语音输入已启用。您也可以按住 `{ $key }` 键来激活语音输入（在设置 > AI > 语音中配置）

## -- 事实视图 ------------------------------------------------------------------

ai-assistant-ai-edit-api-keys = 编辑 API 密钥
ai-assistant-ai-open-file = 打开文件

## -- 向用户提问视图 -----------------------------------------------------------

ai-assistant-ai-type-answer-placeholder = 输入您的回答并按 Enter
ai-assistant-ai-select-all-that-apply = （选择所有适用项）
ai-assistant-ai-questions-skipped-auto-approve = 因自动批准而跳过问题
ai-assistant-ai-allow-agent-ask-questions = 允许智能体提问：
ai-assistant-ai-prev-nav = 上一页
ai-assistant-ai-next-nav = 下一页
ai-assistant-ai-answered-of-questions = 已回答 { $answered_count}/{ $total } 个问题
ai-assistant-ai-skipped-answer = 已跳过
ai-assistant-ai-question-prefix = 问：{ $question }
ai-assistant-ai-answer-prefix = 答：{ $answer }

## -- 执行配置文件编辑器 -------------------------------------------------------

ai-assistant-ai-profile-editor = 配置文件编辑器
ai-assistant-ai-agent-decides = 智能体决定
ai-assistant-ai-always-allow = 始终允许
ai-assistant-ai-always-ask = 始终询问
ai-assistant-ai-ask-on-first-write = 首次写入时询问
ai-assistant-ai-never = 从不
ai-assistant-ai-never-ask = 从不询问
ai-assistant-ai-ask-unless-auto-approve = 除非自动批准否则询问
ai-assistant-ai-command-allowlist-placeholder = 例如 ls .*
ai-assistant-ai-command-denylist-placeholder = 例如 rm .*
ai-assistant-ai-directory-allowlist-placeholder = 例如 ~/code-repos/repo
ai-assistant-ai-profile-name-placeholder = 例如 "YOLO code"
ai-assistant-ai-default-profile-name = 默认
ai-assistant-ai-upgrade-footer = 免费计划无法使用前沿模型。升级
ai-assistant-ai-upgrade-link = 升级

## -- 执行配置文件编辑器 UI 辅助 -------------------------------------------------

ai-assistant-ai-default-profile-name-cannot-change = 默认配置文件名称无法更改。
ai-assistant-ai-models-section = 模型
ai-assistant-ai-base-model = 基础模型
ai-assistant-ai-base-model-desc = 此模型作为智能体背后的主要引擎。它驱动大多数交互，并在必要时为规划或代码生成等任务调用其他模型。Warp 可能会根据模型可用性或辅助任务（如对话摘要）自动切换到备用模型。
ai-assistant-ai-context-window = 上下文窗口
ai-assistant-ai-context-window-desc = 基础模型的工作记忆——它可以一次考虑的对话、代码和文档的标记数量。更大的窗口可以在更大的代码库上实现更长的对话和更连贯的响应，代价是更高的延迟和计算使用量。
ai-assistant-ai-full-terminal-use-model = 完整终端使用模型
ai-assistant-ai-full-terminal-use-model-desc = 当智能体在数据库 shell、调试器、REPL 或开发服务器等交互式终端应用程序中操作时使用的模型——读取实时输出并向 PTY 写入命令。
ai-assistant-ai-computer-use-model = 计算机使用模型
ai-assistant-ai-computer-use-model-desc = 当智能体通过鼠标移动、点击和键盘输入控制您的计算机以与图形应用程序交互时使用的模型。
ai-assistant-ai-permissions-section = 权限
ai-assistant-ai-apply-code-diffs = 应用代码差异
ai-assistant-ai-read-files = 读取文件
ai-assistant-ai-execute-commands = 执行命令
ai-assistant-ai-interact-with-running-commands = 与运行中的命令交互
ai-assistant-ai-computer-use = 计算机使用
ai-assistant-ai-ask-questions = 提问
ai-assistant-ai-call-mcp-servers = 调用 MCP 服务器
ai-assistant-ai-run-orchestrated-agents = 运行编排智能体
ai-assistant-ai-perm-desc-agent-decides = 智能体选择最安全的路径：有把握时自主行动，不确定时请求批准。
ai-assistant-ai-perm-desc-always-allow = 给予智能体完全自主权——无需手动批准。
ai-assistant-ai-perm-desc-always-ask = 智能体在采取任何行动前需要明确批准。
ai-assistant-ai-perm-desc-ask-on-first-write = 智能体首次与运行中的命令交互时会请求许可，之后该命令将自动继续。
ai-assistant-ai-perm-desc-never = 计算机使用工具已禁用，智能体无法使用。
ai-assistant-ai-perm-desc-never-ask = 智能体无法运行子智能体，run_agents 工具将不可用。
ai-assistant-ai-perm-desc-ask-unless-auto = 智能体可能会提问并等待你的回复，但在自动批准开启时会自动继续。
ai-assistant-ai-perm-desc-never-ask-questions = 智能体不会提问，将以其最佳判断继续。
ai-assistant-ai-perm-desc-always-ask-questions = 智能体可能会提问，即使自动批准开启也会等待你的回复。
ai-assistant-ai-workspace-override-tooltip = 此选项由您的组织设置强制执行，无法自定义。
ai-assistant-ai-directory-allowlist = 目录白名单
ai-assistant-ai-directory-allowlist-desc = 授予智能体对某些目录的文件访问权限。
ai-assistant-ai-command-allowlist = 命令白名单
ai-assistant-ai-command-allowlist-desc = 匹配可由 Oz 自动执行的命令的正则表达式。
ai-assistant-ai-command-denylist = 命令黑名单
ai-assistant-ai-command-denylist-desc = 匹配 Oz 必须请求许可才能执行的命令的正则表达式。
ai-assistant-ai-mcp-allowlist = MCP 白名单
ai-assistant-ai-mcp-allowlist-desc = 允许 Oz 调用的 MCP 服务器。
ai-assistant-ai-mcp-denylist = MCP 黑名单
ai-assistant-ai-mcp-denylist-desc = 不允许 Oz 调用的 MCP 服务器。
ai-assistant-ai-mcp-server-fallback = MCP 服务器 { $uuid }
ai-assistant-ai-plan-auto-sync = 计划自动同步
ai-assistant-ai-plan-auto-sync-desc = 此智能体创建的计划将自动添加并同步到 Warp Drive。
ai-assistant-ai-call-web-tools = 调用网络工具
ai-assistant-ai-call-web-tools-desc = 智能体在有助于完成任务时可使用网络搜索。

## -- 权限描述 -----------------------------------------------------------------

ai-assistant-ai-permission-agent-decides-desc = 智能体选择最安全的路径：自信时自主行动，不确定时请求批准。
ai-assistant-ai-permission-always-allow-desc = 给予智能体完全自主权——无需任何手动批准。
ai-assistant-ai-permission-always-ask-desc = 要求智能体在采取任何行动前获得明确批准。
ai-assistant-ai-permission-ask-on-first-write-desc = 智能体在首次需要与运行中的命令交互时会请求许可。之后，将在该命令的其余部分自动继续。
ai-assistant-ai-permission-write-always-ask-desc = 智能体每次与运行中的命令交互时都会请求许可。
ai-assistant-ai-permission-computer-use-never-desc = 计算机使用工具已禁用，智能体无法使用。
ai-assistant-ai-permission-computer-use-always-ask-desc = 要求智能体在使用计算机使用工具前获得明确批准。
ai-assistant-ai-permission-computer-use-always-allow-desc = 给予智能体完全自主权，无需批准即可使用计算机使用工具。
ai-assistant-ai-permission-unknown-desc = 未知设置。
ai-assistant-ai-permission-ask-except-auto-approve-desc = 智能体可能会提问并暂停等待您的回复，但在自动批准开启时会自动继续。
ai-assistant-ai-permission-never-ask-desc = 智能体不会提问，将以最佳判断继续。
ai-assistant-ai-permission-always-ask-question-desc = 智能体可能会提问，即使在自动批准开启时也会暂停等待您的回复。

ai-assistant-edit-requested-command = 编辑请求的命令

## -- 硬编码 UI 文本附加 i18n 字符串 --------------------------------

ai-assistant-ai-accept = 接受
ai-assistant-ai-view-in-oz = 在 Oz 中查看
ai-assistant-ai-view-in-oz-tooltip = 在 Oz 网页应用中查看此运行
ai-assistant-ai-initialize-project = 初始化项目
ai-assistant-ai-delete-rule = 删除规则
ai-assistant-ai-choose-your-agent = 选择你的智能体
ai-assistant-ai-suggested = 推荐
ai-assistant-ai-cloud-agent = 云端智能体
ai-assistant-ai-local-agent = 本地智能体
ai-assistant-ai-open-conversation = 打开会话
ai-assistant-ai-cancel-task = 取消任务
ai-assistant-ai-fork-conversation = 派生会话
ai-assistant-ai-copy-link-to-run = 复制运行链接
ai-assistant-ai-notif-filter-all = 全部标签
ai-assistant-ai-notif-filter-unread = 未读
ai-assistant-ai-notif-filter-errors = 错误

# -- Agent type selector --
ai-assistant-ai-cloud-agent-desc = 在您选择的云环境中自主运行。适用于并行或长时间运行的任务。
ai-assistant-ai-local-agent-desc = 在您的本机上运行，需要监督。适用于快速的交互式任务。

## -- Additional AI assistant strings --
ai-assistant-ai-feature-name = Warp AI
ai-assistant-ai-ask-text = 询问 Warp AI
ai-assistant-ai-zero-state-script-prompt = 编写一个连接到 AWS EC2 实例的脚本。
ai-assistant-ai-zero-state-git-prompt = 如何撤销 git 中最近的提交？
ai-assistant-ai-how-do-i-fix = 如何修复这个问题？
ai-assistant-ai-show-examples = 显示示例。
ai-assistant-ai-enter-custom-docker-image = 输入自定义 Docker 镜像名称：
ai-assistant-ai-dont-show-suggested-code-banners = 不再显示建议代码横幅
ai-assistant-ai-rules-header = 规则
ai-assistant-ai-rules-description = 规则通过提供结构化的指导原则来增强智能体，帮助保持一致性、强制执行最佳实践，并适应特定工作流，包括代码库或更广泛的任务。
ai-assistant-ai-search-rules = 搜索规则
ai-assistant-ai-zero-state-text = 添加规则后，将在此处显示。
ai-assistant-ai-zero-state-project-text = 为项目生成 WARP.md 规则文件后，将在此处显示。
ai-assistant-ai-disabled-banner-text = 您的规则已禁用，不会在会话中作为上下文使用。您可以
ai-assistant-ai-disabled-banner-link-text = 重新启用
ai-assistant-ai-disabled-banner-text-2 =  随时。
ai-assistant-ai-global-scope-tab = 全局
ai-assistant-ai-project-based-scope-tab = 基于项目
ai-assistant-ai-rule-name-placeholder = 例如 Rust 规则
ai-assistant-ai-rule-description-placeholder = 例如 在 Rust 中永远不要使用 unwrap
## -- Agent tip strings --

ai-assistant-ai-tip-label = 提示：
ai-assistant-ai-tip-slash-commands = `/` 打开斜杠命令菜单，访问快速智能体操作。
ai-assistant-ai-tip-toggle-nl-detection = <keybinding> 切换自然语言检测，在智能体和终端输入之间切换。
ai-assistant-ai-tip-plan = `/plan` <prompt> 在执行前为智能体创建计划。
ai-assistant-ai-tip-command-palette = <keybinding> 打开命令面板，访问 Warp 操作和快捷键。
ai-assistant-ai-tip-store-workflows = 将可复用的工作流、笔记本和提示词存储到你的
ai-assistant-ai-tip-redirect-agent = 输入新提示词可在智能体运行时重定向。
ai-assistant-ai-tip-at-context = `@` 从文件、块或 Warp Drive 对象添加上下文到提示词。
ai-assistant-ai-tip-attach-block = <keybinding> 将上条命令输出附加为智能体上下文。
ai-assistant-ai-tip-init-repo = `/init` 索引代码仓库，让智能体理解你的代码库。
ai-assistant-ai-tip-agent-profiles = 添加智能体配置文件，自定义每个会话的权限和模型。
ai-assistant-ai-tip-fork-conversation = 右键点击块从该点分叉对话。
ai-assistant-ai-tip-copy-output = 右键点击块复制对话输出。
ai-assistant-ai-tip-drag-image = 将图片拖入面板，附加为智能体上下文。
ai-assistant-ai-tip-interactive-tools = 提示智能体控制交互式工具，如 node、python、postgres、gdb 或 vim。
ai-assistant-ai-tip-code-review = <keybinding> 打开代码审查面板，查看智能体的更改。
ai-assistant-ai-tip-add-mcp = `/add-mcp` 向工作区添加 MCP 服务器。
ai-assistant-ai-tip-open-mcp = `/open-mcp-servers` 查看并与团队共享 MCP 服务器。
ai-assistant-ai-tip-create-environment = `/create-environment` 将代码仓库转为远程 Docker 环境，供智能体运行。
ai-assistant-ai-tip-add-prompt = `/add-prompt` 创建可复用的提示词，用于重复工作流。
ai-assistant-ai-tip-add-rule = `/add-rule` 创建全局智能体规则。
ai-assistant-ai-tip-fork = `/fork` 创建当前对话的全新副本，可选择附带新提示词。
ai-assistant-ai-tip-open-code-review = `/open-code-review` 打开代码审查面板，检查智能体生成的差异。
ai-assistant-ai-tip-new = `/new` 开始具有干净上下文的新智能体对话。
ai-assistant-ai-tip-compact = `/compact` 总结当前对话，释放上下文窗口空间。
ai-assistant-ai-tip-usage = `/usage` 显示当前 AI 额度使用情况。
ai-assistant-ai-tip-oz-command = 使用 `oz` 命令在无头模式下运行 Oz 智能体，适用于远程机器。
ai-assistant-ai-tip-selected-text-context = 右键点击选中文本，附加为智能体上下文。
ai-assistant-ai-tip-agents-md = 使用 `AGENTS.md` 或 `CLAUDE.md` 应用项目范围规则。
ai-assistant-ai-tip-paste-url = 粘贴 URL，将该网页附加为智能体上下文。
ai-assistant-ai-tip-warpify-ssh = Warpify 远程 SSH 会话，在该环境中启用 Oz。
ai-assistant-ai-tip-switch-profiles = 切换智能体配置文件，快速更改模型和智能体权限。
ai-assistant-ai-tip-init-warp-md = `/init` 生成 `WARP.md` 文件，为智能体定义项目规则。
ai-assistant-ai-tip-auto-approve = <keybinding> 自动批准智能体在本会话剩余时间的命令和差异。
ai-assistant-ai-tip-cancel-task = <keybinding> 取消当前智能体任务。
ai-assistant-ai-warp-drive-period = Warp Drive。
ai-assistant-ai-tip-voice-input = 按住 <keybinding> 直接对智能体语音输入提示词。

## -- 输出视图字符串 --

ai-assistant-ai-conversation-summarized = 对话已摘要
ai-assistant-ai-thought-for-duration = 思考了 { $duration }
ai-assistant-ai-searched = 已搜索
ai-assistant-ai-searching = 搜索中
ai-assistant-ai-conversation-label = 对话
ai-assistant-ai-this-conversation = 本对话
ai-assistant-ai-sorry-bad-experience-single = 抱歉此次交互体验不佳。我们已退还您 1 积分。感谢您的反馈！
ai-assistant-ai-sorry-bad-experience-plural = 抱歉此次交互体验不佳。我们已退还您 { $count } 积分。感谢您的反馈！
ai-assistant-ai-response-wont-count = 此回复不会计入您的用量。
ai-assistant-ai-always-allow-file-access-coding = 始终允许编码任务的文件访问
ai-assistant-ai-always-allow-file-access-repo = 始终允许此仓库的文件访问
ai-assistant-ai-manage-autonomy-permissions = 管理 AI 自主权权限
ai-assistant-ai-search-in = 在 { $path } 中搜索
ai-assistant-ai-searching-in = 正在 { $path } 中搜索
ai-assistant-ai-no-relevant-files = 未找到相关文件。
ai-assistant-ai-search-failed-not-indexed = 在 { $path } 中搜索失败，因为代码库未索引
ai-assistant-ai-search-failed = 在 { $path } 中搜索失败
ai-assistant-ai-search-cancelled = 在 { $path } 中的搜索已取消
ai-assistant-ai-in-path-cancelled =  在 { $path } 中已取消
ai-assistant-ai-in-path =  在 { $path } 中
ai-assistant-ai-failed-read-files = 读取文件失败
ai-assistant-ai-open-skill = 打开技能
ai-assistant-ai-stopped-task-with-index = 已停止任务 { $current }/{ $total }："{ $title }"
ai-assistant-ai-stopped-task-with-name = 已停止任务："{ $task_name }"
ai-assistant-ai-stopped-task = 已停止任务
ai-assistant-ai-resume-conversation = 恢复对话
ai-assistant-ai-could-not-apply-changes = 无法将更改应用到文件。
ai-assistant-ai-suggestion-edited-in-another-tab = 此建议正在另一个标签页中编辑。
ai-assistant-ai-new-conversation-started = 已开始新对话
ai-assistant-ai-continuing-current-conversation = 正在继续当前对话
ai-assistant-ai-new-conversation-cancelled = 新对话建议已取消
ai-assistant-ai-start-a-new-conversation = 开始新对话
ai-assistant-ai-topic-changed = 话题似乎发生了变化。您是否想开始一个新对话？
ai-assistant-ai-the-current-directory = 当前目录
ai-assistant-ai-grep-for = 搜索
ai-assistant-ai-grepping-for = 搜索中
ai-assistant-ai-cancelled-grep = 已取消在 { $path } 中对以下模式的搜索
ai-assistant-ai-grep-patterns = 在 { $path } 中搜索以下模式
ai-assistant-ai-grepping-patterns = 正在 { $path } 中搜索以下模式
ai-assistant-ai-search-files-match = 搜索匹配的文件
ai-assistant-ai-finding-files-match = 查找匹配的文件
ai-assistant-ai-cancelled-search-files = 已取消在 { $path } 中对匹配以下模式的文件的搜索
ai-assistant-ai-find-files-match = 在 { $path } 中查找匹配以下模式的文件
ai-assistant-ai-comment-addressed = 已处理的评论："{ $content }"
ai-assistant-ai-ok-read-mcp-resource = 可以读取此 MCP 资源吗？
ai-assistant-ai-upload-artifact = 上传产物：{ $file_path }
ai-assistant-ai-description-label = 描述：{ $description }
ai-assistant-ai-status-uploaded = 状态：已上传产物 { $artifact_uid }
ai-assistant-ai-status-upload-failed = 状态：上传失败：{ $error }
ai-assistant-ai-uploaded-file = 已上传文件：{ $filepath }
ai-assistant-ai-view-screenshot = 查看截图
ai-assistant-ai-ok-computer-control = 可以使用计算机控制来完成此任务吗？
ai-assistant-ai-references = 引用
ai-assistant-ai-suggestions = 建议：
ai-assistant-ai-good-response = 好评
ai-assistant-ai-bad-response = 差评
ai-assistant-ai-continue-conversation = 继续对话
ai-assistant-ai-show-credit-usage = 显示积分使用详情
ai-assistant-ai-debug-output = 调试输出
ai-assistant-ai-listing-messages = 列表中
ai-assistant-ai-grepping-for-patterns = 搜索中
ai-assistant-ai-grepping-for-patterns-with-query = 搜索模式：{ $query }
ai-assistant-ai-reading-messages = 正在读取 { $count } 条消息

## -- Static prompt suggestion strings --

ai-assistant-ai-code-feature-or-fix-bug-in-arg1 = 编写功能或修复 { $arg1 } 中的 bug
ai-assistant-ai-help-code-feature-or-fix-bug-in-arg1 = 帮我编写功能或修复 { $arg1 } 中的 bug
ai-assistant-ai-implement-feature-or-fix-bug-in-arg1 = 在 { $arg1 } 中实现一个功能或修复 bug。需要任何细节都可以问我。
ai-assistant-ai-help-create-pull-request = 帮我创建一个拉取请求。
ai-assistant-ai-help-start-new-project = 帮我开始一个新项目
ai-assistant-ai-help-start-new-project-ask-details = 帮我开始一个新项目。需要任何细节都可以问我。
ai-assistant-ai-help-start-nodejs-project = 帮我开始一个 Node.js 项目
ai-assistant-ai-help-start-nodejs-project-ask-details = 帮我开始一个 Node.js 项目。需要任何细节都可以问我。
ai-assistant-ai-help-create-new-react-app = 帮我创建新的 React 应用
ai-assistant-ai-help-create-new-react-app-called-arg1 = 帮我创建名为 { $arg1 } 的新 React 应用。需要任何细节都可以问我。
ai-assistant-ai-help-create-new-nextjs-app = 帮我创建新的 Next.js 应用
ai-assistant-ai-help-create-new-nextjs-app-called-arg1 = 帮我创建名为 { $arg1 } 的新 Next.js 应用。需要任何细节都可以问我。
ai-assistant-ai-help-start-rust-project-for-arg1 = 帮我开始 { $arg1 } 的 Rust 项目
ai-assistant-ai-help-start-rust-project-for-arg1-ask-details = 帮我开始 { $arg1 } 的 Rust 项目。需要任何细节都可以问我。
ai-assistant-ai-help-start-poetry-project-for-arg1 = 帮我开始 { $arg1 } 的 Poetry 项目
ai-assistant-ai-help-start-poetry-project-for-arg1-ask-details = 帮我开始 { $arg1 } 的 Poetry 项目。需要任何细节都可以问我。
ai-assistant-ai-help-start-django-project-for-arg1 = 帮我开始 { $arg1 } 的 Django 项目
ai-assistant-ai-help-start-django-project-for-arg1-ask-details = 帮我开始 { $arg1 } 的 Django 项目。需要任何细节都可以问我。
ai-assistant-ai-help-start-rails-app-for-arg1 = 帮我开始 { $arg1 } 的 Rails 应用
ai-assistant-ai-help-start-rails-app-for-arg1-ask-details = 帮我开始 { $arg1 } 的 Rails 应用。需要任何细节都可以问我。
ai-assistant-ai-help-start-gradle-maven-project = 帮我开始一个 Gradle/Maven 项目
ai-assistant-ai-help-start-gradle-maven-project-ask-details = 帮我开始一个 Gradle/Maven 项目。需要任何细节都可以问我。
ai-assistant-ai-help-start-go-project-for-arg1 = 帮我开始 { $arg1 } 的 Go 项目
ai-assistant-ai-help-start-go-project-for-arg1-ask-details = 帮我开始 { $arg1 } 的 Go 项目。需要任何细节都可以问我。
ai-assistant-ai-help-start-swift-project = 帮我开始一个 Swift 项目
ai-assistant-ai-help-start-swift-project-ask-details = 帮我开始一个 Swift 项目。需要任何细节都可以问我。
ai-assistant-ai-help-start-terraform-configuration = 帮我开始一个 Terraform 配置
ai-assistant-ai-help-start-terraform-configuration-ask-details = 帮我开始一个 Terraform 配置。需要任何细节都可以问我。
ai-assistant-ai-help-set-up-prisma-in-this-project = 帮我在此项目中设置 Prisma
ai-assistant-ai-help-set-up-prisma-in-this-project-query = 帮我在此项目中设置 Prisma。
ai-assistant-ai-help-install-dependencies-for-arg1 = 帮我为 { $arg1 } 安装依赖。
ai-assistant-ai-help-set-up-new-ruby-project = 帮我设置新的 Ruby 项目
ai-assistant-ai-help-set-up-new-ruby-project-ask-details = 帮我设置新的 Ruby 项目。需要任何细节都可以问我。
ai-assistant-ai-help-set-up-modelfile-for-arg1 = 帮我为 { $arg1 } 设置 Modelfile。
ai-assistant-ai-help-understand-resource-utilization-in-cluster = 帮我了解集群中的资源利用情况。
ai-assistant-ai-help-inspect-kubernetes-resources = 帮我检查 Kubernetes 资源。
ai-assistant-ai-help-manage-running-containers = 帮我管理运行中的容器。
ai-assistant-ai-help-manage-docker-images = 帮我管理 Docker 镜像。
ai-assistant-ai-help-manage-troubleshoot-arg1-docker-compose = 帮我管理或使用 Docker Compose 排查 { $arg1 } 的问题
ai-assistant-ai-help-manage-troubleshoot-arg1-docker-compose-query = 帮我管理或使用 Docker Compose 排查 { $arg1 } 的问题。
ai-assistant-ai-help-configure-containers-to-use-arg1 = 帮我配置容器使用 { $arg1 }。
ai-assistant-ai-help-set-up-customize-vagrant-box-arg1 = 帮我设置或自定义 Vagrant box { $arg1 }。
ai-assistant-ai-help-provision-environment-troubleshoot-vagrant = 帮我配置环境或排查 Vagrant 启动问题。
ai-assistant-ai-help-search-code-across-files-for-arg1 = 帮我在文件中搜索 { $arg1 } 的代码。
ai-assistant-ai-help-search-code-across-files-with-arg1 = 帮我使用 { $arg1 } 在文件中搜索代码。
ai-assistant-ai-walk-me-through-generating-ssh-key = 带我完成生成 SSH 密钥的步骤。

## -- AI assistant panel hardcoded UI strings --

ai-assistant-zero-state-help-text = Shift + Ctrl + 空格 选择区块或文本，向 Warp AI 提问。
ai-assistant-zero-state-files-prompt = 如何查找包含特定文本的所有文件？
ai-assistant-init-placeholder-text =  提问…
ai-assistant-followup-placeholder-text =  输入回复或点击上方的选项…
ai-assistant-restart-button-text = 重启
ai-assistant-close-warp-ai = 关闭 Warp AI
ai-assistant-focus-terminal-input-from-warp-ai = 从 Warp AI 聚焦终端输入
ai-assistant-restart-warp-ai = 重启 Warp AI
ai-assistant-explain-the-following = 解释以下内容：\n
ai-assistant-what-should-i-do-next = \n接下来我该做什么？
ai-assistant-how-do-i-fix-this-block = \n如何修复这个问题？
ai-assistant-i-ran-the-command = 我运行了命令：`
ai-assistant-and-got-the-following-output = ` 并得到以下输出：\n
ai-assistant-character-limit-exceeded = 已超出字符限制。
ai-assistant-copy-transcript-to-clipboard = 复制对话到剪贴板
ai-assistant-generating-answer = 正在生成回答...
ai-assistant-ai-responses-can-be-inaccurate = AI 回答可能不准确。
ai-assistant-warp-ai-might-forget-earlier-answers = 随着对话变长，Warp AI 可能会忘记之前的回答。
ai-assistant-copy-code-to-clipboard = 复制代码到剪贴板 [Cmd + C]
ai-assistant-insert-code-into-terminal-input = 将代码插入终端输入 [Cmd + Enter]
ai-assistant-save-as-workflow = 保存为工作流 [Cmd + S]
ai-assistant-copy-answer-to-clipboard = 复制回答到剪贴板
ai-assistant-after-time = { $time }之后
ai-assistant-later = 稍后
ai-assistant-out-of-credits-upgrade = 您的额度似乎已用完。请在{ $next_time }后重试。\n\n[升级]({ $upgrade_url })以获取更多额度。
ai-assistant-out-of-credits-contact-admin = 您的额度似乎已用完。请在{ $next_time }后重试。\n\n请联系团队管理员升级以获取更多额度。
ai-assistant-out-of-credits = 您的额度似乎已用完。请在{ $next_time }后重试。
ai-assistant-technical-difficulties = 我们目前遇到了技术困难，请稍后重试。
ai-assistant-credits-used = 已使用额度：{ $num_requests_used } / { $request_limit }。
ai-assistant-until-refresh = 距刷新还有 { $next_refresh_time }。
ai-assistant-duration-days = { $count } 天
ai-assistant-duration-hours = { $count } 小时
ai-assistant-duration-minutes = { $count } 分钟

## -- 智能体状态字符串 -------------------------------------------------------

ai-assistant-addressed-comments = 已处理 { $count } 条评论
ai-assistant-received-messages = 已接收 { $count } 条消息
ai-assistant-received-events = 已接收 { $count } 个智能体事件
ai-assistant-seconds = { $count } 秒
ai-assistant-minutes = { $count } 分钟

## -- 已迁移 UI 字符串的主键 --

ai-assistant-ai-attach-as-agent-context = 附为智能体上下文
ai-assistant-ai-new-agent-pane = 新建智能体面板
ai-assistant-ai-follow-up-with-existing-conversation = 继续已有对话
ai-assistant-ai-invalid-api-key = 您的 API 密钥无效。请通过 '--api-key' 或 WARP_API_KEY 环境变量提供有效的密钥。
ai-assistant-ai-invalid-credentials = 您的凭据无效。请使用 { $cli } login 重新登录。
ai-assistant-ai-one-credit = { $count } 额度
ai-assistant-ai-credits = { $count } 额度
ai-assistant-ai-credits-decimal = { $count } 额度
ai-assistant-ai-aws-region-label = AWS 区域：
ai-assistant-ai-aws-access-key-id-label = AWS 访问密钥 ID：
ai-assistant-ai-now-using-default-model = 现在使用 Full Terminal Agent 的默认模型。
ai-assistant-ai-run-in-cloud-env = 在隔离的云环境中运行你的智能体任务。
ai-assistant-ai-recent-activity = 最近活动
ai-assistant-ai-view-changelog = 查看更新日志
ai-assistant-ai-recommended = 推荐
ai-assistant-ai-always-ask-permission = 你的配置文件设置为始终询问执行命令的权限。
ai-assistant-ai-no-urls-fetched = 未获取到 URL
ai-assistant-ai-no-urls-found = 未找到 URL
ai-assistant-ai-view-details = 查看详情

## -- Blocklist 智能体视图和编排字符串 --

ai-assistant-ai-deleted-conversation = 已删除的对话
ai-assistant-ai-untitled-conversation = 无标题对话
ai-assistant-ai-agent-fallback = 智能体
ai-assistant-ai-unknown-agent = 未知智能体
ai-assistant-ai-focus-pane = 聚焦面板
ai-assistant-ai-stop-agent = 停止智能体
ai-assistant-ai-kill-agent = 终止智能体
ai-assistant-ai-new-cloud-agent-conversation = 新的 Oz 云端智能体对话
ai-assistant-ai-new-agent-conversation = 新的 Oz 智能体对话
ai-assistant-ai-new-cloud-agent-body = 在下方发送提示词以开始新对话
ai-assistant-ai-cloud-agents-description = 使用云端智能体来运行并行智能体、构建自主运行的智能体，并随时随地查看您的智能体状态。
ai-assistant-ai-visit-cloud-docs = 访问文档
ai-assistant-ai-choose-environment-tooltip = 选择环境
ai-assistant-ai-agent-environment-label = 智能体环境
ai-assistant-ai-sending-message-to = 正在向
ai-assistant-ai-started-agent = 已启动智能体
ai-assistant-ai-cancelled-suffix = 已取消。
ai-assistant-ai-failed-start-agent = 启动智能体失败
ai-assistant-ai-failed-start-remote-agent = 启动远程智能体失败
ai-assistant-ai-start-agent-prefix = 启动智能体
ai-assistant-ai-start-remote-agent-prefix = 启动远程智能体
ai-assistant-ai-starting-agent = 正在启动智能体
ai-assistant-ai-starting-remote-agent = 正在启动远程智能体
ai-assistant-ai-locally-suffix = 本地。
ai-assistant-ai-remotely-suffix = 远程。
ai-assistant-ai-manage-command-execution = 管理命令执行设置
ai-assistant-ai-autoexecute-readonly-speedbump = 始终允许 Oz 执行只读命令（依赖模型）
ai-assistant-ai-deleted = 已删除
ai-assistant-ai-restored = 已恢复
ai-assistant-ai-continued = 已继续
ai-assistant-ai-couldnt-navigate = 无法导航到对话。
ai-assistant-ai-warp-docs = Warp 文档
ai-assistant-ai-add-as-context = 添加为上下文
ai-assistant-ai-open-in-warp = 在 Warp 中打开
ai-assistant-ai-run-in-terminal = 在终端中运行
ai-assistant-ai-one-update = { $count } 次更新
ai-assistant-ai-update-count = { $count } 次更新
ai-assistant-ai-switch-model = 切换模型

## -- 模型禁用原因工具提示 --

ai-assistant-ai-model-disabled-admin = 此模型已被您的团队管理员禁用。
ai-assistant-ai-model-out-of-requests = 请升级您的套餐以发送更多请求。
ai-assistant-ai-model-provider-outage = 由于提供商服务中断，此模型暂时不可用。
ai-assistant-ai-model-requires-upgrade = 请升级您的套餐以访问此模型。
ai-assistant-ai-model-unavailable = 此模型不可用。

## -- Artifact button and label strings --

ai-assistant-ai-untitled-plan = 无标题计划
ai-assistant-ai-screenshots-label = 截图
ai-assistant-ai-copy-branch-name = 复制分支名
ai-assistant-ai-view-screenshots = 查看截图
ai-assistant-ai-download-file = 下载文件
ai-assistant-ai-file-type-label = 文件
ai-assistant-ai-artifact-failed-load = 加载失败
ai-assistant-ai-daily-summary = 每日摘要
ai-assistant-ai-dashboard-screenshot = 仪表板截图
ai-assistant-ai-pr-label = PR
ai-assistant-ai-file-fallback-name = 文件

## -- Double-prefix aliases for new AI assistant strings --
ai-assistant-ai-ai-cancel = { ai-cancel }
ai-assistant-ai-ai-run = { ai-run }
## -- Blocklist 智能体视图和编排字符串的双前缀别名 --

## -- Double-prefix aliases for static prompt suggestion strings --

## -- AI 区块加载和状态消息字符串 --
ai-assistant-ai-agent-waiting-for-instructions = 智能体正在等待指令...
ai-assistant-ai-error-apology-text = 抱歉，我无法完成该请求。
ai-assistant-ai-internal-warp-error = 内部 Warp 错误。
ai-assistant-ai-warping = 正在变换...
ai-assistant-ai-adjusting-tasks = 正在调整任务...
ai-assistant-ai-generating-fix = 正在生成修复...
ai-assistant-ai-creating-diff = 正在创建差异...
ai-assistant-ai-preparing-question = 正在准备问题...
ai-assistant-ai-generating-plan = 正在生成计划...
ai-assistant-ai-updating-plan = 正在更新计划...
ai-assistant-ai-summarizing-conversation = 正在总结对话...
ai-assistant-ai-summarizing-command-output = 正在总结命令输出...
ai-assistant-ai-searching-codebase = 正在搜索代码库...
ai-assistant-ai-reading-files = 正在读取文件...
ai-assistant-ai-grepping = 正在搜索...
ai-assistant-ai-finding-files = 正在查找文件...
ai-assistant-ai-executing-command = 正在执行命令...
ai-assistant-ai-writing-command-input = 正在写入命令输入...
ai-assistant-ai-waiting-for-command-exit = 正在等待命令退出...
ai-assistant-ai-searching-the-web = 正在搜索网页...
ai-assistant-ai-fetching-pr-comments = 正在获取 PR 评论...
ai-assistant-ai-blocked-write-to-command = 我可以向这个正在运行的命令写入以下内容吗？
ai-assistant-ai-blocked-reading-files = 授予对以下文件的访问权限？
ai-assistant-ai-blocked-searching-codebase = 授予对以下仓库的访问权限？
ai-assistant-ai-blocked-grep-file-glob = 我可以搜索此目录中的文件吗？
ai-assistant-ai-session-expired-text = 会话将在一周后过期，且无法重新打开。
ai-assistant-ai-default-planning-document-title = 规划文档
ai-assistant-ai-agent-prompt-to-interact = 提示智能体与之交互
ai-assistant-ai-agent-waiting-on-instructions = 智能体正在等待指令
ai-assistant-ai-agent-waiting-for-command-exit = 智能体正在等待命令退出
ai-assistant-ai-agent-blocked = 智能体需要您的许可才能继续
ai-assistant-ai-agent-in-control = 智能体正在控制中
## -- 编排控件字符串 --

ai-assistant-ai-edit-agent-toolbelt = 编辑智能体工具栏
ai-assistant-ai-edit-cli-agent-toolbelt = 编辑 CLI 智能体工具栏
ai-assistant-ai-available-chips = 可用芯片
ai-assistant-ai-orchestration-env-none-label = (无环境)
ai-assistant-ai-default-model-label = 默认模型
ai-assistant-ai-agent-location-label = 智能体位置
ai-assistant-ai-local-label = 本地
ai-assistant-ai-cloud-label = 云端
ai-assistant-ai-agent-harness-label = 智能体运行方式
ai-assistant-ai-host-label = 主机
ai-assistant-ai-base-model-label = 基础模型
ai-assistant-ai-opencode-cloud-disabled-reason = 云端尚不支持 OpenCode。请切换到本地或选择其他运行方式。
ai-assistant-ai-recommend-select-env = 建议为云端智能体选择一个环境。
ai-assistant-ai-recommend-create-env = 建议为云端智能体创建一个环境。

## -- 编排配置块字符串 --

ai-assistant-ai-use-orchestration = 使用编排
ai-assistant-ai-orchestration-description = 将此工作分解为多个智能体的协调流。
ai-assistant-ai-base-model-helper = 所有智能体使用的主要模型。
ai-assistant-ai-oz-updates-header = Oz 最新动态
ai-assistant-ai-prompt-label = 提示词
ai-assistant-ai-generating-title = 正在生成标题...
ai-assistant-ai-blocked-upload-artifact = 允许上传此产物？
ai-assistant-ai-blocked-transfer-control = 智能体请求您接管控制。

## -- 对话使用量视图字符串 --

ai-assistant-ai-usage-summary-header = 使用概要
ai-assistant-ai-credits-spent-last-response = 消耗额度（上次回复）
ai-assistant-ai-credits-spent-total = 消耗额度（总计）
ai-assistant-ai-credits-spent = 消耗额度
ai-assistant-ai-tool-calls = 工具调用
ai-assistant-ai-models-label = 模型
ai-assistant-ai-change-model-settings = 您可以在 AI 设置页面更改全终端使用所用的模型
ai-assistant-ai-context-window-used = 上下文窗口已用
ai-assistant-ai-tool-call-summary-header = 工具调用概要
ai-assistant-ai-files-changed = 已更改文件
ai-assistant-ai-diffs-applied = 已应用差异
ai-assistant-ai-commands-executed = 已执行命令
ai-assistant-ai-last-response-time-header = 上次回复时间
ai-assistant-ai-time-to-first-token = 首个令牌时间
ai-assistant-ai-total-agent-response-time = 智能体总响应时间
ai-assistant-ai-total-time-including-tools = 总时间（包括工具调用）

## -- 代码库索引速度提示横幅字符串 --

ai-assistant-ai-index-codebase-question = 索引代码库？
ai-assistant-ai-index-codebase-text = 索引帮助智能体快速理解上下文并提供有针对性的解决方案。代码绝不会存储在服务器上。
ai-assistant-ai-index-codebase-button = 索引代码库
ai-assistant-ai-allow-automatic-indexing = 允许自动索引
ai-assistant-ai-indexing-codebase = 正在索引代码库
ai-assistant-ai-view-status = 查看状态

## -- 代码库索引速度提示横幅字符串的双前缀别名 --

## -- 运行智能体卡片字符串 --

ai-assistant-ai-run-agents-card-title = 我可以为此任务启动额外的智能体吗？
ai-assistant-ai-reject-label = 拒绝
ai-assistant-ai-accept-label = 接受
ai-assistant-ai-orchestration-disabled-message = 编排功能当前已禁用。请在计划卡片上重新启用以启动。
ai-assistant-ai-configuring-agents = 正在配置智能体…
ai-assistant-ai-spawn-agents-cancelled = 生成智能体已取消
ai-assistant-ai-failed-to-start-orchestration = 启动编排失败
ai-assistant-ai-spawn-agents-summary = 生成 { $count } 个智能体来处理此任务。
ai-assistant-ai-agents-count-label = 智能体 ({ $count })
ai-assistant-ai-spawned-one-agent = 已生成 1 个智能体
ai-assistant-ai-spawned-agents = 已生成 { $total } 个智能体
ai-assistant-ai-spawned-of-agents = 已生成 { $launched}/{ $total } 个智能体
ai-assistant-ai-orchestration-disabled-with-reason = 编排功能当前已禁用。请在计划卡片上重新启用以启动。({ $reason })
ai-assistant-ai-failed-to-start-orchestration-with-error = 启动编排失败：{ $error }
ai-assistant-ai-spawning-one-agent = 正在生成 1 个智能体…
ai-assistant-ai-spawning-agents = 正在生成 { $total } 个智能体…

## -- Double-prefix aliases for AI block loading and status message strings --
## -- 编排控件字符串双前缀别名 --

## -- 编排配置块字符串双前缀别名 --

## -- 运行智能体卡片字符串双前缀别名 --

## -- Prompt alert strings --

ai-assistant-ai-telemetry-disabled-primary-text = 要使用 AI 功能，
ai-assistant-ai-enable-analytics-action-text = 启用分析
ai-assistant-ai-upgrade-to-build-action-text = 升级
ai-assistant-ai-no-connection-primary-text = 无互联网连接
ai-assistant-ai-anonymous-user-request-limit-hard-gate-primary-text = 已达上限 -
ai-assistant-ai-delinquent-due-to-payment-issue-primary-text = 因付款问题而受限
ai-assistant-ai-out-of-requests-primary-text = 额度已用完
ai-assistant-ai-anonymous-user-request-limit-action-text = 注册获取更多 AI 额度
ai-assistant-ai-delinquent-due-to-payment-issue-action-text = 管理账单
ai-assistant-ai-overages-toggleable-but-not-enabled-action-text = 启用高级超额
ai-assistant-ai-monthly-overages-spend-limit-reached-action-text = 提高月度支出上限
ai-assistant-ai-upgrade-text = 升级
ai-assistant-ai-compare-plans-text = 比较方案
ai-assistant-ai-contact-support-text = 联系支持
ai-assistant-ai-non-admin-contact-admin-text = ，请联系团队管理员
ai-assistant-ai-non-admin-ask-admin-to-enable-overages-text = ，请让团队管理员启用超额
ai-assistant-ai-non-admin-ask-admin-to-increase-overages-text = ，请让团队管理员提高超额上限
ai-assistant-ai-upgrade-to-build-text = 升级至 Build
ai-assistant-ai-use-your-own-api-keys-text = 使用你自己的 API 密钥
ai-assistant-ai-add-credits-text = 添加额度

## -- 智能体视图 / 区块列表 UI 字符串 --

ai-assistant-ai-open-plan = 打开计划
ai-assistant-ai-open-pull-request = 打开拉取请求
ai-assistant-ai-enable-figma-mcp = 启用 Figma MCP
ai-assistant-ai-starting-shell = 正在启动 Shell...
ai-assistant-ai-open-in-different-pane = 在其他窗格中打开
ai-assistant-ai-open-in-new-pane = 在新窗格中打开
ai-assistant-ai-open-in-new-tab = 在新标签页中打开
ai-assistant-ai-enable-desktop-notifications = 启用桌面通知，当智能体需要您关注时获得提醒。
ai-assistant-ai-open-palette = 打开面板
ai-assistant-ai-show-diff-view = 显示差异视图

## -- Agent management notification strings --

ai-assistant-ai-notification-from-codex = 来自 Codex 的通知
ai-assistant-ai-task-completed = 任务已完成。
ai-assistant-ai-waiting-for-input = 等待输入。
ai-assistant-ai-child-agent = 子智能体
ai-assistant-ai-agent-task = 智能体任务
ai-assistant-ai-child-agent-completed = 子智能体已完成。
ai-assistant-ai-task-cancelled = 任务已取消。
ai-assistant-ai-child-agent-cancelled = 子智能体已取消。
ai-assistant-ai-child-agent-error = 子智能体遇到错误。
ai-assistant-ai-something-went-wrong = 出了点问题。

## -- Double-prefix aliases for agent view / blocklist UI strings --

## -- Double-prefix aliases for prompt alert strings --

## -- Toolbar item display labels --

ai-assistant-ai-context-chip = 上下文芯片
ai-assistant-ai-model-selector = 模型选择器
ai-assistant-ai-autodetection = 自动检测
ai-assistant-ai-voice-input = 语音输入
ai-assistant-ai-attach-file = 附加文件
ai-assistant-ai-context-usage = 上下文使用量
ai-assistant-ai-share-session = /remote-control
ai-assistant-ai-fast-forward = 快进
ai-assistant-ai-handoff-to-cloud = 交接至云端

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
## -- Double-prefix aliases for code diff view strings --
## -- Double-prefix aliases for toolbar item display labels --

## -- Conversation details panel strings --

ai-assistant-ai-conversation-fallback-title = 对话
ai-assistant-ai-cloud-agent-run = 云端智能体运行
ai-assistant-ai-harness-label = 运行环境
ai-assistant-ai-open-in-oz = 在 Oz 中打开
ai-assistant-ai-open-in-github = 在 GitHub 中打开
ai-assistant-ai-initial-query = 初始查询
ai-assistant-ai-artifacts-label = 产物
ai-assistant-ai-env-setup-commands = 环境设置命令
ai-assistant-ai-env-details = 环境详情
ai-assistant-ai-env-name = 名称：{$name}
ai-assistant-ai-env-id-label = ID
ai-assistant-ai-env-image-label = 镜像
ai-assistant-ai-directory-label = 目录
ai-assistant-ai-conversation-id-label = 对话 ID
ai-assistant-ai-run-id-label = 运行 ID
ai-assistant-ai-credits-used = 已用额度
ai-assistant-ai-run-time = 运行时间
## -- Double-prefix aliases for agent management notification strings --

## -- Double-prefix aliases for AWS credentials error strings --

## -- Double-prefix aliases for conversation details panel strings --

## -- Double-prefix aliases for conversation usage view strings --

## -- Double-prefix aliases for agent tip strings --

## -- Block view common strings --

ai-assistant-ai-calling-mcp-tool = 正在调用"{$name}" MCP 工具...
ai-assistant-ai-reading-mcp-resource = 正在读取"{$name}" MCP 资源...
ai-assistant-ai-take-over = 接管
ai-assistant-ai-take-over-tooltip = 接管命令控制
ai-assistant-ai-show-responses = 显示回复
ai-assistant-ai-hide-responses = 隐藏回复
ai-assistant-ai-show-agent-responses = 显示智能体回复
ai-assistant-ai-hide-agent-responses = 隐藏智能体回复
ai-assistant-ai-stop-agent-task = 停止智能体任务
ai-assistant-ai-auto-queue-on = 自动排队已开启：下一个提示词将被排队
ai-assistant-ai-auto-queue-off = 智能体回复时自动排队下一个提示词
ai-assistant-ai-turn-off-auto-approve = 关闭自动批准所有智能体操作
ai-assistant-ai-auto-approve-all = 自动批准此任务的所有智能体操作
ai-assistant-ai-check-now = 立即检查
ai-assistant-ai-check-now-tooltip = 让智能体立即检查此命令，跳过定时器。
ai-assistant-ai-mermaid-diagram = Mermaid 图表
ai-assistant-ai-server-overloaded = Warp 当前负载过高，请稍后重试。
ai-assistant-ai-failed-authenticate-provider = 使用 { $model_name } 时无法通过 { $provider } 认证，请检查您的 API 密钥是否正确。
ai-assistant-ai-credit-limit-reached = 您已达到额度上限。额度将于 { $date } 重置。
ai-assistant-ai-send-feedback = 发送反馈
ai-assistant-ai-debug-information = 调试信息：{ $debug_info }
ai-assistant-ai-copy-debug-id = 复制调试 ID
ai-assistant-ai-exit = 退出
ai-assistant-ai-exit-agent-input = 退出智能体输入
ai-assistant-ai-plan-update-tooltip = 此计划有智能体未意识到的更改。{$save_action} 以停止智能体当前任务并发送更新的计划
ai-assistant-ai-updated-plan = 我已更新了计划。
ai-assistant-ai-address-comments = 处理这些评论
ai-assistant-ai-source-label = 来源：{$source}
ai-assistant-ai-run-time-label = 运行时间：{$run_time}
ai-assistant-ai-credits-used-label = 已用额度：{$usage}
ai-assistant-ai-task-blocked = 任务已阻塞
ai-assistant-ai-not-started = 未开始
ai-assistant-ai-auth-failed = 认证失败
ai-assistant-ai-tasks-label = 任务
ai-assistant-ai-orchestrator = 编排器
ai-assistant-ai-out-of-credits-upgrade = 额度不足。请升级 Warp 套餐以继续运行云端智能体。
ai-assistant-ai-server-overloaded-short = Warp 当前暂时过载，请稍后重试。
ai-assistant-ai-cloud-agent-failed = 云端智能体运行失败
ai-assistant-ai-cloud-followup-finished = 云端后续处理在新会话可用前已完成
ai-assistant-ai-secret-raw-value = 原始值
ai-assistant-ai-secret-anthropic-key = Anthropic API 密钥
ai-assistant-ai-secret-anthropic-bedrock-access = Anthropic Bedrock 访问密钥
ai-assistant-ai-secret-anthropic-bedrock-key = Anthropic Bedrock API 密钥
ai-assistant-ai-secret-openai-key = OpenAI API 密钥
ai-assistant-ai-view-todo-list = 查看待办列表
ai-assistant-ai-ai-view-todo-list = { ai-assistant-ai-view-todo-list }
ai-assistant-ai-starting-env-step-3 = 正在启动环境 (步骤 3/3)
ai-assistant-ai-creating-env-step-2 = 正在创建环境 (步骤 2/3)
ai-assistant-ai-connecting-host-step-1 = 正在连接主机 (步骤 1/3)
ai-assistant-ai-missing-github-auth = 缺少 GitHub 身份验证。
ai-assistant-ai-authenticate-github = 验证 GitHub
ai-assistant-ai-cloud-agent-cancelled = 云端智能体运行已取消
ai-assistant-ai-setting-up-env = 正在设置环境
ai-assistant-ai-primary-model-failed-with-name = 主模型 ({$primary}) 失败。正在使用备用模型重试。
ai-assistant-ai-primary-model-failed = 主模型失败。正在使用备用模型重试。
ai-assistant-ai-warping-with-model = 正在使用 {$name} 处理。
ai-assistant-ai-warping-with-another-model = 正在使用其他模型处理。
ai-assistant-ai-ai-starting-env-step-3 = { ai-assistant-ai-starting-env-step-3 }
ai-assistant-ai-ai-creating-env-step-2 = { ai-assistant-ai-creating-env-step-2 }
ai-assistant-ai-ai-connecting-host-step-1 = { ai-assistant-ai-connecting-host-step-1 }
ai-assistant-ai-ai-missing-github-auth = { ai-assistant-ai-missing-github-auth }
ai-assistant-ai-ai-authenticate-github = { ai-assistant-ai-authenticate-github }
ai-assistant-ai-ai-cloud-agent-cancelled = { ai-assistant-ai-cloud-agent-cancelled }
ai-assistant-ai-ai-setting-up-env = { ai-assistant-ai-setting-up-env }
ai-assistant-ai-ai-primary-model-failed-with-name = { ai-assistant-ai-primary-model-failed-with-name }
ai-assistant-ai-ai-primary-model-failed = { ai-assistant-ai-primary-model-failed }
ai-assistant-ai-ai-warping-with-model = { ai-assistant-ai-warping-with-model }
ai-assistant-ai-ai-warping-with-another-model = { ai-assistant-ai-warping-with-another-model }
ai-assistant-ai-agent-mode-eval-profile-name = 智能体模式评估
ai-assistant-ai-default-cli-profile-name = 默认 (CLI)
ai-assistant-ai-ai-default-profile-name = { ai-assistant-ai-default-profile-name }
ai-assistant-ai-ai-agent-mode-eval-profile-name = { ai-assistant-ai-agent-mode-eval-profile-name }
ai-assistant-ai-ai-default-cli-profile-name = { ai-assistant-ai-default-cli-profile-name }
ai-assistant-ai-resume-when-network =
    {$error_message}
    网络连接恢复后将继续对话...
ai-assistant-ai-attempting-resume =
    {$error_message}
    正在尝试继续对话...

ai-assistant-ai-error-formatting-json = JSON 格式化出错
ai-assistant-ai-mcp-error = 错误：{$error}
ai-assistant-ai-tool-call-cancelled = 工具调用已取消
ai-assistant-ai-mcp-response =
    {$command}
    响应：{$result}
ai-assistant-ai-ai-error-formatting-json = { ai-assistant-ai-error-formatting-json }
ai-assistant-ai-ai-mcp-error = { ai-assistant-ai-mcp-error }
ai-assistant-ai-ai-tool-call-cancelled = { ai-assistant-ai-tool-call-cancelled }
ai-assistant-ai-ai-mcp-response = { ai-assistant-ai-mcp-response }

## -- AI facts view additional strings --

ai-assistant-ai-offline-banner-text = 您当前处于离线状态。部分规则将变为只读。
ai-assistant-ai-rule-editor-title = 规则编辑器

## -- 错误分类字符串 --

ai-assistant-ai-internal-error-retry = 发生内部错误。请重新运行您的任务。如果问题持续存在，请联系支持。
ai-assistant-ai-terminal-session-failed = 终端会话启动失败。请重新运行您的任务。
ai-assistant-ai-share-session-internal-error = 由于内部错误，无法共享智能体会话。请重新运行您的任务。
ai-assistant-ai-share-session-failed = 无法共享智能体会话：{$reason}
ai-assistant-ai-share-session-disabled = 您的账户未启用会话共享。这可能是因为管理员已为您的团队禁用了会话共享。请确认团队设置中是否启用了会话共享，或尝试不使用 --share 标志运行。
ai-assistant-ai-share-session-timeout = 无法共享智能体会话：等待会话共享服务器响应超时。请检查您的网络连接后重试。
ai-assistant-ai-share-session-interrupted = 会话共享在完成之前被中断。请重新运行您的任务。
ai-assistant-ai-warp-drive-sync-failed = Warp Drive 同步失败。请检查您的网络连接后重试。
ai-assistant-ai-auth-required = 需要认证。请通过 '{$bin} login' 登录，通过 '--api-key' 提供 API 密钥，或设置 WARP_API_KEY 环境变量。
ai-assistant-ai-cloud-provider-setup-failed = 配置云访问时出错：{$err}
ai-assistant-ai-mcp-server-not-found = 未找到 MCP 服务器 {$uuid}。请验证该服务器是否存在于您的 Warp Drive 中，且 UUID 是否正确。
ai-assistant-ai-mcp-startup-failed = 一个或多个 MCP 服务器启动失败。请检查您的 MCP 服务器配置是否有效，以及服务器进程是否可运行。
ai-assistant-ai-mcp-json-parse-error = 无法解析 MCP 服务器 JSON 配置：{$msg}
ai-assistant-ai-mcp-missing-variables = MCP 服务器配置缺少必需变量。请提供所有必需的环境变量或模板值。
ai-assistant-ai-profile-not-found = 未找到智能体配置"{$name}"。请检查配置 ID 并确保其存在于您团队的 Warp Drive 中。
ai-assistant-ai-workflow-not-found = 未找到 ID 为 {$id} 的已保存提示词。请验证该提示词是否存在于您的 Warp Drive 中。
ai-assistant-ai-environment-not-found = 未找到环境 '{$id}'。请验证环境 ID 并确保其存在于您的团队设置中。
ai-assistant-ai-environment-setup-failed-msg = 环境设置失败：{$msg}。请检查您的仓库 URL 和设置命令。
ai-assistant-ai-invalid-working-directory = 工作目录 '{$path}' 不存在或不是目录。请验证您的环境配置中的路径。
ai-assistant-ai-task-cancelled-msg = 任务已取消。
ai-assistant-ai-team-metadata-timeout = 刷新团队元数据超时。请检查您的网络连接后重试。
ai-assistant-ai-skill-resolution-failed = 技能解析失败：{$msg}
ai-assistant-ai-config-build-failed = 无法构建智能体配置：{$err}
ai-assistant-ai-prompt-resolution-failed = 无法解析运行的提示词：{$err}
ai-assistant-ai-secrets-fetch-failed = 无法获取任务密钥：{$err}
ai-assistant-ai-aws-bedrock-credentials-failed = 无法初始化 AWS Bedrock 凭证：{$msg}
ai-assistant-ai-conversation-load-failed = 无法加载对话：{$msg}
ai-assistant-conversation-harness-mismatch = 对话 {$conversation_id} 由 {$expected} 运行环境生成，但请求了 --harness {$got}。请使用 --harness {$expected} 重新运行（或省略 --harness 以匹配）来继续此对话。
ai-assistant-task-harness-mismatch = 任务 {$task_id} 使用 {$expected} 运行环境创建，但请求了 --harness {$got}。请使用 --harness {$expected} 重新运行（或省略 --harness 以匹配）来继续此任务。
ai-assistant-conversation-resume-state-missing = 对话 {$conversation_id} 没有 {$harness} 运行环境的存储记录。之前的运行可能在保存任何状态之前崩溃了。
ai-assistant-harness-command-failed = 运行环境命令以代码 {$exit_code} 退出
ai-assistant-harness-setup-failed = 运行环境 '{$harness}' 验证失败：{$reason}
ai-assistant-harness-config-setup-failed = 运行环境 '{$harness}' 配置设置失败：{$error}
ai-assistant-ai-allow-btn = 允许
ai-assistant-ai-refine-btn = 优化
ai-assistant-ai-take-over-btn = 接管
ai-assistant-ai-take-control-btn = 接管控制

## -- 错误分类字符串双前缀别名 --

## -- 输出视图字符串双前缀别名 --

## -- 智能体状态字符串双前缀别名 -----------------------------------------------

## -- 已迁移 UI 字符串的双前缀别名 --

## -- i18n 迁移补充的缺失键 --

ai-assistant-ai-delete-agent = 删除智能体
ai-assistant-ai-derived-from = 派生自
ai-assistant-ai-disabled-by-admin = 已被管理员禁用
ai-assistant-ai-fast-forward-locked-tooltip = 快进在此对话中已锁定
ai-assistant-ai-new-environment = 新环境
ai-assistant-ai-select-api-key-harness = 为此环境选择 API 密钥
ai-assistant-ai-start-remote-control-login-required-tooltip = 需要登录才能启动远程控制
ai-assistant-cancel-summarization = 取消
ai-assistant-continue-summarization = 继续
ai-assistant-invalid-api-key = API 密钥无效

## -- 为 i18n 完整性补充的缺失键 --

ai-assistant-credits = 积分
ai-assistant-credits-decimal = { $credits } 积分
ai-assistant-one-credit = 1 积分
ai-assistant-invalid-credentials = 无效的凭据

## -- 缺失的 ai-* 键（用于 tr!("ai", ...) 调用）--------------------------------

### 错误分类（来自 app/src/ai/agent_sdk/driver/error_classification.rs）

ai-internal-error-retry = 内部错误，请重试。
ai-terminal-session-failed = 终端会话失败：{ $error }
ai-share-session-internal-error = 共享会话内部错误
ai-share-session-failed = 共享会话失败：{ $reason }
ai-share-session-disabled = 共享会话已禁用
ai-share-session-timeout = 共享会话超时
ai-share-session-interrupted = 共享会话被中断
ai-warp-drive-sync-failed = Warp Drive 同步失败
ai-auth-required = 需要认证。请通过 '{$bin } login' 登录，通过 '--api-key' 提供 API 密钥，或设置 WARP_API_KEY 环境变量。
ai-cloud-provider-setup-failed = 云提供商设置失败：{ $err }
ai-mcp-server-not-found = 未找到 MCP 服务器：{ $uuid }
ai-mcp-startup-failed = MCP 服务器 { $uid } 启动失败：{ $message }
ai-mcp-json-parse-error = MCP JSON 解析错误：{ $msg }
ai-mcp-missing-variables = MCP 缺少变量
ai-profile-not-found = 未找到配置：{ $name }
ai-workflow-not-found = 未找到工作流：{ $id }
ai-environment-not-found = 未找到环境：{ $id }
ai-environment-setup-failed-msg = 环境设置失败：{ $msg }
ai-invalid-working-directory = 无效的工作目录：{ $path }
ai-task-cancelled-msg = 任务已取消
ai-agent-blocked = 智能体被阻塞：{ $blocked_action }
ai-team-metadata-timeout = 团队元数据请求超时
ai-skill-resolution-failed = 技能解析失败：{ $msg }
ai-config-build-failed = 配置构建失败：{ $err }
ai-prompt-resolution-failed = 提示词解析失败：{ $err }
ai-secrets-fetch-failed = 获取密钥失败：{ $err }
ai-aws-bedrock-credentials-failed = AWS Bedrock 凭证失败：{ $msg }
ai-conversation-load-failed = 加载对话失败：{ $msg }
ai-conversation-harness-mismatch = 对话 { $conversation_id } 由 { $expected } 运行环境生成，但请求了 --harness { $got }。请使用 --harness { $expected } 重新运行（或省略 --harness 以匹配）来继续此对话。
ai-task-harness-mismatch = 任务 { $task_id } 使用 { $expected } 运行环境创建，但请求了 --harness { $got }。请使用 --harness { $expected } 重新运行（或省略 --harness 以匹配）来继续此任务。
ai-conversation-resume-state-missing = 对话 { $conversation_id } 没有 { $harness } 运行环境的存储记录。之前的运行可能在保存任何状态之前崩溃了。
ai-harness-command-failed = 运行环境命令以代码 { $exit_code } 退出
ai-harness-setup-failed = 运行环境 '{ $harness }' 设置失败：{ $reason }
ai-harness-config-setup-failed = 运行环境 '{ $harness }' 配置设置失败：{ $error }

### 智能体状态/控制（来自 app/src/ai/blocklist/agent_view/inline_agent_view_header.rs）

ai-agent-prompt-to-interact = 提示以与智能体交互
ai-agent-waiting-on-instructions = 等待指令
ai-agent-waiting-for-command-exit = 等待命令退出
ai-agent-in-control = 智能体控制中
ai-user-in-control = 用户控制中

### 计费/额度/提醒（来自 app/src/ai/blocklist/prompt/prompt_alert.rs）

ai-add-credits-text = 添加积分
ai-anonymous-user-request-limit-action-text = 免费注册
ai-anonymous-user-request-limit-hard-gate-primary-text = 免费注册以继续使用 AI
ai-compare-plans-text = 比较方案
ai-contact-support-text = 联系支持
ai-delinquent-due-to-payment-issue-action-text = 更新付款
ai-delinquent-due-to-payment-issue-primary-text = 您的订阅存在付款问题
ai-enable-analytics-action-text = 启用分析
ai-monthly-overages-spend-limit-reached-action-text = 提高支出上限
ai-no-connection-primary-text = 无互联网连接
ai-non-admin-ask-admin-to-enable-overages-text = 请让管理员启用超额
ai-non-admin-ask-admin-to-increase-overages-text = 请让管理员提高超额上限
ai-non-admin-contact-admin-text = 联系您的管理员
ai-out-of-requests-primary-text = AI 请求次数已用完
ai-overages-toggleable-but-not-enabled-action-text = 启用超额
ai-telemetry-disabled-primary-text = 启用遥测以使用 AI
ai-upgrade-text = 升级
ai-upgrade-to-build-action-text = 升级至 Build
ai-upgrade-to-build-text = 升级至 Build
ai-use-your-own-api-keys-text = 使用您自己的 API 密钥

### 工具栏/输入（来自 app/src/ai/blocklist/agent_view/agent_input_footer/toolbar_item.rs）

ai-context-chip = 上下文
ai-model-selector = 模型
ai-autodetection = 自动检测
ai-voice-input = 语音
ai-attach-file = 附加文件
ai-context-usage = 上下文使用量
ai-file-explorer = 文件浏览器
ai-rich-input = 富文本输入
ai-share-session = 共享会话
ai-fast-forward = 快进
ai-handoff-to-cloud = 交接至云端

### 编辑器/芯片（来自 app/src/ai/blocklist/agent_view/agent_input_footer/editor.rs）

ai-available-chips = 可用芯片
ai-edit-agent-toolbelt = 编辑智能体工具栏
ai-edit-cli-agent-toolbelt = 编辑 CLI 智能体工具栏

### 其他智能体功能键

ai-address-comments = 处理评论
ai-auth-failed = 认证失败
ai-blocked-transfer-control = 已阻塞：转移控制
ai-cloud-agent-failed = 云端智能体失败
ai-cloud-agent-run = 云端智能体运行
ai-cloud-followup-no-session = 没有可用的云端会话进行后续操作
ai-cloud-followup-not-started = 云端后续操作未开始
ai-copied-branch-name = 已复制分支名
ai-created-on = 创建于
ai-credits-used = 已用额度
ai-default-profile = 默认配置
ai-directory-label = 目录
ai-enable-figma-mcp = 启用 Figma MCP
ai-env-details = 环境详情
ai-env-id-label = 环境 ID
ai-env-image-label = 环境镜像
ai-env-name = 环境名称：{ $name }
ai-env-setup-commands = 设置命令
ai-feature-name = AI 助手
ai-generate-tests = 生成测试
ai-harness-label = 运行方式
ai-how-do-i-fix = 如何修复此问题？
ai-initial-query = 初始查询
ai-learn-more = 了解更多
ai-open-in-different-pane = 在其他窗格中打开
ai-open-in-github = 在 GitHub 中打开
ai-open-in-oz = 在 Oz 中打开
ai-open-plan = 打开计划
ai-open-pull-request = 打开拉取请求
ai-out-of-credits-upgrade = 额度不足，请升级
ai-prompt-label = 提示词
ai-run-id-label = 运行 ID
ai-run-metadata-unavailable = 运行元数据不可用
ai-run-time = 运行时间
ai-server-overloaded-short = 服务器过载
ai-shared-session-metadata-note = 共享会话元数据备注
ai-show-examples = 显示示例
ai-starting-shell = 正在启动 Shell
ai-task-blocked = 任务已阻塞
ai-tasks-label = 任务
ai-agent-label = 智能体
ai-agent-unaware-plan-edits = 智能体未感知计划编辑
ai-view-plan = 查看计划
ai-view-status = 查看状态
ai-view-todo-list = 查看待办列表
ai-zero-state-git-prompt = Git 提示
ai-zero-state-script-prompt = 脚本提示
ai-ask-text = 询问
ai-artifacts-label = 产物
ai-conversation-fallback-title = 对话
ai-conversation-id-label = 对话 ID

### 提示轮播（来自 app/src/ai/agent_tips.rs）

ai-tip-label = 提示
ai-tip-slash-commands = 使用 / 查看斜杠命令
ai-tip-toggle-nl-detection = 切换自然语言检测
ai-tip-plan = 执行前创建计划
ai-tip-command-palette = 使用 Cmd+Shift+P 打开命令面板
ai-tip-store-workflows = 保存工作流到 Warp Drive
ai-tip-redirect-agent = 在任务中重定向智能体
ai-tip-at-context = 使用 @ 添加上下文
ai-tip-attach-block = 附加区块作为上下文
ai-tip-init-repo = 初始化仓库以获取更好的上下文
ai-tip-agent-profiles = 使用 / 切换智能体配置
ai-tip-fork-conversation = 派生对话以探索想法
ai-tip-copy-output = 一键复制输出
ai-tip-drag-image = 拖放图片
ai-tip-interactive-tools = 与工具结果交互
ai-tip-code-review = 开始代码审查
ai-tip-add-mcp = 添加 MCP 服务器以获取更多工具
ai-tip-open-mcp = 打开 MCP 设置
ai-tip-create-environment = 创建自定义环境
ai-tip-add-prompt = 添加提示词到 Warp Drive
ai-tip-add-rule = 添加规则到 Warp Drive
ai-tip-fork = 派生此对话
ai-tip-open-code-review = 打开代码审查
ai-tip-new = 开始新对话
ai-tip-compact = 压缩对话
ai-tip-usage = 查看 AI 用量
ai-tip-oz-command = 使用 Oz 修复问题
ai-tip-selected-text-context = 选择文本作为上下文
ai-tip-agents-md = 使用 .agents.md 配置智能体
ai-tip-paste-url = 粘贴 URL 作为上下文
ai-tip-warpify-ssh = Warpify 您的 SSH 会话
ai-tip-switch-profiles = 切换智能体配置
ai-tip-init-warp-md = 初始化 .warp.md 以获取上下文
ai-tip-auto-approve = 自动批准安全命令
ai-tip-handoff = 将任务交接给云端智能体
ai-tip-cancel-task = 取消正在运行的任务
ai-enable-desktop-notifications = 启用桌面通知
ai-tip-voice-input = 使用语音输入

### 代码库索引（来自 app/src/ai/blocklist/codebase_index_speedbump_banner.rs）

ai-index-codebase-question = 索引代码库以获取更好的上下文？
ai-index-codebase-text = 索引代码库让智能体更好地理解您的项目
ai-index-codebase-button = 索引代码库
ai-allow-automatic-indexing = 允许自动索引
ai-indexing-codebase = 正在索引代码库...

## Agent message bar and shortcuts
ai-assistant-ai-bar-for-help = 查看帮助
ai-assistant-ai-bar-for-commands = 查看命令
ai-assistant-ai-bar-send-to-cloud = 发送任务到云端
ai-assistant-ai-bar-open-conversation = 打开会话列表
ai-assistant-ai-esc-go-back-to-terminal = 返回终端

## 智能体消息栏上下文提示
ai-assistant-ai-bar-to-resume = 恢复对话
ai-assistant-ai-bar-for-code-review = 代码审查
ai-assistant-ai-bar-to-hide-plan = 隐藏计划
ai-assistant-ai-bar-to-view-plans = 查看计划
ai-assistant-ai-bar-to-view-plan = 查看计划
ai-assistant-ai-bar-to-fork = 派生并继续
ai-assistant-ai-bar-new-pane = 新窗格
ai-assistant-ai-bar-new-tab = 新标签页
ai-assistant-ai-bar-current-pane = 当前窗格
ai-assistant-ai-bar-to-hide-help = 隐藏帮助
ai-assistant-ai-bar-autodetected-shell = 已自动检测到 Shell 命令
ai-assistant-ai-bar-to-override = 切换为智能体模式
ai-assistant-ai-bar-to-hand-off = 交接至云端
ai-assistant-ai-bar-to-dismiss-hint = 关闭
ai-assistant-ai-bar-to-exit-shell = 退出 Shell 模式
ai-assistant-ai-bar-get-figma = 获取 Figma MCP
ai-assistant-ai-bar-enabling = 正在启用…
ai-assistant-ai-hand-off-to-cloud-full-tooltip = 交接至云端（或输入 &）
ai-assistant-ai-enable-agent-notifications = 启用 { $agent } 通知
ai-assistant-ai-no-plugin-manager = 无可用插件管理器
ai-assistant-ai-could-not-install-plugin = 无法自动安装插件，请再次点击按钮查看手动安装步骤。
ai-assistant-ai-remote-control-label = /远程控制

## 智能体快捷键视图
ai-assistant-ai-shortcut-input-shell = 输入 Shell 命令
ai-assistant-ai-shortcut-for-slash-commands = 斜杠命令
ai-assistant-ai-shortcut-for-file-paths = 文件路径和附加上下文
ai-assistant-ai-shortcut-open-code-review = 打开代码审查
ai-assistant-ai-shortcut-toggle-conversation-list = 切换会话列表
ai-assistant-ai-shortcut-search-conversations = 搜索并继续对话
ai-assistant-ai-shortcut-start-new-conversation = 开始新对话
ai-assistant-ai-shortcut-toggle-auto-accept = 切换自动批准
ai-assistant-ai-shortcut-pause-agent = 暂停智能体
ai-assistant-ai-installing-plugin = 正在安装 Warp 插件…
ai-assistant-ai-failed-install-plugin = 安装 Warp 插件失败
ai-assistant-ai-updating-plugin = 正在更新 Warp 插件…
ai-assistant-ai-failed-update-plugin = 更新 Warp 插件失败
ai-assistant-ai-voice-mic-error = 无法启动语音输入（可能需要启用麦克风访问权限）
ai-assistant-ai-init-callout = 索引此代码库并生成 AGENTS.md 以获得最佳性能
ai-assistant-ai-view-changelog = 查看更新日志
ai-assistant-ai-in-location = 在 `{ $location }`
ai-assistant-ai-again-stop-exit = 再次按下停止并退出
ai-assistant-ai-again-exit = 再次按下退出

# conversation_rename.rs
ai-assistant-ai-conv-empty-title = 请提供对话标题
ai-assistant-ai-conv-empty-conversation = 无法重命名空对话
ai-assistant-ai-conv-not-found = 未找到对话
ai-assistant-ai-conv-not-synced = 您的对话尚未同步到云端。请尝试发送另一条消息，然后再次重命名。
ai-assistant-ai-conv-rename-in-progress = 此对话的重命名正在进行中
ai-assistant-ai-conv-not-ready = 您的对话仍在同步中。请稍后再次尝试重命名。
ai-assistant-ai-conv-renamed-to = 对话已重命名为 { $title }
ai-assistant-ai-conv-failed-rename = 重命名对话失败：{ $error }
ai-assistant-ai-conv-title-max-chars = 对话标题不得超过 { $count } 个字符

# host_picker.rs
ai-assistant-ai-host-custom = 自定义主机…
ai-assistant-ai-host-default = 默认
ai-assistant-ai-host-placeholder = my-worker-host

# orchestration_controls.rs
ai-assistant-ai-orch-skip-advanced = 跳过（高级）
ai-assistant-ai-orch-api-key = API 密钥
ai-assistant-ai-orch-new-api-key = 新 API 密钥…
ai-assistant-ai-orch-unable-load-secrets = 无法加载密钥

# run_agents_card_view.rs
ai-assistant-ai-orch-spawned-one-agent = 已生成 1 个智能体
ai-assistant-ai-orch-spawned-agents = 已生成 { $count } 个智能体
ai-assistant-ai-orch-failed-spawn-one = 生成智能体失败
ai-assistant-ai-orch-failed-spawn-agents = 生成 { $count } 个智能体失败
ai-assistant-ai-orch-spawned-of-agents = 已生成 { $launched }/{ $total } 个智能体
ai-assistant-ai-orch-spawning-one-agent = 正在生成 1 个智能体…
ai-assistant-ai-orch-spawning-agents = 正在生成 { $count } 个智能体…

# summarization_cancel_dialog.rs
ai-assistant-ai-cancel-summarization-title = 取消摘要？
ai-assistant-ai-cancel-summarization-body = 摘要正在运行中。如果现在取消，请求可能仍会产生费用，目前的进度将会丢失，重新启动需要更长时间。\n\n确定要取消吗？

# conversation_usage_view.rs
ai-assistant-ai-usage-commands-executed = 已执行命令
ai-assistant-ai-usage-last-response-time = 最近响应时间
ai-assistant-ai-usage-time-to-first-token = 首个令牌时间
ai-assistant-ai-usage-total-agent-response-time = 智能体总响应时间
ai-assistant-ai-usage-total-time-including-tool-calls = 总时间（包含工具调用）
ai-assistant-ai-usage-show-more = 显示更多 { $count } 项
ai-assistant-ai-usage-call-label = 次调用
ai-assistant-ai-usage-file-label = 个文件
ai-assistant-ai-usage-command-label = 条命令
ai-assistant-ai-models-category-label = 模型（{ $category }）

# todos.rs
ai-assistant-ai-todo-tasks-label = 任务
ai-assistant-ai-todo-outdated-label = 已过时
ai-assistant-ai-todo-completed = 已完成 { $title }
ai-assistant-ai-todo-completed-next = ，{ $title }
ai-assistant-ai-todo-completed-index = 已完成 { $title }（{ $index }/{ $total }）

# orchestration_conversation_links.rs
ai-assistant-ai-conv-parent-title = 父对话
ai-assistant-ai-conv-back-to-parent = 返回父对话

# suggestion_chip_view.rs
ai-assistant-ai-chip-add-rule = 添加规则：{ $content }
ai-assistant-ai-chip-suggested-prompt = 建议的提示词：\n{ $prompt }

# requested_command.rs
ai-assistant-ai-inline-manage-cmd-exec = 管理命令执行设置
ai-assistant-ai-inline-tool-json-error = JSON 格式化错误
ai-assistant-ai-inline-tool-error = 错误：{ $error }
ai-assistant-ai-inline-tool-cancelled = 工具调用已取消

# search_codebase.rs
ai-assistant-ai-inline-search-for = 正在搜索
ai-assistant-ai-inline-search-codebase-for = 正在代码库中搜索"{ $query }"
ai-assistant-ai-inline-search-cancelled-in = 在 { $repo } 中搜索"{ $query }"已取消
ai-assistant-ai-inline-search-cancelled = 搜索"{ $query }"已取消
ai-assistant-ai-inline-searched-codebase-in = 已在 { $repo } 中搜索代码库"{ $query }"
ai-assistant-ai-inline-searched-codebase = 已搜索代码库"{ $query }"
ai-assistant-ai-inline-no-results = 未找到结果
ai-assistant-ai-inline-results-label = 个结果

# web_search.rs
ai-assistant-ai-inline-web-searching = 正在搜索网络
ai-assistant-ai-inline-web-searching-for = 正在搜索网络"{ $query }"
ai-assistant-ai-inline-web-searched = 已搜索网络
ai-assistant-ai-inline-web-searched-for = 已搜索网络"{ $query }"
ai-assistant-ai-inline-urls-label = 个链接

# web_fetch.rs
ai-assistant-ai-inline-fetching-pages = 正在获取 { $count } 个网页…
ai-assistant-ai-inline-fetched-pages = 已获取 { $count } 个网页
ai-assistant-ai-inline-fetched-pages-of = 已获取 { $successful }/{ $total } 个网页

# harness_display.rs
ai-assistant-ai-harness-warp = Warp
ai-assistant-ai-harness-claude = Claude Code
ai-assistant-ai-harness-opencode = OpenCode
ai-assistant-ai-harness-gemini = Gemini CLI
ai-assistant-ai-harness-codex = Codex
ai-assistant-ai-harness-unknown = 未知

# output.rs grep/file-glob strings
ai-assistant-ai-inline-current-dir = 当前目录
ai-assistant-ai-inline-grep-for = 搜索
ai-assistant-ai-inline-grepping-for = 正在搜索
ai-assistant-ai-inline-in-path =  在 { $path }
ai-assistant-ai-inline-in-path-cancelled =  在 { $path } 已取消
ai-assistant-ai-inline-cancelled-grep-in = 在 { $path } 中搜索以下模式已取消
ai-assistant-ai-inline-grep-patterns-in = 在 { $path } 中搜索以下模式
ai-assistant-ai-inline-grepping-patterns-in = 正在 { $path } 中搜索以下模式
ai-assistant-ai-inline-find-files-match = 搜索匹配的文件
ai-assistant-ai-inline-finding-files-match = 正在查找匹配的文件
ai-assistant-ai-inline-cancelled-search-files-in = 在 { $path } 中搜索匹配以下模式的文件已取消
ai-assistant-ai-inline-find-files-patterns-in = 在 { $path } 中查找匹配以下模式的文件
ai-assistant-ai-inline-finding-files-patterns-in = 正在 { $path } 中查找匹配以下模式的文件
ai-assistant-ai-inline-listing-messages = 正在列出消息
ai-assistant-ai-inline-grepping-patterns = 正在搜索模式
ai-assistant-ai-inline-grepping-for-patterns = 正在搜索模式：{ $patterns }
ai-assistant-ai-inline-reading-messages = 正在读取 { $count } 条消息

# agent_input_footer
ai-assistant-ai-see-logs-for-details = 查看日志了解详情
ai-assistant-ai-voice-limit-reached = 语音输入已达上限
ai-assistant-ai-voice-transcribe-failed = 语音转文字失败

# local_agent_task_sync_model.rs
ai-assistant-ai-task-cancelled-by-user = 用户已取消
ai-assistant-ai-task-blocked-waiting = 智能体在等待用户确认操作时卡住：{ $blocked_action }
ai-assistant-ai-task-agent-error = 智能体遇到错误

# common.rs additional strings
ai-assistant-ai-invalid-api-key-error = 提供的 API 密钥无效
ai-assistant-ai-aws-credentials-fallback = { $model_name } 的 AWS 凭证已过期或缺失。请刷新您的 AWS 凭证。
ai-assistant-ai-quota-limit-reached = 已达到配额限制。
ai-assistant-ai-context-window-exceeded = 超出上下文窗口：{ $message }
ai-assistant-ai-aws-bedrock-credentials-expired = { $model_name } 的 AWS Bedrock 凭证已过期或无效
ai-assistant-ai-one-second = 1 秒
ai-assistant-ai-seconds-format = { $count } 秒
ai-assistant-ai-check-now-inline =  · 立即检查
ai-assistant-ai-fast-forward-locked-tooltip = 云端智能体对话始终启用快进
ai-assistant-ai-calling-mcp-tool-short = 正在调用 "{$name}" MCP 工具...
ai-assistant-ai-reading-mcp-resource-short = 正在读取 "{$name}" MCP 资源...

# 附加 i18n 键用于硬编码 UI 字符串
ai-assistant-ai-transient-network-error = Warp 在接收智能体响应时失去连接。这通常是暂时的。
ai-assistant-ai-cli-grep-for = 在 { $path } 中搜索 `{ $query }`
ai-assistant-ai-cli-grep-patterns-in = 在 { $path } 中搜索以下模式：\n{ $patterns_list }
ai-assistant-ai-cli-find-files-match = 在 { $path } 中查找匹配 `{ $pattern }` 的文件
ai-assistant-ai-cli-find-files-patterns-in = 在 { $path } 中查找匹配以下模式的文件：\n{ $patterns_list }
ai-assistant-ai-settings-ai = 设置 > AI
ai-assistant-ai-orch-loading = 加载中…
ai-assistant-ai-manage-suggested-banner-settings = 管理建议代码横幅设置
ai-assistant-ai-orch-failed-send-message = 向 { $recipients } 发送消息失败：{ $error }
ai-assistant-ai-orch-send-message-cancelled = 向 { $recipients } 发送消息已取消。
ai-assistant-ai-conv-created-by-at = 由 { $creator } 创建 • { $time }
ai-assistant-ai-diff-failed-save-file = 保存文件 { $file_path } 失败
ai-assistant-ai-voice-input-toast = 语音输入已启用。您也可以按住 `{ $key }` 键来激活语音输入（在 设置 > AI > 语音 中配置）
ai-assistant-ai-get-files-indexing = 当前 git 仓库仍在索引中，搜索暂时不可用。您可以稍后重试
ai-assistant-ai-get-files-not-available = 在当前目录中无法使用相关文件搜索
ai-assistant-ai-get-files-not-git = 当前目录不在 git 仓库中，而搜索相关文件需要 git 仓库。
ai-assistant-ai-search-codebase-not-available = 搜索失败，代码库不可用。请尝试其他方式查找相关文件。
ai-assistant-ai-secret-col-name = 名称
ai-assistant-ai-secret-col-scope = 范围
ai-assistant-ai-secret-col-created = 创建时间
ai-assistant-ai-secret-col-updated = 更新时间
ai-assistant-ai-secret-name-required-usage = 密钥名称为必填项。用法：oz secret create <NAME>
ai-assistant-ai-secret-created-ok = 密钥 '{ $name }' 已创建
ai-assistant-ai-secret-deleted-ok = 密钥 '{ $name }' 已删除
ai-assistant-ai-secret-deletion-cancelled = 删除已取消
ai-assistant-ai-secret-scope-personal = 个人
ai-assistant-ai-secret-scope-team = 团队
ai-assistant-ai-secret-delete-confirm = 删除 { $scope } 密钥 '{ $name }'？
ai-assistant-ai-secret-action-cannot-undo = 此操作无法撤销
ai-assistant-ai-secret-delete-no-confirm-force = 拒绝在非交互模式下未经确认删除密钥（使用 --force 跳过）
ai-assistant-ai-search-files-not-exist = 这些文件不存在：{ $missing_files }
ai-assistant-ai-search-failed-try-another = 搜索失败。请尝试其他方式查找相关文件。
ai-assistant-ai-remote-search-unavailable = 远程代码库搜索不可用。
ai-assistant-ai-search-codebase-not-available-try = 搜索失败，代码库不可用。请尝试其他方式查找相关文件。

## -- 快捷键描述 -------------------------------------------------------------

ai-assistant-ai-take-control-of-running-command = 接管正在运行的命令

## -- 代理来源显示名称（用于 task.rs）--
ai-assistant-source-linear = Linear
ai-assistant-source-api = API
ai-assistant-source-slack = Slack
ai-assistant-source-cli = CLI
ai-assistant-source-scheduled = 计划
ai-assistant-source-warp-app = Warp 应用
ai-assistant-source-web-app = Oz Web
ai-assistant-source-github-action = GitHub Action
ai-assistant-source-agent-fallback = 代理

## -- MCP 提供者显示名称（用于 mcp/mod.rs）--
ai-assistant-mcp-provider-warp = Warp
ai-assistant-mcp-provider-claude = Claude
ai-assistant-mcp-provider-codex = Codex
ai-assistant-mcp-provider-agents = 其他代理

## -- MCP 模型类型名称 --
ai-assistant-mcp-server-type-name = MCP 服务器

## -- 任务取消字符串 --
ai-assistant-task-cancelled = 任务已取消
ai-assistant-failed-cancel-task = 取消任务失败：{ $error }
