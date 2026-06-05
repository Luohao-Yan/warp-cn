# =============================================================================
# autoupdate.ftl — 自动更新 UI 字符串
# =============================================================================
# Message IDs: autoupdate-{id}
# =============================================================================

## -- 无障碍公告 ------------------------------------------------

autoupdate-update-available = 有可用更新。
autoupdate-update-instructions = 使用命令面板安装并重新启动 Warp
autoupdate-no-updates = 暂无可用更新

## -- Linux 包管理器更新上下文块 ---------------------------------

autoupdate-run-to-update = 运行 { $package_manager } 来更新
autoupdate-if-installed-using = 如果您使用 { $package_manager } 或兼容工具安装了 Warp，预填充的命令将为您更新 Warp。
autoupdate-one-time-repo-config = 下面的命令包含 Warp 软件包仓库和 PGP 签名密钥的一次性配置。
autoupdate-dist-upgrade-explainer-prefix = { "" }
autoupdate-dist-upgrade-explainer-suffix = 函数确保 Warp 软件包仓库已启用，因为我们检测到您最近升级了发行版。
autoupdate-review-command = 查看下面的命令，然后
autoupdate-press-enter = 按回车键
autoupdate-to-install = 以安装更新并重新启动 Warp。
autoupdate-report-issues = 请报告任何问题

## -- 双前缀别名（tr!() 调用中包含域前缀的 message ID）--

