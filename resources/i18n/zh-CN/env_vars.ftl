# =============================================================================
# env_vars.ftl — 环境变量集合 / 密钥命令字符串
# =============================================================================
# Message IDs: env-vars-{id}
# Used in app/src/env_vars/*.rs
# =============================================================================

## -- 密钥命令对话框 -----------------------------------------------------------

env-vars-secret-command = 密钥命令
env-vars-command-placeholder = 命令
env-vars-variables-label = 变量
env-vars-command-label = 命令
env-vars-clear-secret = 清除密钥

## -- 标签和占位符 -------------------------------------------------------------

env-vars-title-label = 标题
env-vars-description-label = 描述
env-vars-value-label = 值
env-vars-variable-label = 变量
env-vars-title-placeholder = 添加标题
env-vars-description-placeholder = 添加描述
env-vars-load-label = 加载

## -- 教育文本 -----------------------------------------------------------------

env-vars-education-text = 添加密钥或命令。Warp 不会存储外部密钥

## -- 回收站横幅 ---------------------------------------------------------------

env-vars-trash-banner-deleted = 您不再拥有访问这些环境变量的权限
env-vars-trash-banner-moved = 环境变量已移至回收站
env-vars-restore-tooltip = 从回收站恢复环境变量

## -- 未保存更改对话框 ---------------------------------------------------------

env-vars-unsaved-changes = 您有未保存的更改。
env-vars-keep-editing = 继续编辑
env-vars-discard-changes = 放弃更改

## -- 验证错误 -----------------------------------------------------------------

env-vars-validation-enterprise = 由于与企业密钥脱敏设置冲突，无法创建此环境变量。请联系团队管理员了解详情。
env-vars-validation-user = 由于与密钥脱敏设置冲突，无法创建此环境变量。请将密钥保存为环境变量（在 shell 配置或 .env 文件中），或在"设置 > 隐私"中更新密钥脱敏设置。

## -- 错误提示 -----------------------------------------------------------------

env-vars-invoke-error = 尝试调用环境变量时发生错误
env-vars-close-env-var-collection = 关闭环境变量集合

## -- 类型标签 -----------------------------------------------------------------

env-vars-type-label = 环境变量

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID

env-vars-env-vars-secret-command = { env-vars-secret-command }
env-vars-env-vars-command-placeholder = { env-vars-command-placeholder }
env-vars-env-vars-variables-label = { env-vars-variables-label }
env-vars-env-vars-command-label = { env-vars-command-label }
env-vars-env-vars-clear-secret = { env-vars-clear-secret }
env-vars-env-vars-title-label = { env-vars-title-label }
env-vars-env-vars-description-label = { env-vars-description-label }
env-vars-env-vars-value-label = { env-vars-value-label }
env-vars-env-vars-variable-label = { env-vars-variable-label }
env-vars-env-vars-title-placeholder = { env-vars-title-placeholder }
env-vars-env-vars-description-placeholder = { env-vars-description-placeholder }
env-vars-env-vars-load-label = { env-vars-load-label }
env-vars-env-vars-education-text = { env-vars-education-text }
env-vars-env-vars-trash-banner-deleted = { env-vars-trash-banner-deleted }
env-vars-env-vars-trash-banner-moved = { env-vars-trash-banner-moved }
env-vars-env-vars-restore-tooltip = { env-vars-restore-tooltip }
env-vars-env-vars-unsaved-changes = { env-vars-unsaved-changes }
env-vars-env-vars-keep-editing = { env-vars-keep-editing }
env-vars-env-vars-discard-changes = { env-vars-discard-changes }
env-vars-env-vars-validation-enterprise = { env-vars-validation-enterprise }
env-vars-env-vars-validation-user = { env-vars-validation-user }
env-vars-env-vars-invoke-error = { env-vars-invoke-error }
env-vars-env-vars-close-env-var-collection = { env-vars-close-env-var-collection }
