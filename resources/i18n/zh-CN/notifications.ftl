# =============================================================================
# notifications.ftl — 通知和提示消息
# =============================================================================
# Message IDs: notifications-{id}
# =============================================================================

notifications-update-available = Warp 新版本可用
notifications-update-downloaded = 更新已下载，重启以应用。
notifications-update-installing = 正在安装更新…
notifications-update-failed = 更新失败，请重试。
notifications-crash-recovery = Warp 从一个意外崩溃中恢复
notifications-ssh-disconnected = SSH 会话已断开
notifications-ssh-reconnecting = 正在重新连接…
notifications-ssh-reconnected = 已重新连接
notifications-share-session-ended = 共享会话已结束
notifications-share-user-joined = { $name } 加入了会话
notifications-share-user-left = { $name } 离开了会话
notifications-permission-denied = 权限被拒绝
notifications-operation-completed = 操作已完成
notifications-operation-failed = 操作失败
notifications-sync-completed = 设置已同步到云端
notifications-sync-failed = 设置同步失败

## -- 未读计数 -------------------------------------------------------------

notifications-unread-count = { $count ->
    [one] { $count } 条未读通知
    *[other] { $count } 条未读通知
}
