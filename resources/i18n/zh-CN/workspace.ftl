# =============================================================================
# workspace.ftl — 工作区、标签页和面板标签
# =============================================================================
# Message IDs: workspace-{id}
# =============================================================================

## -- 面板/标签类型标签 ---------------------------------------------------

workspace-pane-terminal = 终端
workspace-pane-code = 代码
workspace-pane-code-diff = 代码差异
workspace-pane-file = 文件
workspace-pane-notebook = 笔记本
workspace-pane-workflow = 工作流
workspace-pane-settings = 设置
workspace-pane-env-vars = 环境变量
workspace-pane-environments = 环境管理
workspace-pane-ai-fact = AI 事实
workspace-pane-ai-document = AI 文档
workspace-pane-execution-profile = 执行配置

workspace-terminal = 终端
workspace-code = 代码
workspace-file = 文件
workspace-notebook = 笔记本
workspace-workflow = 工作流
workspace-environments = 环境
workspace-rewind = 回退
workspace-placeholder = 占位符

## -- 菜单项目 ---------------------------------------------------------------

workspace-menu-new-terminal = 新建终端
workspace-menu-new-code-tab = 新建代码标签页
workspace-menu-new-notebook = 新建笔记本
workspace-menu-new-workflow = 新建工作流
workspace-menu-open-settings = 打开设置
workspace-menu-close-tab = 关闭标签页
workspace-menu-close-window = 关闭窗口

## -- 对话框标题与正文 -----------------------------------------------------

workspace-close-session-title = 关闭会话
workspace-close-session-body = 确定要关闭此会话吗？
workspace-delete-conversation-title = 删除对话
workspace-delete-conversation-body = 此操作无法撤销。
workspace-rewind-confirmation-title = 回退
workspace-rewind-confirmation-body = 确定要回退终端吗？

## -- 搜索 -------------------------------------------------------------------

workspace-search-placeholder = 搜索…
workspace-global-search-label = 全局搜索
workspace-file-search-placeholder = 搜索文件…

## -- 其他 ---------------------------------------------------------------------

workspace-home-label = 首页
workspace-welcome-web = 欢迎使用 Warp 网页版
workspace-edit-toolbar = 编辑工具栏
workspace-recent-label = 最近
workspace-pinned-label = 已固定
workspace-empty-state-title = 无结果
workspace-empty-state-description = 请尝试其他搜索词或调整筛选条件。
workspace-project-explorer = 项目浏览器
workspace-global-search = 全局搜索
workspace-warp-drive-label = Warp Drive
workspace-agent-conversations = 智能体对话
workspace-close-panel = 关闭面板
workspace-crash-recovery-message = 我们检测到应用启动时发生了崩溃，并已调整您的配置以提高安全性。
workspace-default-user-display-name = 用户

## -- 额外菜单项 ---------------------------------------------------------------

workspace-rearrange-toolbar = 重新排列工具栏项目
workspace-update-warp = 更新 Warp
workspace-app-outdated = 您的应用已过时。请更新以获取最新功能。
workspace-features-may-not-work = 某些 Warp 功能在旧版本上可能无法使用。请更新。
workspace-tab-config-chip = 在此访问您的标签页配置。
workspace-login-expired = 您的登录已过期。
workspace-sign-in = 登录
workspace-sign-in-again = 请重新登录以恢复对云端功能的访问。
workspace-update-now = 立即更新
workspace-unable-to-update = 新版本已可用，但 Warp 无法执行更新。
workspace-unable-to-launch = Warp 无法启动新安装的版本。
workspace-local-docker-sandbox = 本地 Docker 沙箱
workspace-reopen-closed-session = 重新打开已关闭的会话
workspace-last-run-command = 上次运行的命令 { $command }
workspace-last-ai-interaction = 上次 AI 交互：{ $prompt }
workspace-currently-running = 正在运行 { $command }
workspace-currently-running-ai = 正在运行 AI 交互：{ $prompt }
workspace-current-version-is = 当前版本为 { $version }
workspace-install-update = 安装更新（{ $version }）
workspace-updating-to = 正在更新到（{ $version }）
workspace-update-warp-manually = 手动更新 Warp
workspace-update-and-relaunch = 更新并重新启动 Warp
workspace-whats-new = 新功能
workspace-feedback = 反馈
workspace-view-warp-logs = 查看 Warp 日志
workspace-slack = Slack
workspace-upgrade = 升级
workspace-invite-friend = 邀请好友
workspace-sign-up = 注册
workspace-search-repos = 搜索仓库
workspace-search-tabs = 搜索标签页…
workspace-toast-warp-updated = Warp 已更新！

## -- 工作区视图字符串 -------------------------------------------------------------

workspace-new-worktree-config = 新建工作树配置
workspace-new-tab-config = 新建标签页配置
workspace-new-worktree-repo = 新建工作树：{ $repo_display_name }
workspace-new-worktree-repo-branch = 新建工作树：{ $repo_display_name }，{ $base_branch }
workspace-new-worktree-repo-name = 新建工作树：{ $repo_display_name }，{ $name }
workspace-new-tab = 新建标签页
workspace-tab-configs = 标签页配置
workspace-offline-tooltip = 部分功能可能无法离线使用
workspace-open-repository = 打开仓库
workspace-open-repository-tooltip = 导航到仓库并初始化以进行编码
workspace-maximize = 最大化
workspace-minimize = 最小化
workspace-code-review = 代码审查
workspace-toggle-maximize = 切换代码审查面板最大化

## -- 对话列表视图字符串 -----------------------------------------------------------

workspace-view-all = 查看全部
workspace-section-active = 活跃
workspace-section-past = 历史
workspace-no-conversations-yet = 暂无对话
workspace-conversations-subtitle = 您与本地和云智能体的活跃和历史对话将显示在这里。
workspace-no-matching-conversations = 无匹配的对话
workspace-share-conversation = 共享对话
workspace-fork-in-new-pane = 在新窗格中分叉
workspace-fork-in-new-tab = 在新标签页中分叉
workspace-cannot-delete-conversation-tooltip = 此对话无法删除
workspace-conversations-cannot-delete = 进行中的对话无法删除。
workspace-conversation = 对话
workspace-unknown = 未知
workspace-show-less = 收起

## -- OpenWarp 启动模态框字符串 ---------------------------------------------------

workspace-openwarp-badge = 新功能
workspace-openwarp-title = Warp 现已开源
workspace-openwarp-description = 您，我们的社区，可以使用智能体优先的工作流参与构建 Warp。
workspace-openwarp-contribute-title = 贡献
workspace-openwarp-contribute-desc = Warp 的客户端代码现已开源。使用 /feedback 技能提交 issue 开始，并在此处查看贡献指南
workspace-openwarp-contribute-link = 此处
workspace-openwarp-automated-title = 开放自动化开发
workspace-openwarp-automated-desc = Warp 仓库由智能体优先的工作流管理，由
workspace-openwarp-automated-link = Oz
workspace-openwarp-auto-weights-title = 引入 'auto (open-weights)'
workspace-openwarp-auto-weights-desc = 我们添加了一个新的自动模型，可为任务选择最佳开放权重模型，如 Kimi 或 MiniMax。
workspace-openwarp-visit-repo = 访问仓库

## -- HOA 引导字符串 --------------------------------------------------------------

workspace-onboarding-see-whats-new = 查看新功能
workspace-onboarding-next = 下一步
workspace-onboarding-dismiss = 关闭
workspace-onboarding-finish = 完成
workspace-onboarding-vertical-tabs-title = 垂直标签页介绍 — 新的默认设置
workspace-onboarding-vertical-tabs-desc = 垂直标签页按标签页分组显示所有打开的智能体和终端窗格。自定义您要查看的信息以支持您的工作流。
workspace-onboarding-switch-horizontal = 切换回水平标签页
workspace-onboarding-inbox-title = 认识您的新智能体收件箱
workspace-onboarding-inbox-desc = Warp 将任何 CLI 编码智能体的通知通过管道传送到统一通知中心，适用于所有编码智能体和线束。
workspace-onboarding-inbox-learn-more = 了解更多

## -- WASM 视图字符串 --------------------------------------------------------------

workspace-open-in-warp = 在 Warp 中打开
workspace-open-desktop-question = 在 Warp 桌面版中打开？
workspace-future-links-desktop = 未来的链接将自动在桌面版中打开。
workspace-download-desktop-question = 下载 Warp 桌面版？
workspace-intelligent-terminal-promo = Warp 是内置 AI 和团队知识的智能终端。
workspace-always-open-web = 始终在网页上打开{ $object_kind }？
workspace-change-in-settings = 您可以随时在设置中更改此选项。
workspace-warp-drive-objects = Warp Drive 对象
workspace-shared-sessions = 共享会话
workspace-warp-links = Warp 链接
workspace-view-all-cloud-runs = 查看所有云运行

## -- 右侧面板字符串 ----------------------------------------------------------------

workspace-no-repo-selected = 未选择代码审查仓库
workspace-session-cwd-unavailable = 会话工作目录不可用或非本地
workspace-session-outside-repo = 会话工作目录不在所选仓库中
workspace-ai-disabled-review = Warp 审查目标已禁用 AI
workspace-terminal-executing = 终端当前正在执行命令
workspace-input-box-not-visible = 终端输入框不可见

## -- 标签页上下文菜单 ----------------------------------------------------------------

workspace-menu-stop-sharing = 停止共享
workspace-menu-share-session = 共享会话
workspace-menu-stop-sharing-all = 停止全部共享
workspace-menu-copy-link = 复制链接
workspace-menu-copy-tab-title = 复制标签页标题
workspace-menu-copy-pane-title = 复制窗格标题
workspace-menu-copy-branch = 复制分支
workspace-menu-copy-working-directory = 复制工作目录
workspace-menu-copy-pull-request-link = 复制拉取请求链接
workspace-menu-rename-tab = 重命名标签页
workspace-menu-reset-tab-name = 重置标签页名称
workspace-menu-move-tab-down = 向下移动标签页
workspace-menu-move-tab-right = 向右移动标签页
workspace-menu-move-tab-up = 向上移动标签页
workspace-menu-move-tab-left = 向左移动标签页
workspace-menu-close-other-tabs = 关闭其他标签页
workspace-menu-close-tabs-below = 关闭下方标签页
workspace-menu-close-tabs-right = 关闭右侧标签页
workspace-menu-save-new-config = 保存为新配置
workspace-menu-default-no-color = 默认（无颜色）
workspace-menu-cloud-agent-run = 云智能体运行

workspace-no-tabs-open = 没有打开的标签页

## -- Codex 模态框字符串 -----------------------------------------------------

workspace-use-latest-codex-model = 使用最新 Codex 模型
workspace-new = 新功能
workspace-learn-more = 了解更多
workspace-close = 关闭

## -- 退出/关闭警告字符串 ---------------------------------------------

workspace-quit-save-button = 保存
workspace-quit-dont-save-button = 不保存
workspace-quit-show-processes = 显示运行中的进程
workspace-quit-yes-close = 是的，关闭
workspace-quit-yes-quit = 是的，退出
workspace-quit-close-pane = 关闭窗格？
workspace-quit-close-tab = 关闭标签页？
workspace-quit-close-tabs = 关闭标签页？
workspace-quit-close-window = 关闭窗口？
workspace-quit-warp = 退出 Warp？
workspace-quit-save-changes = 保存更改？
workspace-quit-running-processes =
    此{ $target }中有 { $count ->
        [1] 1 个正在运行的进程
       *[other] { $count } 个正在运行的进程
    }。
workspace-quit-running-processes-windows =
    { $window_count } 个窗口中有 { $count ->
        [1] 1 个正在运行的进程
       *[other] { $count } 个正在运行的进程
    }。
workspace-quit-running-processes-tabs =
    { $tab_count } 个标签页中有 { $count ->
        [1] 1 个正在运行的进程
       *[other] { $count } 个正在运行的进程
    }。
workspace-quit-shared-session =
    此{ $target }中有 { $count ->
        [1] 1 个共享会话
       *[other] { $count } 个共享会话
    }。
workspace-quit-unsaved-changes = 此{ $target }中有未保存的文件更改。
workspace-quit-unsaved-editor-changes =
    是否要保存对 { $file_name } 所做的更改？如果不保存，更改将被丢弃。
workspace-quit-unsaved-editor-unnamed =
    是否要保存对此文件所做的更改？如果不保存，更改将被丢弃。

## -- Get started view strings ---------------------------------------------------

workspace-welcome-to-warp = 欢迎使用 Warp
workspace-agentic-dev-env = 智能开发环境

## -- 登录门控功能字符串 --

workspace-importing-to-team-drive = 正在导入到团队 Drive
workspace-creating-team-notebook = 正在创建团队笔记本
workspace-creating-team-workflow = 正在创建团队工作流
workspace-creating-team-folder = 正在创建团队文件夹
workspace-creating-team-env-var-collection = 正在创建团队环境变量集合
workspace-creating-team-prompt = 正在创建团队提示词
workspace-sharing-session = 正在分享会话
workspace-close-session-question = 关闭会话？
workspace-close-session-sharing-warning = 您即将关闭一个正在共享的会话。关闭后，所有人的共享将结束。
workspace-delete-conversation = 删除对话？
workspace-delete-conversation-named = 删除「{ $title }」？
workspace-delete-conversation-warning = 此对话将被永久删除。此操作无法撤销。

## -- 工具栏字符串 ---------------------------------------------------------------

workspace-toolbar-tabs-panel = 标签页面板
workspace-toolbar-tools-panel = 工具面板
workspace-toolbar-agent-management = 智能体管理
workspace-toolbar-code-review = 代码审查
workspace-toolbar-notifications = 通知
workspace-toolbar-available-items = 可用项目

## -- 网络日志字符串 -------------------------------------------------------------

workspace-network-log-header = 网络日志
workspace-network-log-refresh-tooltip = 刷新

## -- 欢迎横幅字符串 -------------------------------------------------------------

workspace-welcome-banner-title = 引入通用智能体支持：使用 Warp 提升任何编码智能体
workspace-banner-vertical-tabs = 垂直标签页
workspace-banner-vertical-tabs-desc = 丰富的标签页标题和元数据，如 Git 分支、工作树和 PR。完全可自定义。
workspace-banner-tab-configs = 标签页配置
workspace-banner-tab-configs-desc = 标签页级别的架构，一键设置目录、启动命令、主题和工作树
workspace-banner-agent-inbox = 智能体收件箱
workspace-banner-agent-inbox-desc = 任何智能体需要您关注时的通知，也可在中央收件箱中访问
workspace-banner-native-review = 原生代码审查
workspace-banner-native-review-desc = 从 Warp 的代码审查直接发送行内评论到 Claude Code、Codex 或 OpenCode

## -- 标签页配置步骤字符串 -------------------------------------------------------

workspace-tab-config-step-title = 创建你的第一个标签页配置
workspace-tab-config-step-desc = 为你的标签页设置可复用的起点。选择一个仓库，选择会话类型，并可选地附加一个工作树。每当你想用此设置打开新标签页时即可使用。

## -- Keybinding description strings ------------------------------------------------

workspace-dump-debug-info = 转储调试信息
workspace-crash-app-macos = 崩溃应用（用于测试 sentry-cocoa）
workspace-crash-app-other = 崩溃应用（用于测试 sentry-native）
workspace-debug-log-review-comment-status = [调试] 记录活跃标签页的审查评论发送状态
workspace-trigger-panic = 触发 panic（用于测试 sentry-rust）
workspace-open-view-tree-debugger = 打开视图树调试器
workspace-debug-view-ftux = [调试] 查看首次体验
workspace-debug-open-build-plan-migration-modal = [调试] 打开构建计划迁移模态框
workspace-debug-reset-build-plan-migration-modal-state = [调试] 重置构建计划迁移模态框状态
workspace-debug-un-dismiss-aws-login-banner = [调试] 取消关闭 AWS 登录横幅
workspace-debug-open-oz-launch-modal = [调试] 打开 Oz 启动模态框
workspace-debug-reset-oz-launch-modal-state = [调试] 重置 Oz 启动模态框状态
workspace-debug-open-openwarp-launch-modal = [调试] 打开 OpenWarp 启动模态框
workspace-debug-reset-openwarp-launch-modal-state = [调试] 重置 OpenWarp 启动模态框状态
workspace-debug-open-orchestration-launch-modal = [调试] 打开编排启动模态框
workspace-debug-reset-orchestration-launch-modal-state = [调试] 重置编排启动模态框状态
workspace-debug-install-opencode-warp-plugin = [调试] 安装 OpenCode Warp 插件
workspace-debug-use-local-opencode-warp-plugin = [调试] 使用本地 OpenCode Warp 插件（仅测试）
workspace-debug-open-session-config-modal = [调试] 打开会话配置模态框
workspace-debug-start-hoa-onboarding-flow = [调试] 启动 HOA 引导流程
workspace-sample-process = 示例进程
workspace-dump-heap-profile = 转储堆分析（只能执行一次）
workspace-switch-to-next-tab = 切换到下一个标签页
workspace-switch-to-prev-tab = 切换到上一个标签页
workspace-create-new-window = 新建窗口
workspace-new-file = 新建文件
workspace-zoom-in = 放大
workspace-zoom-out = 缩小
workspace-reset-zoom = 重置缩放
workspace-increase-zoom-level = 增加缩放级别
workspace-decrease-zoom-level = 减小缩放级别
workspace-reset-zoom-level-default = 重置缩放级别为默认值
workspace-increase-font-size = 增大字号
workspace-decrease-font-size = 减小字号
workspace-reset-font-size-default = 重置字号为默认值
workspace-toggle-project-explorer = 切换项目浏览器
workspace-open-theme-picker = 打开主题选择器
workspace-open-tab-configs-menu = 打开标签页配置菜单
workspace-switch-to-1st-tab = 切换到第 1 个标签页
workspace-switch-to-2nd-tab = 切换到第 2 个标签页
workspace-switch-to-3rd-tab = 切换到第 3 个标签页
workspace-switch-to-4th-tab = 切换到第 4 个标签页
workspace-switch-to-5th-tab = 切换到第 5 个标签页
workspace-switch-to-6th-tab = 切换到第 6 个标签页
workspace-switch-to-7th-tab = 切换到第 7 个标签页
workspace-switch-to-8th-tab = 切换到第 8 个标签页
workspace-switch-to-last-tab = 切换到最后一个标签页
workspace-activate-prev-tab = 激活上一个标签页
workspace-activate-next-tab = 激活下一个标签页
workspace-activate-prev-pane = 激活上一个窗格
workspace-activate-next-pane = 激活下一个窗格
workspace-toggle-mouse-reporting = 切换鼠标报告
workspace-create-team-notebook = 创建新的团队笔记本
workspace-create-personal-notebook = 创建新的个人笔记本
workspace-create-team-workflow = 创建新的团队工作流
workspace-create-personal-workflow = 创建新的个人工作流
workspace-create-team-folder = 创建新的团队文件夹
workspace-create-personal-folder = 创建新的个人文件夹
workspace-create-new-tab = 新建标签页
workspace-new-terminal-tab = 新建终端标签页
workspace-new-agent-tab = 新建智能体标签页
workspace-new-cloud-agent-tab = 新建云智能体标签页
workspace-open-left-panel = 打开左侧面板
workspace-toggle-code-review = 切换代码审查
workspace-toggle-vertical-tabs-panel = 切换垂直标签页面板
workspace-left-panel-agent-conversations = 左侧面板：智能体对话
workspace-left-panel-project-explorer = 左侧面板：项目浏览器
workspace-left-panel-global-search = 左侧面板：全局搜索
workspace-left-panel-warp-drive = 左侧面板：Warp Drive
workspace-open-global-search = 打开全局搜索
workspace-toggle-warp-drive = 切换 Warp Drive
workspace-toggle-agent-conversation-list-view = 切换智能体对话列表视图
workspace-close-focused-panel = 关闭聚焦面板
workspace-toggle-command-palette = 切换命令面板
workspace-move-tab-left = 向左移动标签页
workspace-move-tab-right = 向右移动标签页
workspace-toggle-keyboard-shortcuts = 切换键盘快捷键
workspace-open-keybindings-editor = 打开键绑定编辑器
workspace-toggle-sticky-command-header = 切换粘性命令头
workspace-a11y-concise = [无障碍] 设置简洁辅助公告
workspace-a11y-verbose = [无障碍] 设置详细辅助公告
workspace-rename-current-tab = 重命名当前标签页
workspace-rename-current-pane = 重命名当前窗格
workspace-close-window = 关闭窗口
workspace-close-current-tab = 关闭当前标签页
workspace-close-other-tabs = 关闭其他标签页
workspace-close-tabs-to-right = 关闭右侧标签页
workspace-turn-notifications-on = 开启通知
workspace-turn-notifications-off = 关闭通知
workspace-toggle-navigation-palette = 切换导航面板
workspace-launch-configuration-palette = 启动配置面板
workspace-toggle-files-palette = 切换文件面板
workspace-save-new-launch-config = 保存新启动配置
workspace-search-warp-drive = 搜索 Warp Drive
workspace-install-update-relaunch = 安装更新并重新启动
workspace-check-for-updates = 检查更新
workspace-log-out = 注销
workspace-toggle-resource-center = 切换资源中心
workspace-export-all-warp-drive = 导出所有 Warp Drive 对象
workspace-install-oz-cli = 安装 Oz CLI 命令
workspace-uninstall-oz-cli = 卸载 Oz CLI 命令
workspace-view-latest-changelog = 查看最新更新日志
workspace-new-agent-pane = { $label }
workspace-toggle-warp-ai = 切换 Warp AI
workspace-switch-focus-left = 切换焦点到左面板
workspace-switch-focus-right = 切换焦点到右面板
workspace-import-personal-drive = 导入到个人 Drive
workspace-import-team-drive = 导入到团队 Drive
workspace-copy-access-token = 复制访问令牌到剪贴板
workspace-open-ai-rules = 打开 AI 规则
workspace-open-mcp-servers = 打开 MCP 服务器
workspace-jump-to-latest-agent-task = 跳转到最新智能体任务
workspace-toggle-notification-mailbox = 切换通知邮箱
workspace-toggle-agent-management-view = 切换智能体管理视图
workspace-open-settings = 打开设置
workspace-open-settings-account = 打开设置：账户
workspace-open-settings-appearance = 打开设置：外观
workspace-open-settings-shared-blocks = 打开设置：共享块
workspace-open-settings-keyboard-shortcuts = 打开设置：键盘快捷键
workspace-open-settings-about = 打开设置：关于
workspace-open-settings-teams = 打开设置：团队
workspace-open-settings-privacy = 打开设置：隐私
workspace-open-settings-warpify = 打开设置：Warpify
workspace-open-settings-ai = 打开设置：AI
workspace-open-settings-billing-usage = 打开设置：账单和用量
workspace-open-settings-code = 打开设置：代码
workspace-open-settings-referrals = 打开设置：推荐
workspace-open-settings-environments = 打开设置：环境
workspace-open-settings-mcp-servers = 打开设置：MCP 服务器
workspace-open-settings-file = 打开设置文件
workspace-create-team-env-vars = 创建新的团队环境变量
workspace-create-personal-env-vars = 创建新的个人环境变量
workspace-create-personal-prompt = 创建新的个人提示
workspace-create-team-prompt = 创建新的团队提示
workspace-invite-people = 邀请好友...
workspace-join-slack = 加入我们的 Slack 社区（打开外部链接）
workspace-view-user-docs = 查看用户文档（打开外部链接）
workspace-send-feedback = 发送反馈（打开外部链接）
workspace-view-privacy-policy = 查看隐私政策（打开外部链接）
workspace-resize-pane-move-divider-left = 调整窗格大小 > 向左移动分隔线
workspace-resize-pane-move-divider-right = 调整窗格大小 > 向右移动分隔线
workspace-resize-pane-move-divider-up = 调整窗格大小 > 向上移动分隔线
workspace-resize-pane-move-divider-down = 调整窗格大小 > 向下移动分隔线
workspace-terminal-session = 终端会话
workspace-share-pane = 共享窗格
workspace-add-repository = 添加仓库

## -- DismissibleToast 及用户可见消息字符串（来自 view.rs） --------------------

workspace-failed-to-prepare-handoff = 准备交接失败。请重试。
workspace-starting-cloud-environment = 正在为此会话启动云环境...
workspace-resource-not-found-or-access-denied = 资源未找到或访问被拒绝
workspace-command-still-running = 此会话中仍有命令在运行。
workspace-cannot-open-new-terminal-session = 无法打开新的终端会话
workspace-no-terminal-pane-open = 没有打开的终端面板。请打开一个新面板以附加为上下文。
workspace-plan-already-in-context = 此计划已在上下文中。
workspace-plan-synced-to-warp-drive = 计划已同步到您的 Warp Drive
workspace-workflow-no-longer-available = 此工作流已不可用。
workspace-out-of-ai-credits = AI 积分不足
workspace-upgrade-for-more-credits = 升级以获取更多积分
workspace-check-out-latest-version = 检出最新版本并重试。
workspace-view-changelog = 查看更新日志
workspace-conversation-forking-failed = 对话分支失败。
workspace-failed-to-load-conversation = 加载对话失败
workspace-failed-to-load-conversation-data = 加载对话数据失败
workspace-failed-to-load-conversation-for-forking = 加载用于分支的对话失败
workspace-failed-to-load-tab-config = 加载标签页配置失败：{ $friendly_path }（{ $error }）
workspace-failed-to-remove-tab-config = 移除标签页配置失败：{ $error }
workspace-failed-to-install-cli = 安装 CLI 失败：{ $error }
workspace-failed-to-uninstall-cli = 卸载 CLI 失败：{ $error }
workspace-failed-to-create-log-bundle = 创建日志包失败：{ $error }
workspace-successfully-installed-cli = 已成功安装 { $command_name } CLI
workspace-successfully-uninstalled-cli = 已成功卸载 CLI
workspace-forked-conversation = 已分支「{ $title }」
workspace-failed-to-delete-conversation-exit-agent-view = 删除对话失败。请退出智能体视图后重试。
workspace-conversation-deleted = 对话已删除
workspace-disabled-all-synced-inputs = 已禁用所有同步输入。
workspace-disabled = 已禁用
workspace-enabled = 已启用
workspace-you-mouse-reporting = 您{ $verb }了鼠标报告。
workspace-you-synced-inputs-all-tabs = 您{ $verb }了所有标签页的同步输入。
workspace-you-synced-inputs-this-tab = 您{ $verb }了此标签页的同步输入。
workspace-press-to-undo = 按 { $key } 撤销。
workspace-a11y-verbosity-announcements-set = 已设置{ $verbosity }辅助公告
workspace-local-network-access-hint = 已安装 Warp 但仍重定向到下载页面？\n请在浏览器中为 { $server_root_url } 启用本地网络访问。
workspace-notifications-permission-denied = 通知权限被拒绝。您可能需要在浏览器设置中启用。
workspace-troubleshoot-notifications = 排查通知问题
workspace-staging-api-call-failed = 预发布环境 API 调用失败。请稍后重试。
workspace-feedback-placeholder = 向我们发送反馈！
workspace-prompt-placeholder = 向 Warp AI 提问...
workspace-codex-initial-prompt = 在 Warp 中使用 Codex
workspace-linear-issue = 创建 Linear 议题
workspace-command-from-warp-ai = 来自 Warp AI 的命令
workspace-command-from-oz = 来自 Oz 的命令
workspace-ask-warp-ai-description = 向 Warp AI 询问命令或建议
workspace-fix-with-oz = 使用 Oz 修复
workspace-fix-settings-query = 修复：{ $error_description }
workspace-rename-pane = 重命名面板
workspace-rename-active-pane = 重命名活动面板
workspace-reset-pane-name = 重置面板名称
workspace-reset-active-pane-name = 重置活动面板名称
workspace-open-config = 打开 { $name }
workspace-app-out-of-date-needs-update = 应用已过时，需要更新
workspace-restart-app-and-update-now = 立即重启应用并更新
workspace-more-info = 更多信息
workspace-introducing-oz = Oz 介绍
workspace-upgrade-ai-usage = 升级以获取更多 AI 用量
workspace-search-sessions-agents-files = 搜索会话、智能体、文件...
workspace-warp-essentials = Warp 基础功能
workspace-code-review-panel = 代码审查
workspace-sampling-process-3s = 正在采样进程 3 秒...
workspace-process-sample-saved = 进程样本已保存到 { $output_path }
workspace-failed-to-sample-process = 进程采样失败（请查看日志）
workspace-failed-to-determine-home-directory = 无法确定主目录
workspace-worktree-config-name = { $repo_display_name }
workspace-failed-to-parse-opencode-json = 解析 opencode.json 失败：{ $error }
workspace-failed-to-read-opencode-json = 读取 opencode.json 失败：{ $error }
workspace-opencode-json-unexpected-structure = opencode.json 结构异常（plugin 不是数组）
workspace-process-sample-default-filename = sample.txt
workspace-run-agent-mode-workflow = 运行智能体模式工作流
workspace-remote-control-link-copied = 远程控制链接已复制。
workspace-add-new-repo =  + 添加新仓库
workspace-search-recent-repos-and-conversations = 搜索最近的仓库和对话

## -- 同步输入和键绑定字符串 ---

workspace-stop-synchronizing-any-panes = 停止同步所有窗格
workspace-toggle-synchronizing-all-panes-in-current-tab = 切换当前标签页中所有窗格的同步
workspace-toggle-synchronizing-all-panes-in-all-tabs = 切换所有标签页中所有窗格的同步
workspace-toggle-maximize-code-review-panel = 切换最大化代码审查面板

## -- 回溯确认对话框字符串 ---

workspace-rewind-no-affect-files = 回溯不会影响手动编辑或通过 Shell 命令编辑的文件。
workspace-rewind-ai-confirmation-body = 确定要回溯吗？这将把你的代码和对话恢复到此点之前的状态，并取消 Agent 当前正在运行的任何命令。原始对话的副本将保存在你的对话历史中。

## -- 全局搜索字符串 ---

workspace-search-in-files = 在文件中搜索
workspace-toggle-case-sensitivity = 切换区分大小写
workspace-toggle-regex = 切换正则表达式
workspace-global-search-capped-results = 结果集仅包含所有匹配项的子集。请缩小搜索范围以精确查找。
workspace-global-search-title = 全局搜索
workspace-search-in-files-desc = 在当前目录中的文件中搜索。
workspace-global-search-unavailable = 全局搜索不可用
workspace-global-search-unavailable-desc = 全局搜索需要访问本地工作区。请打开新会话或导航到活动会话以查看。
workspace-global-search-remote-desc = 全局搜索需要访问本地工作区，远程会话不支持此功能
workspace-global-search-unsupported-desc = 全局搜索目前在 Git Bash 或 WSL 中不可用。
workspace-global-search-failed = 全局搜索失败。

## -- Oz 启动模态框字符串 ---

workspace-oz-subtext = 无限可扩展的编码 Agent——在本地会话或云端运行。
workspace-cloud-agents = 云端 Agent
workspace-agent-automations = Agent 自动化
workspace-agent-automations-short = Agent 自动化
workspace-agent-management = Agent 管理
workspace-agent-management-short = Agent 管理
workspace-a-little-gift = 一点心意
workspace-launch-credits = 启动额度
workspace-break-out-of-your-laptop = 使用云端 Agent 超越你的笔记本
workspace-orchestrate-agents = 编排 Agent，将技能转化为自动化
workspace-track-local-and-cloud = 无缝追踪本地和云端 Agent
workspace-1000-free-credits = 升级到 Warp Build 后获得 1,000 个免费云端 Agent 额度
workspace-oz-cloud-agents-content = 零配置启动云端 Agent。Oz 管理计算资源，让你专注于重要的事。
workspace-oz-agent-automations-content = 通过将技能连接到触发器，几秒钟内创建 Agent 自动化。Oz 会在你需要时运行它们。
workspace-oz-agent-management-content = 在一个地方追踪所有本地和云端环境中的 Agent。
workspace-oz-launch-credits-content = 感谢早期用户，升级到 Warp Build 后你将获得 1,000 个免费云端 Agent 启动额度。
workspace-next = 下一步
workspace-try-it-out = 试一试
workspace-skip-for-now = 暂时跳过
workspace-sync-conversations-to-cloud = 将对话同步到云端
workspace-sync-conversations-desc = 存储在云端的 Agent 对话可以一键分享给任何人，并支持跨设备和登出后继续对话。

## -- 编排启动模态框字符串 ---

workspace-run-any-agent-harness = 在云端运行任何 Agent Harness
workspace-run-any-agent-harness-desc = 使用 Oz 在云端启动 Claude Code 或 Codex Agent；Oz 将帮你追踪和引导这些 Agent。
workspace-multi-agent-orchestration = 多 Agent 编排
workspace-multi-agent-orchestration-desc = Warp Agents 现在将编排子 Agent 集群，允许你并行化任务。
workspace-agent-memory = Agent 记忆
workspace-agent-memory-desc = Agent 现在可以存储和访问长期记忆，实现自我改进。
workspace-research-preview = 研究预览
workspace-orchestrate-any-agent = 在任何地方编排任何 Agent
workspace-orchestration-improvements = 我们对 Warp 的云端 Agent 编排平台 Oz 进行了重大改进。

## -- 已迁移 UI 字符串的主键 --

workspace-read-only = 只读
workspace-sign-in-to-edit = 。登录以编辑

workspace-command-search = 命令搜索
workspace-im-looking-for = 我正在寻找...
workspace-example-queries = 示例查询
workspace-new-worktree = 新工作树
workspace-autogenerate-branch-name = 自动生成工作树分支名
workspace-select-directory = 选择目录
workspace-select-git-repo = 选择一个 Git 仓库以启用工作树支持
workspace-auto-create-worktree = 打开新标签页时自动创建工作树
workspace-must-select-worktree = 你必须选择自动创建工作树才能选择此项
workspace-auto-generate-branch = 自动生成工作树分支名

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID -------

workspace-quit-quit-save-button = { workspace-quit-save-button }
workspace-quit-quit-dont-save-button = { workspace-quit-dont-save-button }
workspace-quit-quit-show-processes = { workspace-quit-show-processes }
workspace-quit-quit-yes-close = { workspace-quit-yes-close }
workspace-quit-quit-yes-quit = { workspace-quit-yes-quit }
workspace-quit-quit-close-pane = { workspace-quit-close-pane }
workspace-quit-quit-close-tab = { workspace-quit-close-tab }
workspace-quit-quit-close-tabs = { workspace-quit-close-tabs }
workspace-quit-quit-close-window = { workspace-quit-close-window }
workspace-quit-quit-warp = { workspace-quit-warp }
workspace-quit-quit-save-changes = { workspace-quit-save-changes }
workspace-quit-quit-running-processes = { workspace-quit-running-processes }
workspace-quit-quit-running-processes-windows = { workspace-quit-running-processes-windows }
workspace-quit-quit-running-processes-tabs = { workspace-quit-running-processes-tabs }
workspace-quit-quit-shared-session = { workspace-quit-shared-session }
workspace-quit-quit-unsaved-changes = { workspace-quit-unsaved-changes }
workspace-quit-quit-unsaved-editor-changes = { workspace-quit-unsaved-editor-changes }
workspace-quit-quit-unsaved-editor-unnamed = { workspace-quit-unsaved-editor-unnamed }

workspace-failed-config-dir = 创建配置目录失败：{ $error }

## -- DismissibleToast 及用户可见消息的双前缀别名（来自 view.rs） ----

## -- 新工作区字符串的双前缀别名 ---



## -- Double-prefix aliases for keybinding descriptions ---


## -- 无标题标签 ---

workspace-untitled-tab = 无标题标签页
workspace-untitled-pane = 无标题面板

## -- 全局搜索字符串 ---

workspace-global-search-no-results = 未找到结果。请检查您的 gitignore 文件。
workspace-global-search-single-result = 1 个结果，在 { $files } 个{ $file_word }中
workspace-global-search-multiple-results = { $count } 个结果，在 { $files } 个{ $file_word }中
workspace-global-search-file-singular = 文件
workspace-global-search-file-plural = 文件

## -- 构建计划迁移模态框字符串 ----------------------------------------------------------

workspace-auto-reload = 自动充值
workspace-saving-label = 保存中...
workspace-get-started = 开始使用
workspace-auto-reload-title = 使用自动充值，不错过任何时刻。
workspace-auto-reload-description = 当您的账户余额达到 100 积分时，自动充值将按您选择的费率自动购买积分。您的月度支出限额设置为旧计划的月费，可在「设置 > 账单和用量」中更新。
workspace-welcome-new-business-plan = 欢迎使用全新商业版计划
workspace-welcome-warp-build = 欢迎使用 Warp Build
workspace-intro-business-plan = 您的工作区已更新为新的 Warp 商业版计划，旧商业版计划已停用。
workspace-intro-build-plan = 您的工作区已更新为 Warp Build 计划，旧版 Pro、Turbo 和 Lightspeed 计划已停用。
workspace-pricing-header-business-plan = 新商业版计划主要是基于使用量的计划，起价为：
workspace-pricing-header-build-plan = Warp Build 主要是基于使用量的计划，起价为：
workspace-price-per-user-month = 每位用户每月 ${ $price }
workspace-price-per-user-month-annual = 年度计划每位用户每月 ${ $price }
workspace-features-header-business-plan = 新商业版计划包含：
workspace-features-header-build-plan = Build 包含：
workspace-base-credits-per-month = 每月 { $credits } 基础积分
workspace-access-reload-credits = 访问充值积分和批量折扣
workspace-bring-your-own-api-key = 自带 API 密钥
workspace-saml-based-sso = 基于 SAML 的 SSO
workspace-team-wide-zero-data-retention = 自动强制执行团队范围的零数据保留
workspace-and-more = 以及更多...
workspace-learn-more-pricing-page = 在我们的<a>定价页面</a>了解更多。
workspace-oops-team-data-not-found = 哎呀，出错了；无法找到您的团队数据。
workspace-failed-auto-reload = 无法启用自动充值。请尝试在「账单和用量」中更新您的设置。
workspace-reload-denomination = ${ $price } / { $credits } 积分

## -- 免费额度用尽模态框字符串 -----------------------------------------------------------

workspace-you-are-out-of-credits = 您的积分已用完
workspace-to-continue-using-ai-upgrade = 如需继续使用 AI，请升级您的计划。
workspace-build-plan-price-includes = Build 计划为 ${ $price }/月，包含免费版的一切功能外加：
workspace-build-plan-includes = Build 计划包含免费版的一切功能外加：
workspace-credits-per-month = 每月 { $credits } 积分
workspace-extended-credits-per-month = 扩展月度积分
workspace-access-frontier-models = 访问前沿的 OpenAI、Anthropic 和 Google 模型
workspace-access-reload-credits-link = 访问<a>充值积分</a>
workspace-extended-cloud-agents = 扩展云智能体访问
workspace-upgrade-plan = 升级计划

## -- 云智能体容量模态框字符串 -----------------------------------------------------------

workspace-concurrent-limit-reached = 已达到并发云智能体上限
workspace-concurrent-limit-explanation = 此云运行已排队，因为您的团队已达到最大并发云智能体数量。当另一个云运行完成时，它将自动启动。
workspace-you-are-out-of-ai-credits = 您的 AI 积分已用完
workspace-out-of-credits-explanation = 此云运行已停止，因为您的团队已用完当前计费周期的所有可用 AI 积分。
workspace-upgrade-more-concurrent-agents = 升级计划以获得更多并发云智能体。
workspace-upgrade-continue-cloud-agents = 升级计划以继续运行云智能体。
workspace-paid-plans-start-at = 付费计划起价为 ${ $price }/月，包含免费试用的一切功能外加：
workspace-paid-plans-include = 付费计划包含免费试用的一切功能外加：
workspace-business-plan-starts-at = 商业版计划起价为 ${ $price }/月，包含您当前计划的一切功能外加：
workspace-business-plan-include = 商业版计划包含您当前计划的一切功能外加：
workspace-ai-credits-per-month = 每月 { $credits } AI 积分
workspace-extended-ai-credits-per-month = 扩展月度 AI 积分
workspace-multiplier-concurrent-agents = { $multiplier } 并发云智能体数量
workspace-open-billing = 打开账单
workspace-view-options = 查看选项
workspace-no-tabs-match-search = 没有匹配搜索的标签页。
workspace-new-session = 新会话
workspace-view-as = 查看方式
workspace-tab-item = 标签页项
workspace-focused-session = 聚焦的会话
workspace-pane-title-as = 窗格标题方式
workspace-additional-metadata = 附加元数据
workspace-requires-github-cli = 需要安装并认证 GitHub CLI
workspace-diff-stats = 差异统计
workspace-show-details-on-hover = 悬停时显示详情
workspace-summary = 摘要
workspace-density = 密度
workspace-command-conversation = 命令 / 对话
workspace-working-directory = 工作目录
workspace-branch = 分支
workspace-show = 显示
workspace-pr-link = PR 链接
workspace-summary-more = + { $count } 更多
workspace-and-count-more = 还有 { $count } 个
workspace-other = 其他
workspace-unsaved = 未保存

workspace-use-codex-models-in-warp = 在 Warp 中使用 Codex 模型
workspace-codex-description-1 = Codex 是 OpenAI 最先进的面向实际工程的可智能体编码模型。
workspace-codex-description-2 = 在 Oz 中直接使用 Codex，利用应用内代码审查、智能体会话共享和文件编辑等功能。

## -- 模态框字符串的双前缀别名 ----------------------------------------------------------


## -- 新工作区字符串的双前缀别名 ---


## -- 计划层级名称 -----------------------------------------------------------

workspace-plan-free = 免费
workspace-plan-turbo = Turbo
workspace-plan-team = 团队
workspace-plan-pro = 专业
workspace-plan-early-adopter = 早期用户
workspace-plan-enterprise = 企业
workspace-plan-business = 商业
workspace-plan-lightspeed = Lightspeed
workspace-plan-build = Build
workspace-plan-max = Max

## -- 团队删除错误 -------------------------------------------------------------

workspace-team-delete-active-sub = 存在活跃订阅时无法删除团队。
workspace-team-delete-unused-credits = 存在未使用的附加额度时无法删除团队。
workspace-team-delete-members = 存在其他团队成员时无法删除团队。

## -- 移至云端字符串 --------------------------------------------------------

workspace-moved-to-cloud = { $title }（已移至云端）

## -- 移至云端字符串的双前缀别名 ---------------------------------------------

## -- 创建配置目录失败字符串的双前缀别名 ----------------------------------------


## -- 已迁移 UI 字符串的双前缀别名 --

## -- 自动交接 / Warp Control CLI 调试绑定 -----------------------------------

workspace-debug-open-auto-handoff-sleep-modal = [调试] 打开自动交接休眠模态框
workspace-debug-reset-auto-handoff-sleep-modal-state = [调试] 重置自动交接休眠模态框状态
workspace-debug-trigger-auto-handoff-to-cloud = [调试] 触发自动交接至云端
workspace-debug-open-free-ai-removal-modal = [调试] 打开免费 AI 移除模态框
workspace-debug-reset-free-ai-removal-modal-state = [调试] 重置免费 AI 移除模态框状态

## -- Warp Control CLI 绑定 -------------------------------------------------

workspace-install-warpctrl = 安装 Warp Control CLI 命令
workspace-uninstall-warpctrl = 卸载 Warp Control CLI 命令

## -- 工作区操作显示字符串 --------------------------------------------------------

workspace-open-palette = 打开面板
workspace-open-settings-features = 显示功能设置
workspace-show-diff-view = 显示差异视图
workspace-warp-drive-period = Warp Drive。

## -- 标签页分组快捷键描述 -------------------------------------------------------

workspace-create-new-tab-group = 新建标签页分组
workspace-create-tab-group-from-active-or-selected-tabs = 从当前或选中的标签页创建分组
workspace-remove-active-or-selected-tabs-from-group = 将当前或选中的标签页从分组中移除
workspace-pin-current-tab = 固定当前标签页
workspace-unpin-current-tab = 取消固定当前标签页
workspace-pin-current-tab-group = 固定当前标签页分组
workspace-unpin-current-tab-group = 取消固定当前标签页分组

## -- 窗格类型显示名称 -----------------------------------------------------------

workspace-pane-custom-router = 自定义路由编辑器
workspace-pane-get-started = 入门

## -- 自动移交提示 --
workspace-handed-session-off-to-cloud = 已将会话移交至云端
