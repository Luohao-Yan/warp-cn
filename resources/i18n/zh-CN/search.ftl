# =============================================================================
# search.ftl — 搜索、命令面板、斜杠命令字符串
# =============================================================================
# Message IDs: search-{id}
# Used in app/src/search/*.rs
# =============================================================================

## -- 数据源显示名称 -----------------------------------------------------------

search-source-history = 历史
search-source-workflows = 工作流
search-source-prompts = 提示词
search-source-notebooks = 笔记本
search-source-plans = 计划
search-source-ai-suggestions = AI 命令建议
search-source-actions = 操作
search-source-sessions = 会话
search-source-tabs = 标签页
search-source-conversations = 对话
search-source-launch-configs = 启动配置
search-source-warp-drive = Warp Drive
search-source-env-vars = 环境变量
search-source-prompt-history = 提示词历史
search-source-files = 文件
search-source-commands = 命令
search-source-blocks = 代码块
search-source-code = 代码
search-source-rules = 规则
search-source-repos = 仓库
search-source-diff-sets = 差异集
search-source-slash-commands = 斜杠命令
search-source-historical-convs = 历史对话
search-source-skills = 技能
search-source-base-models = 基础模型
search-source-terminal-models = 完整终端使用模型
search-source-cwd-convs = 当前目录对话
search-source-diffs = 差异
search-source-docs = 文档
search-source-tasks = 过去的任务
search-source-servers = 服务器和集成
search-source-terminal = 终端
search-source-web = 网页
search-source-recent-diff = 最近的差异
search-source-recent-block = 最近的块

## -- 数据源占位符 --------------------------------------------------------------

search-placeholder-history = 搜索历史
search-placeholder-workflows = 搜索工作流
search-placeholder-prompts = 搜索提示词
search-placeholder-notebooks = 搜索笔记本
search-placeholder-plans = 搜索计划
search-placeholder-example = 例如 替换文件中的字符串
search-placeholder-actions = 搜索操作
search-placeholder-sessions = 搜索会话
search-placeholder-tabs = 搜索标签页
search-placeholder-conversations = 搜索对话
search-placeholder-historical-convs = 搜索历史对话
search-placeholder-launch-configs = 搜索启动配置
search-placeholder-warp-drive = 搜索 Drive 中的对象
search-placeholder-env-vars = 搜索环境变量
search-placeholder-prompt-history = 搜索提示词历史
search-placeholder-files = 搜索文件
search-placeholder-commands = 搜索命令
search-placeholder-blocks = 搜索代码块
search-placeholder-code-symbols = 搜索代码符号
search-placeholder-rules = 搜索 AI 规则
search-placeholder-repos = 搜索代码仓库
search-placeholder-diff-sets = 搜索差异集
search-placeholder-slash-commands = 搜索静态斜杠命令
search-placeholder-skills = 搜索技能
search-placeholder-base-models = 搜索基础模型
search-placeholder-terminal-models = 搜索完整终端使用模型
search-placeholder-cwd-convs = 搜索当前目录中的对话

## -- 通用搜索 UI 字符串 --------------------------------------------------------

search-no-results = 未找到结果。
search-loading = 加载中...
search-indexing = 代码符号正在索引...
search-error-results = 查找结果时出错
search-upgrade = 升级
search-out-of-credits = 你的 AI 积分已用完。请联系团队管理员升级以获取更多积分。
search-not-visible = 对其他用户不可见

## -- 命令搜索 ------------------------------------------------------------------

search-command-placeholder = 搜索你的历史、工作流等
search-secret-placeholder = 搜索密钥
search-reference-placeholder = 搜索引用
search-ai-suggest = 向 Warp AI 询问命令建议
search-ai-translate = 使用 Warp AI 翻译为 shell 命令
search-ai-no-results = 未找到结果。请使用更具体的查询重试。
search-ai-error = 出了点问题。请重试。
search-ai-out-of-credits = 你的 AI 积分似乎已用完。请稍后重试。
search-ai-error-fallback = 出了点问题。请重试。
search-credits-prefix = 你的积分似乎已用完。
search-credits-suffix =  获取更多积分。

## -- 新会话选项 ----------------------------------------------------------------

search-new-tab = 新建标签页
search-new-window = 新建窗口
search-split-down = 向下拆分面板
search-split-right = 向右拆分面板
search-split-up = 向上拆分面板
search-split-left = 向左拆分面板
search-new-tab-shell = 新建标签页：{ $shell }
search-new-window-shell = 新建窗口：{ $shell }
search-split-pane-shell = 拆分面板 { $direction }：{ $shell }

## -- 导航搜索项 ----------------------------------------------------------------

search-status-running = 运行中...
search-status-completed-hour = 超过 1 小时前完成
search-status-completed-minute = { $mins ->
    [one] { $mins } 分钟前完成
   *[other] { $mins } 分钟前完成
}
search-status-no-timestamp = 未找到时间戳

## -- 零状态 --------------------------------------------------------------------

search-section-recent = 最近
search-section-suggested = 建议

## -- 时间描述 ------------------------------------------------------------------

search-just-now = 刚刚
search-minutes-ago = { $count ->
    [one] { $count } 分钟前
   *[other] { $count } 分钟前
}
search-hours-ago = { $count ->
    [one] { $count } 小时前
   *[other] { $count } 小时前
}
search-days-ago = { $count ->
    [one] { $count } 天前
   *[other] { $count } 天前
}

## -- 差异集描述 ----------------------------------------------------------------

search-diff-uncommitted = 未提交的更改
search-diff-vs-main = 相对于 main 分支的更改
search-diff-vs-branch = 相对于 { $branch } 的更改
search-diff-uncommitted-desc = 工作目录中所有未提交的更改
search-diff-vs-main-desc = 相对于 main 分支的所有更改
search-diff-vs-branch-desc = 相对于 { $branch } 的所有更改

## -- 斜杠命令描述 --------------------------------------------------------------

search-slash-agent = 开始新对话
search-slash-cloud-agent = 开始新的云智能体对话
search-slash-mcp = 通过 MCP 设置页面添加新的 MCP 服务器
search-slash-pr-comments = 拉取 GitHub PR 评审评论
search-slash-env = 通过引导设置创建 Oz 环境（Docker 镜像 + 仓库）
search-slash-docker = 创建新的 docker 沙盒终端会话
search-slash-create-project = 让 Oz 引导你创建新的编码项目
search-slash-skill = 在 Warp 内置编辑器中打开技能的 markdown 文件
search-slash-invoke-skill = 调用技能
search-slash-add-prompt = 添加新的智能体提示词
search-slash-add-rule = 为智能体添加新的全局规则
search-slash-edit = 在 Warp 代码编辑器中打开文件
search-slash-rename-tab = 重命名当前标签页
search-slash-color-tab = 设置当前标签页的颜色
search-slash-fork = 在新面板或新标签页中分叉当前对话
search-slash-handoff = 将此对话移交给云智能体
search-slash-review = 打开代码评审
search-slash-index = 索引此代码库
search-slash-agents-md = 索引此代码库并生成 AGENTS.md 文件
search-slash-rules = 打开项目规则文件（AGENTS.md）
search-slash-mcp-servers = 打开 MCP 服务器
search-slash-settings = 打开设置文件（TOML）
search-slash-changelog = 打开最新更新日志
search-slash-feedback = 发送反馈
search-slash-switch-repo = 切换到另一个已索引的仓库
search-slash-view-rules = 查看所有全局和项目规则
search-slash-new-conv = 开始新对话（/agent 的别名）
search-slash-base-model = 切换基础智能体模型
search-slash-host = 切换云智能体执行主机
search-slash-harness = 切换云智能体工具
search-slash-environment = 切换云智能体环境
search-slash-profile = 切换活动的执行配置
search-slash-plan = 提示智能体进行研究并为任务创建计划
search-slash-multi-agent = 将任务分解为子任务并使用多个智能体并行运行
search-slash-compact = 通过总结对话历史释放上下文
search-slash-compact-send = 压缩对话然后发送后续提示词
search-slash-queue = 在智能体完成响应后排入提示词发送
search-slash-fork-compact = 分叉当前对话并在分叉副本中压缩
search-slash-fork-from = 从特定查询分叉对话
search-slash-continue-local = 在本地继续此云对话
search-slash-billing = 打开账单和使用量设置
search-slash-remote-control = 为此会话启动远程控制
search-slash-credits = 切换积分使用详情
search-slash-history = 打开对话历史
search-slash-saved-prompts = 搜索已保存的提示词
search-slash-rewind = 回退到对话中的先前点
search-slash-export-clipboard = 以 markdown 格式将当前对话导出到剪贴板
search-slash-export-file = 将当前对话导出为 markdown 文件

## -- 欢迎面板 ------------------------------------------------------------------

search-add-repo = 添加仓库
search-add-repo-keystroke = 添加仓库 { $keystroke }
search-terminal-session = 终端会话
search-terminal-session-keystroke = 终端会话 { $keystroke }
search-welcome-placeholder = 编码、构建或搜索任何内容...
search-command-search-title = 命令搜索
search-looking-for = 我正在寻找...
search-example-queries = 示例查询
search-ask-warp-ai-suggestions = 向 Warp AI 询问命令建议
search-translate-with-warp-ai = 使用 Warp AI 翻译为 shell 命令
search-command-search-a11y-desc = 搜索您的历史记录、工作流等。使用上下箭头浏览搜索结果。按 Enter 接受选中的结果并将其插入终端输入。按 Escape 关闭。
search-dir-down = 下
search-dir-right = 右
search-dir-up = 上
search-dir-left = 左

## -- 无障碍标签 ----------------------------------------------------------------

search-untitled = 无标题
search-notebook-a11y-label = 笔记本：{ $title }
search-env-var-a11y-label = 环境变量：{ $title }
search-loading-suggestions = 正在加载 { $filter } 建议
search-selected = 已选择 { $label }。

## -- 额外搜索模块中的硬编码字符串 ---

search-block-no-output = 无输出
search-rule-label = 规则
search-code-search-failed = 代码搜索失败
search-file-directory-label = 目录：{ $path }
search-file-file-label = 文件：{ $path }
search-file-navigate-directory = 按 Enter 导航到此目录
search-file-open-file = 按 Enter 打开此文件
search-create-file-display = 创建 { $file_name }…
search-create-file-a11y-label = 创建文件：{ $file_name }
search-create-file-a11y-help = 按 Enter 在当前目录中创建 { $file_name }
## -- 对话分区标题 ---

search-section-active-pane = 当前面板对话
search-section-other-active = 其他活跃对话
search-section-past = 历史对话

## -- 对话操作字符串 ---

search-fork-current-conversation = 分叉当前对话
search-fork-conversation-tooltip = 分叉对话
search-new-conversation = 新建对话

## -- 导航状态字符串 ---

search-nav-completed = 已完成
search-nav-empty-session = 空会话

## -- 命令面板字符串 ---

search-palette-placeholder = 搜索命令
search-palette-no-results = 未找到结果

## -- 命令面板无障碍标签 ---

search-a11y-conversation-label = 对话：{ $title }
search-a11y-conversation-nav = 按 Enter 导航到对话"{ $title }"。
search-a11y-fork-conversation = 按 Enter 将当前对话分叉为新对话。
search-a11y-new-conversation = 按 Enter 创建新对话。
search-a11y-launch-config-selected = 已选择 { $name }。
search-a11y-launch-config-help = 按 Enter 使用此启动配置。
search-a11y-session-selected = 已选择 { $prompt }。{ $description }。
search-a11y-session-help = 按 Enter 导航到此会话。
search-a11y-new-session-selected = 已选择 { $description }。
search-a11y-new-session-help = 按 Enter 启动此会话。
search-a11y-repo-label = 仓库：{ $path }
search-a11y-section-label = 分区：{ $title }
search-a11y-tab-selected = 已选择标签页：{ $title }。
search-a11y-tab-help = 按 Enter 导航到标签页：{ $title }。
search-a11y-workflow-label = 工作流：{ $name }

## -- 命令面板提示消息 ---

search-toast-cannot-switch-conv = 智能体正在监控命令时无法切换对话。
search-toast-cannot-start-conv = 智能体正在监控命令时无法开始新对话。

## -- 命令搜索结果无障碍 ---

search-result-executed = 结果已执行
search-navigate-output = 按 Cmd-Up 导航到命令输出。
search-result-accepted = 结果已接受。
search-edit-command-hint = 您可以在此编辑命令，然后按 Enter 执行。
search-upgrade-label = 升级

## -- 命令搜索登录限制功能 ---

search-upgrade-ai-usage = 升级 AI 使用

## -- 额外搜索字符串的双前缀别名 ---


## -- AI 上下文菜单分类显示名称 ---

search-category-files = 文件和文件夹
search-category-commands = 命令
search-category-blocks = 代码块
search-category-workflows = 工作流
search-category-notebooks = 笔记本
search-category-plans = 计划
search-category-diffs = 差异
search-category-docs = 文档
search-category-tasks = 过去的任务
search-category-rules = 规则
search-category-servers = 服务器和集成
search-category-terminal = 终端
search-category-web = 网页
search-category-recent-diff = 最近的差异
search-category-recent-block = 最近的块
search-category-code = 代码
search-category-diff-sets = 差异集
search-category-conversations = 对话
search-category-skills = 技能

