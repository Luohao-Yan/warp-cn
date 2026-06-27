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

## -- Login failure troubleshooting strings --

auth-login-failure-troubleshooting-prefix =  Not the first time? See our
auth-login-failure-troubleshooting-link = troubleshooting docs
auth-login-failure-troubleshooting-suffix = .

## -- Auth redirect safe-error strings --

auth-safe-err-redirect-unexpected-host = Auth redirect URL has unexpected host
auth-safe-err-redirect-missing-credential = Auth redirect URL is missing required credential
auth-safe-err-parse-redirect-payload = Failed to parse auth redirect URL
auth-safe-err-parse-pasted-auth-url = Failed to parse pasted auth URL

## -- Provider keys modal strings --

auth-provider-keys-title = Add API key
auth-provider-keys-subtitle = Use your own API keys from model providers for Warp Agent.
auth-provider-keys-openai-label = OpenAI API key
auth-provider-keys-anthropic-label = Anthropic API key
auth-provider-keys-google-label = Google API key
auth-provider-keys-cancel-label = Cancel
auth-provider-keys-add-keys-label = Add keys

## -- Double-prefix aliases for auth view body strings --
## -- Double-prefix aliases for new auth strings --
## -- Double-prefix aliases for new auth strings --

## -- Double-prefix aliases for offline overlay strings --

## -- Double-prefix aliases for privacy settings strings --

