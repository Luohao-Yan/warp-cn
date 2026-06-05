# =============================================================================
# editor.ftl — 编辑器键绑定描述和界面字符串
# =============================================================================
# Message IDs: editor-{id}
# 用于 app/src/editor/*.rs
# =============================================================================

## -- 固定绑定描述 -----------------------------------------------------------

editor-copy = 复制
editor-cut = 剪切
editor-paste = 粘贴
editor-undo = 撤销
editor-redo = 重做

## -- 可编辑绑定描述（键绑定设置）-------------------------------------------

editor-select-one-word-left = 向左选择一个词
editor-select-one-word-right = 向右选择一个词
editor-select-one-char-left = 向左选择一个字符
editor-select-one-char-right = 向右选择一个字符
editor-select-up = 向上选择
editor-select-down = 向下选择
editor-select-all = 全选
editor-select-to-line-start = 选择至行首
editor-select-to-line-end = 选择至行尾
editor-copy-and-clear-lines = 复制并清除选中的行
editor-add-selection-next-occurrence = 为下一个匹配项添加选区
editor-select-to-line-end-title = 选择至行尾
editor-select-to-line-start-title = 选择至行首
editor-move-cursor-up = 上移光标
editor-move-cursor-down = 下移光标
editor-move-cursor-left = 左移光标
editor-move-cursor-right = 右移光标
editor-move-to-line-start = 移至行首
editor-move-to-line-end = 移至行尾
editor-end = 结束
editor-move-cursor-bottom = 移至底部
editor-move-cursor-top = 移至顶部
editor-select-and-move-top = 选择并移至顶部
editor-select-and-move-bottom = 选择并移至底部
editor-move-forward-one-word = 向前移动一个词
editor-move-backward-one-word = 向后移动一个词
editor-move-paragraph-start = 移至段落开头
editor-move-paragraph-end = 移至段落末尾
editor-move-buffer-start = 移至缓冲区开头
editor-move-buffer-end = 移至缓冲区末尾
editor-remove-previous-char = 删除前一个字符
editor-cut-word-left = 剪切左侧的词
editor-delete-word-left = 删除左侧的词
editor-cut-word-right = 剪切右侧的词
editor-delete-word-right = 删除右侧的词
editor-clear-selected-lines = 清除选中的行
editor-cut-all-right = 剪切右侧全部内容
editor-delete-all-right = 删除右侧全部内容
editor-delete-all-left = 删除左侧全部内容
editor-insert-newline = 插入换行符
editor-fold = 折叠
editor-unfold = 展开
editor-fold-selected-ranges = 折叠选中的范围
editor-insert-last-word-prev-cmd = 插入上一条命令的最后一个词
editor-move-backward-one-word-title = 向后移动一个词
editor-move-forward-one-word-title = 向前移动一个词
editor-move-backward-one-subword = 向后移动一个子词
editor-move-forward-one-subword = 向前移动一个子词
editor-select-one-subword-left = 向左选择一个子词
editor-select-one-subword-right = 向右选择一个子词
editor-accept-autosuggestion = 接受自动建议
editor-inspect-command = 检查命令
editor-clear-command-editor = 清除命令编辑器
editor-add-cursor-above = 在上方添加光标
editor-add-cursor-below = 在下方添加光标

## -- 提示 ------------------------------------------------------------------

editor-search-files-directories = 搜索文件和目录

## -- 图片错误消息 ----------------------------------------------------------

editor-model-no-image-support = 所选模型不支持图片作为上下文。
editor-image-unsupported-single = 无法附加图片 - 支持的格式为 PNG、JPG、GIF、WEBP。
editor-image-unsupported-one = 1 张图片未附加 - 支持的格式为 PNG、JPG、GIF、WEBP。
editor-image-unsupported-many = { $count } 张图片未附加 - 支持的格式为 PNG、JPG、GIF、WEBP。
editor-image-read-error-single = 无法附加图片 - 读取文件失败。
editor-image-read-error-one = 1 张图片未附加 - 读取文件失败。
editor-image-read-error-many = { $count } 张图片未附加 - 读取文件失败。
editor-image-too-large-single = 无法附加图片 - 文件过大。
editor-image-too-large-one = 1 张图片未附加 - 文件过大。
editor-image-too-large-many = { $count } 张图片未附加 - 文件过大。
editor-image-processing-error-single = 无法附加图片 - 处理时出错。
editor-image-processing-error-one = 1 张图片未附加 - 处理时出错。
editor-image-processing-error-many = { $count } 张图片未附加 - 处理时出错。
editor-limit-per-query = 每次查询上限为 { $count }
editor-limit-per-conversation = 每次对话上限为 { $count }
editor-image-not-attached = 1 张图片未附加 - { $reason }。
editor-images-not-attached = { $count } 张图片未附加 - { $reason }。

## -- 键绑定描述 -----------------------------------------------------------

editor-insert-nonexpanding-space = 插入不可扩展空格
editor-exit-vim-insert-mode = 退出 Vim 插入模式

## -- 自动建议界面 -----------------------------------------------------------

editor-custom-ellipsis = 自定义...
editor-change-keybinding = 更改键绑定
editor-ignore-suggestion = 忽略此建议

## -- 图片上下文提示 --------------------------------------------------------

editor-image-unsupported-model = 此模型不支持图片附件
editor-image-loading = 加载中...
editor-image-limit-per-query = 图片附件已禁用 — 每次查询上限为 { $count }
editor-image-limit-per-conversation = 图片附件已禁用 — 每次对话上限为 { $count }
editor-attach-images = 附加图片

## -- 编辑器视图字符串 ---------------------------------------------------------

editor-ignore-suggestion-tooltip = 忽略此建议
editor-image-not-supported = 此模型不支持图片附件
editor-loading = 加载中...
editor-attach-images-action = 添加图片
editor-image-too-large = 无法添加图片 - 文件过大。
editor-image-processing-error = 无法添加图片 - 处理出错。

## -- 语音输入 --------------------------------------------------------------

editor-voice-limit-hit = 您已达到语音请求的限制。您的限制将在下一个周期刷新。
editor-voice-error = 处理您的语音输入时发生错误。

## -- 接受自动建议快捷键字符串 -----------------------------------------------

editor-custom-keybinding = 自定义...
editor-change-keybinding-tooltip = 更改快捷键

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

