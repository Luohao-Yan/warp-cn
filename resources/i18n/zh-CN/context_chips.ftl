# =============================================================================
# context_chips.ftl — 上下文芯片标签和描述
# =============================================================================
# Message IDs: context_chips-{id}
# =============================================================================

## -- 芯片标题 -------------------------------------------------------------------

context_chips-working-directory = 工作目录
context_chips-user = 用户
context_chips-host = 主机
context_chips-python-virtualenv = Python 虚拟环境
context_chips-conda-environment = Conda 环境
context_chips-node-version = Node.js 版本
context_chips-date = 日期
context_chips-time-12 = 时间（12小时制）
context_chips-time-24 = 时间（24小时制）
context_chips-git-branch = Git 分支
context_chips-git-diff-stats = Git 差异统计
context_chips-github-pull-request = GitHub 拉取请求
context_chips-kubernetes-context = Kubernetes 上下文
context_chips-svn-branch = Svn 分支
context_chips-svn-uncommitted-file-count = Svn 未提交文件数
context_chips-remote-login = 远程登录
context_chips-subshell = 子shell
context_chips-agent-plan-and-todo-list = 代理计划和待办列表

## -- 芯片禁用原因 ---------------------------------------------------------------

context_chips-requires-local-session = 需要本地会话
context_chips-requires-github-cli = 需要 GitHub CLI
context_chips-requires-command = 需要 `{ $command }` 命令

## -- 芯片显示前缀 ---------------------------------------------------------------

context_chips-git-prefix = git:({ $value })
context_chips-svn-prefix = svn:({ $value })
context_chips-svn-dirty-prefix = ±{ $value }
context_chips-k8s-prefix = ⎈ { $value }

## -- Git 差异统计显示 ------------------------------------------------------------

context_chips-git-diff-stats = { $files } • +{ $added } -{ $removed }

## -- 复制菜单 -------------------------------------------------------------------

context_chips-copy-chip = 复制{ $title }

## -- 显示芯片字符串 --------------------------------------------------------------

context_chips-monthly-ai-credits-reset = 每月AI额度已重置！
context_chips-uninstall-node-install-nvm = 卸载现有 Node.js 安装并为我安装 nvm
context_chips-branch-already-checked-out = 分支 '{ $branch }' 已在另一个工作树中检出，但 Warp 找不到其路径。
context_chips-parent-directory = .. (上级目录)

## -- 显示菜单字符串 --------------------------------------------------------------

context_chips-search-directories = 搜索目录...
context_chips-search-branches = 搜索分支...
context_chips-search-environments = 搜索环境...
context_chips-no-results = 无结果
context_chips-no-results-found = 未找到结果
context_chips-sidecar-name = 名称：
context_chips-sidecar-id = ID：
context_chips-sidecar-image = 镜像：
context_chips-sidecar-repos = 仓库：
context_chips-sidecar-none = (无)

## -- 双前缀别名，用于 tr!() 调用包含域前缀的情况 ------------------------------

context_chips-context_chips-working-directory = { context_chips-working-directory }
context_chips-context_chips-user = { context_chips-user }
context_chips-context_chips-host = { context_chips-host }
context_chips-context_chips-python-virtualenv = { context_chips-python-virtualenv }
context_chips-context_chips-conda-environment = { context_chips-conda-environment }
context_chips-context_chips-node-version = { context_chips-node-version }
context_chips-context_chips-date = { context_chips-date }
context_chips-context_chips-time-12 = { context_chips-time-12 }
context_chips-context_chips-time-24 = { context_chips-time-24 }
context_chips-context_chips-git-branch = { context_chips-git-branch }
context_chips-context_chips-git-diff-stats = { context_chips-git-diff-stats }
context_chips-context_chips-github-pull-request = { context_chips-github-pull-request }
context_chips-context_chips-kubernetes-context = { context_chips-kubernetes-context }
context_chips-context_chips-svn-branch = { context_chips-svn-branch }
context_chips-context_chips-svn-uncommitted-file-count = { context_chips-svn-uncommitted-file-count }
context_chips-context_chips-remote-login = { context_chips-remote-login }
context_chips-context_chips-subshell = { context_chips-subshell }
context_chips-context_chips-agent-plan-and-todo-list = { context_chips-agent-plan-and-todo-list }
context_chips-context_chips-requires-local-session = { context_chips-requires-local-session }
context_chips-context_chips-requires-github-cli = { context_chips-requires-github-cli }
context_chips-context_chips-monthly-ai-credits-reset = { context_chips-monthly-ai-credits-reset }
context_chips-context_chips-uninstall-node-install-nvm = { context_chips-uninstall-node-install-nvm }
context_chips-context_chips-parent-directory = { context_chips-parent-directory }
context_chips-context_chips-search-directories = { context_chips-search-directories }
context_chips-context_chips-search-branches = { context_chips-search-branches }
context_chips-context_chips-search-environments = { context_chips-search-environments }
context_chips-context_chips-no-results = { context_chips-no-results }
context_chips-context_chips-no-results-found = { context_chips-no-results-found }
context_chips-context_chips-sidecar-name = { context_chips-sidecar-name }
context_chips-context_chips-sidecar-id = { context_chips-sidecar-id }
context_chips-context_chips-sidecar-image = { context_chips-sidecar-image }
context_chips-context_chips-sidecar-repos = { context_chips-sidecar-repos }
context_chips-context_chips-sidecar-none = { context_chips-sidecar-none }
