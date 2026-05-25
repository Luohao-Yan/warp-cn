# =============================================================================
# autoupdate.ftl — Auto-update UI strings
# =============================================================================
# Message IDs: autoupdate-{id}
# Used in app/src/autoupdate/*.rs
# =============================================================================

## -- Accessibility announcements ------------------------------------------------

autoupdate-update-available = Update available.
autoupdate-update-instructions = Use the command palette to install and relaunch Warp
autoupdate-no-updates = No updates available

## -- Linux package manager update context block ---------------------------------

autoupdate-run-to-update = Run { $package_manager } to update
autoupdate-if-installed-using = If you installed Warp using { $package_manager } or a compatible tool, the pre-filled command will update Warp for you.
autoupdate-one-time-repo-config = The command below includes a one-time configuration of the Warp package repository and PGP signing key.
autoupdate-dist-upgrade-explainer-prefix = The
autoupdate-dist-upgrade-explainer-suffix = function ensures the Warp package repository is enabled, as we've detected you recently upgraded your distribution.
autoupdate-review-command = Review the command below, then
autoupdate-press-enter = press enter
autoupdate-to-install = to install the update and re-launch Warp.
autoupdate-report-issues = Please report any issues

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

autoupdate-autoupdate-update-available = { autoupdate-update-available }
autoupdate-autoupdate-update-instructions = { autoupdate-update-instructions }
autoupdate-autoupdate-no-updates = { autoupdate-no-updates }
autoupdate-autoupdate-run-to-update = { autoupdate-run-to-update }
autoupdate-autoupdate-if-installed-using = { autoupdate-if-installed-using }
autoupdate-autoupdate-one-time-repo-config = { autoupdate-one-time-repo-config }
autoupdate-autoupdate-dist-upgrade-explainer-prefix = { autoupdate-dist-upgrade-explainer-prefix }
autoupdate-autoupdate-dist-upgrade-explainer-suffix = { autoupdate-dist-upgrade-explainer-suffix }
autoupdate-autoupdate-review-command = { autoupdate-review-command }
autoupdate-autoupdate-press-enter = { autoupdate-press-enter }
autoupdate-autoupdate-to-install = { autoupdate-to-install }
autoupdate-autoupdate-report-issues = { autoupdate-report-issues }
