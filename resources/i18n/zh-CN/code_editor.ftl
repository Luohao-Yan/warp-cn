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
