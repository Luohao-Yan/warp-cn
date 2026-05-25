# =============================================================================
# terminal.ftl — 终端视图和交互字符串
# =============================================================================
# Message IDs: terminal-{id}
# =============================================================================

## -- 共享会话 -----------------------------------------------------------

terminal-share-session-title = 共享终端会话
terminal-share-session-description = 与团队成员共享此终端会话。
terminal-join-session-title = 加入会话
terminal-leave-session-label = 离开会话
terminal-end-session-label = 结束会话
terminal-copy-session-link = 复制会话链接

## -- SSH ----------------------------------------------------------------------

terminal-ssh-connection-title = SSH 连接
terminal-ssh-authenticating = 正在认证…
terminal-ssh-connected = 已连接
terminal-ssh-disconnected = 已断开
terminal-ssh-error-title = SSH 连接错误
terminal-ssh-host-label = 主机：
terminal-ssh-user-label = 用户：
terminal-ssh-tmux-not-installed = 远程机器上未安装 tmux。请安装 tmux 后重试。
terminal-ssh-unsupported-tmux = 远程机器上的 tmux 版本低于 3.0。请使用其他方法安装 tmux 3.0 或更高版本后重试。
terminal-ssh-tmux-failed = tmux 在远程机器上执行失败。请重新安装 tmux 后重试。
terminal-ssh-warpify-timeout = Warpify 会话超时。
terminal-ssh-unsupported-shell = 不支持的 Shell。请将 bash、zsh 或 fish 设置为默认 Shell 后重试。
terminal-ssh-tmux-install-error = tmux 安装遇到意外错误。请手动安装 tmux 后重试。
terminal-ssh-tmux-not-installed-title = tmux 未安装
terminal-ssh-unsupported-tmux-title = 不支持的 Tmux 版本
terminal-ssh-tmux-failed-title = tmux 执行失败
terminal-ssh-tmux-install-timeout-title = tmux 安装超时
terminal-ssh-warpify-timeout-title = SSH Warpify 超时
terminal-ssh-unsupported-shell-title = 不支持的 Shell
terminal-ssh-tmux-install-error-title = tmux 安装失败
terminal-ssh-error-warpifying-title = Warpify 会话错误
terminal-ssh-feedback-message-before-link = 我们正在积极改进 Warp 中 SSH 的稳定性。请考虑
terminal-ssh-feedback-link-text = 提交问题
terminal-ssh-feedback-message-after-link =  在 GitHub 上，以便我们更好地识别问题。
terminal-ssh-warpify-without-tmux = 不使用 TMUX 进行 Warpify
terminal-ssh-continue-without-warpification = 不 Warpify 继续

## -- 安装 tmux ---------------------------------------------------------------

terminal-install-tmux-title = 安装 tmux？
terminal-install-tmux-run-script = 运行此脚本安装 tmux？
terminal-install-tmux-install-with-pm = 使用 { $package_manager } 安装
terminal-install-tmux-install-to-home-warp = 安装到 ~/.warp
terminal-install-tmux-explanation-outdated = 要 Warpify 您的 SSH 会话，需要安装较新版本的 tmux（>=3.0）。
terminal-install-tmux-explanation-missing = 要 Warpify 您的 SSH 会话，需要安装 tmux。
terminal-install-tmux-why-link-text = 为什么需要 tmux？

terminal-terminal-install-tmux-title = { terminal-install-tmux-title }
terminal-terminal-install-tmux-run-script = { terminal-install-tmux-run-script }
terminal-terminal-install-tmux-install-with-pm = { terminal-install-tmux-install-with-pm }
terminal-terminal-install-tmux-install-to-home-warp = { terminal-install-tmux-install-to-home-warp }
terminal-terminal-install-tmux-explanation-outdated = { terminal-install-tmux-explanation-outdated }
terminal-terminal-install-tmux-explanation-missing = { terminal-install-tmux-explanation-missing }
terminal-terminal-install-tmux-why-link-text = { terminal-install-tmux-why-link-text }

## -- 引导提示块 --------------------------------------------------

terminal-onboarding-confirm = 确认
terminal-onboarding-skip = 跳过
terminal-onboarding-next = 下一步

## -- 块/自动重载 -------------------------------------------------------

terminal-enable-autoreload = 启用自动重载
terminal-disable-autoreload = 禁用自动重载
terminal-reload-label = 重载

## -- 右键菜单项 -------------------------------------------------------

terminal-context-copy = 复制
terminal-context-paste = 粘贴
terminal-context-copy-as-text = 复制为文本
terminal-context-select-all = 全选
terminal-context-clear = 清除
terminal-context-split-right = 向右分屏
terminal-context-split-left = 向左分屏
terminal-context-split-down = 向下分屏
terminal-context-split-up = 向上分屏
terminal-context-close-pane = 关闭窗格

## -- 块过滤字符串 -----------------------------------------------------------

terminal-filter-placeholder = 筛选块输出
terminal-filter-show-context = 显示匹配项周围的上下文行
terminal-filter-regex-toggle = 正则表达式切换
terminal-filter-case-sensitive = 区分大小写搜索
terminal-filter-invert = 反转筛选

## -- 其他 ---------------------------------------------------------------------

terminal-buffer-full = 缓冲区已满 — 部分输出可能已被丢弃
terminal-scroll-to-bottom = 滚动到底部
terminal-tooltip-cancel = 取消
terminal-tooltip-hide-details = 隐藏详情
terminal-tooltip-show-details = 显示详情

## -- 购买积分横幅 ---------------------------------------------------------

terminal-auto-reload = 自动重载
terminal-auto-reload-label = 自动重载
terminal-auto-reload-tooltip = 启用后，当积分余额不足时，自动重载将购买 { $credits } 积分
terminal-monthly-limit-reached-admin = 您的月度消费限额已达到。请提高限额以继续。
terminal-monthly-limit-reached-non-admin = 请联系团队管理员提高月度限额。
terminal-monthly-limit-reached-title = 月度限额已达
terminal-manage-billing = 管理计费
terminal-out-of-credits-title = 积分不足
terminal-out-of-credits-admin = 向您的账户添加更多积分以继续使用 Oz 代理。
terminal-out-of-credits-non-admin = 请联系团队管理员购买更多积分以继续。
terminal-purchase-exceeds-limit = 购买这些积分将超出您的月度消费限额。
terminal-increase-limit = 提高限额
terminal-to-continue =  以继续。
terminal-buying = 购买中…
terminal-buy = 购买
terminal-failed-enable-autoreload = 无法为您的团队启用自动重载。请在设置 > 计费与用量中重试。
terminal-auto-reload-settings-updated = 自动重载设置已更新

## -- 共享会话视图字符串 -----------------------------------------------------------

terminal-copy-link = 复制链接
terminal-stop-sharing-session = 停止共享会话
terminal-open-on-desktop = 在桌面端打开
terminal-share-session-ellipsis = 共享会话...
terminal-stop-sharing = 停止共享
terminal-copy-session-sharing-link = 复制会话共享链接

## -- 共享会话 (view_impl) --------------------------------------------------------

terminal-request-edit-access = 请求编辑权限
terminal-couldnt-continue-cloud-task = 无法继续此云任务。
terminal-sharing-ended-inactivity = 因不活跃，共享已结束
terminal-sharing-edit-revoked-inactivity = 因不活跃，共享编辑权限已被撤销
terminal-editing-revoked-sharer-idle = 因共享者空闲，编辑权限已被撤销
terminal-new-cloud-agent = 新的云代理
terminal-new-agent-conversation = 新建 Agent 对话

## -- 对话结束墓碑视图 -----------------------------------------------------------

terminal-continue-locally = 在本地继续
terminal-fork-locally-tooltip = 在本地分叉此对话
terminal-continue-in-cloud-tooltip = 在云模式下继续此任务
terminal-open-in-warp = 在 Warp 中打开
terminal-open-in-desktop-tooltip = 在 Warp 桌面应用中打开此对话
terminal-viewing-snapshot = 您正在查看快照
terminal-snapshot-subtitle = 此共享对话显示的是您打开时的状态。如果代理仍在运行，请刷新以查看最新进展。
terminal-agent-task = 代理任务
terminal-directory-label = 目录：
terminal-source-label = 来源：
terminal-skill-label = 技能：
terminal-run-time-label = 运行时间：
terminal-credits-used-label = 使用积分：

## -- Warpify 页脚 ---------------------------------------------------------------

terminal-warpify-subshell = Warpify 子 Shell
terminal-warpify-subshell-tooltip = 在此会话中启用 Warp Shell 集成
terminal-use-agent = 使用代理
terminal-use-agent-tooltip = 请求 Warp 代理协助
terminal-warpify-ssh-session = Warpify SSH 会话
terminal-for-terminal = 返回终端

## -- 参与者头像 -----------------------------------------------------------------

terminal-make-editor = 设为编辑者
terminal-make-viewer = 设为查看者
terminal-revoke-all-edit-permissions = 撤销所有编辑权限
terminal-revoke-all-edit-permissions-tooltip = 撤销所有编辑权限
terminal-change-role = 更改角色
terminal-change-role-tooltip = 更改角色

## -- 配置文件/模型选择器 ---------------------------------------------------------

terminal-profiles = 配置文件
terminal-manage-profiles = 管理配置文件
terminal-manage-defaults = 管理默认值
terminal-manage = 管理
terminal-manage-api-keys = 管理 API 密钥
terminal-choose-execution-profile = 选择 AI 执行配置文件
terminal-choose-execution-profile-tooltip = 选择 AI 执行配置文件
terminal-choose-agent-model = 选择代理模型
terminal-choose-agent-model-tooltip = 选择代理模型
terminal-request-edit-access-model = 请求编辑权限以更改模型
terminal-model-specs = 模型规格
terminal-model-specs-tooltip = 模型规格
terminal-intelligence = 智能度
terminal-speed = 速度
terminal-cost = 成本
terminal-billed-to-api = 由 API 计费
terminal-auto-mode = 自动模式
terminal-auto-mode-description = 自动模型会为任务选择最佳模型，如 Claude、Kimi 或 MiniMax。
terminal-reasoning-level = 推理级别
terminal-reasoning-level-description = 更高的推理级别会消耗更多积分，延迟更高，但在复杂任务上表现更好。
terminal-model-specs-description = Warp 的基准测试：线束性能、积分消耗率、任务速度。
terminal-auto-select-best-model = 自动选择最适合任务的模型
terminal-ellipsis = ，...
terminal-new-models-available = 新模型可用

## -- 内联历史视图 ---------------------------------------------------------------

terminal-tab-all = 全部
terminal-conversations-current-directory = 当前目录
terminal-tab-commands = 命令
terminal-tab-prompts = 提示词
terminal-history = 历史
terminal-configure = 配置

## -- 模型视图 -------------------------------------------------------------------

terminal-base = 基础
terminal-full-terminal-use = 完整终端使用
terminal-model = /model

## -- 认证密钥 FTUX 下拉菜单 -----------------------------------------------------

terminal-search-secrets-or-create = 搜索密钥或创建新密钥
terminal-no-secrets-found = 未找到密钥
terminal-ftux-loading = 加载中…
terminal-ftux-search-placeholder = 搜索密钥或创建新密钥
terminal-ftux-no-secrets-found = 未找到密钥
terminal-ftux-no-secrets-helper = 未找到密钥。保存以直接使用此值，或点击钥匙图标添加密钥。
terminal-ftux-unable-to-load-secrets = 无法加载密钥
terminal-ftux-new-type = 新 { $display_name }
terminal-ftux-skip-api-key = 跳过设置 API 密钥
terminal-ftux-skip-api-key-sub = 如果环境中已配置认证，请选择此项
terminal-unable-to-load-secrets = 无法加载密钥
terminal-skip-api-key = 跳过设置 API 密钥
terminal-skip-api-key-sub = 如果环境中已配置认证，请选择此项
terminal-no-secrets-helper = 未找到密钥。保存以直接使用此值，或点击钥匙图标添加密钥。

## -- 认证密钥选择器 -------------------------------------------------------------

terminal-selector-choose-type = 选择类型
terminal-selector-api-key-tooltip = API 密钥
terminal-selector-api-key-header = API 密钥
terminal-selector-no-secret = 无密钥
terminal-selector-loading = 加载中…
terminal-selector-unable-to-load-secrets = 无法加载密钥
terminal-selector-new = 新建

## -- 标签页上下文菜单字符串 -----------------------------------------------------

terminal-copy-tab-title = 复制标签页标题
terminal-copy-pane-title = 复制窗格标题
terminal-copy-branch = 复制分支
terminal-copy-working-directory = 复制工作目录
terminal-copy-pull-request-link = 复制拉取请求链接
terminal-rename-tab = 重命名标签页
terminal-reset-tab-name = 重置标签页名称
terminal-move-tab-right = 向右移动标签页
terminal-move-tab-down = 向下移动标签页
terminal-move-tab-left = 向左移动标签页
terminal-move-tab-up = 向上移动标签页
terminal-close-other-tabs = 关闭其他标签页
terminal-close-tabs-to-the-right = 关闭右侧标签页
terminal-close-tabs-below = 关闭下方标签页
terminal-save-as-new-config = 保存为新配置
terminal-stop-sharing-tab = 停止共享
terminal-share-session-tab = 共享会话
terminal-stop-sharing-all = 停止所有共享
terminal-copy-link-tab = 复制链接
terminal-default-no-color = 默认（无颜色）
terminal-cloud-agent-run = 云代理运行

## -- MenuItemFields / 右键菜单 -------------------------------------------

terminal-menu-copy-url = 复制 URL
terminal-menu-copy-link = 复制链接
terminal-menu-copy-path = 复制路径
terminal-menu-show-in-finder = 在 Finder 中显示
terminal-menu-show-containing-folder = 显示所在文件夹
terminal-menu-open-in-warp = 在 Warp 中打开
terminal-menu-open-in-editor = 在编辑器中打开
terminal-menu-open-on-desktop = 在桌面端打开
terminal-menu-copy = 复制
terminal-menu-insert-into-input = 插入到输入框
terminal-menu-copy-command = 复制命令
terminal-menu-copy-commands = 复制命令
terminal-menu-share-block = 共享块...
terminal-menu-share = 共享...
terminal-menu-share-session = 共享会话
terminal-menu-save-as-workflow = 保存为工作流
terminal-menu-ask-warp-ai = 询问 Warp AI
terminal-menu-copy-output = 复制输出
terminal-menu-copy-filtered-output = 复制过滤后的输出
terminal-menu-find-within-block = 在块内查找
terminal-menu-find-within-blocks = 在块内查找
terminal-menu-scroll-to-top-of-block = 滚动到块顶部
terminal-menu-scroll-to-top-of-blocks = 滚动到块顶部
terminal-menu-scroll-to-bottom-of-block = 滚动到块底部
terminal-menu-scroll-to-bottom-of-blocks = 滚动到块底部
terminal-menu-toggle-block-filter = 切换块过滤器
terminal-menu-toggle-bookmark = 切换书签
terminal-menu-copy-prompt = 复制提示词
terminal-menu-copy-right-prompt = 复制右侧提示词
terminal-menu-copy-working-directory = 复制工作目录
terminal-menu-copy-git-branch = 复制 Git 分支
terminal-menu-split-pane-right = 向右分割窗格
terminal-menu-split-pane-left = 向左分割窗格
terminal-menu-split-pane-down = 向下分割窗格
terminal-menu-split-pane-up = 向上分割窗格
terminal-menu-close-pane = 关闭窗格
terminal-menu-edit-cli-agent-toolbelt = 编辑 CLI 代理工具栏
terminal-menu-edit-agent-toolbelt = 编辑代理工具栏
terminal-menu-edit-prompt = 编辑提示词
terminal-menu-cut = 剪切
terminal-menu-select-all = 全选
terminal-menu-paste = 粘贴
terminal-menu-command-search = 命令搜索
terminal-menu-ai-command-search = AI 命令搜索
terminal-menu-hide-input-hint-text = 隐藏输入提示文本
terminal-menu-show-input-hint-text = 显示输入提示文本
terminal-menu-copy-output-as-markdown = 以 Markdown 复制输出
terminal-menu-save-as-prompt = 保存为提示词
terminal-menu-share-conversation = 共享对话
terminal-menu-copy-conversation-text = 复制对话文本
terminal-menu-copy-debugging-link = 复制调试链接
terminal-menu-copy-conversation-id = 复制对话 ID
terminal-menu-copy-debugging-id = 复制调试 ID
terminal-menu-fork-from-here-dev-only = 从此处分叉（仅限开发）
terminal-menu-rewind-to-before-here = 回退到此处之前
terminal-menu-share-session-ellipsis = 共享会话...
terminal-menu-stop-sharing = 停止共享
terminal-menu-stop-sharing-session = 停止共享会话
terminal-menu-copy-session-sharing-link = 复制会话共享链接
terminal-menu-request-edit-access = 请求编辑权限
terminal-menu-make-editor = 设为编辑者
terminal-menu-make-viewer = 设为查看者
terminal-menu-fork-from-last-query = 从上次查询分叉
terminal-menu-fork-from = 从"{$truncated}"分叉

## -- 无障碍字符串 ---------------------------------------------------

terminal-a11y-block-label = 块
terminal-a11y-block-output-label = 输出
terminal-a11y-block-status = 块 {$index}：{$command}，{$status}。
terminal-a11y-status-failed = 失败，状态码 {$code}
terminal-a11y-status-background = 后台
terminal-a11y-status-succeeded = 成功
terminal-a11y-status-in-progress = 进行中
terminal-a11y-selected-blocks = 已选择 {$count} 个块。
terminal-a11y-selected-all-blocks = 已选择所有 {$count} 个块。
terminal-a11y-scrolled-to-bottom = 已滚动到所选块底部
terminal-a11y-copied-blocks = 已复制 {$count} 个块。\n{$content}
terminal-a11y-open-block-filter-editor = 打开块 {$block_index} 的过滤器编辑器

## -- AWS Bedrock 登录横幅字符串 -------------------------------------------

terminal-aws-bedrock-title = 使用 AWS Bedrock？
terminal-aws-bedrock-description = 您的 Warp 管理员已为您的团队启用了 AWS Bedrock。
terminal-log-into-aws = 登录 AWS

## -- 通知发现横幅字符串 -----------------------------------------------------

terminal-notifications-dismissed = 我们不会再显示此横幅，但您可以随时前往设置启用通知。
terminal-notifications-disabled = 通知已关闭，但您可以随时前往设置启用通知。
terminal-notifications-success = 成功！您现在可以接收桌面通知了。
terminal-notifications-denied = Warp 被拒绝发送通知的权限。
terminal-notifications-error = 请求权限时出了点问题。
terminal-notifications-pending = 别忘了点击"允许"权限请求以完成通知设置。
terminal-configure-notifications = 配置通知
terminal-troubleshoot = 故障排除
terminal-notifications-long-running = Warp 可以在长时间运行的命令完成时通知您。
terminal-notifications-agent-task = Warp 可以在代理完成响应时通知您。
terminal-notifications-needs-attention = Warp 可以在命令或代理需要您关注时通知您。
terminal-notifications-password-prompt = Warp 可以在提示您输入密码时通知您。
terminal-notifications-a11y-help = 您可以通过命令面板启用通知。

## -- 在 Warp 中打开横幅字符串 -----------------------------------------------

terminal-open-markdown-title = 您知道 Warp 可以直接显示 Markdown 文件吗？
terminal-open-code-title = 您知道 Warp 可以直接编辑 { $display_name } 文件吗？
terminal-open-code-title-fallback = 您知道 Warp 可以直接编辑代码吗？
terminal-view-in-warp = 在 Warp 中查看
terminal-edit-in-warp = 在 Warp 中编辑

## -- SSH 包装器横幅字符串 -------------------------------------------------

terminal-ssh-wrapper-enabled = Warp SSH 包装器已启用
terminal-ssh-wrapper-disabled = Warp SSH 包装器已禁用
terminal-settings = 设置

## -- 零状态块字符串 ---------------------------------------------------

terminal-new-terminal-session = 新终端会话
terminal-zero-state-new-agent-conversation = 开始新的代理对话
terminal-zero-state-new-cloud-agent-conversation = 开始新的云代理对话
terminal-zero-state-cycle-commands = 循环浏览历史命令和对话
terminal-zero-state-open-code-review = 打开代码审查
terminal-zero-state-autodetect-nld = 自动检测终端会话中的代理提示词

## -- 输入提示字符串 -----------------------------------------------------------

terminal-cli-agent-hint = 告诉代理你要构建什么…
terminal-cloud-mode-v2-hint = 启动云代理
terminal-cloud-handoff-hint = 启动云运行
terminal-input-a11y-label = 命令输入。
terminal-ai-command-search-hint = 输入 '#' 获取 AI 命令建议
terminal-run-commands-hint = 运行命令
terminal-steer-agent-hint = 引导正在运行的代理
terminal-ask-follow-up = 继续追问

## -- 其他附加字符串 -------------------------------------------------

terminal-loading-session = 正在加载会话...
terminal-powershell-subshell-unsupported = 不支持 PowerShell 子外壳
terminal-non-local-env-var-subshell = 无法在非本地会话中调用环境变量子外壳
terminal-bundled-skills-cannot-be-edited = 内置技能无法编辑
terminal-editing-skills-unsupported = 此版本不支持编辑技能

## -- 终端视图附加字符串 ---------------------------------------------------

terminal-free-credits = 免费积分
terminal-view-index-status = 查看索引状态
terminal-show-prompt = 显示提示词
terminal-system-default-shell = 系统默认 Shell
terminal-type-searched-phrase = 输入搜索内容。
terminal-press-escape-to-quit = 按 Esc 退出
terminal-conversation-restored = 对话已恢复
terminal-previous-session = 上次会话
terminal-sharing-link-copied = 分享链接已复制
terminal-grants-ability-part1 = 此操作授予在您的
terminal-use-with-caution = 上执行命令的权限。请谨慎使用。
terminal-edit-requests = 编辑请求
terminal-cancel-request = 取消请求

## -- 共享块模态框字符串 ---------------------------------------------------------

terminal-share-title-optional = 标题（可选）
terminal-share-embed-label = 嵌入的 Warp 块
terminal-share-error = 出了点问题，请重试。
terminal-share-link-copied = 链接已复制。
terminal-share-embed-copied = 嵌入代码已复制。
terminal-share-creating = 正在创建块...
terminal-share-embed-error = 生成嵌入代码出错

## -- Block list element strings ------------------------------------------------

terminal-block-tag-agent = 标记智能体协助
terminal-block-save-workflow = 保存为工作流
terminal-block-secrets-cannot-save = 包含密钥的块无法保存。

## -- UDI (Universal Developer Input) strings ----------------------------------

terminal-udi-no-objects = 当前上下文中没有可用对象。
terminal-udi-no-ssh = SSH 会话中不支持
terminal-udi-no-subshell = 子 shell 中不支持
terminal-udi-no-fs = 需要文件系统
terminal-udi-disabled-terminal-mode = 终端模式下已禁用，可在设置中重新启用
terminal-udi-attach-context = 附加上下文
terminal-udi-voice-input = 语音输入
terminal-udi-attach-file = 附加文件
terminal-udi-slash-commands = 斜杠命令
terminal-udi-request-edit = 请求编辑权限以更改输入模式
terminal-udi-mode-locked = 智能体监控命令时输入模式已锁定
terminal-udi-terminal = 终端
terminal-udi-agent-mode = 智能体模式

## -- 提示词渲染辅助字符串 --

terminal-starting-shell = 正在启动 Shell…
terminal-loading-prompt = 正在加载提示词…

## -- 输入框 i18n 字符串 --

terminal-input-a11y-helper = 输入 Shell 命令，按回车执行。按 cmd-up 导航到先前执行命令的输出。按 cmd-l 重新聚焦命令输入。
terminal-steer-agent-classic = 操控正在运行的代理，或按退格键退出
terminal-ask-follow-up-classic = 提出后续问题，或按退格键退出
terminal-dynamic-enum-generate = 运行以下命令以生成变体：
terminal-dynamic-enum-run = 运行命令
terminal-dynamic-enum-pending = 命令等待中...
terminal-dynamic-enum-failure = 命令失败
terminal-dynamic-enum-no-results = 命令未返回结果
terminal-search-queries = 搜索查询
terminal-search-queries-rewind = 搜索要回退到的查询
terminal-search-conversations = 搜索对话
terminal-search-skills = 搜索技能
terminal-search-models = 搜索模型
terminal-search-profiles = 搜索配置
terminal-search-commands = 搜索命令
terminal-search-prompts = 搜索提示词
terminal-search-indexed-repos = 搜索已索引的仓库
terminal-search-plans = 搜索计划

## -- SSH 文件上传字符串 ---------------------------------------------------

terminal-waiting-for-password = 等待密码输入
terminal-uploading = 正在上传
terminal-uploaded = 已上传
terminal-failed-to-upload = 上传失败
terminal-clear-upload = 清除上传
terminal-file-uploads = 文件上传
terminal-upload-session = 上传会话

terminal-session-restored-from = { $banner_intro_text }，来自 { $timestamp }

## -- 快捷键描述字符串 --

terminal-alternate-terminal-paste = 备用终端粘贴
terminal-toggle-cli-agent-rich-input = 切换 CLI Agent 富输入
terminal-accept-prompt-suggestion = 接受提示建议
terminal-copy-text-or-cancel-active-process = 复制文本或取消活动进程
terminal-cancel-active-process = 取消活动进程
terminal-focus-terminal-input = 聚焦终端输入
terminal-reinput-selected-commands = 重新输入选中的命令
terminal-reinput-selected-commands-as-root = 以 root 重新输入选中的命令
terminal-find-in-terminal = 在终端中查找
terminal-select-closest-bookmark-up = 选择上方最近的书签
terminal-select-closest-bookmark-down = 选择下方最近的书签
terminal-open-block-context-menu = 打开区块上下文菜单
terminal-toggle-team-workflows-modal = 切换团队工作流弹窗
terminal-copy-git-branch = 复制 Git 分支
terminal-clear-blocks = 清除区块
terminal-move-cursor-word-left-executing-command = 在执行中的命令内将光标向左移动一个单词
terminal-move-cursor-word-right-executing-command = 在执行中的命令内将光标向右移动一个单词
terminal-move-cursor-home-executing-command = 在执行中的命令内将光标移到行首
terminal-move-cursor-end-executing-command = 在执行中的命令内将光标移到行尾
terminal-delete-word-left-executing-command = 在执行中的命令内删除左侧单词
terminal-delete-to-line-start-executing-command = 在执行中的命令内删除至行首
terminal-delete-to-line-end-executing-command = 在执行中的命令内删除至行尾
terminal-backward-tabulation-executing-command = 在执行中的命令内向后制表
terminal-select-previous-block = 选择上一个区块
terminal-select-next-block = 选择下一个区块
terminal-share-selected-block = 分享选中区块
terminal-bookmark-selected-block = 为选中区块添加书签
terminal-find-within-selected-block = 在选中区块中查找
terminal-copy-command-and-output = 复制命令和输出
terminal-copy-command-output = 复制命令输出
terminal-copy-command = 复制命令
terminal-scroll-output-up-one-line = 向上滚动一行终端输出
terminal-scroll-output-down-one-line = 向下滚动一行终端输出
terminal-scroll-output-up-one-page = 向上滚动一页终端输出
terminal-scroll-output-down-one-page = 向下滚动一页终端输出
terminal-scroll-to-top-of-selected-block = 滚动到选中区块顶部
terminal-scroll-to-bottom-of-selected-block = 滚动到选中区块底部
terminal-select-all-blocks = 选择所有区块
terminal-expand-selected-blocks-above = 向上扩展选中的区块
terminal-expand-selected-blocks-below = 向下扩展选中的区块
terminal-attach-selected-block-as-agent-context = 将选中区块作为 Agent 上下文附加
terminal-attach-selected-text-as-agent-context = 将选中文本作为 Agent 上下文附加
terminal-attach-selection-as-agent-context = 将选中内容作为 Agent 上下文附加
terminal-ask-warp-ai-about-selection = 就选中内容询问 Warp AI
terminal-ask-warp-ai-about-last-block = 就最后区块询问 Warp AI
terminal-ask-warp-ai = 询问 Warp AI
terminal-insert-command-correction = 插入命令修正
terminal-setup-guide = 设置向导
terminal-import-external-settings = 导入外部设置
terminal-share-current-session = 共享当前会话
terminal-stop-sharing-current-session = 停止共享当前会话
terminal-toggle-block-filter-on-selected-or-last-block = 切换选中或最后区块的区块过滤器
terminal-toggle-sticky-command-header-in-active-pane = 切换活动窗格中的粘性命令头
terminal-toggle-auto-execute-mode = 切换自动执行模式
terminal-toggle-queue-next-prompt = 切换排队下一条提示
terminal-write-current-codebase-index-snapshot = 写入当前代码库索引快照
terminal-load-agent-mode-conversation = 加载 Agent 模式对话（从剪贴板中的调试链接）
terminal-toggle-pty-recording-for-session = 切换会话的 PTY 录制
terminal-initiate-project-for-warp = 为 Warp 初始化项目
terminal-add-current-folder-as-project = 将当前文件夹添加为项目
terminal-toggle-conversation-details-panel = 切换对话详情面板
terminal-set-input-mode-to-agent-mode = 将输入模式设为 Agent 模式
terminal-set-input-mode-to-terminal-mode = 将输入模式设为终端模式
terminal-toggle-hide-cli-responses = 切换隐藏 CLI 响应
terminal-show-warp-network-log = 显示 Warp 网络日志
terminal-clear-screen = 清除屏幕
terminal-edit-prompt = 编辑提示符
terminal-experimental-toggle-classic-completions-mode = （实验性）切换经典补全模式
terminal-command-search = 命令搜索
terminal-history-search = 历史搜索
terminal-open-completions-menu = 打开补全菜单
terminal-workflows = 工作流
terminal-open-ai-command-suggestions = 打开 AI 命令建议
terminal-trigger-auto-detection = 触发自动检测
terminal-clear-and-reset-ai-context-menu-query = 清除并重置 AI 上下文菜单查询

## -- 通用设置描述 -----------------------------------------------------------------

terminal-setting-description-show-warning-before-quitting = 退出 Warp 前是否显示警告对话框。
terminal-setting-description-quit-on-last-window-closed = 关闭最后一个窗口时是否退出 Warp。
terminal-setting-description-restore-session = 启动 Warp 时是否恢复上次会话。
terminal-setting-description-login-item = 登录时是否自动启动 Warp。
terminal-setting-description-link-tooltip = 鼠标悬停在链接上时是否显示提示。
terminal-setting-description-auto-open-code-review-pane = 代理首次修改时是否自动打开代码审查面板。
terminal-setting-description-language = Warp 界面显示语言。使用 'auto' 跟随系统语言。

## -- 横幅和通知字符串 ---------------------------------------------------------

terminal-yes-emacs-bindings = 是的，使用 Emacs 风格键绑定
terminal-no-keep-ide-bindings = 不用，保留 IDE 键绑定
terminal-oz-permission-run = Oz 需要你的许可来运行 `{ $command }`
terminal-oz-permission-read = Oz 需要你的许可来读取文件
terminal-oz-permission-search = Oz 需要你的许可来搜索代码库
terminal-oz-permission-edit = Oz 需要你的许可来编辑文件
terminal-oz-permission-shell = Oz 需要你的许可来与运行中的 Shell 命令交互
terminal-oz-permission-confirm = Oz 需要你的确认才能继续
terminal-ssh-connection-failed = 无法连接到 Warp SSH 扩展
terminal-latest-output = 最新输出：
terminal-status-after-duration =  { $status }，用时 { $seconds }秒
terminal-notification-finished =  已完成
terminal-notification-failed =  已失败
terminal-notification-error-prefix = 错误：
terminal-notification-blocked =  已阻塞
terminal-notification-waiting-password =  正在等待输入密码
terminal-warpify-for-features-with-key = 你可以按 { $key } 来 Warpify 这个 { $title }，以获得更多 Warp 功能。
terminal-warpify-for-features = 你可以 Warpify 这个 { $title }，以获得更多 Warp 功能。
terminal-title-recognized = { $title } 已识别。
terminal-did-you-intend = 您是否打算
terminal-to-move-cursor = 移动光标？
terminal-sharing-usage-exceeded = 今日会话共享用量已达上限，请稍后再试。
terminal-session-limit-exceeded = 会话限制（{ $limit }）已超出，请重新共享以继续。
terminal-session-internal-error = 会话因内部错误而结束，请尝试重新共享。

## -- 包含用户可见文本的格式字符串 ------------------------------------------------

terminal-default-shell = 默认
terminal-docker-sandbox = Docker 沙箱
terminal-custom-shell = 自定义（{ $command }）
terminal-exit-code = 退出码 { $code }
terminal-installing-ssh-progress = 正在安装 Warp SSH 扩展…（{ $percent }%）
terminal-installing-ssh = 正在安装 Warp SSH 扩展…
terminal-updating-ssh = 正在更新 Warp SSH 扩展…
terminal-initializing = 正在初始化…
terminal-starting-shell-with-name = 正在启动 { $name }…
terminal-discount-percent = { $percent }% 折扣！
terminal-selected-label = 已选择
terminal-disabled-label = 已禁用
terminal-attached-as-context = `{ $name }` 已作为上下文附加
terminal-attached-with-one-more = `{ $name }` 和另外 1 条命令已作为上下文附加
terminal-attached-with-more = `{ $name }` 和另外 { $count } 条命令已作为上下文附加
terminal-to-remove = 以移除
terminal-selected-text-as-context = 选中文本已作为上下文附加
terminal-enable-language-support = 启用 { $language } 支持
terminal-install-and-enable-language = 安装并启用 { $language }
terminal-link-to-agents-md = 将现有 { $file } 链接到我的 AGENTS.md 文件
terminal-enable-language-for-codebase = 要为此代码库启用 { $language } 支持吗？这将为你提供更智能的代码导航、行内错误检查等功能。
terminal-show-more = 显示更多 { $count } 项

## -- 提示消息 -----------------------------------------------------------------

terminal-copied-to-clipboard = 已复制到剪贴板
terminal-failed-cloud-handoff = 准备云端交接失败：{ $error }
terminal-images-removed-no-support = 已移除附加的图片 — 所选模型不支持图片。
terminal-skill-not-found = 未找到技能：{ $reference }
terminal-no-active-conversation-export = 没有活跃的对话可导出
terminal-file-exists-overwrite = 文件 { $path } 已存在，将被覆盖
terminal-conversation-exported = 对话已导出至 { $path }
terminal-permission-denied = 写入 { $path } 权限被拒绝。请检查文件权限。
terminal-directory-not-found = 未找到目录：{ $path }
terminal-file-already-exists = 文件 { $path } 已存在
terminal-preparing-handoff = 正在准备交接 — 请稍后重试。
terminal-invalid-uri = 自定义 URI 无效。
terminal-invalid-uri-detail = 自定义 URI 无效：{ $error }
terminal-project-rules-linked = 项目规则已从 { $path } 链接
terminal-installed-enabled = { $name } 已安装并启用成功。
terminal-failed-install = 安装 { $name } 失败：{ $error }
terminal-installing-background = 正在后台安装 { $names }...
terminal-init-project-onboarding-text = 欢迎使用 Warp！让我们为您的项目设置最佳的 AI 体验。
terminal-init-project-already-setup-text = 您的项目已经设置完成！您可以在下方重新运行各个步骤。

## -- 搜索无障碍标签 ---------------------------------------------------------

terminal-search-conversation = 对话：{ $title }
terminal-search-command = 命令：{ $command }
terminal-search-ai-prompt = AI 提示：{ $query }
terminal-search-plan = 计划：{ $title }
terminal-search-profile = 配置：{ $name }
terminal-search-prompt = 提示词：{ $name }
terminal-search-repo = 已索引的仓库：{ $name }
terminal-search-rewind = 回退到：{ $query }（无代码更改）
terminal-search-skill = 技能：{ $name }
terminal-search-query = 查询：{ $query }
terminal-search-block = 块：{ $command }
terminal-warp-drive = Warp Drive

## -- 模型规格和推理级别字符串 -----------------------------------------------

terminal-model-specs-title = 模型规格
terminal-model-specs-description = Warp 基准测试：线束性能、积分消耗率、任务速度。
terminal-reasoning-level-title = 推理级别
terminal-reasoning-level-description = 更高的推理级别会消耗更多积分，延迟更高，但在复杂任务上表现更好。

## -- 初始化项目字符串 -------------------------------------------------------

terminal-init-project-onboarding-text = 很好 — 让我们开始设置这个项目！你愿意授权我索引此代码库吗？这使我能快速理解上下文，在此代码库中工作时提供更具针对性的解决方案。代码不会存储在 Warp 服务器上。
terminal-init-project-already-setup-text = 此项目似乎已经初始化。你可以点击下方按钮重新生成此代码库的 AGENTS.md 文件。

## -- 初始化环境字符串 -------------------------------------------------------

terminal-init-environment-explanation-text = 你想为此项目创建一个环境以便在其中运行云代理吗？代理将引导你选择 GitHub 仓库、配置 Docker 镜像并指定启动命令。
terminal-init-environment-no-repos-help-text = 如果你想创建包含仓库的环境，请重新运行此命令并传入文件路径或 GitHub 链接作为参数，例如 "/create-environment <文件路径> <GitHub URL>"。

## -- 已迁移 UI 字符串的主键 --

terminal-share-session = 共享你的终端
terminal-shared-session-limit-reached = 已达到会话上限
terminal-shared-session-denied-subheader = 共享会话是团队或商业版功能
terminal-view-plans = 查看方案
terminal-start-sharing = 开始共享
terminal-stop-sharing = 停止共享
terminal-continue-sharing = 继续共享
terminal-make-editor = 设为编辑者
terminal-deny = 拒绝
terminal-requested-mode = 你已请求{ $role }模式
terminal-waiting-for = 正在等待{ $name }...
terminal-create-team = 创建团队
terminal-manage-shared-blocks = 管理共享块
terminal-install-and-enable = 安装并启用
terminal-enable-selected-languages = 启用语言支持
terminal-are-you-still-there = 你还在吗？
terminal-sharing-will-end-due-to-inactivity = 由于不活跃，共享将在 { $minutes }:{ $seconds } 后结束。
terminal-edit-prompt = 编辑提示
terminal-warp-terminal-prompt = Warp 提示
terminal-shell-prompt-ps1 = Shell 提示 (PS1)
terminal-restore-default = 恢复默认
terminal-cancel-request = 取消请求

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

terminal-terminal-filter-placeholder = { terminal-filter-placeholder }
terminal-terminal-filter-show-context = { terminal-filter-show-context }
terminal-terminal-filter-regex-toggle = { terminal-filter-regex-toggle }
terminal-terminal-filter-case-sensitive = { terminal-filter-case-sensitive }
terminal-terminal-filter-invert = { terminal-filter-invert }

terminal-terminal-a11y-block-label = { terminal-a11y-block-label }
terminal-terminal-a11y-block-output-label = { terminal-a11y-block-output-label }
terminal-terminal-a11y-block-status = { terminal-a11y-block-status }
terminal-terminal-a11y-copied-blocks = { terminal-a11y-copied-blocks }
terminal-terminal-a11y-open-block-filter-editor = { terminal-a11y-open-block-filter-editor }
terminal-terminal-a11y-scrolled-to-bottom = { terminal-a11y-scrolled-to-bottom }
terminal-terminal-a11y-selected-all-blocks = { terminal-a11y-selected-all-blocks }
terminal-terminal-a11y-selected-blocks = { terminal-a11y-selected-blocks }
terminal-terminal-a11y-status-background = { terminal-a11y-status-background }
terminal-terminal-a11y-status-failed = { terminal-a11y-status-failed }
terminal-terminal-a11y-status-in-progress = { terminal-a11y-status-in-progress }
terminal-terminal-a11y-status-succeeded = { terminal-a11y-status-succeeded }
terminal-terminal-agent-task = { terminal-agent-task }
terminal-terminal-auto-mode = { terminal-auto-mode }
terminal-terminal-auto-mode-description = { terminal-auto-mode-description }
terminal-terminal-auto-reload = { terminal-auto-reload }
terminal-terminal-auto-reload-tooltip = { terminal-auto-reload-tooltip }
terminal-terminal-auto-select-best-model = { terminal-auto-select-best-model }
terminal-terminal-base = { terminal-base }
terminal-terminal-billed-to-api = { terminal-billed-to-api }
terminal-terminal-bundled-skills-cannot-be-edited = { terminal-bundled-skills-cannot-be-edited }
terminal-terminal-buy = { terminal-buy }
terminal-terminal-buying = { terminal-buying }
terminal-terminal-change-role = { terminal-change-role }
terminal-terminal-choose-agent-model-tooltip = { terminal-choose-agent-model-tooltip }
terminal-terminal-choose-execution-profile-tooltip = { terminal-choose-execution-profile-tooltip }
terminal-terminal-configure = { terminal-configure }
terminal-terminal-context-select-all = { terminal-context-select-all }
terminal-terminal-continue-in-cloud-tooltip = { terminal-continue-in-cloud-tooltip }
terminal-terminal-continue-locally = { terminal-continue-locally }
terminal-terminal-conversations-current-directory = { terminal-conversations-current-directory }
terminal-terminal-cost = { terminal-cost }
terminal-terminal-couldnt-continue-cloud-task = { terminal-couldnt-continue-cloud-task }
terminal-terminal-credits-used-label = { terminal-credits-used-label }
terminal-terminal-directory-label = { terminal-directory-label }
terminal-terminal-editing-revoked-sharer-idle = { terminal-editing-revoked-sharer-idle }
terminal-terminal-editing-skills-unsupported = { terminal-editing-skills-unsupported }
terminal-terminal-ellipsis = { terminal-ellipsis }
terminal-terminal-failed-enable-autoreload = { terminal-failed-enable-autoreload }
terminal-terminal-auto-reload-settings-updated = { terminal-auto-reload-settings-updated }
terminal-terminal-fork-locally-tooltip = { terminal-fork-locally-tooltip }
terminal-terminal-ftux-loading = { terminal-ftux-loading }
terminal-terminal-ftux-new-type = { terminal-ftux-new-type }
terminal-terminal-ftux-no-secrets-found = { terminal-ftux-no-secrets-found }
terminal-terminal-ftux-no-secrets-helper = { terminal-ftux-no-secrets-helper }
terminal-terminal-ftux-search-placeholder = { terminal-ftux-search-placeholder }
terminal-terminal-ftux-skip-api-key = { terminal-ftux-skip-api-key }
terminal-terminal-ftux-skip-api-key-sub = { terminal-ftux-skip-api-key-sub }
terminal-terminal-ftux-unable-to-load-secrets = { terminal-ftux-unable-to-load-secrets }
terminal-terminal-full-terminal-use = { terminal-full-terminal-use }
terminal-terminal-history = { terminal-history }
terminal-terminal-increase-limit = { terminal-increase-limit }
terminal-terminal-intelligence = { terminal-intelligence }
terminal-terminal-loading-session = { terminal-loading-session }
terminal-terminal-manage = { terminal-manage }
terminal-terminal-manage-api-keys = { terminal-manage-api-keys }
terminal-terminal-manage-billing = { terminal-manage-billing }
terminal-terminal-manage-defaults = { terminal-manage-defaults }
terminal-terminal-manage-profiles = { terminal-manage-profiles }
terminal-terminal-menu-ai-command-search = { terminal-menu-ai-command-search }
terminal-terminal-menu-ask-warp-ai = { terminal-menu-ask-warp-ai }
terminal-terminal-menu-close-pane = { terminal-menu-close-pane }
terminal-terminal-menu-command-search = { terminal-menu-command-search }
terminal-terminal-menu-copy = { terminal-menu-copy }
terminal-terminal-menu-copy-command = { terminal-menu-copy-command }
terminal-terminal-menu-copy-commands = { terminal-menu-copy-commands }
terminal-terminal-menu-copy-conversation-id = { terminal-menu-copy-conversation-id }
terminal-terminal-menu-copy-conversation-text = { terminal-menu-copy-conversation-text }
terminal-terminal-menu-copy-debugging-id = { terminal-menu-copy-debugging-id }
terminal-terminal-menu-copy-debugging-link = { terminal-menu-copy-debugging-link }
terminal-terminal-menu-copy-filtered-output = { terminal-menu-copy-filtered-output }
terminal-terminal-menu-copy-git-branch = { terminal-menu-copy-git-branch }
terminal-terminal-menu-copy-link = { terminal-menu-copy-link }
terminal-terminal-menu-copy-output = { terminal-menu-copy-output }
terminal-terminal-menu-copy-output-as-markdown = { terminal-menu-copy-output-as-markdown }
terminal-terminal-menu-copy-path = { terminal-menu-copy-path }
terminal-terminal-menu-copy-prompt = { terminal-menu-copy-prompt }
terminal-terminal-menu-copy-right-prompt = { terminal-menu-copy-right-prompt }
terminal-terminal-menu-copy-session-sharing-link = { terminal-menu-copy-session-sharing-link }
terminal-terminal-menu-copy-url = { terminal-menu-copy-url }
terminal-terminal-menu-copy-working-directory = { terminal-menu-copy-working-directory }
terminal-terminal-menu-cut = { terminal-menu-cut }
terminal-terminal-menu-edit-agent-toolbelt = { terminal-menu-edit-agent-toolbelt }
terminal-terminal-menu-edit-cli-agent-toolbelt = { terminal-menu-edit-cli-agent-toolbelt }
terminal-terminal-menu-edit-prompt = { terminal-menu-edit-prompt }
terminal-terminal-menu-find-within-block = { terminal-menu-find-within-block }
terminal-terminal-menu-find-within-blocks = { terminal-menu-find-within-blocks }
terminal-terminal-menu-fork-from = { terminal-menu-fork-from }
terminal-terminal-menu-fork-from-here-dev-only = { terminal-menu-fork-from-here-dev-only }
terminal-terminal-menu-fork-from-last-query = { terminal-menu-fork-from-last-query }
terminal-terminal-menu-hide-input-hint-text = { terminal-menu-hide-input-hint-text }
terminal-terminal-menu-insert-into-input = { terminal-menu-insert-into-input }
terminal-terminal-menu-make-editor = { terminal-menu-make-editor }
terminal-terminal-menu-make-viewer = { terminal-menu-make-viewer }
terminal-terminal-menu-open-in-editor = { terminal-menu-open-in-editor }
terminal-terminal-menu-open-in-warp = { terminal-menu-open-in-warp }
terminal-terminal-menu-open-on-desktop = { terminal-menu-open-on-desktop }
terminal-terminal-menu-paste = { terminal-menu-paste }
terminal-terminal-menu-request-edit-access = { terminal-menu-request-edit-access }
terminal-terminal-menu-rewind-to-before-here = { terminal-menu-rewind-to-before-here }
terminal-terminal-menu-save-as-prompt = { terminal-menu-save-as-prompt }
terminal-terminal-menu-save-as-workflow = { terminal-menu-save-as-workflow }
terminal-terminal-menu-scroll-to-bottom-of-block = { terminal-menu-scroll-to-bottom-of-block }
terminal-terminal-menu-scroll-to-bottom-of-blocks = { terminal-menu-scroll-to-bottom-of-blocks }
terminal-terminal-menu-scroll-to-top-of-block = { terminal-menu-scroll-to-top-of-block }
terminal-terminal-menu-scroll-to-top-of-blocks = { terminal-menu-scroll-to-top-of-blocks }
terminal-terminal-menu-select-all = { terminal-menu-select-all }
terminal-terminal-menu-share = { terminal-menu-share }
terminal-terminal-menu-share-block = { terminal-menu-share-block }
terminal-terminal-menu-share-conversation = { terminal-menu-share-conversation }
terminal-terminal-menu-share-session = { terminal-menu-share-session }
terminal-terminal-menu-share-session-ellipsis = { terminal-menu-share-session-ellipsis }
terminal-terminal-menu-show-containing-folder = { terminal-menu-show-containing-folder }
terminal-terminal-menu-show-in-finder = { terminal-menu-show-in-finder }
terminal-terminal-menu-show-input-hint-text = { terminal-menu-show-input-hint-text }
terminal-terminal-menu-split-pane-down = { terminal-menu-split-pane-down }
terminal-terminal-menu-split-pane-left = { terminal-menu-split-pane-left }
terminal-terminal-menu-split-pane-right = { terminal-menu-split-pane-right }
terminal-terminal-menu-split-pane-up = { terminal-menu-split-pane-up }
terminal-terminal-menu-stop-sharing = { terminal-menu-stop-sharing }
terminal-terminal-menu-stop-sharing-session = { terminal-menu-stop-sharing-session }
terminal-terminal-menu-toggle-block-filter = { terminal-menu-toggle-block-filter }
terminal-terminal-menu-toggle-bookmark = { terminal-menu-toggle-bookmark }
terminal-terminal-model = { terminal-model }
terminal-terminal-model-specs = { terminal-model-specs }
terminal-terminal-model-specs-description = { terminal-model-specs-description }
terminal-terminal-monthly-limit-reached-admin = { terminal-monthly-limit-reached-admin }
terminal-terminal-monthly-limit-reached-non-admin = { terminal-monthly-limit-reached-non-admin }
terminal-terminal-monthly-limit-reached-title = { terminal-monthly-limit-reached-title }
terminal-terminal-new-agent-conversation = { terminal-new-agent-conversation }
terminal-terminal-new-cloud-agent = { terminal-new-cloud-agent }
terminal-terminal-new-models-available = { terminal-new-models-available }
terminal-terminal-non-local-env-var-subshell = { terminal-non-local-env-var-subshell }
terminal-terminal-open-in-desktop-tooltip = { terminal-open-in-desktop-tooltip }
terminal-terminal-open-in-warp = { terminal-open-in-warp }
terminal-terminal-out-of-credits-admin = { terminal-out-of-credits-admin }
terminal-terminal-out-of-credits-non-admin = { terminal-out-of-credits-non-admin }
terminal-terminal-out-of-credits-title = { terminal-out-of-credits-title }
terminal-terminal-powershell-subshell-unsupported = { terminal-powershell-subshell-unsupported }
terminal-terminal-profiles = { terminal-profiles }
terminal-terminal-purchase-exceeds-limit = { terminal-purchase-exceeds-limit }
terminal-terminal-reasoning-level = { terminal-reasoning-level }
terminal-terminal-reasoning-level-description = { terminal-reasoning-level-description }
terminal-terminal-request-edit-access-model = { terminal-request-edit-access-model }
terminal-terminal-revoke-all-edit-permissions = { terminal-revoke-all-edit-permissions }
terminal-terminal-run-time-label = { terminal-run-time-label }
terminal-terminal-selector-api-key-header = { terminal-selector-api-key-header }
terminal-terminal-selector-api-key-tooltip = { terminal-selector-api-key-tooltip }
terminal-terminal-selector-choose-type = { terminal-selector-choose-type }
terminal-terminal-selector-loading = { terminal-selector-loading }
terminal-terminal-selector-new = { terminal-selector-new }
terminal-terminal-selector-no-secret = { terminal-selector-no-secret }
terminal-terminal-selector-unable-to-load-secrets = { terminal-selector-unable-to-load-secrets }
terminal-terminal-sharing-edit-revoked-inactivity = { terminal-sharing-edit-revoked-inactivity }
terminal-terminal-sharing-ended-inactivity = { terminal-sharing-ended-inactivity }
terminal-terminal-skill-label = { terminal-skill-label }
terminal-terminal-snapshot-subtitle = { terminal-snapshot-subtitle }
terminal-terminal-source-label = { terminal-source-label }
terminal-terminal-speed = { terminal-speed }
terminal-terminal-tab-all = { terminal-tab-all }
terminal-terminal-tab-commands = { terminal-tab-commands }
terminal-terminal-tab-prompts = { terminal-tab-prompts }
terminal-terminal-to-continue = { terminal-to-continue }
terminal-terminal-tooltip-hide-details = { terminal-tooltip-hide-details }
terminal-terminal-tooltip-show-details = { terminal-tooltip-show-details }
terminal-terminal-use-agent = { terminal-use-agent }
terminal-terminal-use-agent-tooltip = { terminal-use-agent-tooltip }
terminal-terminal-viewing-snapshot = { terminal-viewing-snapshot }
terminal-terminal-warpify-ssh-session = { terminal-warpify-ssh-session }
terminal-terminal-warpify-subshell = { terminal-warpify-subshell }
terminal-terminal-warpify-subshell-tooltip = { terminal-warpify-subshell-tooltip }
terminal-terminal-free-credits = { terminal-free-credits }
terminal-terminal-show-prompt = { terminal-show-prompt }
terminal-terminal-view-index-status = { terminal-view-index-status }

## -- Additional terminal strings --
terminal-regenerate-agents-md = 重新生成 AGENTS.md 文件

## -- Agent mode setup banner strings --------------------------------------------------

terminal-optimize-codebase-header = 为此代码库优化 Warp？
terminal-optimize-codebase-text = 让代理理解您的代码库并生成规则，以获得更智能、更一致的响应。您也可以随时通过运行 /init 来执行此操作
terminal-optimize = 优化

## -- Alias expansion banner strings ---------------------------------------------------

terminal-enable-alias-expansion = 启用别名展开
terminal-warp-can-auto-expand-aliases = Warp 可以自动展开别名。

## -- Anonymous user AI sign-up banner strings -----------------------------------------

terminal-login-for-ai = 登录使用 AI
terminal-ai-features-unavailable = AI 功能对未登录用户不可用。创建账号以使用 AI。
terminal-sign-up = 注册

## -- Notifications error banner strings -----------------------------------------------

terminal-set-permissions = 设置权限

## -- Prompt suggestion banner strings --------------------------------------------------

terminal-restricted-due-to-payment-issue = 因付款问题受限
terminal-out-of-credits = 积分不足
terminal-suggestion-explain = 向我解释一下。
terminal-suggestion-fix = 帮我修复这个问题。
terminal-suggestion-install = 帮我安装一个二进制/依赖。我需要提供什么信息？
terminal-suggestion-code = 帮我写一些代码。我需要提供什么信息？
terminal-suggestion-deploy = 帮我部署项目。我需要提供什么信息？
terminal-suggestion-something-else = 其他？

## -- Shared session inline banner strings ---------------------------------------------

terminal-environment-started = 环境已启动
terminal-remote-control-active = 远程控制已激活
terminal-sharing-started = 共享已开始
terminal-environment-ended = 环境已结束
terminal-remote-control-stopped = 远程控制已停止
terminal-sharing-ended = 共享已结束
terminal-today = 今天

## -- Shell process terminated banner strings -------------------------------------------

terminal-shell-process-exited-prematurely = Shell 进程提前退出！
terminal-shell-init-output-visible = 上方可见 Warp 初始化脚本的输出，以协助调试。
terminal-shell-process-exited = Shell 进程已退出

## -- Enable auto reload modal strings --

terminal-when-enabled = 启用后，
terminal-auto-reload-explanation =  将在额度用尽时自动购买所选套餐。
terminal-enable-auto-reload-title = 启用自动充值？
terminal-enable-auto-reload = 启用
terminal-team-data-not-found = 哎呀，出了点问题；找不到您团队的数据。

## -- Drive sharing onboarding block strings --

terminal-sharing-in-warp-drive = 在 Warp Drive 中共享
terminal-drive-sharing-body-1 = 您现在可以与任何人（无论是否为 Warp 用户）共享 Drive 对象，无论是在 Warp 中还是网页上。点击 Warp Drive 菜单或窗格标题栏中的"共享"按钮，即可通过链接或电子邮件共享。
terminal-drive-sharing-body-2 = 您随时可以修改访问权限。
terminal-share-object-name = 共享 { $name }
terminal-share-this-object-type = 共享此 { $object_type }

## -- Shell terminated banner strings --

terminal-file-issue = 提交问题
terminal-more-info = 更多信息
terminal-shell-process-exited = Shell 进程已退出
terminal-shell-could-not-start = Shell 进程无法启动！
terminal-shell-exited-prematurely = Shell 进程提前退出！
terminal-warpify-failure-subtext = 启动 { $shell_detail } 并进行 Warpify 时出了点问题，导致进程终止。Warpify 脚本输出显示在此处，可能指向原因。

## -- 链接检测字符串 --

terminal-open-folder = 打开文件夹
terminal-open-file = 打开文件
terminal-open-link = 打开链接

## -- 提示工具字符串 --

terminal-open-in-warp = 在 Warp 中打开
terminal-show-in-finder = 在 Finder 中显示
terminal-show-containing-folder = 显示包含文件夹
terminal-reveal-secret = 显示密钥
terminal-hide-secret = 隐藏密钥
terminal-copy-secret = 复制密钥

## -- SSH 远程服务器选择视图字符串 --

terminal-install-ssh-extension = 安装 Warp 的 SSH 扩展
terminal-install-ssh-extension-desc = 安装 Warp 的扩展以启用代理功能，如文件浏览、代码审查和此会话中的智能命令补全。
terminal-continue-without-installing = 不安装继续
terminal-continue-without-desc = 您仍然可以获得 Warp 化的体验，只是没有编码功能。
terminal-choose-remote-experience = 选择此远程会话的体验：
terminal-manage-warpify-settings = 管理 Warpify 设置

## -- 代理视图字符串 --

terminal-cannot-start-while-monitoring = 代理正在监控命令时，无法开始新的对话。

## -- 在 Warp 中打开横幅字符串 --

terminal-open-in-warp-path = 在 Warp 中打开 { $path }
terminal-close-warp-banner = 关闭"在 Warp 中查看"横幅
terminal-learn-more-markdown = 了解更多关于在 Warp 中打开 Markdown 文件的信息

## -- 可用 Shell 字符串 --

terminal-shell-default = 默认
terminal-shell-bash = Bash
terminal-shell-zsh = Zsh
terminal-shell-fish = Fish
terminal-shell-powershell = PowerShell
terminal-shell-windows-powershell = Windows PowerShell
terminal-shell-custom = 自定义
terminal-shell-docker-sandbox = Docker 沙箱
terminal-wsl-details = 适用于 Linux 的 Windows 子系统
terminal-custom-shell-details = 自定义：{ $path }

## -- SSH setup and AI autosuggestion strings --

terminal-what-happened-here = 这里发生了什么？
terminal-checking = 检查中...
terminal-installing = 安装中...
terminal-updating = 更新中...
terminal-initializing = 初始化中...
terminal-starting-shell = 正在启动 Shell...
terminal-what-is-the-command-to = 执行以下操作的命令是：

## -- Double-prefix aliases for inline banner strings --

terminal-terminal-aws-bedrock-title = { terminal-aws-bedrock-title }
terminal-terminal-aws-bedrock-description = { terminal-aws-bedrock-description }
terminal-terminal-log-into-aws = { terminal-log-into-aws }
terminal-terminal-notifications-dismissed = { terminal-notifications-dismissed }
terminal-terminal-notifications-disabled = { terminal-notifications-disabled }
terminal-terminal-notifications-success = { terminal-notifications-success }
terminal-terminal-notifications-denied = { terminal-notifications-denied }
terminal-terminal-notifications-error = { terminal-notifications-error }
terminal-terminal-notifications-pending = { terminal-notifications-pending }
terminal-terminal-configure-notifications = { terminal-configure-notifications }
terminal-terminal-troubleshoot = { terminal-troubleshoot }
terminal-terminal-notifications-long-running = { terminal-notifications-long-running }
terminal-terminal-notifications-agent-task = { terminal-notifications-agent-task }
terminal-terminal-notifications-needs-attention = { terminal-notifications-needs-attention }
terminal-terminal-notifications-password-prompt = { terminal-notifications-password-prompt }
terminal-terminal-notifications-a11y-help = { terminal-notifications-a11y-help }
terminal-terminal-open-markdown-title = { terminal-open-markdown-title }
terminal-terminal-open-code-title = { terminal-open-code-title }
terminal-terminal-open-code-title-fallback = { terminal-open-code-title-fallback }
terminal-terminal-view-in-warp = { terminal-view-in-warp }
terminal-terminal-edit-in-warp = { terminal-edit-in-warp }
terminal-terminal-ssh-wrapper-enabled = { terminal-ssh-wrapper-enabled }
terminal-terminal-ssh-wrapper-disabled = { terminal-ssh-wrapper-disabled }
terminal-terminal-ssh-connection-title = { terminal-ssh-connection-title }
terminal-terminal-ssh-authenticating = { terminal-ssh-authenticating }
terminal-terminal-ssh-connected = { terminal-ssh-connected }
terminal-terminal-ssh-disconnected = { terminal-ssh-disconnected }
terminal-terminal-ssh-error-title = { terminal-ssh-error-title }
terminal-terminal-ssh-host-label = { terminal-ssh-host-label }
terminal-terminal-ssh-user-label = { terminal-ssh-user-label }
terminal-terminal-ssh-tmux-not-installed = { terminal-ssh-tmux-not-installed }
terminal-terminal-ssh-unsupported-tmux = { terminal-ssh-unsupported-tmux }
terminal-terminal-ssh-tmux-failed = { terminal-ssh-tmux-failed }
terminal-terminal-ssh-warpify-timeout = { terminal-ssh-warpify-timeout }
terminal-terminal-ssh-unsupported-shell = { terminal-ssh-unsupported-shell }
terminal-terminal-ssh-tmux-install-error = { terminal-ssh-tmux-install-error }
terminal-terminal-ssh-tmux-not-installed-title = { terminal-ssh-tmux-not-installed-title }
terminal-terminal-ssh-unsupported-tmux-title = { terminal-ssh-unsupported-tmux-title }
terminal-terminal-ssh-tmux-failed-title = { terminal-ssh-tmux-failed-title }
terminal-terminal-ssh-tmux-install-timeout-title = { terminal-ssh-tmux-install-timeout-title }
terminal-terminal-ssh-warpify-timeout-title = { terminal-ssh-warpify-timeout-title }
terminal-terminal-ssh-unsupported-shell-title = { terminal-ssh-unsupported-shell-title }
terminal-terminal-ssh-tmux-install-error-title = { terminal-ssh-tmux-install-error-title }
terminal-terminal-ssh-error-warpifying-title = { terminal-ssh-error-warpifying-title }
terminal-terminal-ssh-feedback-message-before-link = { terminal-ssh-feedback-message-before-link }
terminal-terminal-ssh-feedback-link-text = { terminal-ssh-feedback-link-text }
terminal-terminal-ssh-feedback-message-after-link = { terminal-ssh-feedback-message-after-link }
terminal-terminal-ssh-warpify-without-tmux = { terminal-ssh-warpify-without-tmux }
terminal-terminal-ssh-continue-without-warpification = { terminal-ssh-continue-without-warpification }
terminal-terminal-settings = { terminal-settings }
terminal-terminal-new-terminal-session = { terminal-new-terminal-session }
terminal-terminal-zero-state-new-agent-conversation = { terminal-zero-state-new-agent-conversation }
terminal-terminal-zero-state-new-cloud-agent-conversation = { terminal-zero-state-new-cloud-agent-conversation }
terminal-terminal-zero-state-cycle-commands = { terminal-zero-state-cycle-commands }
terminal-terminal-zero-state-open-code-review = { terminal-zero-state-open-code-review }
terminal-terminal-zero-state-autodetect-nld = { terminal-zero-state-autodetect-nld }

## -- Double-prefix aliases for new terminal strings --
terminal-terminal-regenerate-agents-md = { terminal-regenerate-agents-md }
terminal-terminal-cli-agent-hint = { terminal-cli-agent-hint }
terminal-terminal-cloud-mode-v2-hint = { terminal-cloud-mode-v2-hint }
terminal-terminal-cloud-handoff-hint = { terminal-cloud-handoff-hint }
terminal-terminal-input-a11y-label = { terminal-input-a11y-label }
terminal-terminal-ai-command-search-hint = { terminal-ai-command-search-hint }
terminal-terminal-run-commands-hint = { terminal-run-commands-hint }
terminal-terminal-steer-agent-hint = { terminal-steer-agent-hint }
terminal-terminal-ask-follow-up = { terminal-ask-follow-up }
terminal-terminal-system-default-shell = { terminal-system-default-shell }
terminal-terminal-type-searched-phrase = { terminal-type-searched-phrase }
terminal-terminal-press-escape-to-quit = { terminal-press-escape-to-quit }
terminal-terminal-conversation-restored = { terminal-conversation-restored }
terminal-terminal-previous-session = { terminal-previous-session }
terminal-terminal-sharing-link-copied = { terminal-sharing-link-copied }
terminal-terminal-grants-ability-part1 = { terminal-grants-ability-part1 }
terminal-terminal-use-with-caution = { terminal-use-with-caution }
terminal-terminal-edit-requests = { terminal-edit-requests }
terminal-terminal-cancel-request = { terminal-cancel-request }

## -- Double-prefix aliases for inline banner strings (new) --

terminal-terminal-optimize-codebase-header = { terminal-optimize-codebase-header }
terminal-terminal-optimize-codebase-text = { terminal-optimize-codebase-text }
terminal-terminal-optimize = { terminal-optimize }
terminal-terminal-enable-alias-expansion = { terminal-enable-alias-expansion }
terminal-terminal-warp-can-auto-expand-aliases = { terminal-warp-can-auto-expand-aliases }
terminal-terminal-login-for-ai = { terminal-login-for-ai }
terminal-terminal-ai-features-unavailable = { terminal-ai-features-unavailable }
terminal-terminal-sign-up = { terminal-sign-up }
terminal-terminal-set-permissions = { terminal-set-permissions }
terminal-terminal-restricted-due-to-payment-issue = { terminal-restricted-due-to-payment-issue }
terminal-terminal-out-of-credits = { terminal-out-of-credits }
terminal-terminal-suggestion-explain = { terminal-suggestion-explain }
terminal-terminal-suggestion-fix = { terminal-suggestion-fix }
terminal-terminal-suggestion-install = { terminal-suggestion-install }
terminal-terminal-suggestion-code = { terminal-suggestion-code }
terminal-terminal-suggestion-deploy = { terminal-suggestion-deploy }
terminal-terminal-suggestion-something-else = { terminal-suggestion-something-else }
terminal-terminal-environment-started = { terminal-environment-started }
terminal-terminal-remote-control-active = { terminal-remote-control-active }
terminal-terminal-sharing-started = { terminal-sharing-started }
terminal-terminal-environment-ended = { terminal-environment-ended }
terminal-terminal-remote-control-stopped = { terminal-remote-control-stopped }
terminal-terminal-sharing-ended = { terminal-sharing-ended }
terminal-terminal-today = { terminal-today }
terminal-terminal-shell-process-exited-prematurely = { terminal-shell-process-exited-prematurely }
terminal-terminal-shell-init-output-visible = { terminal-shell-init-output-visible }
terminal-terminal-shell-process-exited = { terminal-shell-process-exited }

## -- Double-prefix aliases for share block modal strings --

terminal-terminal-share-title-optional = { terminal-share-title-optional }
terminal-terminal-share-embed-label = { terminal-share-embed-label }
terminal-terminal-share-error = { terminal-share-error }
terminal-terminal-share-link-copied = { terminal-share-link-copied }
terminal-terminal-share-embed-copied = { terminal-share-embed-copied }
terminal-terminal-share-creating = { terminal-share-creating }
terminal-terminal-share-embed-error = { terminal-share-embed-error }

## -- Double-prefix aliases for block list element strings --

terminal-terminal-block-tag-agent = { terminal-block-tag-agent }
terminal-terminal-block-save-workflow = { terminal-block-save-workflow }
terminal-terminal-block-secrets-cannot-save = { terminal-block-secrets-cannot-save }
terminal-terminal-session-restored-from = { $banner_intro_text }，来自 { $timestamp }

## -- Double-prefix aliases for UDI strings --

terminal-terminal-udi-no-objects = { terminal-udi-no-objects }
terminal-terminal-udi-no-ssh = { terminal-udi-no-ssh }
terminal-terminal-udi-no-subshell = { terminal-udi-no-subshell }
terminal-terminal-udi-no-fs = { terminal-udi-no-fs }
terminal-terminal-udi-disabled-terminal-mode = { terminal-udi-disabled-terminal-mode }
terminal-terminal-udi-attach-context = { terminal-udi-attach-context }
terminal-terminal-udi-voice-input = { terminal-udi-voice-input }
terminal-terminal-udi-attach-file = { terminal-udi-attach-file }
terminal-terminal-udi-slash-commands = { terminal-udi-slash-commands }
terminal-terminal-udi-request-edit = { terminal-udi-request-edit }
terminal-terminal-udi-mode-locked = { terminal-udi-mode-locked }
terminal-terminal-udi-terminal = { terminal-udi-terminal }
terminal-terminal-udi-agent-mode = { terminal-udi-agent-mode }
terminal-terminal-starting-shell = { terminal-starting-shell }
terminal-terminal-loading-prompt = { terminal-loading-prompt }
terminal-terminal-when-enabled = { terminal-when-enabled }
terminal-terminal-auto-reload-explanation = { terminal-auto-reload-explanation }
terminal-terminal-enable-auto-reload-title = { terminal-enable-auto-reload-title }
terminal-terminal-enable-auto-reload = { terminal-enable-auto-reload }
terminal-terminal-team-data-not-found = { terminal-team-data-not-found }
terminal-terminal-sharing-in-warp-drive = { terminal-sharing-in-warp-drive }
terminal-terminal-drive-sharing-body-1 = { terminal-drive-sharing-body-1 }
terminal-terminal-drive-sharing-body-2 = { terminal-drive-sharing-body-2 }
terminal-terminal-share-object-name = 共享 { $name }
terminal-terminal-share-this-object-type = 共享此 { $object_type }
terminal-terminal-file-issue = { terminal-file-issue }
terminal-terminal-more-info = { terminal-more-info }
terminal-terminal-shell-process-exited = { terminal-shell-process-exited }
terminal-terminal-shell-could-not-start = { terminal-shell-could-not-start }
terminal-terminal-shell-exited-prematurely = { terminal-shell-exited-prematurely }
terminal-terminal-warpify-failure-subtext = 启动 { $shell_detail } 并进行 Warpify 时出了点问题，导致进程终止。Warpify 脚本输出显示在此处，可能指向原因。
terminal-terminal-open-folder = { terminal-open-folder }
terminal-terminal-open-file = { terminal-open-file }
terminal-terminal-open-link = { terminal-open-link }
terminal-terminal-open-in-warp = { terminal-open-in-warp }
terminal-terminal-show-in-finder = { terminal-show-in-finder }
terminal-terminal-show-containing-folder = { terminal-show-containing-folder }
terminal-terminal-reveal-secret = { terminal-reveal-secret }
terminal-terminal-hide-secret = { terminal-hide-secret }
terminal-terminal-copy-secret = { terminal-copy-secret }
terminal-terminal-install-ssh-extension = { terminal-install-ssh-extension }
terminal-terminal-install-ssh-extension-desc = { terminal-install-ssh-extension-desc }
terminal-terminal-continue-without-installing = { terminal-continue-without-installing }
terminal-terminal-continue-without-desc = { terminal-continue-without-desc }
terminal-terminal-choose-remote-experience = { terminal-choose-remote-experience }
terminal-terminal-manage-warpify-settings = { terminal-manage-warpify-settings }
terminal-terminal-cannot-start-while-monitoring = { terminal-cannot-start-while-monitoring }
terminal-terminal-open-in-warp-path = 在 Warp 中打开 { $path }
terminal-terminal-close-warp-banner = { terminal-close-warp-banner }
terminal-terminal-learn-more-markdown = { terminal-learn-more-markdown }
terminal-terminal-shell-default = { terminal-shell-default }
terminal-terminal-shell-bash = { terminal-shell-bash }
terminal-terminal-shell-zsh = { terminal-shell-zsh }
terminal-terminal-shell-fish = { terminal-shell-fish }
terminal-terminal-shell-powershell = { terminal-shell-powershell }
terminal-terminal-shell-windows-powershell = { terminal-shell-windows-powershell }
terminal-terminal-shell-custom = { terminal-shell-custom }
terminal-terminal-shell-docker-sandbox = { terminal-shell-docker-sandbox }
terminal-terminal-wsl-details = { terminal-wsl-details }
terminal-terminal-custom-shell-details = 自定义：{ $path }
terminal-terminal-what-happened-here = { terminal-what-happened-here }
terminal-terminal-checking = { terminal-checking }
terminal-terminal-installing = { terminal-installing }
terminal-terminal-updating = { terminal-updating }
terminal-terminal-initializing = { terminal-initializing }
terminal-terminal-starting-shell = { terminal-starting-shell }
terminal-terminal-what-is-the-command-to = { terminal-what-is-the-command-to }

## -- 输入框 i18n 字符串的双前缀别名 --

terminal-terminal-input-a11y-helper = { terminal-input-a11y-helper }
terminal-terminal-steer-agent-classic = { terminal-steer-agent-classic }
terminal-terminal-ask-follow-up-classic = { terminal-ask-follow-up-classic }
terminal-terminal-dynamic-enum-generate = { terminal-dynamic-enum-generate }
terminal-terminal-dynamic-enum-run = { terminal-dynamic-enum-run }
terminal-terminal-dynamic-enum-pending = { terminal-dynamic-enum-pending }
terminal-terminal-dynamic-enum-failure = { terminal-dynamic-enum-failure }
terminal-terminal-dynamic-enum-no-results = { terminal-dynamic-enum-no-results }
terminal-terminal-search-queries = { terminal-search-queries }
terminal-terminal-search-queries-rewind = { terminal-search-queries-rewind }
terminal-terminal-search-conversations = { terminal-search-conversations }
terminal-terminal-search-skills = { terminal-search-skills }
terminal-terminal-search-models = { terminal-search-models }
terminal-terminal-search-profiles = { terminal-search-profiles }
terminal-terminal-search-commands = { terminal-search-commands }
terminal-terminal-search-prompts = { terminal-search-prompts }
terminal-terminal-search-indexed-repos = { terminal-search-indexed-repos }
terminal-terminal-search-plans = { terminal-search-plans }

## -- SSH 文件上传字符串的双前缀别名 --

terminal-terminal-waiting-for-password = { terminal-waiting-for-password }
terminal-terminal-uploading = { terminal-uploading }
terminal-terminal-uploaded = { terminal-uploaded }
terminal-terminal-failed-to-upload = { terminal-failed-to-upload }
terminal-terminal-clear-upload = { terminal-clear-upload }
terminal-terminal-file-uploads = { terminal-file-uploads }
terminal-terminal-upload-session = { terminal-upload-session }

## -- 通用设置描述的双前缀别名 --

terminal-terminal-setting-description-show-warning-before-quitting = { terminal-setting-description-show-warning-before-quitting }
terminal-terminal-setting-description-quit-on-last-window-closed = { terminal-setting-description-quit-on-last-window-closed }
terminal-terminal-setting-description-restore-session = { terminal-setting-description-restore-session }
terminal-terminal-setting-description-login-item = { terminal-setting-description-login-item }
terminal-terminal-setting-description-link-tooltip = { terminal-setting-description-link-tooltip }
terminal-terminal-setting-description-auto-open-code-review-pane = { terminal-setting-description-auto-open-code-review-pane }
terminal-terminal-setting-description-language = { terminal-setting-description-language }

## -- 快捷键描述字符串的双前缀别名 --

terminal-terminal-alternate-terminal-paste = { terminal-alternate-terminal-paste }
terminal-terminal-toggle-cli-agent-rich-input = { terminal-toggle-cli-agent-rich-input }
terminal-terminal-accept-prompt-suggestion = { terminal-accept-prompt-suggestion }
terminal-terminal-copy-text-or-cancel-active-process = { terminal-copy-text-or-cancel-active-process }
terminal-terminal-cancel-active-process = { terminal-cancel-active-process }
terminal-terminal-focus-terminal-input = { terminal-focus-terminal-input }
terminal-terminal-reinput-selected-commands = { terminal-reinput-selected-commands }
terminal-terminal-reinput-selected-commands-as-root = { terminal-reinput-selected-commands-as-root }
terminal-terminal-find-in-terminal = { terminal-find-in-terminal }
terminal-terminal-select-closest-bookmark-up = { terminal-select-closest-bookmark-up }
terminal-terminal-select-closest-bookmark-down = { terminal-select-closest-bookmark-down }
terminal-terminal-open-block-context-menu = { terminal-open-block-context-menu }
terminal-terminal-toggle-team-workflows-modal = { terminal-toggle-team-workflows-modal }
terminal-terminal-copy-git-branch = { terminal-copy-git-branch }
terminal-terminal-clear-blocks = { terminal-clear-blocks }
terminal-terminal-move-cursor-word-left-executing-command = { terminal-move-cursor-word-left-executing-command }
terminal-terminal-move-cursor-word-right-executing-command = { terminal-move-cursor-word-right-executing-command }
terminal-terminal-move-cursor-home-executing-command = { terminal-move-cursor-home-executing-command }
terminal-terminal-move-cursor-end-executing-command = { terminal-move-cursor-end-executing-command }
terminal-terminal-delete-word-left-executing-command = { terminal-delete-word-left-executing-command }
terminal-terminal-delete-to-line-start-executing-command = { terminal-delete-to-line-start-executing-command }
terminal-terminal-delete-to-line-end-executing-command = { terminal-delete-to-line-end-executing-command }
terminal-terminal-backward-tabulation-executing-command = { terminal-backward-tabulation-executing-command }
terminal-terminal-select-previous-block = { terminal-select-previous-block }
terminal-terminal-select-next-block = { terminal-select-next-block }
terminal-terminal-share-selected-block = { terminal-share-selected-block }
terminal-terminal-bookmark-selected-block = { terminal-bookmark-selected-block }
terminal-terminal-find-within-selected-block = { terminal-find-within-selected-block }
terminal-terminal-copy-command-and-output = { terminal-copy-command-and-output }
terminal-terminal-copy-command-output = { terminal-copy-command-output }
terminal-terminal-copy-command = { terminal-copy-command }
terminal-terminal-scroll-output-up-one-line = { terminal-scroll-output-up-one-line }
terminal-terminal-scroll-output-down-one-line = { terminal-scroll-output-down-one-line }
terminal-terminal-scroll-output-up-one-page = { terminal-scroll-output-up-one-page }
terminal-terminal-scroll-output-down-one-page = { terminal-scroll-output-down-one-page }
terminal-terminal-scroll-to-top-of-selected-block = { terminal-scroll-to-top-of-selected-block }
terminal-terminal-scroll-to-bottom-of-selected-block = { terminal-scroll-to-bottom-of-selected-block }
terminal-terminal-select-all-blocks = { terminal-select-all-blocks }
terminal-terminal-expand-selected-blocks-above = { terminal-expand-selected-blocks-above }
terminal-terminal-expand-selected-blocks-below = { terminal-expand-selected-blocks-below }
terminal-terminal-attach-selected-block-as-agent-context = { terminal-attach-selected-block-as-agent-context }
terminal-terminal-attach-selected-text-as-agent-context = { terminal-attach-selected-text-as-agent-context }
terminal-terminal-attach-selection-as-agent-context = { terminal-attach-selection-as-agent-context }
terminal-terminal-ask-warp-ai-about-selection = { terminal-ask-warp-ai-about-selection }
terminal-terminal-ask-warp-ai-about-last-block = { terminal-ask-warp-ai-about-last-block }
terminal-terminal-ask-warp-ai = { terminal-ask-warp-ai }
terminal-terminal-insert-command-correction = { terminal-insert-command-correction }
terminal-terminal-setup-guide = { terminal-setup-guide }
terminal-terminal-import-external-settings = { terminal-import-external-settings }
terminal-terminal-share-current-session = { terminal-share-current-session }
terminal-terminal-stop-sharing-current-session = { terminal-stop-sharing-current-session }
terminal-terminal-toggle-block-filter-on-selected-or-last-block = { terminal-toggle-block-filter-on-selected-or-last-block }
terminal-terminal-toggle-sticky-command-header-in-active-pane = { terminal-toggle-sticky-command-header-in-active-pane }
terminal-terminal-toggle-auto-execute-mode = { terminal-toggle-auto-execute-mode }
terminal-terminal-toggle-queue-next-prompt = { terminal-toggle-queue-next-prompt }
terminal-terminal-write-current-codebase-index-snapshot = { terminal-write-current-codebase-index-snapshot }
terminal-terminal-load-agent-mode-conversation = { terminal-load-agent-mode-conversation }
terminal-terminal-toggle-pty-recording-for-session = { terminal-toggle-pty-recording-for-session }
terminal-terminal-initiate-project-for-warp = { terminal-initiate-project-for-warp }
terminal-terminal-add-current-folder-as-project = { terminal-add-current-folder-as-project }
terminal-terminal-toggle-conversation-details-panel = { terminal-toggle-conversation-details-panel }
terminal-terminal-set-input-mode-to-agent-mode = { terminal-set-input-mode-to-agent-mode }
terminal-terminal-set-input-mode-to-terminal-mode = { terminal-set-input-mode-to-terminal-mode }
terminal-terminal-toggle-hide-cli-responses = { terminal-toggle-hide-cli-responses }
terminal-terminal-show-warp-network-log = { terminal-show-warp-network-log }
terminal-terminal-clear-screen = { terminal-clear-screen }
terminal-terminal-edit-prompt = { terminal-edit-prompt }
terminal-terminal-experimental-toggle-classic-completions-mode = { terminal-experimental-toggle-classic-completions-mode }
terminal-terminal-command-search = { terminal-command-search }
terminal-terminal-history-search = { terminal-history-search }
terminal-terminal-open-completions-menu = { terminal-open-completions-menu }
terminal-terminal-workflows = { terminal-workflows }
terminal-terminal-open-ai-command-suggestions = { terminal-open-ai-command-suggestions }
terminal-terminal-trigger-auto-detection = { terminal-trigger-auto-detection }
terminal-terminal-clear-and-reset-ai-context-menu-query = { terminal-clear-and-reset-ai-context-menu-query }

## -- 搜索无障碍标签双前缀别名 -----------------------------------------------

terminal-terminal-search-conversation = 对话：{ $title }
terminal-terminal-search-command = 命令：{ $command }
terminal-terminal-search-ai-prompt = AI 提示：{ $query }
terminal-terminal-search-plan = 计划：{ $title }
terminal-terminal-search-profile = 配置：{ $name }
terminal-terminal-search-prompt = 提示词：{ $name }
terminal-terminal-search-repo = 已索引的仓库：{ $name }
terminal-terminal-search-rewind = 回退到：{ $query }（无代码更改）
terminal-terminal-search-skill = 技能：{ $name }
terminal-terminal-search-query = 查询：{ $query }
terminal-terminal-search-block = 块：{ $command }
terminal-terminal-warp-drive = { terminal-warp-drive }

## -- 模型规格和推理级别字符串双前缀别名 -----------------------------------------

terminal-terminal-model-specs-title = { terminal-model-specs-title }
terminal-terminal-model-specs-description = { terminal-model-specs-description }
terminal-terminal-reasoning-level-title = { terminal-reasoning-level-title }
terminal-terminal-reasoning-level-description = { terminal-reasoning-level-description }

## -- 初始化项目字符串双前缀别名 -----------------------------------------------

terminal-terminal-init-project-onboarding-text = { terminal-init-project-onboarding-text }
terminal-terminal-init-project-already-setup-text = { terminal-init-project-already-setup-text }

## -- 初始化环境字符串双前缀别名 -----------------------------------------------

terminal-terminal-init-environment-explanation-text = { terminal-init-environment-explanation-text }
terminal-terminal-init-environment-no-repos-help-text = { terminal-init-environment-no-repos-help-text }

## -- 提示消息双前缀别名 -----------------------------------------------------

terminal-terminal-copied-to-clipboard = { terminal-copied-to-clipboard }
terminal-terminal-failed-cloud-handoff = { terminal-failed-cloud-handoff }
terminal-terminal-images-removed-no-support = { terminal-images-removed-no-support }
terminal-terminal-skill-not-found = { terminal-skill-not-found }
terminal-terminal-no-active-conversation-export = { terminal-no-active-conversation-export }
terminal-terminal-file-exists-overwrite = { terminal-file-exists-overwrite }
terminal-terminal-conversation-exported = { terminal-conversation-exported }
terminal-terminal-permission-denied = { terminal-permission-denied }
terminal-terminal-directory-not-found = { terminal-directory-not-found }
terminal-terminal-file-already-exists = { terminal-file-already-exists }
terminal-terminal-preparing-handoff = { terminal-preparing-handoff }
terminal-terminal-invalid-uri = { terminal-invalid-uri }
terminal-terminal-invalid-uri-detail = { terminal-invalid-uri-detail }
terminal-terminal-project-rules-linked = { terminal-project-rules-linked }
terminal-terminal-installed-enabled = { terminal-installed-enabled }
terminal-terminal-failed-install = { terminal-failed-install }
terminal-terminal-installing-background = { terminal-installing-background }

## -- 横幅和通知字符串的双前缀别名 -----------------------------------------------

terminal-terminal-yes-emacs-bindings = { terminal-yes-emacs-bindings }
terminal-terminal-no-keep-ide-bindings = { terminal-no-keep-ide-bindings }
terminal-terminal-oz-permission-run = Oz 需要你的许可来运行 `{ $command }`
terminal-terminal-oz-permission-read = { terminal-oz-permission-read }
terminal-terminal-oz-permission-search = { terminal-oz-permission-search }
terminal-terminal-oz-permission-edit = { terminal-oz-permission-edit }
terminal-terminal-oz-permission-shell = { terminal-oz-permission-shell }
terminal-terminal-oz-permission-confirm = { terminal-oz-permission-confirm }
terminal-terminal-ssh-connection-failed = { terminal-ssh-connection-failed }
terminal-terminal-latest-output = { terminal-latest-output }
terminal-terminal-status-after-duration =  { $status }，用时 { $seconds }秒
terminal-terminal-notification-finished =  已完成
terminal-terminal-notification-failed =  已失败
terminal-terminal-notification-error-prefix = 错误：
terminal-terminal-notification-blocked =  已阻塞
terminal-terminal-notification-waiting-password =  正在等待输入密码
terminal-terminal-warpify-for-features-with-key = 你可以按 { $key } 来 Warpify 这个 { $title }，以获得更多 Warp 功能。
terminal-terminal-warpify-for-features = 你可以 Warpify 这个 { $title }，以获得更多 Warp 功能。
terminal-terminal-title-recognized = { $title } 已识别。
terminal-terminal-did-you-intend = { terminal-did-you-intend }
terminal-terminal-to-move-cursor = { terminal-to-move-cursor }
terminal-terminal-sharing-usage-exceeded = { terminal-sharing-usage-exceeded }
terminal-terminal-session-limit-exceeded = 会话限制（{ $limit }）已超出，请重新共享以继续。
terminal-terminal-session-internal-error = { terminal-session-internal-error }

## -- 包含用户可见文本的格式字符串的双前缀别名 -----------------------------------

terminal-terminal-default-shell = { terminal-default-shell }
terminal-terminal-docker-sandbox = { terminal-docker-sandbox }
terminal-terminal-custom-shell = 自定义（{ $command }）
terminal-terminal-exit-code = 退出码 { $code }
terminal-terminal-installing-ssh-progress = 正在安装 Warp SSH 扩展…（{ $percent }%）
terminal-terminal-installing-ssh = 正在安装 Warp SSH 扩展…
terminal-terminal-updating-ssh = 正在更新 Warp SSH 扩展…
terminal-terminal-initializing = 正在初始化…
terminal-terminal-starting-shell-with-name = 正在启动 { $name }…
terminal-terminal-discount-percent = { $percent }% 折扣！
terminal-terminal-selected-label = 已选择
terminal-terminal-disabled-label = 已禁用
terminal-terminal-attached-as-context = `{ $name }` 已作为上下文附加
terminal-terminal-attached-with-one-more = `{ $name }` 和另外 1 条命令已作为上下文附加
terminal-terminal-attached-with-more = `{ $name }` 和另外 { $count } 条命令已作为上下文附加
terminal-terminal-to-remove = { terminal-to-remove }
terminal-terminal-selected-text-as-context = { terminal-selected-text-as-context }
terminal-terminal-enable-language-support = 启用 { $language } 支持
terminal-terminal-install-and-enable-language = 安装并启用 { $language }
terminal-terminal-link-to-agents-md = 将现有 { $file } 链接到我的 AGENTS.md 文件
terminal-terminal-enable-language-for-codebase = 要为此代码库启用 { $language } 支持吗？这将为你提供更智能的代码导航、行内错误检查等功能。
terminal-terminal-show-more = 显示更多 { $count } 项

terminal-no-code-restored = 没有可恢复的代码
terminal-project-skill = 项目技能
terminal-thinking = 思考中...
terminal-customizable-appearance = 可在外观设置中自定义。
terminal-choose-setup-env = 选择你想如何设置你的环境
terminal-aws-cli-required = 需要使用 AWS CLI 来认证你的组织的 AWS Bedrock。请安装后继续。
terminal-slow-bootstrap-msg = 你的 Shell 似乎启动需要一段时间...
terminal-more-info-link = 更多信息
terminal-show-init-block = 显示初始化块
terminal-use-agent-btn = 使用代理
terminal-give-control-back-btn = 将控制权交还代理
terminal-ask-agent-assist-tooltip = 请求 Warp 代理协助
terminal-ask-agent-resume-tooltip = 请求 Warp 代理继续
terminal-enable-lang-support-desc = 你是否要为此代码库启用可用的语言支持？这将为你提供更智能的代码导航和内联错误检查。

## -- 已迁移 UI 字符串的双前缀别名 --

terminal-terminal-share-session = { terminal-share-session }
terminal-terminal-shared-session-limit-reached = { terminal-shared-session-limit-reached }
terminal-terminal-shared-session-denied-subheader = { terminal-shared-session-denied-subheader }
terminal-terminal-view-plans = { terminal-view-plans }
terminal-terminal-start-sharing = { terminal-start-sharing }
terminal-terminal-stop-sharing = { terminal-stop-sharing }
terminal-terminal-continue-sharing = { terminal-continue-sharing }
terminal-terminal-make-editor = { terminal-make-editor }
terminal-terminal-deny = { terminal-deny }
terminal-terminal-requested-mode = { terminal-requested-mode }
terminal-terminal-waiting-for = { terminal-waiting-for }
terminal-terminal-create-team = { terminal-create-team }
terminal-terminal-manage-shared-blocks = { terminal-manage-shared-blocks }
terminal-terminal-install-and-enable = { terminal-install-and-enable }
terminal-terminal-enable-selected-languages = { terminal-enable-selected-languages }
terminal-terminal-are-you-still-there = { terminal-are-you-still-there }
terminal-terminal-sharing-will-end-due-to-inactivity = { terminal-sharing-will-end-due-to-inactivity }
terminal-terminal-edit-prompt = { terminal-edit-prompt }
terminal-terminal-warp-terminal-prompt = { terminal-warp-terminal-prompt }
terminal-terminal-shell-prompt-ps1 = { terminal-shell-prompt-ps1 }
terminal-terminal-restore-default = { terminal-restore-default }
terminal-terminal-cancel-request = { terminal-cancel-request }
terminal-terminal-no-code-restored = { terminal-no-code-restored }
terminal-terminal-project-skill = { terminal-project-skill }
terminal-terminal-thinking = { terminal-thinking }
terminal-terminal-customizable-appearance = { terminal-customizable-appearance }
terminal-terminal-choose-setup-env = { terminal-choose-setup-env }
terminal-terminal-aws-cli-required = { terminal-aws-cli-required }
terminal-terminal-slow-bootstrap-msg = { terminal-slow-bootstrap-msg }
terminal-terminal-more-info-link = { terminal-more-info-link }
terminal-terminal-show-init-block = { terminal-show-init-block }
terminal-terminal-use-agent-btn = { terminal-use-agent-btn }
terminal-terminal-give-control-back-btn = { terminal-give-control-back-btn }
terminal-terminal-ask-agent-assist-tooltip = { terminal-ask-agent-assist-tooltip }
terminal-terminal-ask-agent-resume-tooltip = { terminal-ask-agent-resume-tooltip }
terminal-terminal-enable-lang-support-desc = { terminal-enable-lang-support-desc }
