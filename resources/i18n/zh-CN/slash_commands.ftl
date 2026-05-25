# =============================================================================
# slash_commands.ftl — 斜杠命令字符串
# =============================================================================
# Message IDs: slash-commands-{id}
# =============================================================================

## -- 对话命令 --------------------------------------------------------

slash-commands-start-new-conversation = 开始新对话
slash-commands-start-new-conversation-alias = 开始新对话（/agent 的别名）
slash-commands-start-new-cloud-agent-conversation = 开始新的云端 Agent 对话
slash-commands-fork-conversation = 在新窗格或新标签页中分叉当前对话
slash-commands-fork-from-query = 从特定查询分叉对话
slash-commands-fork-and-compact = 分叉当前对话并在分叉副本中压缩
slash-commands-continue-locally = 在本地继续此云端对话
slash-commands-handoff-to-cloud = 将此对话移交给云端 Agent
slash-commands-compact-free-context = 通过摘要对话历史释放上下文
slash-commands-compact-and-follow-up = 压缩对话然后发送后续提示
slash-commands-queue-prompt = 在 Agent 完成响应后排队发送提示
slash-commands-rewind-conversation = 回退到对话中的先前位置
slash-commands-open-conversation-history = 打开对话历史

## -- 项目/代码库命令 --------------------------------------------

slash-commands-index-codebase = 索引此代码库
slash-commands-index-and-generate-agents-md = 索引此代码库并生成 AGENTS.md 文件
slash-commands-open-project-rules = 打开项目规则文件（AGENTS.md）
slash-commands-switch-indexed-repo = 切换到另一个已索引的代码库
slash-commands-open-code-review = 打开代码审查

## -- Agent 配置命令 -------------------------------------------

slash-commands-switch-base-model = 切换基础 Agent 模型
slash-commands-switch-cloud-host = 切换云端 Agent 执行主机
slash-commands-switch-cloud-harness = 切换云端 Agent harness
slash-commands-switch-cloud-environment = 切换云端 Agent 环境
slash-commands-switch-execution-profile = 切换活动执行配置
slash-commands-prompt-research-and-plan = 提示 Agent 进行研究并为任务创建计划
slash-commands-orchestrate-subtasks = 将任务拆分为子任务并使用多个 Agent 并行运行

## -- 技能/提示/规则命令 -----------------------------------------

slash-commands-open-file-in-editor = 在 Warp 代码编辑器中打开文件
slash-commands-open-skill-file = 在 Warp 内置编辑器中打开技能的 Markdown 文件
slash-commands-invoke-skill = 调用技能
slash-commands-add-agent-prompt = 添加新的 Agent 提示
slash-commands-add-global-rule = 为 Agent 添加新的全局规则
slash-commands-view-all-rules = 查看所有全局和项目规则
slash-commands-search-saved-prompts = 搜索已保存的提示

## -- MCP 命令 -----------------------------------------------------------

slash-commands-add-mcp-server = 通过 MCP 设置页面添加新的 MCP 服务器
slash-commands-open-mcp-servers = 打开 MCP 服务器

## -- 环境/沙箱命令 -----------------------------------------

slash-commands-create-oz-environment = 通过引导式设置创建 Oz 环境（Docker 镜像 + 代码库）
slash-commands-create-docker-sandbox = 创建新的 Docker 沙箱终端会话
slash-commands-walk-through-new-project = 让 Oz 引导您创建新的编码项目

## -- 设置/账单命令 --------------------------------------------

slash-commands-open-settings-toml = 打开设置文件（TOML）
slash-commands-open-billing-usage = 打开账单和使用设置
slash-commands-toggle-credit-usage = 切换额度使用详情
slash-commands-open-latest-changelog = 打开最新更新日志

## -- 反馈/PR 命令 -------------------------------------------------

slash-commands-send-feedback = 发送反馈
slash-commands-pull-pr-comments = 拉取 GitHub PR 审查评论

## -- 导出命令 ---------------------------------------------------------

slash-commands-export-clipboard-markdown = 以 Markdown 格式将当前对话导出到剪贴板
slash-commands-export-markdown-file = 将当前对话导出到 Markdown 文件

## -- 远程控制 ---------------------------------------------------------

slash-commands-start-remote-control = 为此会话启动远程控制

## -- 标签页命令 -----------------------------------------------------------

slash-commands-rename-current-tab = 重命名当前标签页
slash-commands-set-tab-color = 设置当前标签页颜色

## -- 绑定描述 --

slash-commands-binding-desc = 斜杠命令：{ $name }

slash-command-requires-ai = { $name } 需要启用 AI
slash-command-file-not-found = 未找到文件：{ $path }
slash-command-no-conversation-export = 没有活跃的对话可导出

## -- Double-prefix aliases --------------------------------------------------

slash-commands-slash-commands-binding-desc = { slash-commands-binding-desc }
slash-commands-slash-commands-open-file-in-editor = { slash-commands-open-file-in-editor }
slash-commands-slash-commands-start-new-conversation = { slash-commands-start-new-conversation }
slash-commands-slash-commands-start-new-conversation-alias = { slash-commands-start-new-conversation-alias }
slash-commands-slash-commands-start-new-cloud-agent-conversation = { slash-commands-start-new-cloud-agent-conversation }
slash-commands-slash-commands-fork-conversation = { slash-commands-fork-conversation }
slash-commands-slash-commands-fork-from-query = { slash-commands-fork-from-query }
slash-commands-slash-commands-fork-and-compact = { slash-commands-fork-and-compact }
slash-commands-slash-commands-continue-locally = { slash-commands-continue-locally }
slash-commands-slash-commands-handoff-to-cloud = { slash-commands-handoff-to-cloud }
slash-commands-slash-commands-compact-free-context = { slash-commands-compact-free-context }
slash-commands-slash-commands-compact-and-follow-up = { slash-commands-compact-and-follow-up }
slash-commands-slash-commands-queue-prompt = { slash-commands-queue-prompt }
slash-commands-slash-commands-rewind-conversation = { slash-commands-rewind-conversation }
slash-commands-slash-commands-open-conversation-history = { slash-commands-open-conversation-history }
slash-commands-slash-commands-index-codebase = { slash-commands-index-codebase }
slash-commands-slash-commands-index-and-generate-agents-md = { slash-commands-index-and-generate-agents-md }
slash-commands-slash-commands-open-project-rules = { slash-commands-open-project-rules }
slash-commands-slash-commands-switch-indexed-repo = { slash-commands-switch-indexed-repo }
slash-commands-slash-commands-open-code-review = { slash-commands-open-code-review }
slash-commands-slash-commands-switch-base-model = { slash-commands-switch-base-model }
slash-commands-slash-commands-switch-cloud-host = { slash-commands-switch-cloud-host }
slash-commands-slash-commands-switch-cloud-harness = { slash-commands-switch-cloud-harness }
slash-commands-slash-commands-switch-cloud-environment = { slash-commands-switch-cloud-environment }
slash-commands-slash-commands-switch-execution-profile = { slash-commands-switch-execution-profile }
slash-commands-slash-commands-prompt-research-and-plan = { slash-commands-prompt-research-and-plan }
slash-commands-slash-commands-orchestrate-subtasks = { slash-commands-orchestrate-subtasks }
slash-commands-slash-commands-open-skill-file = { slash-commands-open-skill-file }
slash-commands-slash-commands-invoke-skill = { slash-commands-invoke-skill }
slash-commands-slash-commands-add-agent-prompt = { slash-commands-add-agent-prompt }
slash-commands-slash-commands-add-global-rule = { slash-commands-add-global-rule }
slash-commands-slash-commands-view-all-rules = { slash-commands-view-all-rules }
slash-commands-slash-commands-search-saved-prompts = { slash-commands-search-saved-prompts }
slash-commands-slash-commands-add-mcp-server = { slash-commands-add-mcp-server }
slash-commands-slash-commands-open-mcp-servers = { slash-commands-open-mcp-servers }
slash-commands-slash-commands-create-oz-environment = { slash-commands-create-oz-environment }
slash-commands-slash-commands-create-docker-sandbox = { slash-commands-create-docker-sandbox }
slash-commands-slash-commands-walk-through-new-project = { slash-commands-walk-through-new-project }
slash-commands-slash-commands-open-settings-toml = { slash-commands-open-settings-toml }
slash-commands-slash-commands-open-billing-usage = { slash-commands-open-billing-usage }
slash-commands-slash-commands-toggle-credit-usage = { slash-commands-toggle-credit-usage }
slash-commands-slash-commands-open-latest-changelog = { slash-commands-open-latest-changelog }
slash-commands-slash-commands-send-feedback = { slash-commands-send-feedback }
slash-commands-slash-commands-pull-pr-comments = { slash-commands-pull-pr-comments }
slash-commands-slash-commands-export-clipboard-markdown = { slash-commands-export-clipboard-markdown }
slash-commands-slash-commands-export-markdown-file = { slash-commands-export-markdown-file }
slash-commands-slash-commands-start-remote-control = { slash-commands-start-remote-control }
slash-commands-slash-commands-rename-current-tab = { slash-commands-rename-current-tab }
slash-commands-slash-commands-set-tab-color = { slash-commands-set-tab-color }
slash_commands-slash-command-requires-ai = { slash-command-requires-ai }
slash_commands-slash-command-file-not-found = { slash-command-file-not-found }
slash_commands-slash-command-no-conversation-export = { slash-command-no-conversation-export }
