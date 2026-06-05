# =============================================================================
# billing.ftl — 计费/订阅/付费墙字符串
# =============================================================================
# Message IDs: billing-{id}
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

## -- 双前缀别名（tr!() 调用中包含域前缀的 message ID）--

