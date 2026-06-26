# =============================================================================
# code.ftl — 代码编辑器、语言服务器、文件操作（简体中文）
# =============================================================================
# Message IDs: code-{id}
# =============================================================================

## -- 标签页/文件操作 ----------------------------------------------------------

code-close-all-tabs = 关闭所有标签页
code-close-saved = 关闭已保存
code-close-saved-tabs = 关闭已保存的标签页
code-save-file = 保存文件
code-save-file-as = 另存为
code-file-saved = 文件已保存
code-failed-to-save-file = 保存文件失败。
code-failed-to-load-file = 加载文件失败。
code-copy-file-path = 复制文件路径

## -- 在文件管理器中显示 --------------------------------------------------------

code-reveal-in-finder = 在 Finder 中显示
code-reveal-in-explorer = 在资源管理器中显示
code-reveal-in-file-manager = 在文件管理器中显示

## -- 语言服务器 ---------------------------------------------------------------

code-install-server = 安装服务器
code-install-servers = 安装服务器
code-installing-server = 正在安装服务器…
code-enable-server = 启用服务器
code-enable-servers = 启用服务器
code-manage-servers = 管理服务器
code-restart-server = 重启服务器
code-start-server = 启动服务器
code-stop-server = 停止服务器
code-remove-server = 删除服务器
code-start-all-servers = 启动所有服务器
code-start-all-stopped-servers = 启动所有已停止的服务器
code-stop-all-servers = 停止所有服务器
code-restart-all-servers = 重启所有服务器
code-enable-ai-tab-config-skill = 启用 AI 标签页配置技能
code-open-agent-input-tab-config-skill = 打开智能体输入标签页配置技能
code-language-server-unavailable-codebase = 此代码库的语言服务器不可用
code-language-support-not-enabled = 语言支持未启用
code-language-support-unavailable = 语言支持不可用
code-language-support-unavailable-file-type = 此文件类型的语言支持不可用

code-open-agent-input-tab-config = 打开智能体输入，使用 /update-tab-config 技能
code-enable-ai-tab-config = 启用 AI 以使用 /update-tab-config 技能
code-lang-support-unavailable-file = 此文件类型的语言支持不可用
code-lang-support-not-enabled = { $name } 的语言支持当前未启用
code-this-codebase = 此代码库
code-lang-server-unavailable = 此代码库的语言服务器不可用
code-lang-support-unavailable = { $name } 的语言支持不可用

## -- 代码操作 -----------------------------------------------------------------

code-comment-label = 注释
code-overwrite-label = 覆盖
code-update-label = 更新
code-discard-this-version = 丢弃此版本
code-find-references = 查找引用
code-add-as-context = 添加为上下文
code-attach-as-context = 作为上下文附加
code-suggested-fixes-last-command = 上次命令的建议修复
code-unknown-workspace = 未知工作区

## -- Markdown 预览 ------------------------------------------------------------

code-view-markdown-preview = 查看 Markdown 预览
code-open-logs = 打开日志

## -- 查找/替换 -----------------------------------------------------------------

code-find-placeholder = 查找
code-regex-toggle-tooltip = 使用正则表达式
code-case-sensitive-tooltip = 区分大小写
code-select-all = 全选
code-replace-all = 全部替换
code-replace-label = 替换
code-find-within-block-tooltip = 在选中的块中查找

## -- 查找/替换附加字符串 -------------------------------------------------------

code-find-next-occurrence = 查找搜索查询的下一个匹配项
code-find-prev-occurrence = 查找搜索查询的上一个匹配项
code-match-index = { $current }/{ $total }
code-match-index-no-current = ?/{ $total }

## -- 文件树 ---------------------------------------------------------------------

code-explorer-remote = 项目资源管理器需要访问本地工作区，远程会话不支持此功能。
code-explorer-disabled = 项目资源管理器需要访问本地工作区。请打开新会话或导航到活跃会话以查看。
code-explorer-wsl = 项目资源管理器目前在 WSL 中不可用。

code-folder-too-many-files = 文件夹中的文件过多，无法在文件浏览器中显示。
code-project-explorer-unavailable = 项目资源管理器不可用

code-file-label = 文件
code-folder-label = 文件夹
code-open-file = 打开文件
code-new-file = 新建文件
code-open-in-new-tab = 在新标签页中打开
code-open-in-new-pane = 在新窗格中打开
code-cd-to-directory = cd 到目录
code-copy-relative-path = 复制相对路径

## -- 代码操作（附加） -----------------------------------------------------------

code-go-to-definition = 跳转到定义
code-accept-and-save = 接受并保存
code-reject = 拒绝
code-saved-changes-not-reflected = 更改已保存但尚未反映在终端中
code-untitled = 无标题
code-language-support-not-enabled-workspace = { $root_name } 的语言支持当前未启用
code-use-oz-update-config = 使用 /update-tab-config 技能

## -- 代码视图菜单项 -------------------------------------------------------

code-split-pane-right = 向右分割窗格
code-split-pane-left = 向左分割窗格
code-split-pane-down = 向下分割窗格
code-split-pane-up = 向上分割窗格
code-close-pane = 关闭窗格

## -- Footer LSP menu items (lowercase for inline menus) -------------------------

code-footer-open-logs = 打开日志
code-footer-restart-server = 重启服务器
code-footer-stop-server = 停止服务器
code-footer-start-server = 启动服务器
code-footer-remove-server = 移除服务器
code-footer-restart-all-servers = 重启所有服务器
code-footer-stop-all-servers = 停止所有服务器
code-footer-start-all-servers = 启动所有服务器
code-footer-start-all-stopped-servers = 启动所有已停止的服务器
code-footer-manage-servers = 管理服务器

## -- 代码审查 ----------------------------------------------------------------

code-review-tooltip = 查看更改
code-review-remote = 差异比较仅适用于本地工作区。
code-review-disabled = 差异比较仅适用于 Git 仓库。
code-review-wsl = 差异比较目前在 WSL 中不可用。

## -- Code view additional strings ------------------------------------------------

code-hint = 提示
code-diagnostic = 诊断

## -- 装饰栏按钮工具提示 --------------------------------------------------------

code-add-diff-hunk-as-context = 添加差异块作为上下文
code-save-changes-to-attach-as-context = 保存更改以附加为上下文
code-revert-diff-hunk = 还原差异块
code-save-changes-to-revert = 保存更改以还原
code-add-comment-on-line = 在此行添加评论
code-save-changes-to-add-comment = 保存更改以添加评论
code-show-saved-comment = 显示已保存的评论
code-suggested-fixes-based-on-your-last-command = 基于你上次命令的建议修复：

## -- 快捷键描述 ---------------------------------------------------

code-move-backward-one-word = 向后移动一个单词
code-move-forward-one-word = 向前移动一个单词
code-move-cursor-up = 光标移到上一行
code-move-cursor-down = 光标移到下一行
code-move-cursor-left = 光标向左移动
code-move-cursor-right = 光标向右移动
code-move-to-line-start = 光标移到行首
code-home = 光标移到行首
code-move-to-line-end = 光标移到行尾
code-end = 光标移到行尾
code-cursor-at-buffer-start = 光标在缓冲区开头
code-cursor-at-buffer-end = 光标在缓冲区末尾
code-select-one-word-to-the-left = 向左选择一个单词
code-select-one-word-to-the-right = 向右选择一个单词
code-select-one-character-to-the-left = 向左选择一个字符
code-select-one-character-to-the-right = 向右选择一个字符
code-select-up = 向上选择
code-select-down = 向下选择
code-select-to-start-of-line = 选择至行首
code-select-to-end-of-line = 选择至行尾
code-select-to-line-end = 选择至行尾
code-select-to-line-start = 选择至行首
code-backspace = 退格
code-toggle-comment = 切换行/块注释
code-scroll-down-half-page-vim = 向下滚动半页（vim）
code-scroll-up-half-page-vim = 向上滚动半页（vim）
code-cut-word-left = 剪切左侧单词
code-delete-word-left = 删除左侧单词
code-cut-word-right = 剪切右侧单词
code-delete-word-right = 删除右侧单词
code-cut-all-left = 剪切左侧全部
code-delete-all-left = 删除左侧全部
code-cut-all-right = 剪切右侧全部
code-delete-all-right = 删除右侧全部
code-exit-vim-insert-mode = 退出 Vim 插入模式
code-find-in-code-editor = 在代码编辑器中查找
code-go-to-line = 跳转到行

## -- 代码视图附加绑定 --

code-file-saved-toast = 文件已保存。

code-loading = 加载中...
code-cycle-suggestions = 切换建议

## -- 查找栏无障碍字符串 ------------------------------------------------

code-find-bar-description = 查找栏
code-find-field-focused = 查找字段已聚焦
code-find-no-results = 无结果
code-find-use-enter-navigate = 按 Enter 键导航结果
code-find-replace-field-focused = 替换字段已聚焦
code-find-replace-continue = 按 Enter 键继续替换
code-find-replace-last = 这是最后一个匹配项
code-preserve-case-tooltip = 保留大小写

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

## -- 查找引用和页脚字符串 ---------------------------------------------------------

code-showing-one-reference = 显示 1 个引用
code-showing-references = 显示 { $count } 个引用
code-server-status-message = { $name }：{ $message }
code-server-stopped = { $name }：已停止
code-server-error = { $name }：错误
code-server-error-detail = { $name }：{ $error }

## -- 查找引用和页脚字符串的双前缀别名 ---------------------------------------------

## -- 为 i18n 完整性补充的缺失键 --

code-find-bar-with-matches = { $current } / { $total }
code-find-replace-success = 已替换 { $count } 处
code-find-result-of = /

