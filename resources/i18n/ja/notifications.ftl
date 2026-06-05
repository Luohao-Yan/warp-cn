# =============================================================================
# notifications.ftl — 通知とトーストメッセージ
# =============================================================================
# Message IDs: notifications-{id}
# =============================================================================

notifications-update-available = Warp の新しいバージョンが利用可能です
notifications-update-downloaded = アップデートがダウンロードされました。再起動して適用してください。
notifications-update-installing = アップデートをインストール中…
notifications-update-failed = アップデートに失敗しました。もう一度お試しください。
notifications-crash-recovery = 予期しないクラッシュから Warp が復元しました
notifications-ssh-disconnected = SSH セッションが切断されました
notifications-ssh-reconnecting = 再接続中…
notifications-ssh-reconnected = 再接続しました
notifications-share-session-ended = 共有セッションが終了しました
notifications-share-user-joined = { $name } がセッションに参加しました
notifications-share-user-left = { $name } がセッションから離脱しました
notifications-permission-denied = 権限がありません
notifications-operation-completed = 操作が完了しました
notifications-operation-failed = 操作が失敗しました
notifications-sync-completed = 設定がクラウドに同期されました
notifications-sync-failed = 設定の同期に失敗しました

## -- 未読数 -----------------------------------------------------------------------

notifications-unread-count = { $count ->
    [one] { $count } 件の未読通知
   *[other] { $count } 件の未読通知
}
