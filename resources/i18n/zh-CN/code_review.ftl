# =============================================================================
# code_review.ftl — 代码审查视图字符串
# =============================================================================
# Message IDs: code_review-{id}
# =============================================================================

## -- 评论渲染字符串 --

code-review-outdated = 已过时
code-review-from-github = 来自 GitHub
code-review-comment = 审查评论

code-review-undo = 撤销

## -- 文件导航字符串 --

code-review-hide-file-navigation = 隐藏文件导航
code-review-show-file-navigation = 显示文件导航

## -- 丢弃对话框字符串 --

code-review-cannot-discard-while-git-operation = Git 操作（合并、变基等）进行中时无法丢弃更改
code-review-no-changes-to-discard = 没有可丢弃的更改

code-review-discard-uncommitted-changes-title = 丢弃未提交的更改？
code-review-discard-file-uncommitted-changes-title = 丢弃文件的所有未提交更改？
code-review-discard-all-changes-title = 丢弃所有更改？
code-review-discard-file-all-changes-title = 丢弃文件的所有更改？

code-review-discard-uncommitted-desc = 您即将丢弃所有尚未提交的本地更改。
code-review-discard-file-uncommitted-desc = 这将把此文件恢复到上次提交的版本，并丢弃本地编辑。
code-review-discard-all-changes-no-branch-desc = 您即将丢弃所有已提交和未提交的更改。
code-review-discard-file-no-branch-desc = 这将把此文件恢复到主分支版本，并丢弃所有已提交和未提交的编辑。
code-review-discard-file-branch-desc = 这将把此文件重置到 { $branch } 分支版本，并丢弃所有已提交和未提交的编辑。

code-review-discard-changes = 丢弃更改
code-review-open-file = 打开文件
code-review-add-file-diff-context = 添加文件差异作为上下文
code-review-copy-file-path = 复制文件路径

## -- 加载/错误/空状态 --

code-review-loading-open-changes = 正在加载打开的更改...
code-review-error-loading-diffs = 加载差异时出错
code-review-retry =  重试
code-review-cannot-detect-diffs = 无法检测此文件夹的差异
code-review-track-changes-hint = 随着您或 Agent 进行更改，您将能够在此处跟踪它们。

## -- 提示消息 --

code-review-comments-sent-to-agent = 评论已发送给 Agent
code-review-could-not-submit-comments = 无法将评论提交给 Agent
code-review-diff-removed = 差异已移除
code-review-cannot-attach-context-terminal = 终端运行时无法附加上下文
code-review-cannot-attach-diff-no-input = 输入不可用时无法附加差异

## -- 丢弃对话框文件列表 --

code-review-no-file-selected = 未选择文件
code-review-no-files-to-discard = 没有可丢弃的文件

## -- Git 操作头部 --

code-review-commit = 提交
code-review-push = 推送
code-review-create-pr = 创建 PR
code-review-publish = 发布
code-review-view-pr = PR #{ $number }
code-review-no-changes-to-commit = 没有可提交的更改
code-review-no-git-actions = 没有可用的 Git 操作
code-review-refreshing-pr-info = 正在刷新 PR 信息

## -- 头部菜单项 --

code-review-show-saved-comment = 显示已保存的评论
code-review-add-comment = 添加评论

## -- 头部内容 --

code-review-reviewing-code-changes = 正在审查代码更改

## -- 差异内容空状态 --

code-review-file-renamed-without-changes = 文件已重命名，无更改
code-review-new-empty-file = 新的空文件

## -- 零状态 --

code-review-repo-initialized-with-file = 仓库已使用 { $file_name } 文件初始化。

## -- 差异选择器/分支列表 --

code-review-uncommitted-changes = 未提交的更改

## -- 差异内容消息 --

code-review-diff-too-large = 差异过大，无法渲染
code-review-binary-file = 二进制文件 - 无可用差异
code-review-unable-to-load-file = 无法加载文件内容

## -- 未保存更改提示 --

code-review-unsaved-changes-tooltip = 此文件有未保存的更改。{ $shortcut } 保存

## -- 评论编辑/禁用提示 --

code-review-file-level-cannot-edit = 文件级评论目前无法编辑。
code-review-outdated-cannot-edit = 已过时的评论无法编辑。

## -- 发送按钮提示 --

code-review-no-non-outdated-comments = 没有非过时的评论可发送
code-review-send-comments-to-cli = 将差异评论发送给 { $label }
code-review-ai-must-be-enabled = 必须启用 AI 才能向 Agent 发送评论
code-review-agent-requires-credits = Agent 代码审查需要 AI 额度
code-review-all-terminals-busy = 所有终端都忙
code-review-send-comments-to-agent = 将差异评论发送给 Agent

## -- 添加上下文按钮 --

code-review-add-diff-set-as-context = 添加差异集作为上下文

## -- 头部文本 --

code-review-reviewing-open-changes = 正在审查打开的更改

## -- 代码审查附加绑定 --

code-review-save-all-unsaved-files = 保存代码审查中所有未保存的文件
code-review-show-find-bar = 在代码审查中显示查找栏

code-review-changes = 更改
code-review-include-unstaged = 包含未暂存
code-review-commit-message = 提交消息
code-review-branch = 分支
code-review-included-commits = 包含的提交

## -- 提交模式占位符 -----------------------------------------------------------

code-review-commit-placeholder = 输入提交消息

## -- Double-prefix aliases --

## -- Git 对话框/操作按钮字符串（从旧版 JSON 迁移） --

code-review-add-diff-set-context = 添加差异集作为上下文
code-review-approve = 批准
code-review-authentication-failed = 身份验证失败。请检查您的 Git 凭据。
code-review-branch-published = 分支已成功发布。
code-review-cancel = 取消
code-review-changes-committed-and-pushed = 更改已提交并推送。
code-review-changes-pushed = 更改已成功推送。
code-review-changes-successfully-committed = 更改已成功提交。
code-review-close = 关闭审查
code-review-commit-and-create-pr = 提交并创建 PR
code-review-commit-and-publish = 提交并发布
code-review-commit-and-push = 提交并推送
code-review-commit-your-changes = 提交你的更改
code-review-committing = 正在提交…
code-review-confirm = 确认
code-review-copy-text = 复制文本
code-review-create-pull-request = 创建拉取请求
code-review-creating = 正在创建…
code-review-discard-all = 全部丢弃
code-review-edit = 编辑
code-review-enter-commit-message = 输入提交消息
code-review-generating-message = 正在生成提交消息…
code-review-gh-cli-not-authenticated = GitHub CLI 未认证。请运行 `gh auth login`。
code-review-gh-cli-not-installed = 未安装 GitHub CLI (gh)。请访问 https://cli.github.com/
code-review-git-identity-not-configured = Git 身份未配置。请设置 user.name 和 user.email。
code-review-git-operation-failed = Git 操作失败。
code-review-initialize-codebase = 初始化代码库
code-review-initialize-codebase-tooltip = 启用代码库索引和 WARP.md
code-review-network-error = 网络错误。请检查您的连接。
code-review-no-remote-configured = 此分支未配置远程。
code-review-open = 打开审查
code-review-open-pr = 打开 PR
code-review-open-repository = 打开仓库
code-review-open-repository-tooltip = 导航到仓库并初始化用于编码
code-review-pr-created = PR 已成功创建。
code-review-publish-branch = 发布分支
code-review-publishing = 正在发布…
code-review-push-changes = 推送更改
code-review-pushing = 正在推送…
code-review-remote-has-new-changes = 远程有新更改 — 请先拉取。
code-review-remote-repository-not-found = 找不到远程仓库。
code-review-remove = 移除
code-review-request-changes = 请求更改
code-review-send-to-agent = 发送给智能体
code-review-type-commit-message = 输入提交消息
code-review-view-in-github = 在 GitHub 中查看

## -- 快捷键描述 -----------------------------------------------------------

code-review-toggle-file-navigation-in-code-review = 切换代码审查中的文件导航
