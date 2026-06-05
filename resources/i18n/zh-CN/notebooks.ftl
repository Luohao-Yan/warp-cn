# =============================================================================
# notebooks.ftl — Notebook / plan UI strings (zh-CN)
# =============================================================================
# Message IDs: notebooks-{id}
# Domain: "notebooks"
# =============================================================================

## -- Block types (block insertion menu & omnibar) -----------------------------

notebooks-block-text = 文本
notebooks-block-command = 命令
notebooks-block-bulleted-list = 无序列表
notebooks-block-numbered-list = 有序列表
notebooks-block-code = 代码
notebooks-block-to-do-list = 待办列表
notebooks-block-embed = 嵌入
notebooks-block-divider = 分隔线

## -- Block header labels (h1–h6) ---------------------------------------------

notebooks-block-header-1 = H1
notebooks-block-header-2 = H2
notebooks-block-header-3 = H3
notebooks-block-header-4 = H4
notebooks-block-header-5 = H5
notebooks-block-header-6 = H6

## -- Editor / omnibar ---------------------------------------------------------

notebooks-insert-block = 插入块
notebooks-copy = 复制
notebooks-run-in-terminal = 在终端中运行
notebooks-edit = 编辑
notebooks-raw = 原始
notebooks-rendered = 渲染
notebooks-mermaid-lang = Mermaid

## -- Link editor ---------------------------------------------------------------

notebooks-link-text = 文本
notebooks-link-url = 链接（网页或文件）
notebooks-apply-link = 应用链接

## -- Find bar ------------------------------------------------------------------

notebooks-no-matches = 无匹配项
notebooks-enable-regex-search = 启用正则表达式搜索
notebooks-disable-regex-search = 禁用正则表达式搜索
notebooks-enable-case-sensitive-search = 启用区分大小写搜索
notebooks-disable-case-sensitive-search = 禁用区分大小写搜索
notebooks-focus-next-match = 聚焦下一个匹配项
notebooks-focus-previous-match = 聚焦上一个匹配项
notebooks-close-find-bar = 关闭查找栏

## -- Details bar ---------------------------------------------------------------

notebooks-sign-in-to-edit = 登录以编辑
notebooks-viewing = 查看中
notebooks-editing = 编辑中
notebooks-other-user = 其他用户
notebooks-is-editing = {$editor} 正在编辑

## -- Notebook view --------------------------------------------------------------

notebooks-untitled = 无标题
notebooks-notebook-was-moved-to-trash = 笔记本已移至回收站
notebooks-you-no-longer-have-access = 您不再拥有此笔记本的访问权限
notebooks-restore = 恢复
notebooks-restore-notebook-from-trash = 从回收站恢复笔记本
notebooks-copy-to-personal = 复制到个人空间
notebooks-copy-notebook-contents-into-personal-workspace = 将笔记本内容复制到您的个人工作区
notebooks-copy-all = 全部复制
notebooks-copy-notebook-contents-to-clipboard = 将笔记本内容复制到剪贴板
notebooks-refresh = 刷新
notebooks-refresh-notebook = 刷新笔记本

## -- Conflict / feature-not-available banners ----------------------------------

notebooks-conflict-resolution-message = 此笔记本无法保存，因为您编辑时其他人也进行了更改。请复制您的工作并刷新。
notebooks-feature-not-available-message = 此笔记本无法保存到服务器，因为该功能暂时不可用。更改已保存在本地。请稍后重试。

## -- Secret redaction toast -----------------------------------------------------

notebooks-cannot-save-content-secrets = 此笔记本无法保存，因为其内容包含密钥
notebooks-cannot-save-title-secrets = 此笔记本无法保存，因为其标题包含密钥

## -- Overflow menu items --------------------------------------------------------

notebooks-copy-link = 复制链接
notebooks-link-copied-to-clipboard = 链接已复制到剪贴板
notebooks-open-on-desktop = 在桌面端打开
notebooks-duplicate = 复制
notebooks-export = 导出
notebooks-trash = 移至回收站
notebooks-attach-to-active-session = 附加到活动会话
notebooks-move-to-space = 移至 {$space_name}

## -- File notebook view ---------------------------------------------------------

notebooks-could-not-read = 无法读取 {$file_name}
notebooks-try-again = 重试
notebooks-loading-file = 正在加载 {$file_name}...
notebooks-missing-source-file = 缺少源文件
notebooks-refresh-file = 刷新文件
notebooks-open-in-editor = 在编辑器中打开
notebooks-copy-file-path = 复制文件路径
notebooks-unnamed = 未命名
notebooks-notebook = {$title} 笔记本

## -- Keybinding labels ----------------------------------------------------------

notebooks-increase-notebook-font-size = 增大笔记本字体大小
notebooks-decrease-notebook-font-size = 减小笔记本字体大小
notebooks-reset-notebook-font-size = 重置笔记本字体大小
notebooks-focus-terminal-input-from-notebook = 从笔记本聚焦终端输入
notebooks-focus-terminal-input-from-file = 从文件聚焦终端输入
notebooks-reload-file = 重新加载文件
notebooks-increase-font-size = 增大字体大小
notebooks-decrease-font-size = 减小字体大小

## -- Rich-text editor keybinding labels -----------------------------------------

notebooks-find-in-notebook = 在笔记本中查找
notebooks-toggle-regular-expression-search = 切换正则表达式搜索
notebooks-toggle-case-sensitive-search = 切换区分大小写搜索
notebooks-toggle-bold-styling = 切换粗体样式
notebooks-toggle-italic-styling = 切换斜体样式
notebooks-toggle-strikethrough-styling = 切换删除线样式
notebooks-toggle-inline-code-styling = 切换行内代码样式
notebooks-toggle-underline-styling = 切换下划线样式
notebooks-create-or-edit-link = 创建或编辑链接
notebooks-de-select-shell-commands = 取消选择 Shell 命令
notebooks-select-shell-command-at-cursor = 选择光标处的 Shell 命令
notebooks-select-previous-command = 选择上一个命令
notebooks-select-next-command = 选择下一个命令
notebooks-run-selected-commands = 运行选中的命令
notebooks-remove-link = 移除链接
notebooks-convert-to-block = 转换为 {$block_label}

## -- Model type name ------------------------------------------------------------

notebooks-model-type-plan = 计划
notebooks-model-type-notebook = 笔记本

## -- Accessibility --------------------------------------------------------------

notebooks-enable-regex-search-a11y = 启用正则表达式搜索
notebooks-disable-regex-search-a11y = 禁用正则表达式搜索
notebooks-enable-case-sensitive-search-a11y = 启用区分大小写搜索
notebooks-disable-case-sensitive-search-a11y = 禁用区分大小写搜索

## -- Split pane context menu items ---------------------------------------------

notebooks-split-pane-right = 向右拆分窗格
notebooks-split-pane-left = 向左拆分窗格
notebooks-split-pane-down = 向下拆分窗格
notebooks-split-pane-up = 向上拆分窗格

## -- Link secondary actions -----------------------------------------------------

notebooks-new-session = 新建会话
notebooks-open-a-new-terminal-session-in-this-directory = 在此目录中打开新的终端会话
notebooks-open-in-terminal-session = 在终端会话中打开
notebooks-open-in-editor-label = 在编辑器中打开
notebooks-edit-markdown-file = 编辑 Markdown 文件

## -- Link error messages --------------------------------------------------------

notebooks-file-not-found = 未找到文件
notebooks-no-base-directory = 无基础目录
notebooks-broken-file-link = 文件链接已损坏

## -- Rich-text editor keybinding labels (detailed) -----------------------------

notebooks-copy-binding = 复制
notebooks-paste-binding = 粘贴
notebooks-cut-binding = 剪切
notebooks-undo-binding = 撤销
notebooks-redo-binding = 重做
notebooks-move-backward-one-word = 向后移动一个单词
notebooks-move-forward-one-word = 向前移动一个单词
notebooks-move-forward-one-word-lower = 向前移动一个单词
notebooks-move-backward-one-word-lower = 向后移动一个单词
notebooks-move-cursor-up = 向上移动光标
notebooks-move-cursor-down = 向下移动光标
notebooks-move-cursor-left = 向左移动光标
notebooks-move-cursor-right = 向右移动光标
notebooks-move-to-paragraph-start = 移动到段落开头
notebooks-move-to-paragraph-end = 移动到段落末尾
notebooks-end = 结束
notebooks-select-one-word-left = 向左选择一个单词
notebooks-select-one-word-right = 向右选择一个单词
notebooks-select-one-character-left = 向左选择一个字符
notebooks-select-one-character-right = 向右选择一个字符
notebooks-select-up = 向上选择
notebooks-select-down = 向下选择
notebooks-select-to-paragraph-start = 选择至段落开头
notebooks-select-to-paragraph-end = 选择至段落末尾
notebooks-select-to-line-end = 选择至行尾
notebooks-select-to-line-start = 选择至行首
notebooks-remove-previous-character = 删除前一个字符
notebooks-cut-word-left = 向左剪切单词
notebooks-delete-word-left = 向左删除单词
notebooks-cut-word-right = 向右剪切单词
notebooks-delete-word-right = 向右删除单词
notebooks-cut-all-left = 向左剪切全部
notebooks-delete-all-left = 向左删除全部
notebooks-cut-all-right = 向右剪切全部
notebooks-delete-all-right = 向右删除全部
notebooks-toggle-debug-mode = 切换富文本调试模式
notebooks-copy-rich-text-buffer = 复制富文本缓冲区
notebooks-copy-rich-text-selection = 复制富文本选区
notebooks-log-editor-state = 记录编辑器状态

## -- Link tooltip ---------------------------------------------------------------

notebooks-copy-link-tooltip = 复制链接
notebooks-edit-link-button = 编辑
notebooks-link-copied-toast = 链接已复制

## -- File path tooltip ----------------------------------------------------------

notebooks-open-folder = 打开文件夹
notebooks-open-file = 打开文件
notebooks-open-in-warp = 在 Warp 中打开

## -- Accessibility (editor view) -----------------------------------------------

notebooks-pasting-a11y = 正在粘贴: {$content}
notebooks-edit-link-a11y = 编辑链接
notebooks-copy-link-a11y = 复制链接
notebooks-open-link-a11y = 打开链接: {$url}
notebooks-secondary-click-a11y = 对 {$url} 执行次要点击
notebooks-delete-line-left-a11y = 向左删除行
notebooks-delete-line-right-a11y = 向右删除行
notebooks-delete-word-left-a11y = 向左删除单词
notebooks-delete-word-right-a11y = 向右删除单词
notebooks-cut-line-left-a11y = 向左剪切行
notebooks-cut-line-right-a11y = 向右剪切行
notebooks-cut-word-left-a11y = 向左剪切单词
notebooks-cut-word-right-a11y = 向右剪切单词
notebooks-show-character-palette-a11y = 显示字符面板
notebooks-show-find-bar-a11y = 显示查找栏
notebooks-open-block-insertion-menu-a11y = 打开块插入菜单
notebooks-open-embedded-object-search-a11y = 打开嵌入对象搜索菜单
notebooks-insert-block-a11y = 插入 {$block_label} 块
notebooks-de-select-command-a11y = 取消选择命令
notebooks-switch-selecting-commands-to-text-a11y = 从选择命令切换到选择文本
notebooks-change-code-block-lang-a11y = 将代码块语言更改为 {$code_block_type}
notebooks-copy-code-block-a11y = 复制代码块
notebooks-toggle-task-list-a11y = 切换任务列表

## -- File notebook strings ------------------------------------------------------

notebooks-command-from = 来自 {$location_name} 的命令
notebooks-move-to-space-prefix = 移至 {""}

## -- 笔记本附加绑定 --

notebooks-increase-font-size = 增大笔记本字体大小
notebooks-decrease-font-size = 减小笔记本字体大小
notebooks-reset-font-size = 重置笔记本字体大小
notebooks-focus-terminal-input-from-notebook = 从笔记本聚焦终端输入
notebooks-focus-terminal-input-from-file = 从文件聚焦终端输入
notebooks-reload-file = 重新加载文件
notebooks-link-copied = 链接已复制

## -- 已迁移 UI 字符串的主键 --

notebooks-restore-from-trash-tooltip = 从回收站恢复笔记本
notebooks-copy-notebook-contents-tooltip = 复制笔记本内容到剪贴板
notebooks-copy-notebook-contents-to-personal-tooltip = 复制笔记本内容到个人工作区

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --


## -- 附加笔记本字符串 --

notebooks-conflict-resolution-message = 此笔记本无法保存，因为您编辑时其他人也进行了更改。请复制您的工作并刷新。
notebooks-refresh-notebook = 刷新笔记本
notebooks-remove-link-a11y = 移除链接
notebooks-convert-to-block-a11y = 转换为 { $block_label }
notebooks-enable-regex-search-a11y = 启用正则表达式搜索
notebooks-disable-regex-search-a11y = 禁用正则表达式搜索
notebooks-enable-case-sensitive-search-a11y = 启用区分大小写搜索
notebooks-disable-case-sensitive-search-a11y = 禁用区分大小写搜索
notebooks-focus-next-match-a11y = 聚焦下一个匹配项
notebooks-focus-previous-match-a11y = 聚焦上一个匹配项
notebooks-close-find-bar-a11y = 关闭查找栏

## -- 附加笔记本字符串的双前缀别名 --


## -- 额外文件笔记本和编辑器字符串 ------------------------------------------------

notebooks-command-from = 来自 { $location_name } 的命令
notebooks-could-not-read = 无法读取 { $name }
notebooks-loading-file = 正在加载 { $name }…
notebooks-editor-is-editing = { $editor } 正在编辑
notebooks-pasting-a11y = 正在粘贴：{ $content }
notebooks-copy-link-a11y = 复制链接
notebooks-open-link-a11y = 打开链接：{ $url }
notebooks-secondary-click-a11y = 右键点击 { $url }
notebooks-modifier-click-a11y = [{ $modifier } 点击]
notebooks-insert-block-a11y = 插入 { $block } 块
notebooks-change-lang-a11y = 将代码块语言更改为 { $language }
notebooks-copy-code-block-a11y = 复制代码块
notebooks-open-embed-search-a11y = 打开嵌入对象搜索菜单

## -- 额外文件笔记本和编辑器字符串的双前缀别名 --------------------------------------

## -- 已迁移 UI 字符串的双前缀别名 --


## -- 链接和代码块已迁移字符串 --

notebooks-open-terminal-tooltip = 在此目录中打开新终端会话
notebooks-open-in-terminal = 在终端会话中打开
notebooks-edit-link = 编辑链接
notebooks-mermaid-label = Mermaid

## -- 代码块语言标签（专有名词） --

notebooks-go-lang = Go
notebooks-java-lang = Java
notebooks-javascript-lang = JavaScript
notebooks-python-lang = Python
notebooks-rust-lang = Rust
notebooks-ruby-lang = Ruby on Rails

## -- 链接和代码块已迁移字符串的双前缀别名 --

