# =============================================================================
# billing.ftl — 计费/订阅/付费墙字符串
# =============================================================================
# Message IDs: billing-{id}
# Used in app/src/settings_view/billing_and_usage*.rs
# =============================================================================

## -- 共享对象创建拒绝弹窗 ---------------------------------------------

billing-shared-object-limit-reached = 已达到共享对象上限

## -- 副标题字符串（object_type 为 None 时的静态默认值）-----------

billing-delinquent-admin-subheader = 共享的云端对象因订阅付款问题已被限制。\n\n请更新您的付款信息以恢复访问。
billing-delinquent-admin-enterprise-subheader = 共享的云端对象因订阅付款问题已被限制。\n\n请联系 support@warp.dev 恢复访问。
billing-delinquent-subheader = 共享的云端对象因订阅付款问题已被限制。\n\n请联系团队管理员恢复访问。
billing-admin-prosumer-subheader = Warp 的 Pro 计划提供有限数量的共享云端对象。\n\n要获取无限共享云端对象，请升级到 Turbo 计划。
billing-prosumer-subheader = Warp 的 Pro 计划提供有限数量的共享云端对象。\n\n要获取无限共享云端对象，请联系团队管理员升级到 Turbo 计划。
billing-admin-subheader = Warp 的免费计划提供有限数量的共享云端对象。\n\n要获取无限共享云端对象，请升级到付费计划。
billing-default-subheader = Warp 的免费计划提供有限数量的共享云端对象。\n\n要获取无限共享云端对象，请联系团队管理员升级到付费计划。

## -- 动态副标题字符串（带有 object_type 插值）--------------

billing-delinquent-admin-dynamic-subheader = 共享的{ $object_type }因订阅付款问题已被限制。\n\n请更新您的付款信息以恢复访问。
billing-delinquent-admin-enterprise-dynamic-subheader = 共享的{ $object_type }因订阅付款问题已被限制。\n\n请联系 support@warp.dev 恢复访问。
billing-delinquent-dynamic-subheader = 共享的{ $object_type }因订阅付款问题已被限制。\n\n请联系团队管理员恢复访问。
billing-admin-prosumer-dynamic-subheader = Warp 的 Pro 计划提供有限数量的共享{ $object_type }。\n\n要获取无限共享{ $object_type }，请升级到 Build 计划。
billing-prosumer-dynamic-subheader = Warp 的 Pro 计划提供有限数量的共享{ $object_type }。\n\n要获取无限共享{ $object_type }，请联系团队管理员升级到 Build 计划。
billing-admin-dynamic-subheader = Warp 的免费计划提供有限数量的共享{ $object_type }。\n\n要获取无限共享{ $object_type }，请升级到付费计划。
billing-default-dynamic-subheader = Warp 的免费计划提供有限数量的共享{ $object_type }。\n\n要获取无限共享{ $object_type }，请联系团队管理员升级到付费计划。

## -- 按钮标签 -----------------------------------------------------------

billing-compare-plans = 比较计划
billing-manage-billing = 管理账单
billing-view-plans = 查看计划

## -- 动态标题字符串（带有 object_type 插值）--------------

billing-shared-objects-restricted = 共享的{ $object_type }已被限制
billing-shared-objects-limit-reached = 共享的{ $object_type }已达上限

## -- 页面/UI 名称 ---------------------------------------------------------

billing-and-usage-title = 计费与用量
billing-and-usage-v2 = 计费与用量 v2

## -- 标签页标签 -----------------------------------------------------------

billing-tab-overview = 概览
billing-tab-usage-history = 用量历史

## -- 区域标题 ----------------------------------------------------------

billing-plan = 计划
billing-usage = 用量
billing-balance = 余额
billing-credits = 额度
billing-team = 团队
billing-members = 成员
billing-addon-credits = 附加额度
billing-buy-credits = 购买额度

## -- 费用类型标签（提示/图例）--------------------------------------

billing-base = 基础
billing-add-ons = 附加
billing-pay-as-you-go = 按量付费
billing-cloud-only = 仅云端
billing-combined = 合计
billing-other = 其他
billing-total = 总计
billing-total-usage = 总用量

## -- 用量桶标签 -------------------------------------------------------------

billing-compute = 计算
billing-platform = 平台
billing-suggested-code-diffs = 建议代码差异
billing-voice = 语音

## -- 筛选标签 -------------------------------------------------------------

billing-filter-all = 全部
billing-filter-local = 本地
billing-filter-cloud = 云端

## -- 团队总计区域 ------------------------------------------------------

billing-overall-usage = 总用量
billing-local-agent-usage = 本地代理用量
billing-cloud-agent-usage = 云端代理用量
billing-limit-format = 限额：{ $limit }

## -- 余额卡标签 ------------------------------------------------------

billing-base-credits = 基础额度
billing-personal-credits = 个人额度
billing-team-credits = 团队额度
billing-remaining = 剩余
billing-remaining-with-limit = / { $limit } 剩余

## -- 额度格式 -----------------------------------------------------------

billing-credits-format = （{ $count } 额度）
billing-1-credit = 1 额度
billing-1-credit-remaining = 剩余 1 额度
billing-n-credits = { $count } 额度
billing-n-credits-remaining = 剩余 { $count } 额度
billing-credits-remaining = 剩余 { $count } 额度
billing-0-credits = 0 额度

## -- 云端代理试用 --------------------------------------------------------

billing-cloud-agent-trial = 云端代理试用
billing-new-agent = 新建代理

## -- 本月已购 -----------------------------------------------------

billing-purchased-this-month = 本月已购

## -- 购买额度区域 ------------------------------------------------------

billing-auto-reload = 自动续购
billing-buying = 购买中...
billing-buy = 购买
billing-one-time-purchase = 一次性购买

## -- 月度消费/超额 --------------------------------------------------

billing-monthly-spend-limit = 月度消费限额
billing-monthly-overage-spending-limit = 月度超额消费限额
billing-overage-spending-limit = 超额消费限额
billing-monthly-spending-limit = 月度支出限额
billing-not-set = 未设置

## -- 提示字符串 ----------------------------------------------------------

billing-addon-monthly-limit-tooltip = 设置附加额度的月度消费上限
billing-overage-limit-tooltip = 设置超出计划金额的月度超额消费上限
billing-auto-reload-tooltip = 启用后，当附加额度余额仅剩 100 额度时，自动续购将自动购买 { $amount } 额度。
billing-prorated-tooltip-current-user = 您的额度限额已按比例折算，因为您在计费周期中途加入。
billing-prorated-tooltip-other-user = 此额度限额已按比例折算，因为该用户在计费周期中途加入。

## -- 排序菜单标签 ---------------------------------------------------------

billing-sort-a-z = A 到 Z
billing-sort-z-a = Z 到 A
billing-sort-usage-asc = 用量升序
billing-sort-usage-desc = 用量降序
billing-sort-by = 排序方式

## -- 超额区域 -----------------------------------------------------------

billing-overage-usage-link-text = 查看超额用量详情
billing-overage-toggle-admin-header = 启用高级模型超额用量
billing-overage-toggle-user-header-enabled = 高级模型超额用量已启用
billing-overage-toggle-user-header-disabled = 高级模型超额用量未启用
billing-overage-toggle-description = 超出计划限额后继续使用高级模型。用量按 20 美元增量计费，上限为您的支出限额，剩余余额将在计划账单日收取。
billing-overage-toggle-user-description = 请联系团队管理员启用超额以获取更多 AI 用量。
billing-total-overages = 超额总计

## -- 重置/周期字符串 ----------------------------------------------------

billing-resets-datetime = 重置于 { $date }，{ $time }
billing-resets-at = 重置于 { $date } { $time }
billing-usage-resets-on = 用量将于 { $date } 重置
billing-last-30-days = 最近 30 天

## -- 额度说明 -------------------------------------------------------

billing-credits-description = 这是您账户的 { $duration } AI 额度限额。

## -- 请求用量标签 -----------------------------------------------------

billing-restricted-delinquent = 因账单问题被限制
billing-used-unlimited = { $used }/无限
billing-used-limit = { $used }/{ $limit }

## -- 团队总计 ----------------------------------------------------------------

billing-team-total = 团队总计

## -- 其他成员 --------------------------------------------------------------

billing-other-members = 其他成员
billing-your-usage = 您的用量
billing-automated-agent-description = 这是您团队中的自动化代理。
billing-other-team-members-usage = 其他团队成员用量

## -- 企业用量提示 --------------------------------------------------

billing-enterprise-usage-callout-header = 用量报告目前受限
billing-enterprise-usage-callout-admin-link = 访问管理面板
billing-enterprise-usage-callout-admin-prefix = 企业额度用量在此视图中尚未完全可用。如需最准确的支出追踪，
billing-enterprise-usage-callout-admin-suffix = 。
billing-enterprise-usage-callout-non-admin = 企业额度用量在此视图中尚未完全可用。请联系团队管理员获取详细用量报告。

## -- 警告字符串 -----------------------------------------------------------

billing-autoreload-exceed-limit = 自动续购已禁用，因为下次续购将超出月度消费限额。请提高限额以使用自动续购。
billing-autoreload-delinquent = 因账单问题被限制。请更新付款方式以购买附加额度。
billing-restricted-billing-usage = 自动续购因最近续购失败已禁用。请更新付款方式后重试。
billing-autoreload-exceed-limit-admin = 自动续购已暂停，因为下次续购将超出月度消费限额。请提高限额以继续使用自动续购。
billing-autoreload-exceed-limit-non-admin = 自动续购已暂停，因为下次续购将超出团队的月度消费限额。请联系团队管理员提高限额。
billing-purchase-exceed-limit-admin = 此次购买将超出月度限额。请提高限额以继续。
billing-purchase-exceed-limit-non-admin = 此次购买将超出团队的月度支出限额。请联系团队管理员提高限额。
billing-reload-exceed-limit-prefix = 续购将超出月度限额。
billing-increase-limit = 提高限额
billing-to-continue = 以继续。
billing-to-purchase-addon-credits = 以购买附加额度。

## -- 管理员/升级 CTA 字符串 -----------------------------------------------

billing-free = 免费
billing-manage-billing = 管理账单
billing-open-admin-panel = 打开管理面板
billing-compare-plans = 比较计划
billing-upgrade-to-build = 升级到 Build
billing-upgrade-to-business = 升级到 Business
billing-upgrade-to-enterprise = 升级到 Enterprise
billing-upgrade-to-max = 升级到 Max
billing-upgrade-to-turbo = 升级到 Turbo 计划
billing-upgrade-to-lightspeed = 升级到 Lightspeed 计划
billing-upgrade = 升级
billing-upgrade-to-build = 升级到 Build 计划
billing-switch-to-build = 切换到 Build 计划
billing-switch-to-business = 切换到 Business 计划
billing-for-flexible-pricing = 获取更灵活的定价模式。
billing-for-increased-ai-access = 获取更多 AI 功能访问权限。
billing-for-more-credits = 获取更多 AI 额度。
billing-for-more-ai = 获取更多 AI 用量。
billing-for-more-ai-usage = 获取更多 AI 用量。
billing-to-get-more-ai = 获取更多 AI 用量。
billing-for-security-features = 获取 SSO 和自动零数据留存等安全功能。
billing-for-custom-limits = 获取自定义限额和专属支持。
billing-for-more-credits-models = 获取更多额度和更多模型访问权限。
billing-see-team-usage = 查看团队级额度用量。
billing-see-per-user-usage = 查看按用户归属的额度用量。
billing-see-fine-grained-usage = 查看细粒度额度归属并设置每用户支出限额。
billing-set-per-user-spend-limits = 设置每用户支出限额。
billing-or = 或
billing-bring-your-own-key = 自带密钥
billing-contact-account-executive = 联系您的客户经理获取更多附加额度。
billing-contact-team-admin-addon = 联系团队管理员启用附加额度。
billing-contact-team-admin-billing = 联系团队管理员解决账单问题。
billing-contact-admin-billing = 联系团队管理员解决账单问题。
billing-contact-support = 联系支持

## -- 登录受限功能字符串 -----------------------------------------------

billing-login-gated-upgrade = 升级计划
billing-login-gated-stripe = 生成 Stripe 账单门户链接
billing-login-gated-unknown = 未知原因

## -- 自动续购说明（非管理员）---------------------------------------

billing-admin-autoreload-description = 您的管理员已启用附加额度的自动续购。当您的个人附加额度余额不足时，Warp 将自动购买 { $credits } 额度（{ $price }）并添加到您的余额中。
billing-admin-autoreload-description-generic = 您的管理员已启用附加额度的自动续购。当您的个人附加额度余额不足时，Warp 将自动购买附加额度并添加到您的余额中。

## -- 空用量历史 -------------------------------------------------------

billing-no-usage-history = 暂无用量历史
billing-kick-off-agent-task = 启动代理任务以在此查看用量历史。
