# =============================================================================
# auth.ftl — 认证、登录和注册字符串
# =============================================================================
# Message IDs: auth-{id}
# =============================================================================

auth-login-title = 登录
auth-login-description = 登录你的 Warp 账户
auth-signup-title = 创建账户
auth-signup-description = 创建 Warp 账户以同步设置等
auth-logout-title = 退出登录
auth-logout-description = 确定要退出登录吗？
auth-paste-token-title = 粘贴认证令牌
auth-paste-token-description = 在下方粘贴你的令牌以完成认证
auth-paste-token-placeholder = 在此粘贴令牌…
auth-continue-button = 继续
auth-cancel-button = 取消
auth-done-button = 完成
auth-skip-button = 稍后再说
auth-export-data-button = 导出你的数据
auth-privacy-settings = 隐私设置

## -- 覆盖警告 ---------------------------------------------------------

auth-override-warning-title = 警告
auth-override-continue = 继续
auth-override-cancel = 取消

## -- SSO 链接视图 ---------------------------------------------------------------

auth-link-sso = 链接 SSO
auth-sso-header = 您的组织已为您的账户启用了 SSO
auth-sso-detail = 点击下方按钮将您的 Warp 账户链接到 SSO 提供商。

## -- 登录幻灯片占位文本 -------------------------------------------------

auth-token-placeholder = 认证令牌
auth-enter-token-placeholder = 输入认证令牌

## -- 粘贴认证令牌模态框 -------------------------------------------------

auth-paste-token-modal-title = 在下方粘贴你的认证令牌
auth-paste-token-modal-subtitle = 从浏览器粘贴你的认证令牌以完成登录。

## -- 覆盖警告正文字符串 -----------------------------------------

auth-override-description = 看起来您通过网页浏览器登录了一个 Warp 账户。如果您继续，此匿名会话中的任何个人 Warp Drive 对象和偏好设置将被永久删除。
auth-override-cannot-undo = 此操作无法撤销。
auth-override-new-login-header = 检测到新登录
auth-override-confirm-delete-header = 删除个人 Warp Drive 对象和偏好设置？
auth-override-export-data = 导出您的数据
auth-override-export-later = 以便稍后导入。

## -- 登录失败通知字符串 --

auth-invalid-token-entered = 输入了无效的认证令牌。
auth-failed-login-manual-copy = 登录失败。请尝试从认证网页手动复制认证令牌并粘贴到弹窗中。
auth-request-login-failed = 登录请求失败。
auth-request-signup-failed = 注册请求失败。
auth-invalid-redirect-url = 粘贴的重定向 URL 不是来自本应用。请点击下方按钮重试。

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

auth-auth-enter-token-placeholder = { auth-enter-token-placeholder }
auth-auth-link-sso = { auth-link-sso }
auth-auth-paste-token-modal-subtitle = { auth-paste-token-modal-subtitle }
auth-auth-paste-token-modal-title = { auth-paste-token-modal-title }
auth-auth-signup-title = { auth-signup-title }
auth-auth-sso-detail = { auth-sso-detail }
auth-auth-sso-header = { auth-sso-header }
auth-auth-token-placeholder = { auth-token-placeholder }

## -- Additional auth strings --
auth-by-continuing = 继续即表示您同意 Warp 的
auth-already-have-account = 已有账户？
auth-dont-want-sign-in = 现在不想登录？
auth-browser-hasnt-launched = 如果您的浏览器尚未启动，
auth-using-warp-offline = 离线使用 Warp
auth-browser-token-placeholder = 浏览器认证令牌
auth-opt-out-analytics-1 = 如果您想退出分析和 AI 功能，
auth-opt-out-analytics-2 = 您可以在
auth-skip-login-confirm = 确定要跳过登录吗？
auth-skip-login-warning-1 = 您可以稍后注册，但某些功能（如 AI）
auth-skip-login-warning-2 = 仅对登录用户可用。
auth-skip-login-yes = 是的，跳过登录
auth-browser-sign-in-header = 在浏览器中登录{"\n"}以继续
auth-copy-url = 复制 URL
auth-open-manually = 并手动打开页面。

## -- Double-prefix aliases for new auth strings --
auth-auth-by-continuing = { auth-by-continuing }
auth-auth-already-have-account = { auth-already-have-account }
auth-auth-dont-want-sign-in = { auth-dont-want-sign-in }
auth-auth-browser-hasnt-launched = { auth-browser-hasnt-launched }
auth-auth-using-warp-offline = { auth-using-warp-offline }
auth-auth-privacy-settings = { auth-privacy-settings }
auth-auth-override-description = { auth-override-description }
auth-auth-override-cannot-undo = { auth-override-cannot-undo }
auth-auth-override-new-login-header = { auth-override-new-login-header }
auth-auth-override-confirm-delete-header = { auth-override-confirm-delete-header }
auth-auth-override-export-data = { auth-override-export-data }
auth-auth-override-export-later = { auth-override-export-later }
auth-auth-browser-token-placeholder = { auth-browser-token-placeholder }
auth-auth-opt-out-analytics-1 = { auth-opt-out-analytics-1 }
auth-auth-opt-out-analytics-2 = { auth-opt-out-analytics-2 }
auth-auth-skip-login-confirm = { auth-skip-login-confirm }
auth-auth-skip-login-warning-1 = { auth-skip-login-warning-1 }
auth-auth-skip-login-warning-2 = { auth-skip-login-warning-2 }
auth-auth-skip-login-yes = { auth-skip-login-yes }
auth-auth-browser-sign-in-header = { auth-browser-sign-in-header }
auth-auth-copy-url = { auth-copy-url }
auth-auth-open-manually = { auth-open-manually }

## -- Double-prefix aliases for new auth strings --

auth-auth-press-enter-to-open-browser = { auth-press-enter-to-open-browser }
auth-auth-get-started-with-warp-drive = { auth-get-started-with-warp-drive }
auth-auth-get-started-with-ai = { auth-get-started-with-ai }
auth-auth-connect-drive-description = { auth-connect-drive-description }
auth-auth-connect-ai-description = { auth-connect-ai-description }
auth-auth-terms-of-service = { auth-terms-of-service }
auth-auth-sign-in-on-browser = { auth-sign-in-on-browser }
auth-auth-disable-warp-drive = { auth-disable-warp-drive }
auth-auth-disable-ai-features = { auth-disable-ai-features }
auth-auth-enable-warp-drive = { auth-enable-warp-drive }
auth-auth-enable-ai-features = { auth-enable-ai-features }
auth-auth-opt-out-analytics-and-ai = { auth-opt-out-analytics-and-ai }
auth-auth-opt-out-analytics = { auth-opt-out-analytics }
auth-auth-copy-the-url = { auth-copy-the-url }
auth-auth-and-open = { auth-and-open }
auth-auth-the-page-manually = { auth-the-page-manually }
auth-auth-click-here-paste-token-slide = { auth-click-here-paste-token-slide }
auth-auth-privacy-settings-slide = { auth-privacy-settings-slide }
auth-auth-sure-disable-warp-drive = { auth-sure-disable-warp-drive }
auth-auth-sure-disable-ai-features = { auth-sure-disable-ai-features }
auth-auth-warp-drive-benefits = { auth-warp-drive-benefits }
auth-auth-ai-benefits = { auth-ai-benefits }
auth-auth-logout-question = { auth-logout-question }
auth-auth-yes-log-out = { auth-yes-log-out }
auth-auth-show-running-processes = { auth-show-running-processes }
auth-auth-long-running-warning = { auth-long-running-warning }
auth-auth-shared-session-warning = { auth-shared-session-warning }
auth-auth-unsynced-warning = { auth-unsynced-warning }
auth-auth-unsaved-files-warning = { auth-unsaved-files-warning }
auth-auth-loading = { auth-loading }
auth-auth-error-authenticating = { auth-error-authenticating }

## -- 离线覆盖层字符串 --

auth-offline-message = 您当前处于离线状态。首次使用 Warp 需要网络连接。
auth-offline-paragraph-1 = Warp 的所有非云功能均可离线使用。
auth-offline-paragraph-2 = 但是，我们要求用户首次使用 Warp 时必须在线，以便启用 Warp 的 AI 和云功能。
auth-offline-paragraph-3 = 我们向所有用户提供云功能，因此需要网络连接来计量 AI 使用量、防止滥用以及将云对象与用户关联。如果您选择不登录使用 Warp，系统将附加一个唯一 ID 到匿名用户账户以支持这些功能。

## -- 隐私设置字符串 --

auth-help-improve-warp = 帮助改进 Warp
auth-telemetry-description = 高级功能使用数据帮助 Warp 产品团队确定路线图的优先级。
auth-send-crash-reports = 发送崩溃报告
auth-crash-reporting-description = 崩溃报告帮助 Warp 工程团队了解稳定性并改进性能。
auth-store-ai-conversations = 在云端存储 AI 对话
auth-cloud-conversation-enabled-description = 智能体对话可以与他人共享，并在不同设备登录时保留。此数据仅用于产品功能，Warp 不会将其用于分析。
auth-cloud-conversation-disabled-description = 智能体对话仅存储在本地设备上，注销后将丢失，且无法共享。注意：环境智能体的对话数据仍存储在云端。

## -- 额外认证视图字符串 --
auth-click-here-paste-token = 点击此处从浏览器粘贴令牌
auth-terms-of-service = 服务条款
auth-welcome-to-warp = 欢迎使用 Warp！
auth-sign-up-for-warp = 注册 Warp
auth-require-login-closeable = 要使用 Warp 的 AI 功能或与他人协作，请创建账户。
auth-hit-drive-limit-closeable = 要在 Warp Drive 中创建更多对象，请创建账户。
auth-share-requirement-closeable = 要共享，请创建账户。
auth-press-enter-to-open-browser = 按回车键打开浏览器以注册或登录。

## -- 登录幻灯片字符串 --
auth-get-started-with-warp-drive = 开始使用 Warp Drive
auth-get-started-with-ai = 开始使用 AI
auth-connect-drive-description = 连接您的账户以跨设备保存和共享笔记本、工作流等。
auth-connect-ai-description = 连接您的账户以启用 AI 驱动的规划、编码和自动化。
auth-sign-in-on-browser = 在浏览器中登录以继续
auth-disable-warp-drive = 禁用 Warp Drive
auth-disable-ai-features = 禁用 AI 功能
auth-enable-warp-drive = 启用 Warp Drive
auth-enable-ai-features = 启用 AI 功能
auth-opt-out-analytics-and-ai = 如果您想退出分析和 AI 功能，您可以在
auth-opt-out-analytics = 如果您想退出分析，您可以在
auth-copy-the-url = 复制 URL
auth-and-open =  并打开
auth-the-page-manually = 页面手动。
auth-click-here-paste-token-slide = 点击此处从浏览器粘贴令牌
auth-privacy-settings-slide = 隐私设置
auth-sure-disable-warp-drive = 确定要禁用 Warp Drive 吗？
auth-sure-disable-ai-features = 确定要禁用 AI 功能吗？
auth-warp-drive-benefits = Warp Drive 让您可以跨设备保存工作流和知识，并与团队共享。继续使用将无法访问以下功能：
auth-ai-benefits = Warp 配合 AI 更强大。继续使用将无法访问以下任何功能：

## -- 退出登录警告字符串 --
auth-logout-question = 退出登录？
auth-yes-log-out = 是的，退出登录
auth-show-running-processes = 显示正在运行的进程
auth-long-running-warning = 您有 { $num } 个{ $plural }正在运行。
auth-shared-session-warning = 您有 { $num } 个共享{ $plural }。
auth-unsynced-warning = 您有 { $num } 个未同步的 Warp Drive { $plural }。退出登录将导致您丢失这些{ $plural }。
auth-unsaved-files-warning = 您有 { $num } 个未保存的{ $plural }。退出登录将导致您丢失这些{ $plural }。

## -- Web 交接字符串 --
auth-loading = 加载中...
auth-error-authenticating = 认证错误 - 请刷新页面

## -- Double-prefix aliases for auth view body strings --
auth-auth-click-here-paste-token = { auth-click-here-paste-token }
auth-auth-terms-of-service = { auth-terms-of-service }
auth-auth-welcome-to-warp = { auth-welcome-to-warp }
auth-auth-sign-up-for-warp = { auth-sign-up-for-warp }
auth-auth-require-login-closeable = { auth-require-login-closeable }
auth-auth-hit-drive-limit-closeable = { auth-hit-drive-limit-closeable }
auth-auth-share-requirement-closeable = { auth-share-requirement-closeable }

## -- Double-prefix aliases for offline overlay strings --

auth-auth-offline-message = { auth-offline-message }
auth-auth-offline-paragraph-1 = { auth-offline-paragraph-1 }
auth-auth-offline-paragraph-2 = { auth-offline-paragraph-2 }
auth-auth-offline-paragraph-3 = { auth-offline-paragraph-3 }

## -- Double-prefix aliases for privacy settings strings --

auth-auth-help-improve-warp = { auth-help-improve-warp }
auth-auth-telemetry-description = { auth-telemetry-description }
auth-auth-send-crash-reports = { auth-send-crash-reports }
auth-auth-crash-reporting-description = { auth-crash-reporting-description }
auth-auth-store-ai-conversations = { auth-store-ai-conversations }
auth-auth-cloud-conversation-enabled-description = { auth-cloud-conversation-enabled-description }
auth-auth-cloud-conversation-disabled-description = { auth-cloud-conversation-disabled-description }
auth-auth-invalid-token-entered = { auth-invalid-token-entered }
auth-auth-failed-login-manual-copy = { auth-failed-login-manual-copy }
auth-auth-request-login-failed = { auth-request-login-failed }
auth-auth-request-signup-failed = { auth-request-signup-failed }
auth-auth-invalid-redirect-url = { auth-invalid-redirect-url }
