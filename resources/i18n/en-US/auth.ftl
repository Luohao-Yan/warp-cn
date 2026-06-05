# =============================================================================
# auth.ftl — Authentication, login, and sign-up strings
# =============================================================================
# Message IDs: auth-{id}
# Used in app/src/auth/*.rs
# =============================================================================

auth-login-title = Log in
auth-login-description = Sign in to your Warp account
auth-signup-title = Create account
auth-signup-description = Create a Warp account to sync settings and more
auth-logout-title = Log out
auth-logout-description = Are you sure you want to log out?
auth-paste-token-title = Paste authentication token
auth-paste-token-description = Paste your token below to authenticate
auth-paste-token-placeholder = Paste token here…
auth-continue-button = Continue
auth-cancel-button = Cancel
auth-done-button = Done
auth-skip-button = Skip for now
auth-export-data-button = Export your data
auth-privacy-settings = Privacy Settings

## -- Override warning ---------------------------------------------------------

auth-override-warning-title = Warning
auth-override-continue = Continue
auth-override-cancel = Cancel

## -- SSO link view ---------------------------------------------------------------

auth-link-sso = Link SSO
auth-sso-header = Your organization has enabled SSO for your account
auth-sso-detail = Click the button below to link your Warp account to your SSO provider.

## -- Login slide placeholders -------------------------------------------------

auth-token-placeholder = Auth Token
auth-enter-token-placeholder = Enter auth token

## -- Paste auth token modal -------------------------------------------------

auth-paste-token-modal-title = Paste your auth token below
auth-paste-token-modal-subtitle = Paste your auth token from the browser to get complete login.

## -- Override warning body strings -----------------------------------------

auth-override-description = It looks like you logged into a Warp account through a web browser. If you continue, any personal Warp drive objects and preferences from this anonymous session with be permanently deleted.
auth-override-cannot-undo = This cannot be undone.
auth-override-new-login-header = New login detected
auth-override-confirm-delete-header = Delete personal Warp Drive objects and preferences?
auth-override-export-data = Export your data
auth-override-export-later = to import later.

## -- Login failure notification strings --

auth-invalid-token-entered = An invalid auth token was entered into the modal.
auth-failed-login-manual-copy = Failed to log in. Try manually copying the auth token from the authentication web page and pasting into the modal.
auth-request-login-failed = Request to log in failed.
auth-request-signup-failed = Request to sign up failed.
auth-invalid-redirect-url = The redirect URL pasted did not originate from this app. Please click the button below to try again.

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
auth-by-continuing = By continuing, you agree to Warp's
auth-already-have-account = Already have an account?
auth-dont-want-sign-in = Don't want to sign in right now?
auth-browser-hasnt-launched = If your browser hasn't launched,
auth-using-warp-offline = Using Warp Offline
auth-browser-token-placeholder = Browser auth token
auth-opt-out-analytics-1 = If you'd like to opt out of analytics and AI features,
auth-opt-out-analytics-2 = you can adjust your
auth-skip-login-confirm = Are you sure you want to skip login?
auth-skip-login-warning-1 = You can sign up later, but some features, such as AI,
auth-skip-login-warning-2 = are only available to logged-in users.
auth-skip-login-yes = Yes, skip login
auth-browser-sign-in-header =
    Sign in on your browser
    to continue
auth-copy-url = copy the URL
auth-open-manually = and open the page manually.

## -- Offline overlay strings --

auth-offline-message = You are currently offline. An internet connection is required to use Warp for the first time.
auth-offline-paragraph-1 = All of Warp's non-cloud features work offline.
auth-offline-paragraph-2 = However, we require users to be online when using Warp for the first time in order to enable Warp's AI and cloud features.
auth-offline-paragraph-3 = We offer cloud features to all users, and so we need an internet connection to meter AI usage, prevent abuse, and associate cloud objects with users. If you opt to use Warp logged-out, a unique ID will be attached to an anonymous user account in order to support these features.

## -- Privacy settings strings --

auth-help-improve-warp = Help improve Warp
auth-telemetry-description = High-level feature usage data helps Warp's product team prioritize the roadmap.
auth-send-crash-reports = Send crash reports
auth-crash-reporting-description = Crash reporting helps Warp's engineering team understand stability and improve performance.
auth-store-ai-conversations = Store AI conversations in the cloud
auth-cloud-conversation-enabled-description = Agent conversations can be shared with others and are retained when you log in on different devices. This data is only stored for product functionality, and Warp will not use it for analytics.
auth-cloud-conversation-disabled-description = Agent conversations are only stored locally on your machine, are lost upon logout, and cannot be shared. Note: conversation data for ambient agents are still stored in the cloud.

## -- Additional auth view body strings --
auth-click-here-paste-token = Click here to paste your token from the browser
auth-terms-of-service = Terms of Service
auth-welcome-to-warp = Welcome to Warp!
auth-sign-up-for-warp = Sign up for Warp
auth-require-login-closeable = In order to use Warp's AI features or collaborate with others, please create an account.
auth-hit-drive-limit-closeable = In order to create more objects in Warp Drive, please create an account.
auth-share-requirement-closeable = In order to share, please create an account.
auth-press-enter-to-open-browser = Press enter to open your browser to Sign Up or Sign In.

## -- Login slide strings --
auth-get-started-with-warp-drive = Get started with Warp Drive
auth-get-started-with-ai = Get started with AI
auth-connect-drive-description = Connect your account to save and share notebooks, workflows, and more across devices.
auth-connect-ai-description = Connect your account to enable AI-powered planning, coding, and automation.
auth-sign-in-on-browser = Sign in on your browser to continue
auth-disable-warp-drive = Disable Warp Drive
auth-disable-ai-features = Disable AI features
auth-enable-warp-drive = Enable Warp Drive
auth-enable-ai-features = Enable AI features
auth-opt-out-analytics-and-ai = If you'd like to opt out of analytics and AI features, you can adjust your
auth-opt-out-analytics = If you'd like to opt out of analytics, you can adjust your
auth-copy-the-url = copy the URL
auth-and-open =  and open
auth-the-page-manually = the page manually.
auth-click-here-paste-token-slide = Click here to paste your token from the browser
auth-privacy-settings-slide = Privacy Settings
auth-sure-disable-warp-drive = Are you sure you want to disable Warp Drive?
auth-sure-disable-ai-features = Are you sure you want to disable AI features?
auth-warp-drive-benefits = Warp Drive lets you save workflows and knowledge across devices and share them with your team. By continuing, you won't have access to the following features:
auth-ai-benefits = Warp is better with AI. By continuing, you won't have access to any of the following features:

## -- Logout warning strings --
auth-logout-question = Log out?
auth-yes-log-out = Yes, log out
auth-show-running-processes = Show running processes
auth-long-running-warning = You have { $num } { $plural } running.
auth-shared-session-warning = You have { $num } shared { $plural }.
auth-unsynced-warning = You have { $num } unsynced Warp Drive { $plural }. Logging out will cause you to lose the { $plural }.
auth-unsaved-files-warning = You have { $num } unsaved { $plural }. Logging out will cause you to lose the { $plural }.

## -- Web handoff strings --
auth-loading = Loading...
auth-error-authenticating = Error authenticating - please refresh the page

## -- Double-prefix aliases for auth view body strings --
auth-auth-click-here-paste-token = { auth-click-here-paste-token }
auth-auth-terms-of-service = { auth-terms-of-service }
auth-auth-welcome-to-warp = { auth-welcome-to-warp }
auth-auth-sign-up-for-warp = { auth-sign-up-for-warp }
auth-auth-require-login-closeable = { auth-require-login-closeable }
auth-auth-hit-drive-limit-closeable = { auth-hit-drive-limit-closeable }
auth-auth-share-requirement-closeable = { auth-share-requirement-closeable }

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
