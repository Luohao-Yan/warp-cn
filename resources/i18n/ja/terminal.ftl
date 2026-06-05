# =============================================================================
# terminal.ftl — ターミナルビューとインタラクション文字列
# =============================================================================
# Message IDs: terminal-{id}
# =============================================================================

## -- 共有セッション -----------------------------------------------------------

terminal-share-session-title = ターミナルセッションを共有
terminal-share-session-description = このターミナルセッションをチームメイトと共有します。
terminal-join-session-title = セッションに参加
terminal-leave-session-label = セッションを離脱
terminal-end-session-label = セッションを終了
terminal-copy-session-link = セッションリンクをコピー

## -- SSH ----------------------------------------------------------------------

terminal-ssh-connection-title = SSH 接続
terminal-ssh-authenticating = 認証中…
terminal-ssh-connected = 接続済み
terminal-ssh-disconnected = 切断済み
terminal-ssh-error-title = SSH 接続エラー
terminal-ssh-host-label = ホスト：
terminal-ssh-user-label = ユーザー：

## -- オンボーディングプロンプトブロック ------------------------------------------

terminal-onboarding-confirm = 確認
terminal-onboarding-skip = スキップ
terminal-onboarding-next = 次へ

## -- ブロック/自動リロード -------------------------------------------------------

terminal-enable-autoreload = 自動リロードを有効化
terminal-disable-autoreload = 自動リロードを無効化
terminal-reload-label = リロード

## -- コンテキストメニュー項目 -------------------------------------------------------

terminal-context-copy = コピー
terminal-context-paste = 貼り付け
terminal-context-copy-as-text = テキストとしてコピー
terminal-context-select-all = すべて選択
terminal-context-clear = クリア
terminal-context-split-right = 右に分割
terminal-context-split-left = 左に分割
terminal-context-split-down = 下に分割
terminal-context-split-up = 上に分割
terminal-context-close-pane = ペインを閉じる

## -- その他 ---------------------------------------------------------------------

terminal-buffer-full = バッファがいっぱいです — 出力の一部が破棄された可能性があります
terminal-scroll-to-bottom = 下までスクロール
terminal-tooltip-cancel = キャンセル

## -- クレジット購入バナー ---------------------------------------------------------

terminal-auto-reload-label = 自動リロード
terminal-auto-reload-tooltip = 有効にすると、クレジット残高が少なくなったときに自動リロードが {$credits} クレジットを自動購入します
terminal-monthly-limit-reached-admin = 月額使用制限に達しました。続行するには制限を引き上げてください。
terminal-monthly-limit-reached-non-admin = チーム管理者に連絡して月額制限を引き上げてください。
terminal-monthly-limit-reached-title = 月額制限に達しました
terminal-manage-billing = 請求を管理
terminal-out-of-credits-title = クレジット不足
terminal-out-of-credits-admin = Oz エージェントを引き続き使用するには、アカウントにクレジットを追加してください。
terminal-out-of-credits-non-admin = クレジットを購入して続行するには、チーム管理者に連絡してください。
terminal-purchase-exceeds-limit = これらのクレジットを購入すると、月額使用制限を超えます。
terminal-increase-limit = 制限を引き上げる
terminal-to-continue =  続行するには。
terminal-buying = 購入中…
terminal-buy = 購入
terminal-failed-enable-autoreload = チームの自動リロードを有効にできませんでした。設定 > 請求と使用量で再試行してください。

## -- 共有セッションビュー文字列 ------------------------------------------------

terminal-copy-link = リンクをコピー
terminal-stop-sharing-session = セッション共有を停止
terminal-open-on-desktop = デスクトップで開く
terminal-share-session-ellipsis = セッションを共有...
terminal-stop-sharing = 共有を停止
terminal-copy-session-sharing-link = セッション共有リンクをコピー

## -- 共有セッション (view_impl) ------------------------------------------------

terminal-request-edit-access = 編集アクセスをリクエスト
terminal-couldnt-continue-cloud-task = このクラウドタスクを続行できませんでした。
terminal-sharing-ended-inactivity = 非アクティブのため共有が終了しました
terminal-sharing-edit-revoked-inactivity = 非アクティブのため共有編集権限が取り消されました
terminal-editing-revoked-sharer-idle = 共有者がアイドル状態のため編集権限が取り消されました
terminal-new-cloud-agent = 新しいクラウドエージェント
terminal-new-agent-conversation = 新しいエージェント会話

## -- 会話終了トゥームストン ----------------------------------------------------

terminal-continue-locally = ローカルで続行
terminal-fork-locally-tooltip = この会話をローカルでフォーク
terminal-continue-in-cloud-tooltip = このタスクをクラウドモードで続行
terminal-open-in-warp = Warp で開く
terminal-open-in-desktop-tooltip = この会話を Warp デスクトップアプリで開く
terminal-viewing-snapshot = スナップショットを表示しています
terminal-snapshot-subtitle = この共有会話は、開いた時点の状態を示しています。エージェントがまだ実行中の場合は、更新して最新の進捗を確認してください。
terminal-agent-task = エージェントタスク
terminal-directory-label = ディレクトリ：
terminal-source-label = ソース：
terminal-skill-label = スキル：
terminal-run-time-label = 実行時間：
terminal-credits-used-label = 使用クレジット：

## -- Warpify フッター -----------------------------------------------------------

terminal-warpify-subshell = Warpify サブシェル
terminal-warpify-subshell-tooltip = このセッションで Warp シェル統合を有効にする
terminal-use-agent = エージェントを使用
terminal-use-agent-tooltip = Warp エージェントに支援を依頼する
terminal-warpify-ssh-session = Warpify SSH セッション
terminal-for-terminal = ターミナルに戻る

## -- 参加者アバター -----------------------------------------------------------

terminal-make-editor = エディタにする
terminal-make-viewer = ビューアにする
terminal-revoke-all-edit-permissions-tooltip = すべての編集権限を取り消し
terminal-change-role-tooltip = ロールを変更

## -- プロファイル/モデルセレクター -------------------------------------------------

terminal-profiles = プロファイル
terminal-manage-profiles = プロファイルを管理
terminal-manage-defaults = デフォルトを管理
terminal-manage = 管理
terminal-manage-api-keys = API キーを管理
terminal-choose-execution-profile = AI 実行プロファイルを選択
terminal-choose-execution-profile-tooltip = AI 実行プロファイルを選択
terminal-choose-agent-model = エージェントモデルを選択
terminal-choose-agent-model-tooltip = エージェントモデルを選択
terminal-request-edit-access-model = モデル変更の編集アクセスをリクエスト
terminal-model-specs = モデルスペック
terminal-model-specs-tooltip = モデルスペック
terminal-intelligence = インテリジェンス
terminal-speed = スピード
terminal-cost = コスト
terminal-billed-to-api = API に課金
terminal-auto-mode = 自動モード
terminal-auto-mode-description = 自動モデルはタスクに最適なモデルを選択します。例：Claude、Kimi、MiniMax。
terminal-reasoning-level = 推論レベル
terminal-reasoning-level-description = 推論レベルが高いほど、より多くのクレジットを消費し、レイテンシが高くなりますが、複雑なタスクでのパフォーマンスが向上します。
terminal-model-specs-description = Warp のベンチマーク：ハーネスでのパフォーマンス、クレジット消費率、タスク速度。
terminal-auto-select-best-model = タスクに最適なモデルを自動選択
terminal-ellipsis = 、...
terminal-new-models-available = 新しいモデルが利用可能です

## -- インライン履歴ビュー -----------------------------------------------------

terminal-tab-all = すべて
terminal-conversations-current-directory = 現在のディレクトリ
terminal-tab-commands = コマンド
terminal-tab-prompts = プロンプト
terminal-history = 履歴
terminal-configure = 設定

## -- モデルビュー -------------------------------------------------------------

terminal-base = ベース
terminal-full-terminal-use = フルターミナル使用
terminal-model = /model

## -- 認証シークレット FTUX ドロップダウン -----------------------------------------

terminal-search-secrets-or-create = シークレットを検索または新規作成
terminal-no-secrets-found = シークレットが見つかりません
terminal-ftux-loading = 読み込み中…
terminal-unable-to-load-secrets = シークレットを読み込めません
terminal-skip-api-key = API キーの設定をスキップ
terminal-skip-api-key-sub = 環境に認証が設定されている場合はこちらを選択
terminal-no-secrets-helper = シークレットが見つかりません。保存してこの値を直接使用するか、キーアイコンをクリックしてシークレットを追加してください。

## -- 認証シークレットセレクター ------------------------------------------------

terminal-selector-choose-type = タイプを選択

## -- タブコンテキストメニュー文字列 -------------------------------------------

terminal-copy-tab-title = タブタイトルをコピー
terminal-copy-pane-title = ペインタイトルをコピー
terminal-copy-branch = ブランチをコピー
terminal-copy-working-directory = ワーキングディレクトリをコピー
terminal-copy-pull-request-link = プルリクエストリンクをコピー
terminal-rename-tab = タブの名前を変更
terminal-reset-tab-name = タブ名をリセット
terminal-move-tab-right = タブを右に移動
terminal-move-tab-down = タブを下に移動
terminal-move-tab-left = タブを左に移動
terminal-move-tab-up = タブを上に移動
terminal-close-other-tabs = 他のタブを閉じる
terminal-close-tabs-to-the-right = 右のタブを閉じる
terminal-close-tabs-below = 下のタブを閉じる
terminal-save-as-new-config = 新規設定として保存
terminal-stop-sharing-tab = 共有を停止
terminal-share-session-tab = セッションを共有
terminal-stop-sharing-all = すべての共有を停止
terminal-copy-link-tab = リンクをコピー
terminal-default-no-color = デフォルト（色なし）
terminal-cloud-agent-run = クラウドエージェント実行

## -- ブロックフィルター -------------------------------------------------------------

terminal-filter-placeholder = ブロック出力をフィルター
terminal-filter-context-tooltip = 一致した行の周囲のコンテキスト行を表示
terminal-filter-regex-tooltip = 正規表現トグル
terminal-filter-case-sensitivity-tooltip = 大文字小文字を区別して検索
terminal-filter-invert-tooltip = フィルターを反転
terminal-filter-a11y-label = 検索フレーズを入力。
terminal-filter-a11y-helper = Esc を押して終了

## -- ブロックリスト ---------------------------------------------------------------

terminal-tag-agent-assistance = エージェントに支援を依頼
terminal-save-as-workflow = ワークフローとして保存
terminal-save-as-workflow-secrets = シークレットを含むブロックは保存できません。
terminal-conversation-restored = 会話が復元されました
terminal-previous-session = 前のセッション
terminal-previous-session-from = {intro} {time} から

## -- 利用可能なシェル ---------------------------------------------------------

terminal-shell-default = デフォルト
terminal-shell-bash = Bash
terminal-shell-zsh = Zsh
terminal-shell-fish = Fish
terminal-shell-powershell = PowerShell
terminal-shell-windows-powershell = Windows PowerShell
terminal-shell-custom = カスタム
terminal-shell-docker-sandbox = Docker サンドボックス
terminal-shell-system-default = システムデフォルトシェル
terminal-shell-wsl = Linux 用 Windows サブシステム
terminal-shell-custom-path = カスタム：{$path}
terminal-shell-custom-command = カスタム（{$command}）

## -- プロファイル/モデルセレクター ---------------------------------------------------

## -- クレジット購入バナー -------------------------------------------------------

terminal-auto-reload = 自動リロード
terminal-monthly-limit-reached = 月額制限に達しました
terminal-out-of-credits = クレジット不足
terminal-spend-limit-reached-admin = 月額使用制限に達しました。続行するには制限を引き上げてください。
terminal-spend-limit-reached-non-admin = チーム管理者に連絡して月額制限を引き上げてください。
terminal-add-credits-admin = アカウントにクレジットを追加して Oz エージェントを引き続き使用してください。
terminal-add-credits-non-admin = クレジットを購入して続行するには、チーム管理者に連絡してください。
## -- 自動リロード有効化モーダル -------------------------------------------------

terminal-enable-auto-reload-title = 自動リロードを有効にしますか？
terminal-auto-reload-explanation-part1 = 有効にすると、
terminal-auto-reload-explanation-bold = 自動リロード
terminal-auto-reload-explanation-part2 =  はクレジットがなくなったときに選択したパッケージを自動的に購入します。
terminal-auto-reload-learn-more = 詳細
terminal-saving = 保存中…
terminal-enable = 有効化
terminal-autoreload-settings-updated = 自動リロード設定が更新されました
terminal-autoreload-enable-failed = 自動リロードを有効にできませんでした。請求と使用量で設定を更新してください。
terminal-autoreload-team-not-found = エラーが発生しました。チームのデータが見つかりませんでした。

## -- ACL 更新失敗 -------------------------------------------------------

terminal-acl-update-failed = エラーが発生しました。もう一度お試しください。

## -- 共有リンクコピー済み ------------------------------------------------------

terminal-sharing-link-copied = 共有リンクをコピーしました

## -- セッション共有モーダル ------------------------------------------------------

terminal-share-session-modal-header = セッションを共有
terminal-session-limit-reached-header = 共有セッションの制限に達しました
terminal-session-free-plan-subheader = Warp の無料プランと Pro プランには、共有セッションの制限があります。\n\n共有セッションのアクセスを増やすには、Build プランにアップグレードしてください。
terminal-view-plans = プランを表示

## -- ブロック共有モーダル --------------------------------------------------------

terminal-share-block-title-placeholder = タイトル（任意）
terminal-share-block-command-option = コマンド
terminal-share-block-output-option = 出力
terminal-share-block-creation-failed = エラーが発生しました。もう一度お試しください。
terminal-share-block-embed-error = 埋め込みスニペットの生成エラー

## -- SSH エラー ----------------------------------------------------------------

terminal-warpify-timeout-error = セッションの Warpify がタイムアウトしました。
terminal-warpify-session-error = セッションの Warpify エラー

## -- SSH リモートサーバー失敗バナー ------------------------------------------

terminal-ssh-extension-title = Warp SSH 拡張機能に接続できませんでした
terminal-ssh-extension-body = ファイルブラウジングやコードレビューなどの高度な機能は現在無効ですが、その他の Warpify 機能は完全に利用可能です。

## -- シェル終了バナー ------------------------------------------------------

terminal-shell-process-exited = シェルプロセスが終了しました
terminal-shell-process-could-not-start = シェルプロセスを開始できませんでした！
terminal-shell-process-exited-prematurely = シェルプロセスが途中で終了しました！
terminal-shell-premature-subtext = {$shell_detail} の開始と Warpify 中に問題が発生し、プロセスが終了しました。ここに Warpify スクリプト出力が表示され、原因を示す可能性があります。
terminal-file-issue = 問題を報告
terminal-more-info = 詳細情報
terminal-copy-error = エラーをコピー

## -- ユニバーサル開発者入力 ----------------------------------------------------

terminal-attach-context-tooltip = コンテキストを添付
terminal-disabled-terminal-mode = ターミナルモードでは無効です。設定で再有効化してください
terminal-disabled-by-admin-tooltip = 管理者によって無効化されています

## -- エージェントハーネスセレクター ---------------------------------------------------

terminal-agent-harness-tooltip = エージェントハーネス
terminal-agent-harness-menu-header = エージェントハーネス

## -- 実行ホストセレクター -------------------------------------------------

terminal-execution-host-tooltip = 実行ホスト
terminal-execution-host-menu-header = 実行ホスト

## -- モデルセレクター -----------------------------------------------------------

terminal-search-models-placeholder = モデルを検索
terminal-no-results = 結果なし

## -- API キーセレクター ---------------------------------------------------------

terminal-api-key-tooltip = API キー
terminal-api-key-menu-header = API キー
terminal-no-api-key = API キーなし
terminal-new-item = 新規
terminal-loading = 読み込み中…
## -- 認証シークレット FTUX ---------------------------------------------------------

terminal-please-enter-name = シークレットの名前を入力してください。
terminal-please-select-key = エージェントを使用するには、API キーを選択するか、新しいキーを作成してください。後でいつでも変更できます。

## -- ブロックオンボーディング ---------------------------------------------------------

terminal-welcome-to-warp = Warp へようこそ！
terminal-sharing-in-warp-drive = Warp Drive での共有
terminal-next-setup-prompt = 次に、プロンプトを設定しましょう。Warp にはカスタムプロンプトビルダーがあります。また、PS1 を選択して既存のプロンプト設定をそのまま使用することもできます。
terminal-learn-more = 詳細
terminal-shell-prompt-ps1 = シェルプロンプト (PS1)
terminal-warp-prompt = Warp プロンプト
terminal-no-existing-prompt = 既存のプロンプトがありません。
terminal-look-incorrect = 間違っていませんか？
terminal-let-us-know = お知らせください。

## -- 環境初期化 ---------------------------------------------------------

terminal-init-environment-explanation = このプロジェクト用の環境を作成して、クラウドエージェントを実行できるようにしますか？エージェントが GitHub リポジトリの選択、Docker イメージの設定、起動コマンドの指定をガイドします。

## -- プロジェクト初期化 -------------------------------------------------------------

terminal-init-project-onboarding = では、このプロジェクトのセットアップを始めましょう！このコードベースのインデックス作成を許可しますか？これにより、このコードベースで作業する際にコンテキストをすばやく理解し、より的を絞ったソリューションを提供できるようになります。コードは Warp サーバーに保存されません。
terminal-init-project-already-setup = このプロジェクトは既に初期化されているようです。下のボタンをクリックして、このコードベースの AGENTS.md を再生成できます。
terminal-regenerate-agents-md = AGENTS.md ファイルを再生成
terminal-view-index-status = インデックスステータスを表示
terminal-enable-language-support = {$language} サポートを有効化
terminal-enable-language-support-question = このコードベースで {$language} サポートを有効にしますか？よりスマートなコードナビゲーション、インラインエラーチェックなどが利用可能になります。

## -- インラインバナー -----------------------------------------------------------

terminal-optimize-codebase-header = このコードベース向けに Warp を最適化しますか？
terminal-optimize-codebase-text = エージェントがコードベースを理解し、ルールを生成できるようにすることで、よりスマートで一貫性のある応答をアンロックします。/init を実行していつでも行えます
terminal-optimize = 最適化
terminal-login-for-ai = AI を使用するためにログイン
terminal-login-for-ai-content = ログアウト中のユーザーは AI 機能を利用できません。アカウントを作成して AI を使用してください。
terminal-sign-up = サインアップ
terminal-restricted-payment-issue = 支払い問題により制限されています
## -- リッチ履歴 -------------------------------------------------------------

terminal-exit-code = 終了コード {$code}
terminal-finished-in = {$duration} で完了
terminal-last-ran = 最終実行 {$time}
terminal-ran = 実行 {$time}

## -- 入力ヒント --------------------------------------------------------------

terminal-hint-tell-agent = エージェントに何をビルドするか伝える...
terminal-hint-kick-off-cloud = クラウドエージェントを起動
terminal-hint-start-cloud-run = クラウド実行を開始
terminal-hint-run-commands = コマンドを実行
terminal-hint-steer-agent = 実行中のエージェントを操作
terminal-hint-steer-agent-classic = 実行中のエージェントを操作、またはバックスペースで終了
terminal-hint-ask-follow-up = フォローアップを質問
terminal-hint-ask-follow-up-classic = フォローアップを質問、またはバックスペースで終了
terminal-hint-type-hash = '#' を入力して AI コマンド候補を表示
terminal-hint-command-input = コマンド入力。
terminal-hint-command-input-a11y = シェルコマンドを入力し、Enter で実行。Cmd-Up で以前に実行したコマンドの出力に移動。Cmd-L でコマンド入力に再フォーカス。

## -- 動的列挙 -------------------------------------------------------------

terminal-dynamic-enum-generate = バリアントを生成するには、次のコマンドを実行：
terminal-dynamic-enum-run = コマンドを実行
terminal-dynamic-enum-pending = コマンド待機中...
terminal-dynamic-enum-failure = コマンドが失敗しました
terminal-dynamic-enum-no-results = コマンドが結果を返しませんでした

## -- 共有セッションビューアーエラー ---------------------------------------------

terminal-shared-session-join-failed = 共有セッションに参加できませんでした。
terminal-shared-session-connect-failed = 接続できませんでした。後でもう一度お試しください。
terminal-shared-session-reshare-needed = エラーが発生しました。共有者に再共有を依頼してください。
terminal-shared-session-execute-failed = コマンドを実行できませんでした。もう一度お試しください。
terminal-shared-session-edit-failed = 編集できませんでした。もう一度お試しください。
terminal-shared-session-action-failed = アクションを実行できませんでした。もう一度お試しください。
terminal-shared-session-reconnect-failed = 再接続できませんでした。後でもう一度お試しください。
terminal-shared-session-permissions-failed = 共有セッションの権限を更新できませんでした
terminal-shared-session-something-wrong = エラーが発生しました。もう一度お試しください。

## -- ゲスト追加失敗 -----------------------------------------------------

terminal-failed-to-add-guests = エラーが発生しました。もう一度お試しください。

## -- 読み込み ------------------------------------------------------------------

terminal-loading-session = セッションを読み込み中...
terminal-loading-prompt = プロンプトを読み込み中...

## -- Warpify ------------------------------------------------------------------

terminal-do-not-show-again = 今後表示しない

## -- デフォルト AI 質問 ------------------------------------------------------------

terminal-default-ask-ai = ここで何が起きましたか？

## -- スラッシュコマンド ------------------------------------------------------------

terminal-slash-rename-tab-hint = /rename-tab の後にタブ名を入力してください
terminal-slash-set-tab-color-hint = /set-tab-color の後に色を入力してください ({})
terminal-slash-create-project-hint = /create-new-project の後に作成したいプロジェクトの説明を入力してください

## -- クラウドハンドオフ -------------------------------------------------------------

terminal-cloud-handoff-prepare-failed = クラウドハンドオフの準備に失敗しました：{$error}

## -- CLI エージェントプラグインマネージャー -----------------------------------------

terminal-plugin-install-success-claude = Warp プラグインがインストールされました。有効化するには /reload-plugins を実行してください。
terminal-plugin-update-success-claude = Warp プラグインが更新されました。有効化するには /reload-plugins を実行してください。
terminal-plugin-update-no-effect = プラグインの更新が反映されませんでした
terminal-plugin-install-title-claude = Claude Code 用 Warp プラグインのインストール
terminal-plugin-install-subtitle-claude = マシンに jq がインストールされていることを確認してください。その後、以下のコマンドを実行してください。
terminal-plugin-install-step-add-repo-claude = Warp プラグインマーケットプレイスリポジトリを追加
terminal-plugin-install-step-install-claude = Warp プラグインをインストール
terminal-plugin-restart-claude = Claude Code を再起動してプラグインを有効化してください。
terminal-plugin-known-issues-claude = Claude Code のプラグインシステムにはいくつかの既知の問題があります。ステップ1の後にプラグインが見つからない場合は、~/.claude/settings.json に手動で "extraKnownMarketplaces" エントリを追加してみてください。
terminal-plugin-update-title-claude = Claude Code 用 Warp プラグインの更新
terminal-plugin-update-subtitle-claude = 以下のコマンドを実行してください。
terminal-plugin-update-step-remove-claude = 既存のマーケットプレイスを削除（存在する場合）
terminal-plugin-update-step-readd-claude = マーケットプレイスを再追加
terminal-plugin-update-step-install-latest-claude = 最新版プラグインをインストール
terminal-plugin-restart-update-claude = Claude Code を再起動して更新を有効化してください。
terminal-plugin-install-success-default = Warp プラグインがインストールされました。有効化するにはセッションを再起動してください。
terminal-plugin-update-success-default = Warp プラグインが更新されました。有効化するにはセッションを再起動してください。
terminal-plugin-auto-install-unsupported = このエージェントでは自動インストールはサポートされていません
terminal-plugin-auto-update-unsupported = このエージェントでは自動更新はサポートされていません
terminal-plugin-command-failed = '{display_cmd}' が失敗しました
terminal-plugin-command-run-failed = '{display_cmd}' の実行に失敗しました
terminal-plugin-install-title-codex = Codex の Warp 通知を有効にする
terminal-plugin-install-subtitle-codex = Codex を最新バージョンに更新し、フォーカス通知を有効にして作業中に Warp が表示できるようにしてください。
terminal-plugin-install-step-update-codex = Codex を最新バージョンに更新してください。
terminal-plugin-install-step-notify-codex = Codex 設定で通知条件を "always" に設定してください。~/.codex/config.toml を開くか作成して追加：
terminal-plugin-restart-codex = Codex を再起動して変更を適用してください。
terminal-plugin-install-success-gemini = Warp プラグインがインストールされました。有効化するには Gemini CLI を再起動してください。
terminal-plugin-update-success-gemini = Warp プラグインが更新されました。有効化するには Gemini CLI を再起動してください。
terminal-plugin-install-title-gemini = Gemini CLI 用 Warp プラグインのインストール
terminal-plugin-install-subtitle-gemini = 以下のコマンドを実行し、Gemini CLI を再起動してください。
terminal-plugin-install-step-install-gemini = Warp 拡張機能をインストール
terminal-plugin-restart-gemini = Gemini CLI を再起動してプラグインを有効化してください。
terminal-plugin-update-title-gemini = Gemini CLI 用 Warp プラグインの更新
terminal-plugin-update-subtitle-gemini = 以下のコマンドを実行し、Gemini CLI を再起動してください。
terminal-plugin-update-step-update-gemini = Warp 拡張機能を更新
terminal-plugin-restart-update-gemini = Gemini CLI を再起動して更新を有効化してください。
terminal-plugin-install-title-opencode = OpenCode 用 Warp プラグインのインストール
terminal-plugin-install-subtitle-opencode = OpenCode 設定に Warp プラグインを追加し、OpenCode を再起動してください。
terminal-plugin-install-step-config-opencode = opencode.json を開くか作成してください。プロジェクトルートまたはグローバル設定パスに配置できます：
terminal-plugin-install-step-add-opencode = トップレベルの JSON オブジェクトの "plugin" 配列に "@warp-dot-dev/opencode-warp" を追加してください：
terminal-plugin-restart-opencode = OpenCode を再起動してプラグインを有効化してください。
terminal-plugin-update-title-opencode = OpenCode 用 Warp プラグインの更新
terminal-plugin-update-subtitle-opencode = opencode.json でプラグインを最新バージョンに固定してください。OpenCode はバージョン仕様ごとにプラグインをキャッシュするため、固定を変更すると再起動時に再取得されます。
terminal-plugin-update-step-config-opencode = opencode.json を開くか作成してください。プロジェクトルートまたはグローバル設定パスに配置できます：
terminal-plugin-update-step-pin-opencode = "plugin" 配列内の既存の "@warp-dot-dev/opencode-warp" エントリを明示的なバージョンに置き換えてください：
terminal-plugin-restart-update-opencode = OpenCode を再起動して更新されたプラグインを読み込んでください。

## -- スラッシュコマンドエラー文字列 ----------------------------------------------

terminal-slash-unknown-tab-color = 不明なタブ色 '{arg}'。以下のいずれかを使用してください：{options}。
terminal-slash-open-file-local-only = /open-file コマンドはローカルセッションでのみ使用可能です
terminal-slash-open-file-not-dir = /open-file コマンドはファイル専用であり、ディレクトリには使用できません
terminal-slash-open-file-not-found = ファイルが見つかりません：{path}
terminal-slash-open-file-unsupported = このビルドでは /open-file コマンドはサポートされていません
terminal-slash-export-copied = 会話がクリップボードにエクスポートされました
terminal-slash-export-unsupported-web = Web 版ではファイルへの会話エクスポートはサポートされていません
terminal-slash-cost-no-conversation = 会話コストを表示できません：アクティブな会話がありません
terminal-slash-cost-empty = 会話コストを表示できません：会話が空です
terminal-slash-cost-in-progress = 会話コストを表示できません：会話が進行中です
terminal-slash-fork-requires-conversation = /fork にはアクティブな会話が必要です
terminal-slash-queue-requires-conversation = /queue にはアクティブな会話が必要です
terminal-slash-queue-requires-prompt = /queue にはプロンプト引数が必要です
terminal-slash-requires-ai = {command} は AI を有効にする必要があります

## -- セクションヘッダー ----------------------------------------------------------

terminal-section-commands = コマンド
terminal-section-skills = スキル
terminal-section-prompts = プロンプト

## -- アクセシビリティラベル -----------------------------------------------------

terminal-conversation-label = 会話：{title}
terminal-command-label = コマンド：{command}
terminal-ai-prompt-label = AI プロンプト：{query_text}
terminal-plan-label = プラン：{title}
terminal-profile-label = プロファイル：{profile_name}
terminal-skill-not-found = スキルが見つかりません：{reference}
terminal-could-not-navigate-conversation = 会話に移動できませんでした。
terminal-rewind-current-state = 現在の状態（巻き戻しなし）
terminal-rewind-to-changes = 巻き戻し先：{query_text}（+{lines_added} -{lines_removed}）
terminal-rewind-to-no-changes = 巻き戻し先：{query_text}（コード変更なし）

## -- Warpify フッター -----------------------------------------------------------

terminal-failed-to-load-conversation = ID {conversation_id} の会話の読み込みに失敗しました

## -- エージェントモードローテーションヒント -----------------------------------------

terminal-hint-warp-anything-1 = 任意の操作を入力 例：React アプリを Vercel にデプロイし環境変数を設定
terminal-hint-warp-anything-2 = 任意の操作を入力 例：Python テストが CI で失敗する理由をデバッグして
terminal-hint-warp-anything-3 = 任意の操作を入力 例：Docker で新しいマイクロサービスをセットアップしデプロイパイプラインを作成
terminal-hint-warp-anything-4 = 任意の操作を入力 例：Node.js アプリケーションのメモリリークを見つけて修正
terminal-hint-warp-anything-5 = 任意の操作を入力 例：PostgreSQL データベースのバックアップスクリプトを作成しスケジュール設定
terminal-hint-warp-anything-6 = 任意の操作を入力 例：MySQL から PostgreSQL へのデータ移行を手伝って
terminal-hint-warp-anything-7 = 任意の操作を入力 例：AWS インフラのモニタリングとアラートを設定
terminal-hint-warp-anything-8 = 任意の操作を入力 例：FastAPI を使用してモバイルアプリの REST API を構築
terminal-hint-warp-anything-9 = 任意の操作を入力 例：実行速度が遅い SQL クエリの最適化を手伝って
terminal-hint-warp-anything-10 = 任意の操作を入力 例：マージ時に自動デプロイする GitHub Actions ワークフローを作成
terminal-hint-warp-anything-11 = 任意の操作を入力 例：Web アプリケーションに Redis キャッシュを設定
terminal-hint-warp-anything-12 = 任意の操作を入力 例：Kubernetes Pod が繰り返しクラッシュする問題をトラブルシューティング
terminal-hint-warp-anything-13 = 任意の操作を入力 例：CSV ファイルを処理して BigQuery にロードするデータパイプラインを構築
terminal-hint-warp-anything-14 = 任意の操作を入力 例：ドメインに SSL 証明書を設定し HTTPS を構成
terminal-hint-warp-anything-15 = 任意の操作を入力 例：レガシーコードをモダンなデザインパターンにリファクタリングして
terminal-hint-warp-anything-16 = 任意の操作を入力 例：認証サービスのユニットテストを作成
terminal-hint-warp-anything-17 = 任意の操作を入力 例：分散システムに ELK スタックのログ集約を設定
terminal-hint-warp-anything-18 = 任意の操作を入力 例：Express.js アプリに OAuth2 認証を実装して
terminal-hint-warp-anything-19 = 任意の操作を入力 例：Docker イメージを最適化してビルド時間とサイズを削減
terminal-hint-warp-anything-20 = 任意の操作を入力 例：Web アプリケーションに A/B テストインフラを設定
terminal-hint-warp-anything-21 = 任意の操作を入力 例：React アプリを Vercel にデプロイし環境変数を設定
terminal-hint-warp-anything-22 = 任意の操作を入力 例：Python テストが CI で失敗する理由をデバッグして
terminal-hint-warp-anything-23 = 任意の操作を入力 例：Docker で新しいマイクロサービスをセットアップしデプロイパイプラインを作成
terminal-hint-warp-anything-24 = 任意の操作を入力 例：Node.js アプリケーションのメモリリークを見つけて修正

## -- CLI エージェント -----------------------------------------------------------

terminal-review-prompt-prefix = 以下のコードレビューコメントに対応してください。変更の完全なコンテキスト、特に削除された行については `git diff`（または `git diff HEAD`）を実行してください。\n
terminal-waiting-for-answer = お客様の回答をお待ちしています
## -- アンビエントエージェントビュー ------------------------------------------------

terminal-running-setup-commands = セットアップコマンドを実行中...
terminal-ran-setup-commands = セットアップコマンドを実行しました
terminal-cloud-tip-1 = Oz Slack インテグレーションをインストールして、任意のチャンネルや DM からエージェントをトリガーしてください。
terminal-cloud-tip-2 = Oz の TypeScript と Python SDK を使用してプログラマティックエージェントを構築してください。
terminal-cloud-tip-3 = `oz secret` コマンドを使用してエージェント用のチームまたは個人シークレットを設定してください。
terminal-cloud-tip-4 = Oz Web アプリで全エージェントの実行とステータスを確認してください。
terminal-cloud-tip-5 = エージェントセッション共有を使用して、Oz クラウドエージェントの実行にリアルタイムで参加してください。
terminal-cloud-tip-6 = cron スケジュールで実行される定期エージェントを設定して、自動メンテナンスを実現してください。
terminal-cloud-tip-7 = Linear で問題が登録された際にバグを自動修正するエージェントを作成してください。
terminal-cloud-tip-8 = CI 障害に対応し自動修正を試みるエージェントを構築してください。
terminal-cloud-tip-9 = `oz-agent-action` を使用して GitHub Actions からエージェントを実行してください。
terminal-cloud-tip-10 = Oz REST API を呼び出して、任意のバックエンドサービスや内部ツールからエージェントをトリガーしてください。
terminal-cloud-tip-11 = Docker イメージで再利用可能な環境を作成し、エージェントの実行を一貫させください。
terminal-cloud-tip-12 = エージェントセッションリンクをチームと共有して、協力デバッグを行ってください。
terminal-cloud-tip-13 = Oz CLI で `--share` フラグを使用して、どこからでもセッション共有を有効にしてください。
terminal-cloud-tip-14 = 完了した Oz クラウドエージェントセッションを Warp にフォークして、ローカルで作業を続けてください。
terminal-cloud-tip-15 = データベースからの質問に答えるエージェントを使用する内部ツールを構築してください。
terminal-cloud-tip-16 = 毎週期限切れのフィーチャーフラグをクリーンアップする定期エージェントを作成してください。
terminal-cloud-tip-17 = Linear の問題で @Oz にタグ付けして、自動的に調査し修正案を提案してください。
terminal-cloud-tip-18 = Oz CLI を使用してリモート開発ボックスや CI ランナーでエージェントを実行してください。
terminal-cloud-tip-19 = MCP サーバーを設定して、Oz クラウドエージェントに GitHub、Linear、Sentry へのアクセスを許可してください。
terminal-cloud-tip-20 = `oz agent run` を使用して、Warp ターミナルを開かずにタスクを開始してください。
terminal-cloud-tip-21 = Oz Web アプリでチームメイトのエージェント実行を表示して、共有可視性を確保してください。
terminal-cloud-tip-22 = 受信 GitHub 問題を自動的にトリアージしてラベル付けするエージェントを構築してください。
terminal-cloud-tip-23 = 新しく開かれた問題の毎日のサマリーを生成するエージェントを設定してください。
terminal-cloud-tip-24 = PR を自動的にレビューし改善提案をするエージェントを作成してください。
terminal-cloud-tip-25 = `oz environment create` を使用して再現可能な実行コンテキストを定義してください。
terminal-cloud-tip-26 = Webhook からエージェントをトリガーして、本番インシデントに対応してください。
terminal-cloud-tip-27 = アラート発火時にサービスを再起動またはデプロイをスケーリングするエージェントを構築してください。
terminal-cloud-tip-28 = エージェントのみが使用する資格情報に個人シークレットを使用してください。
terminal-cloud-tip-29 = 全エージェントで共有インフラ資格情報にチームシークレットを使用してください。
terminal-cloud-tip-30 = 依存関係の更新を毎晩チェックするエージェントを作成してください。
terminal-cloud-tip-31 = スケジュールでコードを自動フォーマットしてリントするエージェントを構築してください。
terminal-cloud-tip-32 = `oz schedule create` を使用して cron トリガーエージェントを設定してください。
terminal-cloud-tip-33 = `oz schedule pause` を使用して定期エージェントを削除せずに一時停止・再開してください。
terminal-cloud-tip-34 = `oz mcp list` を使用してエージェントが利用可能な MCP サーバーを確認してください。
terminal-cloud-tip-35 = Oz エージェントにコーディングタスクを委任する内部 Slack ボットを構築してください。
terminal-cloud-tip-36 = Slack スレッドの @メンションに完全なコンテキストで応答するエージェントを作成してください。
terminal-cloud-tip-37 = Oz TypeScript SDK を使用してカスタム自動化パイプラインを構築してください。
terminal-cloud-tip-38 = Oz Python SDK を使用してエージェントをデータパイプラインに統合してください。
terminal-cloud-tip-39 = Oz API を使用してエージェントの成功率とランタイムを監視してください。
terminal-cloud-tip-40 = チーム全体のエージェント活動を追跡するダッシュボードを構築してください。

## -- オンボーディングドライブ共有 -----------------------------------------------

terminal-drive-sharing-body-1 = Warp または Web 上で、Warp ユーザーかどうかにかかわらず、誰とでもドライブオブジェクトを共有できるようになりました。Warp Drive メニューまたはペインヘッダーの「共有」をクリックして、リンクまたはメールで共有してください。
terminal-drive-sharing-body-2 = アクセス権限はいつでも変更できます。

## -- その他のビュー文字列 --------------------------------------------------------

terminal-add-current-folder-as-project = 現在のフォルダをプロジェクトとして追加
terminal-new-terminal-session = 新しいターミナルセッション
terminal-use-the-agent = エージェントを使用
terminal-use-the-agent-desc = ローカルで設定されたプロジェクトを選択すると、それに基づいた環境設定をサポートします
terminal-use-agent-btn = エージェントを使用
terminal-use-agent-btn-tooltip = Warp エージェントに支援を依頼する
terminal-powershell-subshell-unsupported = PowerShell サブシェルはサポートされていません
terminal-command-already-running = `{truncated_command}` は実行できません（コマンドはすでに実行中です）。

## -- プロファイル/モデルセレクターツールチップ ---------------------------------------

## -- ユニバーサルデベロッパー入力ツールチップ -------------------------------------------

terminal-voice-input-tooltip = 音声入力
terminal-attach-file-tooltip = ファイルを添付
terminal-slash-commands-tooltip = スラッシュコマンド

## -- エージェント使用フッター追加 -------------------------------------------------

terminal-use-agent-resume-tooltip = Warp エージェントに再開を依頼する

## -- プラグイン手順ブロック -------------------------------------------------

terminal-plugin-remote-session-subtitle = {subtitle} これらのコマンドはリモートマシンで実行してください。

## -- 追加文字列 -------------------------------------------------------

terminal-must-be-logged-in-to-share = セッションを共有するにはログインが必要です。
terminal-internal-error-try-sharing-again = 内部エラーが発生しました。再度共有をお試しください。
terminal-scrollback-exceeds-limit = スクロールバックが制限を超えています。スクロールバックなしで再度共有をお試しください。
terminal-failed-to-add-guests-not-warp-users = 1つ以上のメールアドレスが Warp ユーザーではありません。
terminal-failed-to-add-guests-already-added = 1人以上のゲストがすでに追加されています。
terminal-free-credits = 無料クレジット
terminal-suggested = 推奨
terminal-dont-ask-again = 今後表示しない

## -- 共有ブロックモーダル追加 -------------------------------------------------

terminal-share-block = ブロックを共有

## -- MenuItemFields / コンテキストメニュー -------------------------------------------

terminal-menu-copy-url = URL をコピー
terminal-menu-copy-path = パスをコピー
terminal-menu-show-in-finder = Finder で表示
terminal-menu-show-containing-folder = 含まれているフォルダを表示
terminal-menu-open-in-warp = Warp で開く
terminal-menu-open-in-editor = エディタで開く
terminal-menu-copy = コピー
terminal-menu-insert-into-input = 入力に挿入
terminal-menu-copy-command = コマンドをコピー
terminal-menu-copy-commands = コマンドをコピー
terminal-menu-copy-output = 出力をコピー
terminal-menu-copy-filtered-output = フィルター済み出力をコピー
terminal-menu-share-block = ブロックを共有...
terminal-menu-share = 共有...
terminal-menu-save-as-workflow = ワークフローとして保存
terminal-menu-ask-warp-ai = Warp AI に質問
terminal-menu-copy-prompt = プロンプトをコピー
terminal-menu-copy-right-prompt = 右プロンプトをコピー
terminal-menu-copy-working-directory = 作業ディレクトリをコピー
terminal-menu-copy-git-branch = Git ブランチをコピー
terminal-menu-find-within-block = ブロック内を検索
terminal-menu-find-within-blocks = ブロック内を検索
terminal-menu-scroll-to-top-of-block = ブロックの先頭にスクロール
terminal-menu-scroll-to-top-of-blocks = ブロックの先頭にスクロール
terminal-menu-scroll-to-bottom-of-block = ブロックの末尾にスクロール
terminal-menu-scroll-to-bottom-of-blocks = ブロックの末尾にスクロール
terminal-menu-toggle-block-filter = ブロックフィルターを切り替え
terminal-menu-toggle-bookmark = ブックマークを切り替え
terminal-menu-split-pane-right = 右にペイン分割
terminal-menu-split-pane-left = 左にペイン分割
terminal-menu-split-pane-down = 下にペイン分割
terminal-menu-split-pane-up = 上にペイン分割
terminal-menu-close-pane = ペインを閉じる
terminal-menu-cut = 切り取り
terminal-menu-select-all = すべて選択
terminal-menu-paste = 貼り付け
terminal-menu-command-search = コマンド検索
terminal-menu-ai-command-search = AI コマンド検索
terminal-menu-hide-input-hint-text = 入力ヒントテキストを非表示
terminal-menu-show-input-hint-text = 入力ヒントテキストを表示
terminal-menu-edit-cli-agent-toolbelt = CLI エージェントツールベルトを編集
terminal-menu-edit-agent-toolbelt = エージェントツールベルトを編集
terminal-menu-edit-prompt = プロンプトを編集
terminal-menu-copy-output-as-markdown = 出力を Markdown としてコピー
terminal-menu-save-as-prompt = プロンプトとして保存
terminal-menu-share-conversation = 会話を共有
terminal-menu-copy-conversation-text = 会話テキストをコピー
terminal-menu-copy-debugging-link = デバッグリンクをコピー
terminal-menu-copy-conversation-id = 会話 ID をコピー
terminal-menu-copy-debugging-id = デバッグ ID をコピー
terminal-menu-fork-from-here-dev-only = ここからフォーク（開発のみ）
terminal-menu-rewind-to-before-here = ここより前に巻き戻し
terminal-menu-fork-from-last-query = 最後のクエリからフォーク
terminal-menu-fork-from = "{$truncated}" からフォーク
terminal-menu-copy-link = リンクをコピー
terminal-menu-stop-sharing-session = セッション共有を停止
terminal-menu-open-on-desktop = デスクトップで開く
terminal-menu-share-session = セッションを共有
terminal-menu-share-session-ellipsis = セッションを共有...
terminal-menu-stop-sharing = 共有を停止
terminal-menu-copy-session-sharing-link = セッション共有リンクをコピー
terminal-menu-request-edit-access = 編集アクセスをリクエスト

## -- 参加者アバター -----------------------------------------------------------

terminal-menu-make-editor = エディタにする
terminal-menu-make-viewer = ビューアにする
terminal-revoke-all-edit-permissions = すべての編集権限を取り消し
terminal-change-role = ロールを変更

## -- 通知バナー -------------------------------------------------------------

terminal-notification-long-running = 長時間実行コマンドの完了時に Warp が通知できます。
terminal-notification-agent-finished = エージェントの応答完了時に Warp が通知できます。
terminal-notification-needs-attention = コマンドやエージェントが注意を必要とする際に Warp が通知できます。
terminal-notification-password-prompt = パスワードの入力を求められた際に Warp が通知できます。
terminal-notification-finished = 完了
terminal-notification-failed = 失敗
terminal-notification-blocked = ブロック
terminal-notification-waiting-for-password = パスワードを待機中
terminal-notification-after-duration = { $duration } 秒後に{ $status }
terminal-notification-latest-output = 最新の出力：
terminal-notification-error = エラー：

## -- Warpify ------------------------------------------------------------------

terminal-warpify-recognized = { $title } を認識しました。
terminal-warpify-press-to = { $keystroke } を押してこの{ $lowercase_title }を Warpify し、より多くの Warp 機能を利用できます。
terminal-warpify-can = この{ $lowercase_title }を Warpify して、より多くの Warp 機能を利用できます。

## -- ペインヘッダーツールチップ -----------------------------------------------

terminal-tooltip-hide-details = 詳細を非表示
terminal-tooltip-show-details = 詳細を表示

## -- 認証シークレット FTUX -------------------------------------------------------

terminal-ftux-search-placeholder = シークレットを検索または新規作成
terminal-ftux-no-secrets-found = シークレットが見つかりません
terminal-ftux-no-secrets-helper = シークレットが見つかりません。保存してこの値を直接使用するか、キーアイコンをクリックしてシークレットを追加してください。
terminal-ftux-unable-to-load-secrets = シークレットを読み込めません
terminal-ftux-new-type = 新規 { $display_name }
terminal-ftux-skip-api-key = API キーの設定をスキップ
terminal-ftux-skip-api-key-sub = 環境に認証が設定されている場合はこちらを選択

## -- 認証シークレットセレクター ------------------------------------------------

terminal-selector-api-key-tooltip = API キー
terminal-selector-api-key-header = API キー
terminal-selector-no-api-key = API キーなし
terminal-selector-no-secret = シークレットなし
terminal-selector-new = 新規
terminal-selector-loading = 読み込み中…
terminal-selector-unable-to-load-secrets = シークレットを読み込めません

## -- キーバインドの説明 -------------------------------------------------------

terminal-attach-block-as-agent-context = 選択したブロックをエージェントコンテキストとして添付
terminal-attach-text-as-agent-context = 選択したテキストをエージェントコンテキストとして添付
terminal-attach-selection-as-agent-context = 選択内容をエージェントコンテキストとして添付
terminal-write-codebase-index = 現在のコードベースインデックススナップショットを書き込む
terminal-initiate-project-for-warp = Warp のプロジェクトを初期化

## -- アクセシビリティ文字列 ---------------------------------------------------

terminal-a11y-block-label = ブロック
terminal-a11y-block-output-label = 出力
terminal-a11y-block-status = ブロック {$index}：{$command}、{$status}。
terminal-a11y-status-failed = 失敗、ステータスコード {$code}
terminal-a11y-status-background = バックグラウンド
terminal-a11y-status-succeeded = 成功
terminal-a11y-status-in-progress = 実行中
terminal-a11y-selected-blocks = {$count} 個のブロックを選択しました。
terminal-a11y-selected-all-blocks = すべての {$count} 個のブロックを選択しました。
terminal-a11y-scrolled-to-bottom = 選択したブロックの末尾までスクロールしました
terminal-a11y-copied-blocks = {$count} 個のブロックをコピーしました。\n{$content}
terminal-a11y-open-block-filter-editor = ブロック {$block_index} のフィルターエディタを開く

## -- その他追加文字列 -------------------------------------------------

terminal-non-local-env-var-subshell = ローカルでないセッションでは環境変数サブシェルを起動できません
terminal-bundled-skills-cannot-be-edited = バンドルされたスキルは編集できません
terminal-editing-skills-unsupported = このビルドではスキルの編集はサポートされていません
terminal-show-prompt = プロンプトを表示

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

## -- Additional terminal strings --
terminal-regenerate-agents-md = AGENTS.mdファイルを再生成

## -- Double-prefix aliases for new terminal strings --
