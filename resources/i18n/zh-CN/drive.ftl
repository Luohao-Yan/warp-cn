# =============================================================================
# drive.ftl — Warp Drive、共享、导入/导出字符串
# =============================================================================
# Message IDs: drive-{id}
# Used in app/src/drive/*.rs
# =============================================================================

## -- Drive 侧边栏 -----------------------------------------------------------

drive-description = 与你的团队分享命令和知识。
drive-type-folder = 文件夹
drive-type-notebook = 笔记本
drive-type-workflow = 工作流
drive-type-prompt = 提示词
drive-type-env-vars = 环境变量
drive-new-folder = 新建文件夹
drive-new-notebook = 新建笔记本
drive-new-workflow = 新建工作流
drive-new-prompt = 新建提示词
drive-new-env-vars = 新建环境变量
drive-import = 导入
drive-remove = 移除
drive-offline-warning = 你当前处于离线状态，部分文件将只读。
drive-sort-by = 排序方式
drive-retry-sync = 重试同步
drive-upgrade-prompt = 升级以获取更多笔记本、工作流、共享会话和 AI 积分。
drive-restricted-objects = 由于订阅付款问题，共享对象已被限制访问。
drive-update-payment = 请更新你的付款信息以恢复访问。
drive-contact-support = 请联系 support@warp.dev 以恢复访问。
drive-contact-admin = 请联系团队管理员以恢复访问。
drive-untitled = 无标题
drive-empty-trash = 清空回收站
drive-collaborate = 与已在使用 Warp 的 { $count } 位队友协作。
drive-trash-label = 回收站
drive-create-team = 创建团队
drive-or = 或
drive-trash = 回收站
drive-warp-drive = Warp Drive
drive-sign-up-prompt = 免费注册以增加存储限制并解锁更多功能。
drive-sign-up = 注册
drive-amount-max = { $amount }/{ $max_amount }
drive-out-of-objects = 你的计划中的 { $object_type } 已用完。
drive-compare-plans = 比较计划
drive-manage-billing = 管理账单

## -- Drive 上下文菜单项 -------------------------------------------------------

drive-menu-rename = 重命名
drive-menu-copy-link = 复制链接
drive-menu-share = 共享
drive-menu-collapse-all = 全部折叠
drive-menu-retry = 重试
drive-menu-revert-to-server = 恢复到服务器
drive-menu-attach-session = 附加到活动会话
drive-menu-copy-id = 复制 ID
drive-menu-copy-variables = 复制变量
drive-menu-load-in-subshell = 在子 shell 中加载
drive-menu-open-desktop = 在桌面端打开
drive-menu-duplicate = 复制
drive-menu-export = 导出
drive-menu-open = 打开
drive-menu-edit = 编辑
drive-menu-trash = 回收站
drive-menu-restore = 恢复
drive-menu-delete-forever = 永久删除
drive-menu-move-to = 移动到 { $space_name }

## -- Drive 对象类型（小写，用于句子中）-----------------------------------------

drive-object-notebook = 笔记本
drive-object-workflow = 工作流
drive-object-folder = 文件夹
drive-object-env-var-collection = 环境变量集合
drive-object-prompt = 提示词
drive-object-ai-fact = AI 事实
drive-object-ai-fact-collection = AI 事实集合
drive-object-mcp-server = MCP 服务器
drive-object-mcp-server-collection = MCP 服务器集合

## -- 导出 --------------------------------------------------------------------

drive-open-in-finder = 在访达中打开
drive-open-in-folder = 在文件夹中打开
drive-export-finished = 导出完成
drive-export-failed = 导出 { $name } 失败
drive-export-failed-fallback = 导出失败
drive-exported = 已导出 { $name }
drive-exported-fallback = 已导出对象

## -- 共享 --------------------------------------------------------------------

drive-sharing-no-access = 无访问权限
drive-sharing-invite = 邀请
drive-sharing-already-shared = 已与 { $email } 共享
drive-sharing-invalid-address = 无效地址：{ $email }
drive-sharing-who-has-access = 谁有访问权限
drive-sharing-live-session = 实时会话开始于 { $date } { $time }
drive-sharing-only-invited = 仅受邀人员
drive-sharing-anyone-link = 拥有链接的任何人
drive-sharing-only-invited-teammates = 仅受邀的队友
drive-sharing-teammates-link = 拥有链接的队友
drive-sharing-must-have-full = 你必须拥有完全访问权限才能管理权限。你拥有
drive-sharing-must-have-full-access = 你必须拥有完全访问权限才能管理权限。你拥有
drive-sharing-access-suffix =  访问权限。
drive-sharing-can-view = 可查看
drive-sharing-can-edit = 可编辑
drive-sharing-full-access = 完全访问
drive-sharing-copied-link = 已复制 { $object_name } 的链接。

## -- 云操作确认 --------------------------------------------------------------

drive-cancel = 取消
drive-confirm-delete-team = 确定要删除此团队吗？
drive-confirm-leave-team = 确定要离开此团队吗？
drive-delete-team-description = 删除此团队将永久删除它及其所有相关内容，包括账单信息或积分。你将无法恢复它们。
drive-leave-team-description = 你需要被重新邀请才能再次加入。
drive-yes-delete = 是的，删除
drive-yes-leave = 是的，离开

## -- 云对象命名对话框 ---------------------------------------------------------

drive-notebook-name = 笔记本名称
drive-folder-name = 文件夹名称
drive-collection-name = 集合名称
drive-create = 创建
drive-rename = 重命名

## -- 清空回收站确认 ----------------------------------------------------------

drive-confirm-empty-trash = 确定要清空回收站吗？
drive-cannot-undo = 此操作无法撤销。
drive-yes-empty-trash = 是的，清空回收站

## -- 导入 --------------------------------------------------------------------

drive-import-title = 导入
drive-import-close = 关闭
drive-import-cancel = 取消
drive-import-file-types = md, yaml, yml
drive-import-preparing = 准备中...
drive-import-choose-files = 选择文件...
drive-import-parse-failed = 解析文件失败：{ $error }

## -- 工作流 ------------------------------------------------------------------

drive-workflow-untitled = 无标题工作流
drive-workflow-description-placeholder = 添加描述
drive-workflow-command-placeholder = echo "Hello {{your_name}}" # 用花括号插入参数\n# 输入单行命令或完整的 shell 脚本
drive-workflow-new-argument = 新参数
drive-workflow-argument-description = 描述
drive-workflow-argument-default = 默认值（可选）
drive-workflow-save = 保存工作流
drive-workflow-autofill = 自动填充
drive-workflow-loading = 加载中
drive-workflow-unsaved = 你有未保存的更改。
drive-workflow-keep-editing = 继续编辑
drive-workflow-discard = 放弃更改
drive-workflow-copy-text = 复制工作流文本
drive-workflow-trash = 回收站
drive-workflow-ai-tooltip = 使用 Warp AI 生成标题、描述或参数
drive-workflow-bad-command = 生成元数据失败，请使用其他命令重试。
drive-workflow-ai-provider-error = 出现错误，请重试。
drive-workflow-rate-limited = AI 积分已用完，请稍后再试。
drive-workflow-out-of-credits-admin = AI 积分已用完，请联系团队管理员升级以获取更多积分。
drive-enum-static = 静态
drive-enum-dynamic = 动态

## -- 工作流枚举创建 -----------------------------------------------------------

drive-enum-close = 关闭
drive-enum-new = 新建枚举
drive-enum-edit = 编辑枚举
drive-enum-name = 名称
drive-enum-create = 创建
drive-enum-save = 保存
drive-enum-variant = 变体
drive-enum-variants = 变体
drive-enum-command-placeholder = # 输入生成变体的 shell 命令，以换行分隔。\n\ngit branch -a

## -- 额外模型类型名称 ---------------------------------------------------------

## -- 导出（附加） -------------------------------------------------------------

drive-export-failed-named = 导出"{ $name }"失败。
drive-exported-named = 已导出"{ $name }"。
## -- 共享对话框（附加） ---------------------------------------------------------

drive-sharing-emails-label = 电子邮件
drive-sharing-invite-label = 邀请
drive-sharing-team-auto-permissions = 团队对象自动授予团队成员完全权限
drive-sharing-owner-full-permissions = 所有者始终对其对象拥有完全权限

## -- Drive 索引附加字符串 ----------------------------------------------------

drive-syncing-warp-drive = 正在同步 Warp Drive
drive-copy-prompt = 复制提示词
drive-copy-workflow-text = 复制工作流文本
drive-share-object = 共享对象
drive-open-team-settings = 打开团队设置
drive-view-plans = 查看计划
## -- 排序方式菜单文本 -------------------------------------------------------

drive-sort-last-updated = 最近更新
drive-sort-last-trashed = 最近删除
drive-sort-a-to-z = A 到 Z
drive-sort-z-to-a = Z 到 A
drive-sort-type = 类型

## -- 附加按钮标签 ----------------------------------------------------

drive-restore = 恢复

## -- 工作流视图菜单项 -------------------------------------------------------

drive-copy-link = 复制链接
drive-open-on-desktop = 在桌面端打开
drive-duplicate = 复制
drive-other = 其他
drive-menu-unshare = 取消共享
drive-deleting-label = 正在删除…
drive-executed-on = 执行于：{ $time }
drive-export-finished-toast = 导出对象完成
drive-sharing-copied-link-toast = 已复制 { $object_name } 的链接。

## -- 共享对话框附加字符串 -------------------------------------------------

drive-who-has-access = 谁有访问权限

## -- 工作流视图附加字符串 -------------------------------------------------

drive-workflow-fill-arguments = 填写此工作流中的参数，复制后在终端会话中运行
drive-workflow-env-variables = 环境变量

## -- 导出失败字符串 --

drive-failed-export = 导出失败
drive-failed-export-name = 导出 { $name } 失败

## -- Drive 项目附加字符串 ---------------------------------------------------

drive-from-owner = 来自 { $owner }
drive-unknown-user = 未知用户
drive-unknown-team = 未知团队

## -- Drive 索引附加字符串（续）-----------------------------------------------

drive-env-vars-type = 环境变量
drive-agent-workflows-type = 智能体工作流
drive-ai-fact-type = AI 事实
drive-mcp-server-type = MCP 服务器
drive-mcp-servers-type = MCP 服务器
drive-trash-warning = 回收站中的项目将在 30 天后永久删除。

## -- 共享继承字符串 -----------------------------------------------------------

drive-inherited-from = 继承自 { $parent }
drive-edit-inherited-tooltip = 编辑父文件夹上的继承权限
drive-inherited-permission = 继承的权限
drive-cannot-edit-inherited = 无法编辑继承的权限
drive-anyone-with-link = 任何拥有链接的人

## -- 团队部分字符串 -----------------------------------------------------------

drive-collaborate-with-teammates = 与 { $count } 位已在 Warp 上的队友协作。
drive-team-space-zero-state = 拖拽或移动个人工作流或笔记本到此处与团队共享。
drive-view-teams-to-join = 查看可加入的团队
drive-view-team-to-join = 查看可加入的团队
drive-learn-file-support = 了解文件支持和格式
drive-failed-upload-file = 上传文件到服务器失败
drive-failed-upload-folder = 上传文件夹到服务器失败

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

drive-restore-workflow-tooltip = 从回收站恢复工作流
drive-notebooks = 笔记本
drive-workflows = 工作流
drive-folders = 文件夹
drive-rules = 规则
