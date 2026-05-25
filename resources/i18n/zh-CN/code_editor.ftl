# =============================================================================
# code_editor.ftl — 代码编辑器、差异对比和代码审查字符串
# =============================================================================
# Message IDs: code-{id}
# =============================================================================

## -- 文件树 ----------------------------------------------------------------

code-file-tree-delete = 删除
code-file-tree-rename = 重命名
code-file-tree-new-file = 新建文件
code-file-tree-new-folder = 新建文件夹
code-file-tree-reveal-in-finder = 在访达中显示
code-file-tree-copy-path = 复制路径

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

code-diff-added-lines = { $count ->
    [one] { $count } 处添加
    *[other] { $count } 处添加
}
code-diff-removed-lines = { $count ->
    [one] { $count } 处删除
    *[other] { $count } 处删除
}
code-diff-title = 代码差异

## -- 评论 -----------------------------------------------------------------

code-comment-add = 添加评论
code-comment-edit = 编辑评论
code-comment-delete = 删除评论
code-comment-resolve = 解决
code-comment-unresolve = 未解决
code-comment-cancel-button = 取消
code-comment-save-button = 保存
code-comment-update-button = 更新
code-comment-placeholder = 写评论…

## -- 代码审查 --------------------------------------------------------------

code-review-approve = 批准
code-review-request-changes = 请求更改
code-review-comment = 评论
code-review-close = 关闭审查
code-review-open = 打开审查

## -- 跳转到行 ----------------------------------------------------------------

code-goto-line-placeholder = 行号:列

## -- 差异菜单 -----------------------------------------------------------------

code-editor-search-diff-placeholder = 搜索差异集或分支进行比较…
code-editor-no-matches = 无匹配项
code-editor-restore = 恢复
code-editor-maximize = 最大化

## -- 代码审查菜单项 ---------------------------------------------------

code-review-commit = 提交
code-review-push = 推送
code-review-publish = 发布
code-review-create-pr = 创建 PR
code-review-add-diff-set-context = 添加差异集作为上下文
code-review-discard-all = 全部丢弃
code-review-copy-text = 复制文本
code-review-edit = 编辑
code-review-view-in-github = 在 GitHub 中查看
code-review-remove = 移除
code-review-send-to-agent = 发送给代理

## -- 代码审查附加字符串 -------------------------------------------------------

code-review-confirm = 确认
code-review-commit-your-changes = 提交你的更改
code-review-publish-branch = 发布分支
code-review-push-changes = 推送更改
code-review-create-pull-request = 创建拉取请求
code-review-commit-and-push = 提交并推送
code-review-commit-and-publish = 提交并发布
code-review-commit-and-create-pr = 提交并创建 PR
code-review-enter-commit-message = 输入提交消息
code-review-changes = 更改
code-review-include-unstaged = 包含未暂存
code-review-commit-message = 提交消息
code-review-generating-message = 正在生成提交消息…
code-review-type-commit-message = 输入提交消息
code-review-committing = 正在提交…
code-review-changes-successfully-committed = 更改已成功提交。
code-review-changes-committed-and-pushed = 更改已提交并推送。
code-review-no-changes-to-commit = 没有可提交的更改。
code-review-git-identity-not-configured = Git 身份未配置。请设置 user.name 和 user.email。
code-review-remote-has-new-changes = 远程有新更改 — 请先拉取。
code-review-no-remote-configured = 此分支未配置远程。
code-review-authentication-failed = 身份验证失败。请检查您的 Git 凭据。
code-review-network-error = 网络错误。请检查您的连接。
code-review-remote-repository-not-found = 找不到远程仓库。
code-review-gh-cli-not-installed = 未安装 GitHub CLI (gh)。请访问 https://cli.github.com/
code-review-gh-cli-not-authenticated = GitHub CLI 未认证。请运行 `gh auth login`。
code-review-git-operation-failed = Git 操作失败。
code-review-branch = 分支

## -- Code review view additional strings -----------------------------------------

code-review-undo = 撤销
code-review-discard-changes = 丢弃更改
code-review-cancel = 取消
code-review-initialize-codebase = 初始化代码库
code-review-initialize-codebase-tooltip = 启用代码库索引和 WARP.md
code-review-open-repository = 打开仓库
code-review-open-repository-tooltip = 导航到仓库并初始化用于编码
code-review-show-file-navigation = 显示文件导航

## -- Push dialog strings ---------------------------------------------------------

code-review-publishing = 正在发布…
code-review-pushing = 正在推送…
code-review-branch-published = 分支已成功发布。
code-review-changes-pushed = 更改已成功推送。

## -- PR dialog strings -----------------------------------------------------------

code-review-creating = 正在创建…
code-review-open-pr = 打开 PR
code-review-pr-created = PR 已成功创建。

## -- review- prefixed entries (tr!("code_editor", "review-...")) ---------------

review-authentication-failed = 身份验证失败。请检查您的 Git 凭据。
review-gh-cli-not-authenticated = GitHub CLI 未认证。请运行 `gh auth login`。
review-gh-cli-not-installed = 未安装 GitHub CLI (gh)。请访问 https://cli.github.com/
review-remote-repository-not-found = 找不到远程仓库。
review-branch-published = 分支已成功发布。
review-cancel = 取消
review-changes-committed-and-pushed = 更改已提交并推送。
review-changes-pushed = 更改已成功推送。
review-comment-count = { $count ->
    [one] { $count } 条评论
   *[other] { $count } 条评论
}
review-commit = 提交
review-commit-and-create-pr = 提交并创建 PR
review-commit-and-publish = 提交并发布
review-commit-and-push = 提交并推送
review-committing = 正在提交…
review-confirm = 确认
review-create-pull-request = 创建拉取请求
review-creating = 正在创建…
review-discard-all = 全部丢弃
review-discard-changes = 丢弃更改
review-generating-commit-message = 正在生成提交消息…
review-git-identity-not-configured = Git 身份未配置。请设置 user.name 和 user.email。
review-git-operation-failed = Git 操作失败。
review-initialize-codebase = 初始化代码库
review-initialize-codebase-tooltip = 启用代码库索引和 WARP.md
review-network-error = 网络错误。请检查您的连接。
review-no-changes-to-commit = 没有可提交的更改。
review-no-remote-configured = 此分支未配置远程。
review-open-pr = 打开 PR
review-open-repository = 打开仓库
review-open-repository-tooltip = 导航到仓库并初始化用于编码
review-pr-created = PR 已成功创建。
review-publish-branch = 发布分支
review-publishing = 正在发布…
review-push-changes = 推送更改
review-pushing = 正在推送…
review-remote-has-new-changes = 远程有新更改 — 请先拉取。
review-show-file-navigation = 显示文件导航
review-type-commit-message = 输入提交消息
review-undo = 撤销
review-changes-successfully-committed = 更改已成功提交。

## -- 代码审查视图附加字符串 -----------------------------------------------

code-no-open-changes = 无未提交更改
code-stash-changes = 暂存更改
code-previous = 上一个

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

code_editor-code-comment-add = { code-comment-add }
code_editor-code-comment-cancel-button = { code-comment-cancel-button }
code_editor-code-editor-go-to-line = { code-editor-go-to-line }
code_editor-code-editor-maximize = { code-editor-maximize }
code_editor-code-editor-no-matches = { code-editor-no-matches }
code_editor-code-editor-restore = { code-editor-restore }
code_editor-code-editor-search-diff-placeholder = { code-editor-search-diff-placeholder }
code_editor-code-file-tree-copy-path = { code-file-tree-copy-path }
code_editor-code-goto-line-placeholder = { code-goto-line-placeholder }
code_editor-code-review-add-diff-set-context = { code-review-add-diff-set-context }
code_editor-code-review-approve = { code-review-approve }
code_editor-code-review-comment = { code-review-comment }
code_editor-code-review-commit = { code-review-commit }
code_editor-code-review-copy-text = { code-review-copy-text }
code_editor-code-review-create-pr = { code-review-create-pr }
code_editor-code-review-discard-all = { code-review-discard-all }
code_editor-code-review-edit = { code-review-edit }
code_editor-code-review-publish = { code-review-publish }
code_editor-code-review-push = { code-review-push }
code_editor-code-review-remove = { code-review-remove }
code_editor-code-review-send-to-agent = { code-review-send-to-agent }
code_editor-code-review-view-in-github = { code-review-view-in-github }
code_editor-review-authentication-failed = { review-authentication-failed }
code_editor-review-branch-published = { review-branch-published }
code_editor-review-cancel = { review-cancel }
code_editor-review-changes-committed-and-pushed = { review-changes-committed-and-pushed }
code_editor-review-changes-pushed = { review-changes-pushed }
code_editor-review-changes-successfully-committed = { review-changes-successfully-committed }
code_editor-review-comment-count = { review-comment-count }
code_editor-review-commit = { review-commit }
code_editor-review-commit-and-create-pr = { review-commit-and-create-pr }
code_editor-review-commit-and-publish = { review-commit-and-publish }
code_editor-review-commit-and-push = { review-commit-and-push }
code_editor-review-committing = { review-committing }
code_editor-review-confirm = { review-confirm }
code_editor-review-create-pull-request = { review-create-pull-request }
code_editor-review-creating = { review-creating }
code_editor-review-discard-all = { review-discard-all }
code_editor-review-discard-changes = { review-discard-changes }
code_editor-review-generating-commit-message = { review-generating-commit-message }
code_editor-review-git-identity-not-configured = { review-git-identity-not-configured }
code_editor-review-git-operation-failed = { review-git-operation-failed }
code_editor-review-initialize-codebase = { review-initialize-codebase }
code_editor-review-initialize-codebase-tooltip = { review-initialize-codebase-tooltip }
code_editor-review-network-error = { review-network-error }
code_editor-review-no-changes-to-commit = { review-no-changes-to-commit }
code_editor-review-no-remote-configured = { review-no-remote-configured }
code_editor-review-open-pr = { review-open-pr }
code_editor-review-open-repository = { review-open-repository }
code_editor-review-open-repository-tooltip = { review-open-repository-tooltip }
code_editor-review-pr-created = { review-pr-created }
code_editor-review-publish-branch = { review-publish-branch }
code_editor-review-publishing = { review-publishing }
code_editor-review-push-changes = { review-push-changes }
code_editor-review-pushing = { review-pushing }
code_editor-review-remote-has-new-changes = { review-remote-has-new-changes }
code_editor-review-remote-repository-not-found = { review-remote-repository-not-found }
code_editor-review-gh-cli-not-installed = { review-gh-cli-not-installed }
code_editor-review-gh-cli-not-authenticated = { review-gh-cli-not-authenticated }
code_editor-review-show-file-navigation = { review-show-file-navigation }
code_editor-review-type-commit-message = { review-type-commit-message }
code_editor-review-undo = { review-undo }
code_editor-code-no-open-changes = { code-no-open-changes }
code_editor-code-previous = { code-previous }
code_editor-code-stash-changes = { code-stash-changes }

## -- Additional code editor strings --
code-hunk = 代码块：

## -- 保留大小写提示 --
code-preserve-case-tooltip = 保留大小写

## -- 查找栏辅助功能字符串 --
code-find-result-of = 结果 { $match_index } / { $match_count }。
code-find-no-results = 无结果。
code-find-use-enter-navigate = 使用 Enter 和 Shift-Enter 在匹配项之间导航。按 Escape 退出。
code-find-bar-description = 用于在编辑器中搜索文本的查找栏。
code-find-bar-with-matches = 查找栏找到 { $count } 个匹配项。当前在第 { $current } 个匹配项，共 { $total } 个。
code-find-replace-field-focused = 替换字段已聚焦。输入替换文本，按 Enter 替换当前匹配项，按 Tab 返回查找字段。使用上/下箭头导航匹配项，按 Escape 关闭。
code-find-field-focused = 查找字段已聚焦。输入以搜索文本。使用 Enter 和 Shift-Enter 或上/下箭头在匹配项之间导航。按 Escape 关闭查找栏。
code-find-replace-success = 已成功替换匹配项。选中的匹配项是第 { $match_index } 个，共 { $remaining_matches } 个
code-find-replace-continue = 继续按 Enter 替换更多匹配项，或使用上/下箭头导航。
code-find-replace-last = 已成功替换最后一个匹配项。

## -- 评论编辑器字符串 --
code-review-update-button = 更新
code-review-comment = 评论
code-comment-imported-from-github = 从 GitHub 导入的评论

## -- 新 code_editor 字符串的双前缀别名 --
code_editor-code-hunk = { code-hunk }
code_editor-code-preserve-case-tooltip = { code-preserve-case-tooltip }
code_editor-code-find-no-results = { code-find-no-results }
code_editor-code-find-use-enter-navigate = { code-find-use-enter-navigate }
code_editor-code-find-bar-description = { code-find-bar-description }
code_editor-code-find-replace-field-focused = { code-find-replace-field-focused }
code_editor-code-find-field-focused = { code-find-field-focused }
code_editor-code-find-replace-continue = { code-find-replace-continue }
code_editor-code-find-replace-last = { code-find-replace-last }
code_editor-code-review-update-button = { code-review-update-button }
code_editor-code-review-comment = { code-review-comment }
code_editor-code-comment-imported-from-github = { code-comment-imported-from-github }
code_editor-code-find-result-of = { code-find-result-of }
code_editor-code-find-bar-with-matches = { code-find-bar-with-matches }
