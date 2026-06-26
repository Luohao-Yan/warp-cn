# =============================================================================
# code_editor.ftl — 代码编辑器、差异对比和代码审查字符串
# =============================================================================
# Message IDs: code-{id}
# =============================================================================

## -- 文件树 ----------------------------------------------------------------

code-editor-code-file-tree-delete = 删除
code-editor-code-file-tree-rename = 重命名
code-editor-code-file-tree-new-file = 新建文件
code-editor-code-file-tree-new-folder = 新建文件夹
code-editor-code-file-tree-reveal-in-finder = 在访达中显示
code-editor-code-file-tree-copy-path = 复制路径

## -- 编辑器 -------------------------------------------------------------------

code-editor-delete-label = 删除
code-editor-save-label = 保存
code-editor-undo-label = 撤销
code-editor-redo-label = 重做
code-editor-find-label = 查找
code-editor-replace-label = 替换
code-editor-go-to-line = 跳转到行
code-editor-select-all = 全选

## -- 差异对比 ----------------------------------------------------------------

code-editor-code-diff-added-lines = { $count ->
    [one] { $count } 处添加
    *[other] { $count } 处添加
}
code-editor-code-diff-removed-lines = { $count ->
    [one] { $count } 处删除
    *[other] { $count } 处删除
}
code-editor-code-diff-title = 代码差异

## -- 评论 -----------------------------------------------------------------

code-editor-code-comment-add = 添加评论
code-editor-code-comment-edit = 编辑评论
code-editor-code-comment-delete = 删除评论
code-editor-code-comment-resolve = 解决
code-editor-code-comment-unresolve = 未解决
code-editor-code-comment-cancel-button = 取消
code-editor-code-comment-save-button = 保存
code-editor-code-comment-update-button = 更新
code-editor-code-comment-placeholder = 写评论…

## -- 代码审查 --------------------------------------------------------------

code-editor-code-review-approve = 批准
code-editor-code-review-request-changes = 请求更改
code-editor-code-review-comment = 评论
code-editor-code-review-close = 关闭审查
code-editor-code-review-open = 打开审查

## -- 跳转到行 ----------------------------------------------------------------

code-editor-code-goto-line-placeholder = 行号:列

## -- 差异菜单 -----------------------------------------------------------------

code-editor-search-diff-placeholder = 搜索差异集或分支进行比较…
code-editor-no-matches = 无匹配项
code-editor-restore = 恢复
code-editor-maximize = 最大化

## -- 代码审查菜单项 ---------------------------------------------------

code-editor-code-review-commit = 提交
code-editor-code-review-push = 推送
code-editor-code-review-publish = 发布
code-editor-code-review-create-pr = 创建 PR
code-editor-code-review-add-diff-set-context = 添加差异集作为上下文
code-editor-code-review-discard-all = 全部丢弃
code-editor-code-review-copy-text = 复制文本
code-editor-code-review-edit = 编辑
code-editor-code-review-view-in-github = 在 GitHub 中查看
code-editor-code-review-remove = 移除
code-editor-code-review-send-to-agent = 发送给智能体

## -- 代码审查附加字符串 -------------------------------------------------------

code-editor-code-review-confirm = 确认
code-editor-code-review-commit-your-changes = 提交你的更改
code-editor-code-review-publish-branch = 发布分支
code-editor-code-review-push-changes = 推送更改
code-editor-code-review-create-pull-request = 创建拉取请求
code-editor-code-review-commit-and-push = 提交并推送
code-editor-code-review-commit-and-publish = 提交并发布
code-editor-code-review-commit-and-create-pr = 提交并创建 PR
code-editor-code-review-enter-commit-message = 输入提交消息
code-editor-code-review-changes = 更改
code-editor-code-review-include-unstaged = 包含未暂存
code-editor-code-review-commit-message = 提交消息
code-editor-code-review-generating-message = 正在生成提交消息…
code-editor-code-review-type-commit-message = 输入提交消息
code-editor-code-review-committing = 正在提交…
code-editor-code-review-changes-successfully-committed = 更改已成功提交。
code-editor-code-review-changes-committed-and-pushed = 更改已提交并推送。
code-editor-code-review-no-changes-to-commit = 没有可提交的更改。
code-editor-code-review-git-identity-not-configured = Git 身份未配置。请设置 user.name 和 user.email。
code-editor-code-review-remote-has-new-changes = 远程有新更改 — 请先拉取。
code-editor-code-review-no-remote-configured = 此分支未配置远程。
code-editor-code-review-authentication-failed = 身份验证失败。请检查您的 Git 凭据。
code-editor-code-review-network-error = 网络错误。请检查您的连接。
code-editor-code-review-remote-repository-not-found = 找不到远程仓库。
code-editor-code-review-gh-cli-not-installed = 未安装 GitHub CLI (gh)。请访问 https://cli.github.com/
code-editor-code-review-gh-cli-not-authenticated = GitHub CLI 未认证。请运行 `gh auth login`。
code-editor-code-review-git-operation-failed = Git 操作失败。
code-editor-code-review-branch = 分支

## -- Code review view additional strings -----------------------------------------

code-editor-code-review-undo = 撤销
code-editor-code-review-discard-changes = 丢弃更改
code-editor-code-review-cancel = 取消
code-editor-code-review-initialize-codebase = 初始化代码库
code-editor-code-review-initialize-codebase-tooltip = 启用代码库索引和 WARP.md
code-editor-code-review-open-repository = 打开仓库
code-editor-code-review-open-repository-tooltip = 导航到仓库并初始化用于编码
code-editor-code-review-show-file-navigation = 显示文件导航

## -- Push dialog strings ---------------------------------------------------------

code-editor-code-review-publishing = 正在发布…
code-editor-code-review-pushing = 正在推送…
code-editor-code-review-branch-published = 分支已成功发布。
code-editor-code-review-changes-pushed = 更改已成功推送。

## -- PR dialog strings -----------------------------------------------------------

code-editor-code-review-creating = 正在创建…
code-editor-code-review-open-pr = 打开 PR
code-editor-code-review-pr-created = PR 已成功创建。

## -- review- prefixed entries (tr!("code_editor", "review-...")) ---------------

code-editor-review-authentication-failed = 身份验证失败。请检查您的 Git 凭据。
code-editor-review-gh-cli-not-authenticated = GitHub CLI 未认证。请运行 `gh auth login`。
code-editor-review-gh-cli-not-installed = 未安装 GitHub CLI (gh)。请访问 https://cli.github.com/
code-editor-review-remote-repository-not-found = 找不到远程仓库。
code-editor-review-branch-published = 分支已成功发布。
code-editor-review-cancel = 取消
code-editor-review-changes-committed-and-pushed = 更改已提交并推送。
code-editor-review-changes-pushed = 更改已成功推送。
code-editor-review-comment-count = { $count ->
    [one] { $count } 条评论
   *[other] { $count } 条评论
}
code-editor-review-commit = 提交
code-editor-review-commit-and-create-pr = 提交并创建 PR
code-editor-review-commit-and-publish = 提交并发布
code-editor-review-commit-and-push = 提交并推送
code-editor-review-committing = 正在提交…
code-editor-review-confirm = 确认
code-editor-review-create-pull-request = 创建拉取请求
code-editor-review-creating = 正在创建…
code-editor-review-discard-all = 全部丢弃
code-editor-review-discard-changes = 丢弃更改
code-editor-review-generating-commit-message = 正在生成提交消息…
code-editor-review-git-identity-not-configured = Git 身份未配置。请设置 user.name 和 user.email。
code-editor-review-git-operation-failed = Git 操作失败。
code-editor-review-initialize-codebase = 初始化代码库
code-editor-review-initialize-codebase-tooltip = 启用代码库索引和 WARP.md
code-editor-review-network-error = 网络错误。请检查您的连接。
code-editor-review-no-changes-to-commit = 没有可提交的更改。
code-editor-review-no-remote-configured = 此分支未配置远程。
code-editor-review-open-pr = 打开 PR
code-editor-review-open-repository = 打开仓库
code-editor-review-open-repository-tooltip = 导航到仓库并初始化用于编码
code-editor-review-pr-created = PR 已成功创建。
code-editor-review-publish-branch = 发布分支
code-editor-review-publishing = 正在发布…
code-editor-review-push-changes = 推送更改
code-editor-review-pushing = 正在推送…
code-editor-review-remote-has-new-changes = 远程有新更改 — 请先拉取。
code-editor-review-show-file-navigation = 显示文件导航
code-editor-review-type-commit-message = 输入提交消息
code-editor-review-undo = 撤销
code-editor-review-changes-successfully-committed = 更改已成功提交。

## -- 代码审查视图附加字符串 -----------------------------------------------

code-editor-code-no-open-changes = 无未提交更改
code-editor-code-stash-changes = 暂存更改
code-editor-code-previous = 上一个

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

## -- Additional code editor strings --
code-editor-code-hunk = 代码块：

## -- 保留大小写提示 --
code-editor-code-preserve-case-tooltip = 保留大小写

## -- 查找栏辅助功能字符串 --
code-editor-code-find-result-of = 结果 { $match_index } / { $match_count }。
code-editor-code-find-no-results = 无结果。
code-editor-code-find-use-enter-navigate = 使用 Enter 和 Shift-Enter 在匹配项之间导航。按 Escape 退出。
code-editor-code-find-bar-description = 用于在编辑器中搜索文本的查找栏。
code-editor-code-find-bar-with-matches = 查找栏找到 { $count } 个匹配项。当前在第 { $current } 个匹配项，共 { $total } 个。
code-editor-code-find-replace-field-focused = 替换字段已聚焦。输入替换文本，按 Enter 替换当前匹配项，按 Tab 返回查找字段。使用上/下箭头导航匹配项，按 Escape 关闭。
code-editor-code-find-field-focused = 查找字段已聚焦。输入以搜索文本。使用 Enter 和 Shift-Enter 或上/下箭头在匹配项之间导航。按 Escape 关闭查找栏。
code-editor-code-find-replace-success = 已成功替换匹配项。选中的匹配项是第 { $match_index } 个，共 { $remaining_matches } 个
code-editor-code-find-replace-continue = 继续按 Enter 替换更多匹配项，或使用上/下箭头导航。
code-editor-code-find-replace-last = 已成功替换最后一个匹配项。

## -- 评论编辑器字符串 --
code-editor-code-review-update-button = 更新
code-editor-code-comment-imported-from-github = 从 GitHub 导入的评论

## -- 新 code_editor 字符串的双前缀别名 --
