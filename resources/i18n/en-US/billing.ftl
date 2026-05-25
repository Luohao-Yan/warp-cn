# =============================================================================
# billing.ftl — Billing / subscription / paywall strings
# =============================================================================
# Message IDs: billing-{id}
# Used in app/src/billing/*.rs
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

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

billing-billing-shared-object-limit-reached = { billing-shared-object-limit-reached }
billing-billing-compare-plans = { billing-compare-plans }
billing-billing-manage-billing = { billing-manage-billing }
billing-billing-delinquent-admin-subheader = { billing-delinquent-admin-subheader }
billing-billing-delinquent-admin-enterprise-subheader = { billing-delinquent-admin-enterprise-subheader }
billing-billing-delinquent-subheader = { billing-delinquent-subheader }
billing-billing-admin-prosumer-subheader = { billing-admin-prosumer-subheader }
billing-billing-prosumer-subheader = { billing-prosumer-subheader }
billing-billing-admin-subheader = { billing-admin-subheader }
billing-billing-default-subheader = { billing-default-subheader }
billing-billing-shared-objects-restricted = { billing-shared-objects-restricted }
billing-billing-shared-objects-limit-reached = { billing-shared-objects-limit-reached }
billing-billing-delinquent-admin-dynamic-subheader = { billing-delinquent-admin-dynamic-subheader }
billing-billing-delinquent-admin-enterprise-dynamic-subheader = { billing-delinquent-admin-enterprise-dynamic-subheader }
billing-billing-delinquent-dynamic-subheader = { billing-delinquent-dynamic-subheader }
billing-billing-admin-prosumer-dynamic-subheader = { billing-admin-prosumer-dynamic-subheader }
billing-billing-prosumer-dynamic-subheader = { billing-prosumer-dynamic-subheader }
billing-billing-admin-dynamic-subheader = { billing-admin-dynamic-subheader }
billing-billing-default-dynamic-subheader = { billing-default-dynamic-subheader }
billing-billing-view-plans = { billing-view-plans }
