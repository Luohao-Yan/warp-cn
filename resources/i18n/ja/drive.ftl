# =============================================================================
# drive.ftl — Warp Drive、共有、インポート/エクスポートの文字列
# =============================================================================
# Message IDs: drive-{id}
# Used in app/src/drive/*.rs
# =============================================================================

## -- Drive サイドバー ---------------------------------------------------------

drive-description = チームメイトとコマンドや知識を共有。
drive-type-folder = フォルダ
drive-type-notebook = ノートブック
drive-type-workflow = ワークフロー
drive-type-prompt = プロンプト
drive-type-env-vars = 環境変数
drive-new-folder = 新規フォルダ
drive-new-notebook = 新規ノートブック
drive-new-workflow = 新規ワークフロー
drive-new-prompt = 新規プロンプト
drive-new-env-vars = 新規環境変数
drive-import = インポート
drive-remove = 削除
drive-offline-warning = オフラインです。一部のファイルは読み取り専用になります。
drive-sort-by = 並べ替え
drive-retry-sync = 同期を再試行
drive-upgrade-prompt = ノートブック、ワークフロー、共有セッション、AIクレジットの追加アクセスのためにアップグレード。
drive-restricted-objects = サブスクリプションの支払い問題により、共有オブジェクトのアクセスが制限されています。
drive-update-payment = アクセスを復元するには、支払い情報を更新してください。
drive-contact-support = アクセスを復元するには、support@warp.dev にお問い合わせください。
drive-contact-admin = アクセスを復元するには、チーム管理者にお問い合わせください。
drive-untitled = 無題
drive-empty-trash = ゴミ箱を空にする
drive-collaborate = 既に Warp を利用している { $count } 人のチームメイトと協力。
drive-trash-label = ゴミ箱
drive-create-team = チームを作成
drive-or = または
drive-trash = ゴミ箱
drive-warp-drive = Warp Drive
drive-sign-up-prompt = 無料サインアップでストレージ制限を増やし、さらに多くの機能をアンロック。
drive-sign-up = サインアップ
drive-amount-max = { $amount }/{ $max_amount }
drive-out-of-objects = プランの { $object_type }が不足しています。
drive-compare-plans = プランを比較
drive-manage-billing = 請求を管理

## -- Drive コンテキストメニュー項目 -----------------------------------------

drive-menu-rename = 名前を変更
drive-menu-copy-link = リンクをコピー
drive-menu-share = 共有
drive-menu-collapse-all = すべて折りたたむ
drive-menu-retry = 再試行
drive-menu-revert-to-server = サーバーに復元
drive-menu-attach-session = アクティブセッションにアタッチ
drive-menu-copy-id = ID をコピー
drive-menu-copy-variables = 変数をコピー
drive-menu-load-in-subshell = サブシェルでロード
drive-menu-open-desktop = デスクトップで開く
drive-menu-duplicate = 複製
drive-menu-export = エクスポート
drive-menu-open = 開く
drive-menu-edit = 編集
drive-menu-trash = ゴミ箱
drive-menu-restore = 復元
drive-menu-delete-forever = 完全に削除
drive-menu-move-to = { $space_name } に移動

## -- Drive オブジェクトタイプ（小文字、文中用）-------------------------------

drive-object-notebook = ノートブック
drive-object-workflow = ワークフロー
drive-object-folder = フォルダ
drive-object-env-var-collection = 環境変数コレクション
drive-object-prompt = プロンプト
drive-object-ai-fact = AI ファクト
drive-object-ai-fact-collection = AI ファクトコレクション
drive-object-mcp-server = MCP サーバー
drive-object-mcp-server-collection = MCP サーバーコレクション

## -- エクスポート ------------------------------------------------------------

drive-open-in-finder = Finder で開く
drive-open-in-folder = フォルダで開く
drive-export-finished = オブジェクトのエクスポートが完了
drive-export-failed = { $name } のエクスポートに失敗
drive-export-failed-fallback = エクスポートに失敗
drive-exported = { $name } をエクスポート済み
drive-exported-fallback = オブジェクトをエクスポート済み

## -- 共有 --------------------------------------------------------------------

drive-sharing-no-access = アクセス権なし
drive-sharing-invite = 招待
drive-sharing-already-shared = 既に { $email } と共有済み
drive-sharing-invalid-address = 無効なアドレス：{ $email }
drive-sharing-who-has-access = アクセス権のあるユーザー
drive-sharing-live-session = { $date } の { $time } にライブセッションを開始
drive-sharing-only-invited = 招待された人のみ
drive-sharing-anyone-link = リンクを知っている全員
drive-sharing-only-invited-teammates = 招待されたチームメイトのみ
drive-sharing-teammates-link = リンクを知っているチームメイト
drive-sharing-must-have-full = 権限を管理するには完全アクセス権が必要です。あなたは
drive-sharing-access-suffix =  アクセス権です。
drive-sharing-can-view = 閲覧可
drive-sharing-can-edit = 編集可
drive-sharing-full-access = 完全アクセス
drive-sharing-copied-link = { $object_name } のリンクをコピーしました。

## -- クラウドアクション確認 ---------------------------------------------------

drive-cancel = キャンセル
drive-confirm-delete-team = このチームを削除してもよろしいですか？
drive-confirm-leave-team = このチームを離脱してもよろしいですか？
drive-delete-team-description = このチームを削除すると、請求情報やクレジットを含むすべての関連コンテンツが永久に削除されます。復元することはできません。
drive-leave-team-description = 再度参加するには、再招待を受ける必要があります。
drive-yes-delete = はい、削除
drive-yes-leave = はい、離脱

## -- クラウドオブジェクト命名ダイアログ --------------------------------------

drive-create = 作成
drive-rename = 名前を変更

## -- ゴミ箱を空にする確認 ----------------------------------------------------

drive-confirm-empty-trash = ゴミ箱を空にしてもよろしいですか？
drive-cannot-undo = この操作は元に戻せません。
drive-yes-empty-trash = はい、ゴミ箱を空にする

## -- インポート --------------------------------------------------------------

drive-import-title = インポート
drive-import-close = 閉じる
drive-import-cancel = キャンセル
drive-import-file-types = md, yaml, yml
drive-import-preparing = 準備中...
drive-import-choose-files = ファイルを選択...
drive-import-parse-failed = ファイルの解析に失敗：{ $error }

## -- ワークフロー ------------------------------------------------------------

drive-workflow-untitled = 無題のワークフロー
drive-workflow-description-placeholder = 説明を追加
drive-workflow-command-placeholder = echo "Hello {{your_name}}" # 中括弧で引数を挿入\n# 単一行コマンドまたはシェルスクリプト全体を入力
drive-workflow-new-argument = 新規引数
drive-workflow-argument-description = 説明
drive-workflow-argument-default = デフォルト値（オプション）
drive-workflow-save = ワークフローを保存
drive-workflow-autofill = オートフィル
drive-workflow-loading = ロード中
drive-workflow-unsaved = 保存されていない変更があります。
drive-workflow-keep-editing = 編集を続行
drive-workflow-discard = 変更を破棄
drive-workflow-copy-text = ワークフローテキストをコピー
drive-workflow-trash = ゴミ箱
drive-workflow-ai-tooltip = Warp AIでタイトル、説明、パラメータを生成
drive-workflow-bad-command = メタデータの生成に失敗しました。別のコマンドで再試行してください。
drive-workflow-ai-provider-error = エラーが発生しました。再試行してください。
drive-workflow-rate-limited = AIクレジットが不足しています。後でもう一度お試しください。
drive-workflow-out-of-credits-admin = AIクレジットが不足しています。チーム管理者に連絡してアップグレードしてください。
drive-enum-static = 静的
drive-enum-dynamic = 動的

## -- ワークフロー列挙型作成 -------------------------------------------------

drive-enum-close = 閉じる
drive-enum-new = 新規列挙型
drive-enum-edit = 列挙型を編集
drive-enum-name = 名前
drive-enum-create = 作成
drive-enum-save = 保存
drive-enum-variant = バリアント
drive-enum-variants = バリアント
drive-enum-command-placeholder = # 改行区切りでバリアントを生成するシェルコマンドを入力。\n\ngit branch -a

## -- 追加モデルタイプ名 -------------------------------------------------------

## -- エクスポート（追加） -------------------------------------------------------

## -- 共有ダイアログ（追加） -----------------------------------------------------

drive-sharing-emails-label = メールアドレス
drive-sharing-invite-label = 招待
drive-sharing-team-auto-permissions = チームオブジェクトはチームメンバーに自動的に完全な権限を付与します
drive-sharing-owner-full-permissions = オーナーは常にオブジェクトに対する完全な権限を持ちます

## -- 共有ダイアログ（不足分） -----------------------------------------------

drive-sharing-must-have-full-access = 権限を管理するには完全アクセス権が必要です。あなたは

## -- エクスポート（追加） -------------------------------------------------------

drive-export-failed-named = 「{ $name }」のエクスポートに失敗しました。
drive-exported-named = 「{ $name }」をエクスポートしました。

## -- Drive インデックス追加文字列 -----------------------------------------------

drive-syncing-warp-drive = Warp Drive を同期中
drive-copy-prompt = プロンプトをコピー
drive-copy-workflow-text = ワークフローテキストをコピー
drive-share-object = オブジェクトを共有
drive-open-team-settings = チーム設定を開く
drive-view-plans = プランを表示
## -- 並べ替えメニュー -----------------------------------------------------------

drive-sort-last-updated = 最終更新
drive-sort-last-trashed = 最終削除
drive-sort-a-to-z = A から Z
drive-sort-z-to-a = Z から A
drive-sort-type = タイプ

## -- 追加ボタンラベル ----------------------------------------------------

drive-restore = 復元

## -- Workflow view menu items (i18n) ------------------------------------------

drive-copy-link = リンクをコピー
drive-open-on-desktop = デスクトップで開く
drive-duplicate = 複製
drive-other = その他
drive-menu-unshare = 共有解除
drive-deleting-label = 削除中…
drive-executed-on = 実行日時：{ $time }
drive-export-finished-toast = オブジェクトのエクスポートが完了しました
drive-sharing-copied-link-toast = { $object_name } のリンクをコピーしました。

## -- 共有ダイアログ追加文字列 -----------------------------------------------

drive-who-has-access = アクセス権のあるユーザー

## -- ワークフロービュー追加文字列 -------------------------------------------

drive-workflow-fill-arguments = このワークフローの引数を入力し、コピーしてターミナルセッションで実行
drive-workflow-env-variables = 環境変数

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

drive-restore-workflow-tooltip = ゴミ箱からワークフローを復元
