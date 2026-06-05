# =============================================================================
# cloud_object.ftl — 云对象提示消息、元数据和空间名称
# =============================================================================
# Message IDs: cloud_object-{id}
# Used in app/src/cloud_object/*.rs
# =============================================================================

## -- 提示消息（成功） --------------------------------------------------------

cloud-object-saved-to = { $object_name } 已保存到 { $containing_object_name }
cloud-object-updated = { $object_name } 已更新
cloud-object-moved-to = { $object_name } 已移动到 { $containing_object_name }
cloud-object-trashed = { $object_name } 已移至回收站
cloud-object-restored = { $object_name } 已恢复
cloud-object-left-name = 已离开 { $object_name }

## -- 提示消息（失败） --------------------------------------------------------

cloud-object-failed-create = 创建 { $object_name } 失败
cloud-object-failed-update = 更新 { $object_name } 失败
cloud-object-failed-move = 移动 { $object_name } 失败
cloud-object-failed-trash = 移至回收站 { $object_name } 失败
cloud-object-failed-restore = 恢复 { $object_name } 失败
cloud-object-failed-delete = 删除 { $object_name } 失败
cloud-object-failed-leave = 离开 { $object_name } 失败
cloud-object-failed-start-editing = 开始编辑 { $object_name } 失败

## -- 提示消息（拒绝） --------------------------------------------------------

cloud-object-workflow-save-conflict = 无法保存此工作流，因为您编辑期间进行了更改。
cloud-object-env-vars-save-conflict = 无法保存环境变量，因为您编辑期间进行了更改。
cloud-object-rule-save-conflict = 无法保存规则，因为您编辑期间进行了更改。

## -- 提示消息（权限） --------------------------------------------------------

cloud-object-permissions-updated = 已成功更新 { $object_name } 的权限
cloud-object-failed-update-permissions = 更新 { $object_name } 的权限失败

## -- 提示消息（删除确认） ----------------------------------------------------

cloud-object-one-object = 1 个对象
cloud-object-count-objects = { $count } 个对象
cloud-object-deleted-forever = { $count_objects_message } 已永久删除
cloud-object-trash-emptied = 回收站已清空：{ $count_objects_message } 已永久删除
cloud-object-failed-empty-trash = 清空回收站失败
cloud-object-no-objects-in-trash = 回收站中没有可清空的对象

## -- 语义编辑历史 -------------------------------------------------------------

cloud-object-edited-time-ago = 已编辑 { $time_ago }
cloud-object-name-edited-time-ago = { $name } 已编辑 { $time_ago }
cloud-object-last-edited-by = 上次由 { $name } 编辑

## -- 语义永久删除倒计时 -------------------------------------------------------

cloud-object-one-day-until-permanent-deletion = 距永久删除还有 1 天
cloud-object-days-until-permanent-deletion = 距永久删除还有 { $days_left } 天

## -- 空间名称 -----------------------------------------------------------------

cloud-object-space-personal = 个人
cloud-object-space-team = 团队
cloud-object-space-shared = 与我共享

## -- 操作历史摘要 ---------------------------------------------------------

cloud-object-action-run-singular = 运行
cloud-object-action-run-plural = 次运行
cloud-object-action-summary-zero-year = 去年 0 次运行
cloud-object-action-summary-day = 过去一天 { $count } { $action_word }
cloud-object-action-summary-week = 过去一周 { $count } { $action_word }
cloud-object-action-summary-month = 过去一月 { $count } { $action_word }
cloud-object-action-summary-year = 过去一年 { $count } { $action_word }

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

