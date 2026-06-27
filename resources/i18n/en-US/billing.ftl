# =============================================================================
# billing.ftl — Billing / subscription / paywall strings
# =============================================================================
# Message IDs: billing-{id}
# Used in app/src/settings_view/billing_and_usage*.rs
# =============================================================================

## -- Shared objects creation denied modal -------------------------------------

billing-shared-object-limit-reached = Shared object limit reached

## -- Subheader strings (static defaults when object_type is None) -----------

billing-delinquent-admin-subheader = Shared drive objects have been restricted due to a subscription payment issue.\n\nPlease update your payment information to restore access.
billing-delinquent-admin-enterprise-subheader = Shared drive objects have been restricted due to a subscription payment issue.\n\nPlease contact support@warp.dev to restore access.
billing-delinquent-subheader = Shared drive objects have been restricted due to a subscription payment issue.\n\nPlease contact a team admin to restore access.
billing-admin-prosumer-subheader = Warp's Pro plan comes with a limited number of shared drive objects.\n\nFor access to unlimited shared drive objects, upgrade to the Turbo plan.
billing-prosumer-subheader = Warp's Pro plan comes with a limited number of shared drive objects.\n\nFor access to unlimited shared drive objects, contact a team admin to upgrade to the Turbo plan.
billing-admin-subheader = Warp's free plan comes with a limited number of shared drive objects.\n\nFor access to unlimited shared drive objects, upgrade to a paid plan.
billing-default-subheader = Warp's free plan comes with a limited number of shared drive objects.\n\nFor access to unlimited shared drive objects, contact a team admin to upgrade to a paid plan.

## -- Dynamic subheader strings (with object_type interpolation) --------------

billing-delinquent-admin-dynamic-subheader = Shared { $object_type }s have been restricted due to a subscription payment issue.\n\nPlease update your payment information to restore access.
billing-delinquent-admin-enterprise-dynamic-subheader = Shared { $object_type }s have been restricted due to a subscription payment issue.\n\nPlease contact support@warp.dev to restore access.
billing-delinquent-dynamic-subheader = Shared { $object_type }s have been restricted due to a subscription payment issue.\n\nPlease contact a team admin to restore access.
billing-admin-prosumer-dynamic-subheader = Warp's Pro plan comes with a limited number of shared { $object_type }s.\n\nFor access to unlimited shared { $object_type }s, upgrade to the Build plan.
billing-prosumer-dynamic-subheader = Warp's Pro plan comes with a limited number of shared { $object_type }s.\n\nFor access to unlimited shared { $object_type }s, contact a team admin to upgrade to the Build plan.
billing-admin-dynamic-subheader = Warp's free plan comes with a limited number of shared { $object_type }s.\n\nFor access to unlimited shared { $object_type }s, upgrade to a paid plan.
billing-default-dynamic-subheader = Warp's free plan comes with a limited number of shared { $object_type }s.\n\nFor access to unlimited shared { $object_type }s, contact a team admin to upgrade to a paid plan.

## -- Button labels -----------------------------------------------------------

billing-compare-plans = Compare plans
billing-manage-billing = Manage billing
billing-view-plans = View Plans

## -- Dynamic title strings (with object_type interpolation) -------------------

billing-shared-objects-restricted = Shared { $object_type }s restricted
billing-shared-objects-limit-reached = Shared { $object_type }s limit reached

## -- Page / UI names ---------------------------------------------------------

billing-and-usage-title = Billing and Usage
billing-and-usage-v2 = Billing and usage v2

## -- Tab labels ---------------------------------------------------------------

billing-tab-overview = Overview
billing-tab-usage-history = Usage History

## -- Section headers ----------------------------------------------------------

billing-plan = Plan
billing-usage = Usage
billing-balance = Balance
billing-credits = Credits
billing-team = Team
billing-members = Members
billing-addon-credits = Add-on credits
billing-buy-credits = Buy credits

## -- Cost type labels (tooltip / legend) --------------------------------------

billing-base = Base
billing-add-ons = Add-ons
billing-pay-as-you-go = Pay-as-you-go
billing-cloud-only = Cloud-only
billing-combined = Combined
billing-other = Other
billing-total = Total
billing-total-usage = Total usage

## -- Bucket labels -------------------------------------------------------------

billing-compute = Compute
billing-platform = Platform
billing-suggested-code-diffs = Suggested code diffs
billing-voice = Voice

## -- Filter labels -------------------------------------------------------------

billing-filter-all = All
billing-filter-local = Local
billing-filter-cloud = Cloud

## -- Team totals section ------------------------------------------------------

billing-overall-usage = Overall usage
billing-local-agent-usage = Local agent usage
billing-cloud-agent-usage = Cloud agent usage
billing-limit-format = Limit: { $limit }

## -- Balance card labels ------------------------------------------------------

billing-base-credits = Base credits
billing-personal-credits = Personal credits
billing-team-credits = Team credits
billing-remaining = remaining
billing-remaining-with-limit = / { $limit } remaining

## -- Credits format -----------------------------------------------------------

billing-credits-format = ({ $count } credits)
billing-1-credit = 1 credit
billing-1-credit-remaining = 1 credit remaining
billing-n-credits = { $count } credits
billing-n-credits-remaining = { $count } credits remaining
billing-credits-remaining = { $count } credits remaining
billing-0-credits = 0 credits

## -- Cloud agent trial --------------------------------------------------------

billing-cloud-agent-trial = Cloud agent trial
billing-new-agent = New agent

## -- Purchased this month -----------------------------------------------------

billing-purchased-this-month = Purchased this month

## -- Buy credits section ------------------------------------------------------

billing-auto-reload = Auto reload
billing-buying = Buying...
billing-buy = Buy
billing-one-time-purchase = One-time purchase

## -- Monthly spend / overage --------------------------------------------------

billing-monthly-spend-limit = Monthly spend limit
billing-monthly-overage-spending-limit = Monthly overage spending limit
billing-overage-spending-limit = Overage spending limit
billing-monthly-spending-limit = Monthly spending limit
billing-not-set = Not set

## -- Tooltip strings ----------------------------------------------------------

billing-addon-monthly-limit-tooltip = Sets the monthly limit spent on add-on credits
billing-overage-limit-tooltip = Sets the monthly overage spending limit beyond the plan amount
billing-auto-reload-tooltip = When enabled, auto reload will automatically purchase { $amount } credits when your add-on credit balance reaches 100 credits remaining.
billing-prorated-tooltip-current-user = Your credit limit is prorated because you joined midway through the billing cycle.
billing-prorated-tooltip-other-user = This credit limit is prorated because this user joined midway through the billing cycle.

## -- Sort menu labels ---------------------------------------------------------

billing-sort-a-z = A to Z
billing-sort-z-a = Z to A
billing-sort-usage-asc = Usage ascending
billing-sort-usage-desc = Usage descending
billing-sort-by = Sort by

## -- Overage section -----------------------------------------------------------

billing-overage-usage-link-text = View details on overage usage
billing-overage-toggle-admin-header = Enable premium model usage overages
billing-overage-toggle-user-header-enabled = Premium model usage overages are enabled
billing-overage-toggle-user-header-disabled = Premium model usage overages are not enabled
billing-overage-toggle-description = Continue using premium models beyond your plan's limits. Usage is charged in $20 increments up to your spending limit, with any remaining balance charged on your scheduled billing date.
billing-overage-toggle-user-description = Ask a team admin to enable overages for more AI usage.
billing-total-overages = Total overages

## -- Reset / cycle strings ----------------------------------------------------

billing-resets-datetime = Resets { $date }, { $time }
billing-resets-at = Resets { $date } at { $time }
billing-usage-resets-on = Usage resets on { $date }
billing-last-30-days = Last 30 days

## -- Credits description -------------------------------------------------------

billing-credits-description = This is the { $duration } limit of AI credits for your account.

## -- Request usage labels -----------------------------------------------------

billing-restricted-delinquent = Restricted due to billing issue
billing-used-unlimited = { $used }/Unlimited
billing-used-limit = { $used }/{ $limit }

## -- Team total ----------------------------------------------------------------

billing-team-total = Team total

## -- Other members --------------------------------------------------------------

billing-other-members = Other members
billing-your-usage = Your usage
billing-automated-agent-description = This is an automated agent on your team.
billing-other-team-members-usage = Other team members' usage

## -- Enterprise usage callout --------------------------------------------------

billing-enterprise-usage-callout-header = Usage reporting is currently limited
billing-enterprise-usage-callout-admin-link = visit the admin panel
billing-enterprise-usage-callout-admin-prefix = Enterprise credit usage isn't fully available in this view yet. For the most accurate spend tracking,
billing-enterprise-usage-callout-admin-suffix = .
billing-enterprise-usage-callout-non-admin = Enterprise credit usage isn't fully available in this view yet. Contact a team admin for detailed usage reporting.

## -- Warning strings -----------------------------------------------------------

billing-autoreload-exceed-limit = Auto reload is disabled, as the next reload would exceed your monthly spend limit. Increase your limit to use auto reload.
billing-autoreload-delinquent = Restricted due to billing issue. Update your payment method to purchase add-on credits.
billing-restricted-billing-usage = Auto reload is disabled due to recent failed reload. Please update your payment method and try again.
billing-autoreload-exceed-limit-admin = Auto-reload is paused because the next reload would exceed your monthly spend limit. Increase your limit to continue using auto-reload.
billing-autoreload-exceed-limit-non-admin = Auto-reload is paused because the next reload would exceed your team's monthly spend limit. Contact a team admin to increase it.
billing-purchase-exceed-limit-admin = This purchase would exceed your monthly limit. Increase your limit to continue.
billing-purchase-exceed-limit-non-admin = This purchase would exceed your team's monthly spend limit. Contact a team admin to increase it.
billing-reload-exceed-limit-prefix = Reloading would exceed your monthly limit.
billing-increase-limit = Increase your limit
billing-to-continue = to continue.
billing-to-purchase-addon-credits = to purchase add-on credits.

## -- Admin / upgrade CTA strings -----------------------------------------------

billing-free = Free
billing-manage-billing = Manage billing
billing-open-admin-panel = Open admin panel
billing-compare-plans = Compare plans
billing-upgrade-to-build = Upgrade to Build
billing-upgrade-to-business = Upgrade to Business
billing-upgrade-to-enterprise = Upgrade to Enterprise
billing-upgrade-to-max = Upgrade to Max
billing-upgrade-to-turbo = Upgrade to Turbo plan
billing-upgrade-to-lightspeed = Upgrade to Lightspeed plan
billing-upgrade = Upgrade
billing-upgrade-to-build = Upgrade to the Build plan
billing-switch-to-build = Switch to the Build plan
billing-switch-to-business = Switch to the Business plan
billing-for-flexible-pricing = for a more flexible pricing model.
billing-for-increased-ai-access = for increased access to AI features.
billing-for-more-credits = for more AI credits.
billing-for-more-ai = to get more AI usage.
billing-for-more-ai-usage = for more AI usage.
billing-to-get-more-ai = to get more AI usage.
billing-for-security-features = for security features like SSO and automatically applied zero data retention.
billing-for-custom-limits = for custom limits and dedicated support.
billing-for-more-credits-models = for more credits and access to more models.
billing-see-team-usage = to see team-level credit usage.
billing-see-per-user-usage = to see per-user credit attribution.
billing-see-fine-grained-usage = to see fine-grained credit attribution and set per-user spend limits.
billing-set-per-user-spend-limits = to set per-user spend limits.
billing-or = or
billing-bring-your-own-key = bring your own key
billing-contact-account-executive = Contact your Account Executive for more add-on credits.
billing-contact-team-admin-addon = Contact a team admin to enable add-on credits.
billing-contact-team-admin-billing = Contact your team admin to resolve billing issues.
billing-contact-admin-billing = Contact your team admin to resolve billing issues.
billing-contact-support = Contact support

## -- Login gated feature strings -----------------------------------------------

billing-login-gated-upgrade = Upgrade Plan
billing-login-gated-stripe = Generate Stripe Billing Portal Link
billing-login-gated-unknown = Unknown reason

## -- Auto-reload description (non-admin) ---------------------------------------

billing-admin-autoreload-description = Your admin has enabled auto-reload for add-on credits. When your personal add-on credit balance runs low, Warp will automatically purchase { $credits } credits for { $price } and add them to your balance.
billing-admin-autoreload-description-generic = Your admin has enabled auto-reload for add-on credits. When your personal add-on credit balance runs low, Warp will automatically purchase add-on credits and add them to your balance.

## -- Empty usage history -------------------------------------------------------

billing-no-usage-history = No usage history
billing-kick-off-agent-task = Kick off an agent task to view usage history here.
