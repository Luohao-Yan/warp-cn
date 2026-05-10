# =============================================================================
# notifications.ftl — Notification and toast messages
# =============================================================================
# Message IDs: notifications-{id}
# =============================================================================

notifications-update-available = A new version of Warp is available
notifications-update-downloaded = Update downloaded. Restart to apply.
notifications-update-installing = Installing update…
notifications-update-failed = Update failed. Please try again.
notifications-crash-recovery = Warp recovered from an unexpected crash
notifications-ssh-disconnected = SSH session disconnected
notifications-ssh-reconnecting = Reconnecting…
notifications-ssh-reconnected = Reconnected
notifications-share-session-ended = The shared session has ended
notifications-share-user-joined = { $name } joined the session
notifications-share-user-left = { $name } left the session
notifications-permission-denied = Permission denied
notifications-operation-completed = Operation completed
notifications-operation-failed = Operation failed
notifications-sync-completed = Settings synced to cloud
notifications-sync-failed = Failed to sync settings

## -- Unread count -------------------------------------------------------------

notifications-unread-count = { $count ->
    [one] { $count } unread notification
    *[other] { $count } unread notifications
}
