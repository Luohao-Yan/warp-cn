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

## -- 环境表单字符串 -----------------------------------------------------------

env-search-placeholder = 搜索环境...
env-name-placeholder = 环境名称
env-name-placeholder-short = 例如，dev-env
env-description-placeholder = 例如，此环境用于所有前端代理
env-repos-placeholder-authed = 输入仓库（owner/repo 格式）
env-repos-placeholder-authed-browse = 浏览 GitHub 仓库...
env-repos-placeholder-unauthed = 粘贴仓库 URL
env-docker-image-label = Docker 镜像引用
env-docker-image-label-short = Docker 镜像
env-docker-image-placeholder = 例如 python:3.11, node:20-alpine
env-docker-image-placeholder-short = 例如，node:20-alpine
env-setup-commands-label = 设置命令
env-setup-commands-placeholder = 例如 cd my-repo && pip install -r requirements.txt
env-setup-commands-placeholder-short = 例如，node start
env-setup-commands-helper = 设置命令独立运行。每条命令从工作区根目录 (/workspace) 运行。如果命令依赖于前一条，请使用 && 组合。
env-setup-commands-helper-short = 按 Enter 或点击提交按钮来添加每条命令。
env-save-environment = 保存环境
env-share-with-team = 与团队共享
env-edit-title = 编辑环境
env-create-title = 创建环境
env-cancel = 取消
env-personal-warning = 个人环境无法与外部集成或团队 API 密钥一起使用。为获得最佳体验，请使用共享环境。
env-create-not-logged-in = 未登录
env-create-title = 创建环境
env-description-label = 描述
env-repos-label = 仓库
env-auth-with-github = 使用 GitHub 认证
env-github-repos-load-error = 无法加载 GitHub 仓库。你可以粘贴仓库 URL，或重试。
env-github-repos-failed = 加载 GitHub 仓库失败
env-repo-helper-text = 输入 owner/repo 并按 Enter 添加，或从下拉列表中选择。
env-missing-repo = 缺少仓库？
env-configure-access-github = 在 GitHub 上配置访问权限
env-no-repos-found = 未找到仓库
env-generating = 生成中…
env-suggest-image = 推荐镜像
env-suggest-image-tooltip = Warp 将根据你选择的仓库推荐 Docker 镜像。
env-open-image-tooltip = 在 { $docker_hub_url } 打开镜像
env-name-label = 名称
env-authenticate = 认证
env-suggest-image-auth-warning = 你需要授予访问 GitHub 仓库的权限才能推荐 Docker 镜像

