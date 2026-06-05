# =============================================================================
# workspace.ftl — ワークスペース、タブ、ペインラベル
# =============================================================================
# Message IDs: workspace-{id}
# =============================================================================

## -- ペイン/タブ種別ラベル ---------------------------------------------------

workspace-pane-terminal = ターミナル
workspace-pane-code = コード
workspace-pane-code-diff = コード差分
workspace-pane-file = ファイル
workspace-pane-notebook = ノートブック
workspace-pane-workflow = ワークフロー
workspace-pane-settings = 設定
workspace-pane-env-vars = 環境変数
workspace-pane-environments = 環境管理
workspace-pane-ai-fact = ルール
workspace-pane-ai-document = プラン
workspace-pane-execution-profile = 実行プロファイル
workspace-pane-other = その他

## -- メニュー項目 ---------------------------------------------------------------

workspace-menu-new-terminal = 新しいターミナル
workspace-menu-new-code-tab = 新しいコードタブ
workspace-menu-new-notebook = 新しいノートブック
workspace-menu-new-workflow = 新しいワークフロー
workspace-menu-open-settings = 設定を開く
workspace-menu-close-tab = タブを閉じる
workspace-menu-close-window = ウィンドウを閉じる
workspace-menu-reopen-closed-session = 閉じたセッションを再度開く
workspace-menu-new-tab-config = 新しいタブ設定
workspace-menu-new-worktree-config = 新しいワークツリー設定
workspace-menu-update-and-relaunch = 更新してWarpを再起動
workspace-menu-update-manually = Warpを手動更新
workspace-menu-whats-new = 新機能
workspace-menu-feedback = フィードバック
workspace-menu-view-logs = Warpログを表示
workspace-menu-slack = Slack
workspace-menu-sign-up = サインアップ
workspace-menu-upgrade = アップグレード
workspace-menu-invite-friend = 友達を招待
workspace-menu-local-docker = ローカルDockerサンドボックス
workspace-menu-rearrange-toolbar = ツールバー項目を並べ替え

## -- ダイアログタイトルと本文 -------------------------------------------------

workspace-close-session-title = セッションを閉じますか？
workspace-close-session-body = 現在共有されているセッションを閉じようとしています。閉じると、全員の共有が終了します。
workspace-close-session-dont-show = 今後表示しない。
workspace-delete-conversation-title = 会話を削除しますか？
workspace-delete-conversation-title-named = 「{$title}」を削除しますか？
workspace-delete-conversation-body = この会話は永久に削除されます。この操作は元に戻せません。
workspace-rewind-confirmation-title = 巻き戻し
workspace-rewind-confirmation-body = 巻き戻しを実行しますか？コードと会話がこの時点より前の状態に復元され、エージェントが現在実行しているコマンドがキャンセルされます。元の会話のコピーは会話履歴に保存されます。
workspace-rewind-info-note = 巻き戻しは手動またはシェルコマンドで編集されたファイルには影響しません。

## -- 検索 -------------------------------------------------------------------

workspace-search-placeholder = 検索…
workspace-global-search-label = グローバル検索
workspace-file-search-placeholder = ファイルを検索…
workspace-search-repos = リポジトリを検索
workspace-search-tabs = タブを検索…

## -- 左パネルと右パネル -------------------------------------------------------

workspace-left-panel-tabs-panel = タブパネル
workspace-left-panel-tools-panel = ツールパネル
workspace-left-panel-agent-management = エージェント管理
workspace-left-panel-code-review = コードレビュー
workspace-left-panel-notifications = 通知
workspace-right-panel-toggle-maximize = コードレビューパネルの最大化切替
workspace-right-panel-maximize = 最大化
workspace-right-panel-close-panel = パネルを閉じる
workspace-right-panel-open-repository = リポジトリを開く
workspace-right-panel-open-repository-tooltip = リポジトリに移動し、コーディング用に初期化
workspace-right-panel-code-review = コードレビュー

## -- 垂直タブ -----------------------------------------------------------------

workspace-vtabs-no-tabs = タブが開いていません
workspace-vtabs-untitled = 無題のタブ
workspace-vtabs-untitled-pane = 無題のペイン
workspace-vtabs-unsaved = 未保存
workspace-vtabs-view-options = 表示オプション
workspace-vtabs-tab-configs = タブ設定
workspace-vtabs-view-as = 表示形式
workspace-vtabs-panes = ペイン
workspace-vtabs-tabs = タブ
workspace-vtabs-tab-item = タブ項目
workspace-vtabs-focused-session = フォーカスセッション
workspace-vtabs-summary = 要約
workspace-vtabs-density = 密度
workspace-vtabs-pane-title-as = ペインタイトル
workspace-vtabs-command-conversation = コマンド / 会話
workspace-vtabs-working-directory = ワーキングディレクトリ
workspace-vtabs-branch = ブランチ
workspace-vtabs-additional-metadata = 追加メタデータ
workspace-vtabs-show = 表示
workspace-vtabs-requires-github-cli = GitHub CLIのインストールと認証が必要です
workspace-vtabs-diff-stats = 差分統計
workspace-vtabs-show-details-on-hover = ホバーで詳細を表示
workspace-vtab-more-count = + 他 {$count} 件
workspace-vtab-and-more = および他 {$count} 件

## -- グローバル検索 -----------------------------------------------------------

workspace-gs-search-in-files = ファイル内を検索
workspace-gs-toggle-case = 大文字小文字の区別切替
workspace-gs-toggle-regex = 正規表現切替
workspace-gs-no-results = 結果が見つかりません。gitignoreファイルを確認してください。
workspace-gs-partial-results = 結果セットには一致の一部のみが含まれています。検索を絞り込んでください。
workspace-gs-global-search = グローバル検索
workspace-gs-search-description = 現在のディレクトリ内のファイルを検索します。
workspace-gs-unavailable = グローバル検索は利用できません
workspace-gs-unavailable-local = グローバル検索にはローカルワークスペースへのアクセスが必要です。新しいセッションを開くか、アクティブなセッションに移動してください。
workspace-gs-unavailable-remote = グローバル検索にはローカルワークスペースへのアクセスが必要ですが、リモートセッションではサポートされていません
workspace-gs-unavailable-wsl = グローバル検索は現在Git BashまたはWSLでは動作しません。

## -- タブ設定とワークツリー ---------------------------------------------------

workspace-tab-config-chip-text = タブ設定はここからアクセスできます。
workspace-open-tab-config = 開く：{$name}
workspace-tab-config-duplicate-suffix = {$name} ({$count})
workspace-new-worktree = 新しいワークツリー：{$repo}
workspace-new-worktree-with-branch = 新しいワークツリー：{$repo}、{$branch}
workspace-new-worktree-with-name = 新しいワークツリー：{$repo}、{$name}
workspace-worktree-config = ワークツリー：{$repo}
workspace-add-new-repo = + 新しいリポジトリを追加

## -- 自動更新 -----------------------------------------------------------------

workspace-update-ready = Warpを更新
workspace-version-deprecation = アプリが古くなっており、一部の機能が正常に動作しない可能性があります。今すぐ更新してください。
workspace-current-version = 現在のバージョンは {$version} です

## -- トースト -----------------------------------------------------------------

workspace-toast-out-of-credits = AIクレジットが不足しています。
workspace-toast-upgrade-credits = クレジットを増やすためにアップグレード。
workspace-toast-warp-updated = Warpが更新されました！
workspace-toast-view-changelog = 変更履歴を表示
workspace-toast-remote-link-copied = リモートコントロールリンクがコピーされました。
workspace-toast-cli-installed = Oz CLIのインストールに成功しました！コマンドラインから'{$command}'を実行できます。
workspace-toast-cli-uninstalled = Ozコマンドのアンインストールに成功しました。
workspace-toast-cli-install-failed = Ozコマンドのインストールに失敗しました：{$error}
workspace-toast-cli-uninstall-failed = Ozコマンドのアンインストールに失敗しました：{$error}
workspace-toast-forked = "{$title}"をフォークしました
workspace-toast-fork-failed = 会話のフォークに失敗しました。
workspace-toast-load-conversation-failed = 会話の読み込みに失敗しました。
workspace-toast-load-fork-failed = フォーク用の会話の読み込みに失敗しました。
workspace-toast-handoff-failed = ハンドオフの準備に失敗しました。もう一度お試しください。
workspace-toast-remove-config-failed = タブ設定の削除に失敗しました：{$error}
workspace-toast-open-file = ファイルを開く
workspace-toast-plan-already-in-context = このプランはすでにコンテキスト内にあります。
workspace-toast-cannot-open-terminal = 新しいターミナルセッションを開けません
workspace-toast-plan-synced = プランがWarp Driveに同期されました
workspace-toast-view = 表示
workspace-toast-undo = 元に戻す
workspace-toast-starting-cloud-env = このセッションのクラウド環境を起動中…
workspace-toast-troubleshoot-notifications = 通知のトラブルシューティング
workspace-toast-notification-permission = Warpにデスクトップ通知の送信権限がありません。
workspace-toast-resource-not-found = リソースが見つからないか、アクセスが拒否されました
workspace-toast-workflow-unavailable = このワークフローは現在利用できません。
workspace-toast-describe-feedback = 何が壊れているか、分かりにくいか、足りないかを説明…

## -- ログインバナー -----------------------------------------------------------

workspace-login-expired-heading = ログインの有効期限が切れました。
workspace-login-expired-description = クラウドベースの機能へのアクセスを回復するには、再度サインインしてください。
workspace-login-expired-sign-in = サインイン

## -- ホームページ -------------------------------------------------------------

workspace-home-title = Warp on Webへようこそ
workspace-home-content =
    Warp on Webへようこそ - ブラウザベースのWarpホーム！
    Warp on Webを使用して：
    * 共有セッションに参加
    * Warp Driveオブジェクトの作成、表示、編集
    * Warp設定の管理

    Warp on Webは、まだWarpをダウンロードしていないチームメイトや同僚が、共有セッション、ノートブック、ワークフローを表示するためにも使用できます。

## -- HOAオンボーディング ------------------------------------------------------

workspace-onboarding-see-whats-new = 新機能を見る
workspace-onboarding-next = 次へ
workspace-onboarding-dismiss = 閉じる
workspace-onboarding-finish = 完了
workspace-onboarding-badge = 新着
workspace-onboarding-title = ユニバーサルエージェントサポートの紹介：任意のコーディングエージェントをWarpでレベルアップ
workspace-onboarding-vertical-tabs-title = 垂直タブの紹介 - 新しいデフォルト
workspace-onboarding-vertical-tabs-description = 垂直タブはタブごとにグループ化された、開いているすべてのエージェントとターミナルペインを表示します。ワークフローをサポートするために表示したい情報をカスタマイズできます。
workspace-onboarding-switch-horizontal = 水平タブに切り替え
workspace-onboarding-inbox-title = 新しいエージェント受信トレイをご紹介
workspace-onboarding-inbox-description = Warpは、あらゆるCLIコーディングエージェントからの通知を、すべてのコーディングエージェントとハーネスで機能する統合通知センターにパイプします。
workspace-onboarding-inbox-learn-more = 詳細
workspace-onboarding-tab-config-title = 最初のタブ設定を作成
workspace-onboarding-tab-config-description = タブの再利用可能な開始点を設定します。リポジトリを選択し、セッションタイプを選択し、オプションでワークツリーをアタッチします。この設定でタブを開きたいときにいつでも使用できます。

## -- ウェルカムバナー機能 -----------------------------------------------------

workspace-welcome-vertical-tabs = 垂直タブ
workspace-welcome-vertical-tabs-description = gitブランチ、ワークツリー、PRなどのメタデータを含むリッチなタブタイトル。完全にカスタマイズ可能。
workspace-welcome-tab-configs = タブ設定
workspace-welcome-tab-configs-description = ワンクリックでディレクトリ、起動コマンド、テーマ、ワークツリーを設定するタブレベルのスキーマ
workspace-welcome-agent-inbox = エージェント受信トレイ
workspace-welcome-agent-inbox-description = 任意のエージェントが注意を必要とする場合の通知。中央の受信トレイからもアクセス可能
workspace-welcome-code-review = ネイティブコードレビュー
workspace-welcome-code-review-description = WarpのコードレビューからClaude Code、Codex、OpenCodeに直接インラインコメントを送信

## -- アクション ---------------------------------------------------------------

workspace-action-import-team-drive = チームDriveにインポート中
workspace-action-create-team-notebook = チームノートブックを作成中
workspace-action-create-team-workflow = チームワークフローを作成中
workspace-action-create-team-folder = チームフォルダを作成中
workspace-action-create-team-env-var = チーム環境変数コレクションを作成中
workspace-action-create-team-prompt = チームプロンプトを作成中
workspace-action-share-session = セッションを共有中
workspace-action-unknown-reason = 不明な理由

## -- ボーナス付与通知 --------------------------------------------------------

workspace-bonus-grant-user = {$credits}リロードクレジットがアカウントに追加されました。
workspace-bonus-grant-team = {$credits}リロードクレジットがチームに追加されました。

## -- ツールバーエディタ -------------------------------------------------------

workspace-toolbar-available-items = 利用可能な項目

## -- 名前変更ラベル -----------------------------------------------------------

workspace-rename-pane = ペインの名前を変更
workspace-reset-pane-name = ペイン名をリセット
workspace-rename-active-pane = アクティブペインの名前を変更
workspace-reset-active-pane-name = アクティブペイン名をリセット

## -- その他 -------------------------------------------------------------------

workspace-home-label = ホーム
workspace-welcome-web = Warp on Web へようこそ
workspace-edit-toolbar = ツールバーを編集
workspace-recent-label = 最近
workspace-pinned-label = ピン留め
workspace-empty-state-title = 結果なし
workspace-empty-state-description = 別の検索キーワードを試すか、フィルターを調整してください。

workspace-rearrange-toolbar = ツールバー項目を並べ替え
workspace-update-warp = Warp を更新
workspace-app-outdated = アプリが古くなっています。最新の機能を利用するには更新してください。
workspace-features-may-not-work = 古いバージョンでは一部の Warp 機能が動作しない場合があります。更新してください。
workspace-tab-config-chip = ここからタブ設定にアクセスできます。
workspace-login-expired = ログインの有効期限が切れました。
workspace-sign-in = サインイン
workspace-sign-in-again = クラウドベースの機能へのアクセスを復元するには、再度ログインしてください。
workspace-update-now = 今すぐ更新
workspace-unable-to-update = 新しいバージョンが利用可能ですが、Warpは更新を実行できません。
workspace-unable-to-launch = Warpは新しくインストールされたバージョンを起動できませんでした。
workspace-local-docker-sandbox = ローカルDockerサンドボックス
workspace-reopen-closed-session = 閉じたセッションを再度開く
workspace-current-version-is = 現在のバージョンは { $version } です
workspace-install-update = 更新をインストール（{ $version }）
workspace-updating-to = 更新中（{ $version }）
workspace-update-warp-manually = Warpを手動更新
workspace-update-and-relaunch = 更新してWarpを再起動
workspace-whats-new = 新機能
workspace-feedback = フィードバック
workspace-view-warp-logs = Warpログを表示
workspace-slack = Slack
workspace-upgrade = アップグレード
workspace-invite-friend = 友達を招待
workspace-sign-up = サインアップ
workspace-search-repos-conversations = 最近のリポジトリと会話を検索
workspace-mouse-reporting-enabled = マウスレポートを有効にしました。
workspace-mouse-reporting-disabled = マウスレポートを無効にしました。
workspace-sync-all-enabled = すべてのタブで入力同期を有効にしました。
workspace-sync-all-disabled = すべてのタブで入力同期を無効にしました。
workspace-sync-tab-enabled = このタブで入力同期を有効にしました。
workspace-sync-tab-disabled = このタブで入力同期を無効にしました。
workspace-a11y-verbosity = {$verbosity}アクセシビリティ通知が設定されました

## -- WASM NUX ダイアログ --------------------------------------------------------

workspace-wasm-nux-open-desktop-title = Warp デスクトップ版で開きますか？
workspace-wasm-nux-open-desktop-body = 今後のリンクは自動的にデスクトップ版で開きます。
workspace-wasm-nux-open-desktop-button = Warp で開く
workspace-wasm-nux-download-title = Warp デスクトップ版をダウンロードしますか？
workspace-wasm-nux-description = Warp は AI と開発チームの知識を組み込んだインテリジェントターミナルです。
workspace-wasm-nux-learn-more = 詳しく見る
workspace-wasm-nux-download-button = ダウンロード
workspace-wasm-nux-drive-objects = Warp Drive オブジェクト
workspace-wasm-nux-shared-sessions = 共有セッション
workspace-wasm-nux-warp-links = Warp リンク
workspace-wasm-nux-always-open-web-title = 常に {$object_kind} をウェブで開きますか？
workspace-wasm-nux-always-open-web-body = これは設定からいつでも変更できます。
workspace-wasm-nux-yes = はい

## -- Voltron -------------------------------------------------------------------

workspace-voltron-workflows = ワークフロー
workspace-voltron-history-search = 履歴検索

## -- セッション管理 ----------------------------------------------------------

workspace-session-last-run-cmd = 最後に実行したコマンド {$cmd}
workspace-session-last-ai-prompt = 最後の AI インタラクション：{$prompt}
workspace-session-currently-running-cmd = 現在実行中 {$cmd}
workspace-session-currently-running-ai-prompt = 現在実行中の AI インタラクション：{$prompt}

## -- コーディングエントリポイント ----------------------------------------------

workspace-project-open-repository = リポジトリを開く
workspace-project-create-new = 新しいプロジェクトを作成
workspace-project-create-tooltip = 新しいプロジェクトを作成して初期化
workspace-project-open-tooltip = 既存のローカルフォルダまたはリポジトリを開く
workspace-project-clone-repository = リポジトリをクローン
workspace-project-clone-tooltip = GitHub または他のソースからリポジトリをクローン
workspace-project-clone-placeholder = リポジトリ URL を入力（例："git@github.com:username/project.git"）
workspace-project-create-placeholder = 何を構築しますか？
workspace-project-suggestion-minesweeper = React でマインスイーパーのクローンを作成
workspace-project-suggestion-quotes-server = JSON ファイルからランダムな引用を返す Node.js サーバーを作成
workspace-project-suggestion-csv-converter = CSV から JSON に変換する CLI を作成
workspace-project-suggestion-resume = レジュメ Web ページのスターターテンプレートを作成
workspace-project-suggestion-game-of-life = コンウェイのライフゲームシミュレーションを作成

## -- リワードビュー ---------------------------------------------------------------

workspace-reward-congrats = おめでとう！
workspace-reward-sent-referral = Warpへの人の紹介で限定Warpテーマを獲得しました。
workspace-reward-received-referral = Warpへの紹介で限定Warpテーマを獲得しました。
workspace-reward-try-it = 試してみる！
workspace-reward-a11y-help = Enterキーでテーマチューザーを開くか、Escapeキーで閉じます。

## -- フィルタリング可能なドロップダウン -----------------------------------------

workspace-no-matches = 一致する項目が見つかりません。

## -- 検索バー -----------------------------------------------------------------

workspace-find-regex-toggle = 正規表現切替
workspace-find-case-sensitive = 大文字小文字を区別して検索
workspace-find-in-block = 選択したブロック内を検索
workspace-find-placeholder = 検索
workspace-find-result = { $total } 件中 { $current } 件目。
workspace-find-no-results = 結果なし。
workspace-find-navigate-help = EnterキーとShift+Enterキーで一致間を移動。Escapeキーで終了。
workspace-find-a11y-label = 検索語句を入力してください。
workspace-find-a11y-help = Escape で終了、Enter と Shift+Enter で一致項目間を移動

## -- Markdown切替 -----------------------------------------------------------

workspace-markdown-rendered = レンダリング済み
workspace-markdown-raw = Raw

## -- アクションボタン ---------------------------------------------------------

workspace-beta-label = ベータ

## -- 変更履歴 -----------------------------------------------------------------

workspace-changelog-new-features = 新機能
workspace-changelog-improvements = 改善
workspace-changelog-bug-fixes = バグ修正

## -- バナー -------------------------------------------------------------------

workspace-banner-dismiss-permanently = 今後表示しない

## -- チップ設定 ---------------------------------------------------------------

workspace-chip-unknown = 不明
workspace-chip-restore-default = デフォルトに戻す
workspace-chip-left-side = 左側
workspace-chip-right-side = 右側
workspace-chip-cancel = キャンセル
workspace-chip-save-changes = 変更を保存

## -- 自動更新 (Linux) -------------------------------------------------------

workspace-autoupdate-run-to-update = { $packageManager } を実行してアップデート
workspace-autoupdate-if-installed = Warpを
workspace-autoupdate-or-compatible =  または互換ツールでインストールした場合、事前入力されたコマンドでWarpがアップデートされます。
workspace-autoupdate-repo-config = \n下のコマンドには、WarpパッケージリポジトリとPGP署名鍵の一度だけの設定が含まれています。
workspace-autoupdate-dist-upgrade-prefix = \n
workspace-autoupdate-dist-upgrade-suffix =  関数はWarpパッケージリポジトリが有効であることを確認します。ディストリビューションのアップグレードを最近検出したためです。
workspace-autoupdate-review-command = \n下のコマンドを確認してから、
workspace-autoupdate-press-enter = Enterキーを押して
workspace-autoupdate-to-install =  アップデートをインストールしWarpを再起動します。
workspace-autoupdate-report-issues = 問題があれば報告してください

## -- タブコンテキストメニュー ---------------------------------------------------

workspace-stop-sharing = 共有を停止
workspace-share-session = セッションを共有
workspace-stop-sharing-all = すべての共有を停止
workspace-copy-link = リンクをコピー
workspace-copy-tab-title = タブタイトルをコピー
workspace-copy-pane-title = ペインタイトルをコピー
workspace-copy-branch = ブランチをコピー
workspace-copy-working-directory = ワーキングディレクトリをコピー
workspace-copy-pull-request-link = プルリクエストリンクをコピー
workspace-rename-tab = タブの名前を変更
workspace-reset-tab-name = タブ名をリセット
workspace-move-tab-down = タブを下に移動
workspace-move-tab-right = タブを右に移動
workspace-move-tab-up = タブを上に移動
workspace-move-tab-left = タブを左に移動
workspace-close-other-tabs = 他のタブを閉じる
workspace-close-tabs-below = 下のタブを閉じる
workspace-close-tabs-to-the-right = 右のタブを閉じる
workspace-save-as-new-config = 新規設定として保存
workspace-default-no-color = デフォルト（色なし）
workspace-cloud-agent-run = クラウドエージェント実行
workspace-minimize-pane = ペインを最小化
workspace-maximize-pane = ペインを最大化

## -- アプリメニュー ---------------------------------------------------------------

workspace-menu-new-window = 新規ウィンドウ
workspace-menu-preferences = 環境設定…
workspace-menu-privacy-policy = プライバシーポリシー…
workspace-menu-debug = デバッグ
workspace-menu-set-default-terminal = Warp をデフォルトターミナルに設定
workspace-menu-log-out = ログアウト
workspace-menu-app-title = Warp
workspace-menu-file = ファイル
workspace-menu-open-recent = 最近開いた項目
workspace-menu-synchronize-inputs = 入力を同期
workspace-menu-edit = 編集
workspace-menu-use-warps-prompt = Warp のプロンプトを使用
workspace-menu-copy-on-select = ターミナル内で選択時にコピー
workspace-menu-view = 表示
workspace-menu-toggle-mouse-reporting = マウスレポート切替
workspace-menu-toggle-scroll-reporting = スクロールレポート切替
workspace-menu-toggle-focus-reporting = フォーカスレポート切替
workspace-menu-compact-mode = コンパクトモード
workspace-menu-tab = タブ
workspace-menu-ai = AI
workspace-menu-blocks = ブロック
workspace-menu-drive = Drive
workspace-menu-window = ウィンドウ
workspace-menu-help = ヘルプ
workspace-menu-send-feedback = フィードバックを送信…
workspace-menu-warp-documentation = Warp ドキュメント…
workspace-menu-github-issues = GitHub Issues…
workspace-menu-slack-community = Warp Slack コミュニティ…
workspace-menu-save-new = 新規保存…
workspace-menu-launch-configurations = 起動設定
workspace-menu-new-terminal-tab = 新規ターミナルタブ
workspace-menu-new-agent-tab = 新規エージェントタブ
workspace-menu-toggle-network-status = ネットワーク状態を手動切替
workspace-menu-create-anonymous-user = 匿名ユーザーを作成

## -- デバッグメニュー切替項目 ------------------------------------------------

workspace-enable-shell-debug-mode = 新規セッションで Shell デバッグモード (-x) を有効化
workspace-disable-shell-debug-mode = 新規セッションで Shell デバッグモード (-x) を無効化
workspace-enable-in-band-generators = 新規セッションで帯域内ジェネレーターを有効化
workspace-disable-in-band-generators = 新規セッションで帯域内ジェネレーターを無効化
workspace-enable-pty-recording = PTY 録画モードを有効化 (warp.pty.recording)
workspace-disable-pty-recording = PTY 録画モードを無効化 (warp.pty.recording)
workspace-show-bootstrap-block = 初期化ブロックを表示
workspace-hide-bootstrap-block = 初期化ブロックを非表示
workspace-show-in-band-command-blocks = 帯域内コマンドブロックを表示
workspace-hide-in-band-command-blocks = 帯域内コマンドブロックを非表示
workspace-show-ssh-command-blocks = Warpified SSH ブロックを表示
workspace-hide-ssh-command-blocks = Warpified SSH ブロックを非表示
workspace-export-default-settings-csv = デフォルト設定を CSV としてホームディレクトリにエクスポート

## -- ルートビューバインディング --------------------------------------------------

workspace-hide-all-windows = すべてのウィンドウを隠す
workspace-show-dedicated-hotkey-window = 専用ホットキーウィンドウを表示
workspace-hide-dedicated-hotkey-window = 専用ホットキーウィンドウを隠す
workspace-toggle-fullscreen = フルスクリーン切替
workspace-debug-enter-onboarding-state = [デバッグ] オンボーディング状態に入る
workspace-window-title = Warp
workspace-create-environment = 環境を作成
workspace-resource-not-found = リソースが見つからないか、アクセスが拒否されました
workspace-theme-dark = ダーク

## -- メニューアクセシビリティ ----------------------------------------------------------

workspace-a11y-menu-item-submenu = 上キまたは下キでメニュー項目を選択。右キーでサブメニューを開く
workspace-a11y-menu-item = 上キまたは下キでメニュー項目を選択
workspace-a11y-submenu-expanded = サブメニューが展開されました
workspace-a11y-submenu-expanded-instructions = 右キーで選択したサブメニューを開く
workspace-a11y-submenu-closed = サブメニューが閉じられました
workspace-a11y-submenu-closed-instructions = サブメニューからフォーカスを外すとサブメニューが閉じられます
workspace-a11y-menu-closed = メニューが閉じられました
workspace-a11y-menu-closed-instructions = Escape キーでメニューを閉じる
workspace-a11y-action-selected = アクションが選択されました
workspace-a11y-action-selected-instructions = Enter キーで選択したメニュー項目のアクションを実行

workspace-sync-disabled-all = すべての入力同期を無効にしました。

## -- ツールバーエディタ（追加） ---------------------------------------------------

workspace-toolbar-edit-title = ツールバーを編集

## -- i18n 追加キー -------------------------------------------------------

workspace-ask-warp-ai-description = Warp AI にエラーの説明、コマンドの提案、スクリプトの作成を依頼。
workspace-autoupdate-unable-to-update = 新しいバージョンが利用可能ですが、Warpは更新を実行できません。
workspace-autoupdate-unable-to-launch = Warpは新しくインストールされたバージョンを起動できませんでした。
workspace-codex-initial-prompt = こんにちは、エージェントモード x Codex！
workspace-command-from-oz = Oz からのコマンド
workspace-command-from-warp-ai = Warp AI からのコマンド
workspace-fix-with-oz = Oz で修正
workspace-gs-n-results = {$n} 件の結果、{$files} {$file_word}
workspace-gs-one-result = 1 件の結果、{$files} {$file_word}
workspace-gs-project-explorer = プロジェクトエクスプローラー
workspace-install-update-label = 更新をインストール
workspace-linear-issue = Linear イシュー
workspace-more-info = 詳細
workspace-resource-center-label = Warp エッセンシャル
workspace-restart-app-and-update-now = アプリを再起動して今すぐ更新
workspace-right-panel-minimize = 最小化
workspace-search-sessions-agents-files = セッション、エージェント、ファイルを検索...
workspace-staging-access-blocked = Staging API 呼び出しが失敗しました。IPアドレスが変更されましたか？
workspace-sync-press-to-undo = {$keystroke} を押して元に戻す。
workspace-toast-check-latest-version = 最新バージョンを確認して再試行してください。
workspace-toast-cli-learn-more = 詳細
workspace-update-now = 今すぐ更新
workspace-version-deprecation-no-permissions = 即座に更新しないと一部のWarp機能が正常に動作しない可能性がありますが、Warpは更新を実行できません。
workspace-version-deprecation-update-needed = アプリが古くなっており、更新が必要です。
workspace-vtabs-new-session = 新しいセッション
workspace-vtabs-no-tabs-match-search = 検索に一致するタブがありません。
workspace-vtabs-oz-badge = Oz
workspace-vtabs-pr-link = PR リンク
workspace-vtabs-terminal-badge = ターミナル

workspace-moved-to-cloud = {$title} (クラウドに移動済み)
workspace-toast-conversation-deleted = 会話が削除されました
workspace-toast-delete-conversation-failed = 会話の削除に失敗しました。エージェントビューを終了して再試行してください。
workspace-update-tab-config-prompt = {$prefix}update-tab-config {$path} を更新...

## -- コマンドパレット -----------------------------------------------------------

workspace-cp-active-pane-conversations = アクティブペインの会話
workspace-cp-other-active-conversations = その他のアクティブな会話
workspace-cp-past-conversations = 過去の会話
workspace-cp-fork-current-conversation = 現在の会話をフォーク
workspace-cp-fork-conversation = 会話をフォーク
workspace-cp-conversation = 会話
workspace-cp-new-conversation = 新しい会話
workspace-cp-navigate-conversation = Enterキーで会話「{}」に移動。
workspace-cp-fork-help = Enterキーで現在の会話を新しい会話にフォーク。
workspace-cp-new-conversation-help = Enterキーで新しい会話を作成。
workspace-cp-navigate-directory = Enterキーでこのディレクトリに移動
workspace-cp-open-file = Enterキーでこのファイルを開く
workspace-cp-create-file = ファイルを作成
workspace-cp-create-file-help = Enterキーで現在のディレクトリに {} を作成
workspace-cp-use-launch-config = Enterキーでこの起動設定を使用。
workspace-cp-current = 現在
workspace-cp-running = 実行中...
workspace-cp-completed-over-hour = 1時間以上前に完了
workspace-cp-completed-minute = { $mins } 分前に完了
workspace-cp-completed-minutes = { $mins } 分前に完了
workspace-cp-no-timestamp = タイムスタンプが見つかりません
workspace-cp-completed = 完了
workspace-cp-empty-session = 空のセッション
workspace-cp-selected-session = 選択済み {}。{}。
workspace-cp-navigate-session = Enterキーでこのセッションに移動。
workspace-cp-launch-session = Enterキーでこのセッションを起動。
workspace-cp-selected-tab = 選択済みタブ
workspace-cp-navigate-tab = Enterキーでタブに移動：{}。
workspace-cp-search-command = コマンドを検索
workspace-cp-no-results = 結果が見つかりません
workspace-cp-cannot-switch-conversation = エージェントがコマンドを監視中は会話を切り替えられません。
workspace-cp-cannot-start-conversation = エージェントがコマンドを監視中は新しい会話を開始できません。
workspace-cp-directory = ディレクトリ
workspace-cp-file = ファイル
workspace-cp-create = 作成
workspace-cp-selected = 選択済み
workspace-cp-create-new-tab = 新しいタブを作成
workspace-cp-create-new-window = 新しいウィンドウを作成
workspace-cp-split-pane-down = 下にペインを分割
workspace-cp-split-pane-right = 右にペインを分割
workspace-cp-split-pane-up = 上にペインを分割
workspace-cp-split-pane-left = 左にペインを分割
workspace-cp-repo = リポジトリ
workspace-cp-section = セクション
workspace-cp-untitled = 無題
workspace-cp-env-vars = 環境変数
workspace-cp-notebook = ノートブック
workspace-cp-workflow = ワークフロー
workspace-cp-recent = 最近
workspace-cp-suggested = 提案

## -- アップグレードラベル -------------------------------------------------------

workspace-upgrade-ai-usage = AI使用量をアップグレード

## -- 追加自動更新文字列 -------------------------------------------------------

workspace-autoupdate-unable-to-update-alt = 新しいバージョンが利用可能ですが、Warpは更新を実行できません。
workspace-autoupdate-unable-to-launch-alt = Warpは新しくインストールされたバージョンを起動できませんでした。
workspace-offline-tooltip = 一部の機能はオフラインで使用できない場合があります
workspace-toast-sampling-process = 3秒間プロセスをサンプリング中...
workspace-toast-search-repos-conversations = 最近のリポジトリと会話を検索
workspace-toast-update-tab-config-prompt = {$prefix}update-tab-config {$path} を更新中...

## -- 追加の個別文字列 -------------------------------------------------------

workspace-introducing-oz = Ozの紹介

## -- ネイティブモーダル -----------------------------------------------------------

workspace-native-modal-dont-show-again = 今後表示しない。

## -- ボーナス付与通知（追加） -----------------------------------------------------

workspace-bonus-grant-scope-account = アカウント
workspace-bonus-grant-scope-team = チーム
workspace-bonus-grant-message = {$credits}リロードクレジットが{$scope}に追加されました。

## -- 追加の統合workspace-プレフィクスID ---------------------------------------------------

## -- 右パネル文字列 ----------------------------------------------------------------

workspace-ai-disabled-review = Warp レビュー宛先で AI が無効になっています
workspace-no-repo-selected = コードレビュー用のリポジトリが選択されていません
workspace-session-cwd-unavailable = セッションの cwd が利用できないか、ローカルではありません
workspace-session-outside-repo = セッションの cwd が選択されたリポジトリ内にありません
workspace-terminal-executing = ターミナルは現在コマンドを実行中です
workspace-input-box-not-visible = ターミナル入力ボックスが表示されていません
workspace-unknown = 不明

## -- ワークスペースビュー文字列 -------------------------------------------------

workspace-maximize = 最大化
workspace-minimize = 最小化
workspace-close-panel = パネルを閉じる
workspace-open-repository = リポジトリを開く
workspace-open-repository-tooltip = リポジトリに移動し、コーディング用に初期化
workspace-new-tab = 新しいタブ
workspace-tab-configs = タブ設定
workspace-new-tab-config = 新しいタブ設定
workspace-new-worktree-config = 新しいワークツリー設定
workspace-code-review = コードレビュー

## -- 会話リストビュー文字列 -----------------------------------------------------

workspace-view-all = すべて表示
workspace-section-active = アクティブ
workspace-section-past = 過去
workspace-no-conversations-yet = 会話はまだありません
workspace-conversations-subtitle = ローカルおよびアンビエントエージェントとのアクティブな会話と過去の会話がここに表示されます。
workspace-no-matching-conversations = 一致する会話がありません
workspace-share-conversation = 会話を共有
workspace-fork-in-new-pane = 新しいペインでフォーク
workspace-fork-in-new-tab = 新しいタブでフォーク
workspace-cannot-delete-conversation-tooltip = この会話は削除できません
workspace-conversations-cannot-delete = 進行中の会話は削除できません。
workspace-conversation = 会話
workspace-show-less = 折りたたむ

## -- OpenWarp 起動モーダル文字列 -----------------------------------------------

workspace-openwarp-badge = 新着
workspace-openwarp-title = Warp はオープンソースになりました
workspace-openwarp-description = あなた、私たちのコミュニティは、エージェントファーストのワークフローを使用して Warp の構築に参加できます。
workspace-openwarp-contribute-title = 貢献
workspace-openwarp-contribute-desc = Warp のクライアントコードがオープンソースになりました。/feedback スキルを使用して issue を開いて始め、貢献ガイドラインを
workspace-openwarp-contribute-link = こちら
workspace-openwarp-automated-title = オープン自動化開発
workspace-openwarp-automated-desc = Warp リポジトリはエージェントファーストのワークフローで管理されています。プラットフォーム：
workspace-openwarp-automated-link = Oz
workspace-openwarp-auto-weights-title = 「auto (open-weights)」の紹介
workspace-openwarp-auto-weights-desc = タスクに最適なオープンウェイトモデルを選択する新しい自動モデルを追加しました。例：Kimi、MiniMax。
workspace-openwarp-visit-repo = リポジトリにアクセス

## -- HOA オンボーディング文字列 ------------------------------------------------

workspace-onboarding-vertical-tabs-desc = 垂直タブはタブごとにグループ化された、開いているすべてのエージェントとターミナルペインを表示します。ワークフローをサポートするために表示したい情報をカスタマイズできます。
workspace-onboarding-inbox-desc = Warp は、あらゆる CLI コーディングエージェントからの通知を、すべてのコーディングエージェントとハーネスで機能する統合通知センターにパイプします。

## -- WASM ビュー文字列 ---------------------------------------------------------

workspace-open-in-warp = Warp で開く
workspace-view-all-cloud-runs = すべてのクラウド実行を表示

## -- タブコンテキストメニュー ----------------------------------------------------------------

workspace-menu-stop-sharing = 共有を停止
workspace-menu-share-session = セッションを共有
workspace-menu-stop-sharing-all = すべての共有を停止
workspace-menu-copy-link = リンクをコピー
workspace-menu-copy-tab-title = タブタイトルをコピー
workspace-menu-copy-pane-title = ペインタイトルをコピー
workspace-menu-copy-branch = ブランチをコピー
workspace-menu-copy-working-directory = 作業ディレクトリをコピー
workspace-menu-copy-pull-request-link = プルリクエストリンクをコピー
workspace-menu-rename-tab = タブ名を変更
workspace-menu-reset-tab-name = タブ名をリセット
workspace-menu-move-tab-down = タブを下に移動
workspace-menu-move-tab-right = タブを右に移動
workspace-menu-move-tab-up = タブを上に移動
workspace-menu-move-tab-left = タブを左に移動
workspace-menu-close-other-tabs = 他のタブを閉じる
workspace-menu-close-tabs-below = 下のタブを閉じる
workspace-menu-close-tabs-right = 右のタブを閉じる
workspace-menu-save-new-config = 新しい設定として保存
workspace-menu-default-no-color = デフォルト（色なし）
workspace-menu-cloud-agent-run = クラウドエージェント実行

## -- Codex モーダル文字列 -----------------------------------------------------

workspace-use-latest-codex-model = 最新の Codex モデルを使用
workspace-new = 新着
workspace-learn-more = 詳しく見る
workspace-close = 閉じる

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID -------

