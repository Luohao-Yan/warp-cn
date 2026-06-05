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

code_review-code-review-outdated = { code-review-outdated }
code_review-code-review-from-github = { code-review-from-github }
code_review-code-review-comment = { code-review-comment }
code_review-code-review-undo = { code-review-undo }

code_review-code-review-hide-file-navigation = { code-review-hide-file-navigation }
code_review-code-review-show-file-navigation = { code-review-show-file-navigation }

code_review-code-review-cannot-discard-while-git-operation = { code-review-cannot-discard-while-git-operation }
code_review-code-review-no-changes-to-discard = { code-review-no-changes-to-discard }

code_review-code-review-discard-uncommitted-changes-title = { code-review-discard-uncommitted-changes-title }
code_review-code-review-discard-file-uncommitted-changes-title = { code-review-discard-file-uncommitted-changes-title }
code_review-code-review-discard-all-changes-title = { code-review-discard-all-changes-title }
code_review-code-review-discard-file-all-changes-title = { code-review-discard-file-all-changes-title }

code_review-code-review-discard-uncommitted-desc = { code-review-discard-uncommitted-desc }
code_review-code-review-discard-file-uncommitted-desc = { code-review-discard-file-uncommitted-desc }
code_review-code-review-discard-all-changes-no-branch-desc = { code-review-discard-all-changes-no-branch-desc }
code_review-code-review-discard-file-no-branch-desc = { code-review-discard-file-no-branch-desc }
code_review-code-review-discard-file-branch-desc = { code-review-discard-file-branch-desc }

code_review-code-review-discard-changes = { code-review-discard-changes }
code_review-code-review-open-file = { code-review-open-file }
code_review-code-review-add-file-diff-context = { code-review-add-file-diff-context }
code_review-code-review-copy-file-path = { code-review-copy-file-path }

code_review-code-review-loading-open-changes = { code-review-loading-open-changes }
code_review-code-review-error-loading-diffs = { code-review-error-loading-diffs }
code_review-code-review-retry = { code-review-retry }
code_review-code-review-cannot-detect-diffs = { code-review-cannot-detect-diffs }
code_review-code-review-track-changes-hint = { code-review-track-changes-hint }

code_review-code-review-comments-sent-to-agent = { code-review-comments-sent-to-agent }
code_review-code-review-could-not-submit-comments = { code-review-could-not-submit-comments }
code_review-code-review-diff-removed = { code-review-diff-removed }
code_review-code-review-cannot-attach-context-terminal = { code-review-cannot-attach-context-terminal }
code_review-code-review-cannot-attach-diff-no-input = { code-review-cannot-attach-diff-no-input }

code_review-code-review-no-file-selected = { code-review-no-file-selected }
code_review-code-review-no-files-to-discard = { code-review-no-files-to-discard }

code_review-code-review-commit = { code-review-commit }
code_review-code-review-push = { code-review-push }
code_review-code-review-create-pr = { code-review-create-pr }
code_review-code-review-publish = { code-review-publish }
code_review-code-review-view-pr = { code-review-view-pr }
code_review-code-review-no-changes-to-commit = { code-review-no-changes-to-commit }
code_review-code-review-no-git-actions = { code-review-no-git-actions }
code_review-code-review-refreshing-pr-info = { code-review-refreshing-pr-info }

code_review-code-review-show-saved-comment = { code-review-show-saved-comment }
code_review-code-review-add-comment = { code-review-add-comment }

code_review-code-review-reviewing-code-changes = { code-review-reviewing-code-changes }

code_review-code-review-file-renamed-without-changes = { code-review-file-renamed-without-changes }
code_review-code-review-new-empty-file = { code-review-new-empty-file }
code_review-code-review-repo-initialized-with-file = { code-review-repo-initialized-with-file }

code_review-code-review-uncommitted-changes = { code-review-uncommitted-changes }
code_review-code-review-diff-too-large = { code-review-diff-too-large }
code_review-code-review-binary-file = { code-review-binary-file }
code_review-code-review-unable-to-load-file = { code-review-unable-to-load-file }
code_review-code-review-unsaved-changes-tooltip = { code-review-unsaved-changes-tooltip }
code_review-code-review-file-level-cannot-edit = { code-review-file-level-cannot-edit }
code_review-code-review-outdated-cannot-edit = { code-review-outdated-cannot-edit }
code_review-code-review-no-non-outdated-comments = { code-review-no-non-outdated-comments }
code_review-code-review-send-comments-to-cli = { code-review-send-comments-to-cli }
code_review-code-review-ai-must-be-enabled = { code-review-ai-must-be-enabled }
code_review-code-review-agent-requires-credits = { code-review-agent-requires-credits }
code_review-code-review-all-terminals-busy = { code-review-all-terminals-busy }
code_review-code-review-send-comments-to-agent = { code-review-send-comments-to-agent }
code_review-code-review-add-diff-set-as-context = { code-review-add-diff-set-as-context }
code_review-code-review-reviewing-open-changes = { code-review-reviewing-open-changes }
code_review-code-review-save-all-unsaved-files = { code-review-save-all-unsaved-files }
code_review-code-review-show-find-bar = { code-review-show-find-bar }

code_review-code-review-changes = { code-review-changes }
code_review-code-review-include-unstaged = { code-review-include-unstaged }
code_review-code-review-commit-message = { code-review-commit-message }
code_review-code-review-branch = { code-review-branch }
code_review-code-review-included-commits = { code-review-included-commits }
