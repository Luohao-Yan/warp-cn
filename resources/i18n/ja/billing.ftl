# =============================================================================
# billing.ftl — 請求/サブスクリプション/ペイウォール文字列
# =============================================================================
# Message IDs: billing-{id}
# =============================================================================

## -- 共有オブジェクト作成拒否モーダル ---------------------------------------------

billing-shared-object-limit-reached = 共有オブジェクトの上限に達しました
billing-shared-objects-restricted = 共有{ $object_type }が制限されました
billing-shared-objects-limit-reached = 共有{ $object_type }の上限に達しました

## -- サブヘッダー文字列（object_type が None の場合の静的デフォルト）-----------

billing-delinquent-admin-subheader = サブスクリプションの支払い問題により、共有ドライブオブジェクトが制限されています。\n\n支払い情報を更新してアクセスを復元してください。
billing-delinquent-admin-enterprise-subheader = サブスクリプションの支払い問題により、共有ドライブオブジェクトが制限されています。\n\nアクセスを復元するには support@warp.dev にご連絡ください。
billing-delinquent-subheader = サブスクリプションの支払い問題により、共有ドライブオブジェクトが制限されています。\n\nチーム管理者に連絡してアクセスを復元してください。
billing-admin-prosumer-subheader = WarpのProプランには限られた数の共有ドライブオブジェクトが付属しています。\n\n無制限の共有ドライブオブジェクトにアクセスするには、Turboプランにアップグレードしてください。
billing-prosumer-subheader = WarpのProプランには限られた数の共有ドライブオブジェクトが付属しています。\n\n無制限の共有ドライブオブジェクトにアクセスするには、チーム管理者に連絡してTurboプランにアップグレードしてください。
billing-admin-subheader = Warpの無料プランには限られた数の共有ドライブオブジェクトが付属しています。\n\n無制限の共有ドライブオブジェクトにアクセスするには、有料プランにアップグレードしてください。
billing-default-subheader = Warpの無料プランには限られた数の共有ドライブオブジェクトが付属しています。\n\n無制限の共有ドライブオブジェクトにアクセスするには、チーム管理者に連絡して有料プランにアップグレードしてください。

## -- 動的サブヘッダー文字列（object_type 補間付き）--------------

billing-delinquent-admin-dynamic-subheader = 共有{ $object_type }はサブスクリプションの支払い問題により制限されています。\n\n支払い情報を更新してアクセスを復元してください。
billing-delinquent-admin-enterprise-dynamic-subheader = 共有{ $object_type }はサブスクリプションの支払い問題により制限されています。\n\nアクセスを復元するには support@warp.dev にご連絡ください。
billing-delinquent-dynamic-subheader = 共有{ $object_type }はサブスクリプションの支払い問題により制限されています。\n\nチーム管理者に連絡してアクセスを復元してください。
billing-admin-prosumer-dynamic-subheader = WarpのProプランには限られた数の共有{ $object_type }が付属しています。\n\n無制限の共有{ $object_type }にアクセスするには、Buildプランにアップグレードしてください。
billing-prosumer-dynamic-subheader = WarpのProプランには限られた数の共有{ $object_type }が付属しています。\n\n無制限の共有{ $object_type }にアクセスするには、チーム管理者に連絡してBuildプランにアップグレードしてください。
billing-admin-dynamic-subheader = Warpの無料プランには限られた数の共有{ $object_type }が付属しています。\n\n無制限の共有{ $object_type }にアクセスするには、有料プランにアップグレードしてください。
billing-default-dynamic-subheader = Warpの無料プランには限られた数の共有{ $object_type }が付属しています。\n\n無制限の共有{ $object_type }にアクセスするには、チーム管理者に連絡して有料プランにアップグレードしてください。

## -- ボタンラベル -----------------------------------------------------------

billing-compare-plans = プランを比較
billing-manage-billing = 請求を管理
