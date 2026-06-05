# =============================================================================
# ai_assistant.ftl — AIアシスタント/エージェント文字列
# =============================================================================
# Message IDs: ai_assistant-ai-{id} (domain "ai_assistant" + key)
# =============================================================================

## -- エージェントモードラベル --------------------------------------------------------

ai-assistant-ai-agent-mode-terminal = ターミナル
ai-assistant-ai-agent-mode-agent = エージェント
ai-assistant-ai-agent-mode-cloud-agent = Cloud Oz

## -- チャット/会話 ------------------------------------------------------

ai-assistant-ai-chat-placeholder = 何でも聞いてください…
ai-assistant-ai-chat-send-label = 送信
ai-assistant-ai-chat-stop-label = 停止
ai-assistant-ai-chat-clear-label = 会話をクリア
ai-assistant-ai-chat-thinking-label = 考え中…
ai-assistant-ai-chat-error-label = エラーが発生しました。もう一度お試しください。
ai-assistant-ai-chat-retry-label = 再試行
ai-assistant-ai-chat-copy-response = レスポンスをコピー
ai-assistant-ai-chat-insert-response = ターミナルに挿入
ai-assistant-ai-chat-new-conversation = 新しい会話

## -- モデル選択 ----------------------------------------------------------

ai-assistant-ai-model-select-label = モデル：
ai-assistant-ai-model-fast-label = 高速
ai-assistant-ai-model-smart-label = スマート
ai-assistant-ai-model-custom-label = カスタム

## -- コンテキストチップ ------------------------------------------------------------

ai-assistant-ai-context-add-file = ファイルを追加
ai-assistant-ai-context-add-folder = フォルダを追加
ai-assistant-ai-context-add-web = Webページを追加
ai-assistant-ai-context-attached-files = 添付ファイル
ai-assistant-ai-context-clear-all = すべてクリア

## -- コンテキストチップツールチップ / 無効理由 ---------------------------------

ai-assistant-ai-chip-requires-local-session = ローカルセッションが必要です
ai-assistant-ai-chip-requires-github-cli = GitHub CLI が必要です
ai-assistant-ai-chip-requires-command = `{command}` コマンドが必要です
ai-assistant-ai-chip-copy = {} をコピー
ai-assistant-ai-chip-search-directories = ディレクトリを検索…
ai-assistant-ai-chip-search-branches = ブランチを検索…
ai-assistant-ai-chip-search-environments = 環境を検索…
ai-assistant-ai-chip-no-results = 結果なし
ai-assistant-ai-chip-no-results-found = 結果が見つかりません

## -- 環境サイドバーラベル -----------------------------------------------------------

ai-assistant-ai-env-label-name = 名前：
ai-assistant-ai-env-label-id = ID：
ai-assistant-ai-env-label-image = イメージ：
ai-assistant-ai-env-label-repos = リポジトリ：

## -- Node バージョンポップアップ ---------------------------------------------------

ai-assistant-ai-node-install-nvm = nvm をインストール
ai-assistant-ai-node-nvm-install-node = nvm install node
ai-assistant-ai-node-install-nvm-to-switch = バージョン切り替えを有効にするには nvm をインストールしてください
ai-assistant-ai-node-nvm-description = このメニューは Node.js バージョンの切り替えに使用します — nvm のインストールが必要です。
ai-assistant-ai-node-no-versions = Node バージョンがインストールされていません
ai-assistant-ai-node-try-install = nvm でバージョンのインストールを試みる
ai-assistant-ai-node-installed = インストール済み

## -- 自動検出 ------------------------------------------------------------

ai-assistant-ai-natural-language-enabled = 自然言語検出が有効
ai-assistant-ai-natural-language-disabled = 自然言語検出が無効
ai-assistant-ai-command-denylist-hint = AI自動検出から除外されたコマンド

## -- エージェント入力フッター -- ActionButton ラベルとツールチップ -------------------

ai-assistant-ai-enable-notifications-tooltip = WarpプラグインをインストールしてWarp内でリッチエージェント通知を有効にする
ai-assistant-ai-update-warp-plugin-tooltip = Warpプラグインの新バージョンが利用可能です
ai-assistant-ai-remote-control-label = /remote-control
ai-assistant-ai-enable-agent-notifications-label = { $agent_name } 通知を有効化
ai-assistant-ai-plugin-install-failed-toast = プラグインの自動インストールに失敗しました。チップを再度クリックして手動インストール手順を確認してください。
ai-assistant-ai-plugin-installed-restart-toast = Warpプラグインがインストールされました。有効化するにはセッションを再起動してください。
ai-assistant-ai-installing-plugin-toast = Warpプラグインをインストール中...
ai-assistant-ai-failed-install-plugin-toast = Warpプラグインのインストールに失敗しました
ai-assistant-ai-plugin-updated-restart-toast = Warpプラグインが更新されました。有効化するにはセッションを再起動してください。
ai-assistant-ai-updating-plugin-toast = Warpプラグインを更新中...
ai-assistant-ai-failed-update-plugin-toast = Warpプラグインの更新に失敗しました
ai-assistant-ai-voice-input-limit-toast = 音声入力の上限に達しました
ai-assistant-ai-failed-transcribe-toast = 音声入力の文字起こしに失敗しました
ai-assistant-ai-failed-start-voice-toast = 音声入力の開始に失敗しました（マイクアクセスを有効にする必要がある場合があります）

## -- エージェント管理ビューフィルターラベルとオプション --------------------------

ai-assistant-ai-filter-status-label = ステータス
ai-assistant-ai-filter-status-all = すべて
ai-assistant-ai-filter-status-working = 処理中
ai-assistant-ai-filter-status-done = 完了
ai-assistant-ai-filter-status-failed = 失敗
ai-assistant-ai-filter-source-label = ソース
ai-assistant-ai-filter-created-on-label = 作成日時
ai-assistant-ai-filter-has-artifact-label = アーティファクトあり
ai-assistant-ai-filter-harness-label = ハーネス
ai-assistant-ai-filter-environment-label = 環境
ai-assistant-ai-filter-created-by-label = 作成者
ai-assistant-ai-filter-last-24-hours = 過去24時間
ai-assistant-ai-filter-past-3-days = 過去3日間
ai-assistant-ai-filter-last-week = 過去1週間
ai-assistant-ai-filter-pull-request = プルリクエスト
ai-assistant-ai-filter-plan = プラン
ai-assistant-ai-filter-screenshot = スクリーンショット
ai-assistant-ai-filter-file = ファイル
ai-assistant-ai-filter-unknown = 不明
ai-assistant-ai-filter-clear-filters = フィルターをクリア
ai-assistant-ai-filter-clear-all = すべてクリア
ai-assistant-ai-filter-no-results = フィルターに一致する結果がありません

## -- エージェント管理ビューメタデータラベル ------------------------------------

ai-assistant-ai-metadata-source = ソース：{ $name }
ai-assistant-ai-metadata-harness = ハーネス：{ $name }
ai-assistant-ai-metadata-agent-label = エージェント
ai-assistant-ai-metadata-executor-label = 実行者
ai-assistant-ai-metadata-executor-with-name = { $label }：{ $name }
ai-assistant-ai-metadata-run-time = 実行時間：{ $value }
ai-assistant-ai-metadata-credits-used = 使用クレジット：{ $value }
ai-assistant-ai-metadata-session-expired = セッションが期限切れです
ai-assistant-ai-metadata-no-session = 利用可能なセッションがありません

## -- 会話詳細パネルラベル -----------------------------------------

ai-assistant-ai-details-continue-locally = ローカルで続行
ai-assistant-ai-details-continue-locally-tooltip = この会話をローカルでフォーク
ai-assistant-ai-details-view-in-oz = Ozで表示
ai-assistant-ai-details-view-in-oz-tooltip = Ozウェブアプリでこの実行を表示
ai-assistant-ai-details-initial-query = 初期クエリ
ai-assistant-ai-details-artifacts = アーティファクト
ai-assistant-ai-details-environment-details = 環境詳細
ai-assistant-ai-details-environment-setup-commands = 環境セットアップコマンド
ai-assistant-ai-details-env-name = 名前：{ $name }
ai-assistant-ai-details-env-id = ID
ai-assistant-ai-details-env-image = イメージ
ai-assistant-ai-details-directory = ディレクトリ
ai-assistant-ai-details-conversation-id = 会話 ID
ai-assistant-ai-details-run-id = 実行 ID
ai-assistant-ai-details-credits-used-label = 使用クレジット
ai-assistant-ai-details-run-time-label = 実行時間
ai-assistant-ai-details-created-on-label = 作成日時
ai-assistant-ai-details-agent-label = エージェント
ai-assistant-ai-details-harness-label = ハーネス
ai-assistant-ai-details-created-by = { $name } が作成 • { $time }
ai-assistant-ai-details-cloud-agent-run = クラウドエージェント実行
ai-assistant-ai-details-conversation-title = 会話

## -- ブロックビュー output.rs ツールチップ --------------------------------------------

ai-assistant-ai-resume-conversation-tooltip = 会話を再開
ai-assistant-ai-good-response-tooltip = 良いレスポンス
ai-assistant-ai-bad-response-tooltip = 悪いレスポンス
ai-assistant-ai-continue-conversation-tooltip = 会話を続行
ai-assistant-ai-fork-conversation-tooltip = 会話をフォーク
ai-assistant-ai-show-credit-usage-tooltip = クレジット使用量の詳細を表示

## -- ブロックビュー common.rs 文字列 --------------------------------------------

ai-assistant-ai-ask-agent-check-now = タイマーをスキップして、エージェントに今すぐこのコマンドをチェックさせる。
ai-assistant-ai-check-now-text =  · 今すぐチェック
ai-assistant-ai-stop-agent-task-tooltip = エージェントタスクを停止
ai-assistant-ai-one-second = 1 秒

## -- テレメトリバナー文字列 -------------------------------------------------

## -- 提案ルールモーダル文字列 ----------------------------------------

ai-assistant-ai-suggested-rule-header = 提案ルール

## -- 要約キャンセルダイアログ文字列 --------------------------------------

ai-assistant-ai-cancel-summarization-label = 要約をキャンセル
ai-assistant-ai-continue-summarization-label = 要約を続行

## -- 実行プロファイルエディター文字列 ----------------------------------------

ai-assistant-ai-profile-editor-header = プロファイルエディター
ai-assistant-ai-profile-agent-decides = エージェントが決定
ai-assistant-ai-profile-always-allow = 常に許可
ai-assistant-ai-profile-ask-on-first-write = 初回書き込み時に確認
ai-assistant-ai-profile-never = なし
ai-assistant-ai-profile-never-ask = 従来確認しない
ai-assistant-ai-profile-ask-unless-autoapprove = 自動承認以外は確認
ai-assistant-ai-select-mcp-servers = MCPサーバーを選択
ai-assistant-ai-default-profile = デフォルト

## -- エージェント管理ツールバーアイテムラベル -------------------------------------

ai-assistant-ai-toolbar-context-chip = コンテキストチップ
ai-assistant-ai-toolbar-model-selector = モデルセレクター
ai-assistant-ai-toolbar-autodetection = 自動検出
ai-assistant-ai-toolbar-voice-input = 音声入力
ai-assistant-ai-toolbar-attach-file = ファイルを添付
ai-assistant-ai-toolbar-context-usage = コンテキスト使用量
ai-assistant-ai-toolbar-file-explorer = ファイルエクスプローラー
ai-assistant-ai-toolbar-rich-input = リッチ入力
ai-assistant-ai-toolbar-remote-control = /remote-control
ai-assistant-ai-toolbar-settings = 設定
ai-assistant-ai-toolbar-fast-forward = ファストフォワード
ai-assistant-ai-toolbar-handoff-to-cloud = クラウドに引き継ぐ

## -- その他 ---------------------------------------------------------------------

ai-assistant-ai-os-not-available = このオペレーティングシステムではAIプロバイダーを利用できません
ai-assistant-ai-provider-not-configured = AIプロバイダーが設定されていません
ai-assistant-ai-configure-provider = AIプロバイダーを設定

## -- AIアシスタントパネル文字列 -----------------------------------------------

ai-assistant-ai-ask-warp-ai = Warp AIに聞く
ai-assistant-ai-zero-state-help = Shift + Ctrl + Space でブロックやテキスト選択をWarp AIに質問できます。
ai-assistant-ai-script-prompt = AWS EC2インスタンスに接続するスクリプトを作成してください。
ai-assistant-ai-git-prompt = gitで最近のコミットを取り消すにはどうすればよいですか？
ai-assistant-ai-files-prompt = 特定のテキストを含むすべてのファイルを見つけるにはどうすればよいですか？
ai-assistant-ai-init-placeholder =  質問を入力…
ai-assistant-ai-followup-placeholder =  返信を入力するか上の提案をクリック…
ai-assistant-ai-restart-label = 再開
ai-assistant-ai-close-warp-ai = Warp AIを閉じる
ai-assistant-ai-focus-terminal-input = Warp AIからターミナル入力にフォーカス
ai-assistant-ai-restart-warp-ai = Warp AIを再開
ai-assistant-ai-explain-following = 以下を説明してください
ai-assistant-ai-what-next = 次に何をすべきですか？
ai-assistant-ai-how-fix = どうすれば修正できますか？
ai-assistant-ai-ran-command-prefix = コマンドを実行しました：`
ai-assistant-ai-ran-command-suffix = ` そして以下の出力を得ました：
ai-assistant-ai-transcript-header = Warp AI 書き起こし
ai-assistant-ai-prompt-label = プロンプト
ai-assistant-ai-copy-transcript-tooltip = 書き起こしをクリップボードにコピー
ai-assistant-ai-char-limit-exceeded = 文字制限を超えています。
ai-assistant-ai-how-fix-prompt = どうすれば修正できますか？
ai-assistant-ai-show-examples-prompt = 例を表示。
ai-assistant-ai-what-next-prompt = 次に何をすべきですか？
ai-assistant-ai-generating-answer = 回答を生成中…
ai-assistant-ai-accuracy-notice = AIの回答は不正確な場合があります。
ai-assistant-ai-missing-context-notice = 会話が長くなると、Warp AIは以前の回答を忘れることがあります。
ai-assistant-ai-copy-code-tooltip = コードをクリップボードにコピー [Cmd + C]
ai-assistant-ai-insert-code-tooltip = コードをターミナル入力に挿入 [Cmd + Enter]
ai-assistant-ai-save-workflow-tooltip = ワークフローとして保存 [Cmd + S]
ai-assistant-ai-copy-answer-tooltip = 回答をクリップボードにコピー
ai-assistant-ai-credits-used = 使用クレジット：{ $used } / { $limit }。
ai-assistant-ai-until-refresh = リフレッシュまで{ $time }。
ai-assistant-ai-out-of-credits = クレジットが不足しています。{ $next_time }後に再度お試しください。
ai-assistant-ai-out-of-credits-upgrade-admin = クレジットが不足しています。{ $next_time }後に再度お試しください。\n\n[アップグレード]({ $upgrade_url })でクレジットを追加。
ai-assistant-ai-out-of-credits-contact-admin = クレジットが不足しています。{ $next_time }後に再度お試しください。\n\nチーム管理者に連絡してアップグレードし、クレジットを追加してください。
ai-assistant-ai-out-of-credits-upgrade-user = クレジットが不足しています。{ $next_time }後に再度お試しください。\n\n[アップグレード]({ $upgrade_url })でクレジットを追加。
ai-assistant-ai-technical-difficulties = 現在技術的な問題が発生しています。後でもう一度お試しください。
ai-assistant-ai-time-after = { $time }後
ai-assistant-ai-time-later = 後で
ai-assistant-ai-time-days = { $count ->
   [one] { $count } 日
  *[other] { $count } 日
}
ai-assistant-ai-time-hours = { $count ->
   [one] { $count } 時間
  *[other] { $count } 時間
}
ai-assistant-ai-time-minutes = { $count ->
   [one] { $count } 分
  *[other] { $count } 分
}

## -- 未払い管理者動的サブヘッダー ----------------------------------------------

ai-assistant-ai-delinquent-admin-dynamic-subheader = 共有{ $object_type }はサブスクリプションの支払い問題により制限されています。\n\n支払い情報を更新してアクセスを復元してください。
ai-assistant-ai-delinquent-admin-enterprise-dynamic-subheader = 共有{ $object_type }はサブスクリプションの支払い問題により制限されています。\n\nアクセスを復元するには support@warp.dev にご連絡ください。
ai-assistant-ai-delinquent-dynamic-subheader = 共有{ $object_type }はサブスクリプションの支払い問題により制限されています。\n\nチーム管理者に連絡してアクセスを復元してください。

## -- Prosumer動的サブヘッダー ----------------------------------------------

ai-assistant-ai-admin-prosumer-dynamic-subheader = WarpのProプランには限られた数の共有{ $object_type }が付属しています。\n\n無制限の共有{ $object_type }にアクセスするには、Buildプランにアップグレードしてください。
ai-assistant-ai-prosumer-dynamic-subheader = WarpのProプランには限られた数の共有{ $object_type }が付属しています。\n\n無制限の共有{ $object_type }にアクセスするには、チーム管理者に連絡してBuildプランにアップグレードしてください。

## -- 無料プラン動的サブヘッダー --------------------------------------------

ai-assistant-ai-admin-dynamic-subheader = Warpの無料プランには限られた数の共有{ $object_type }が付属しています。\n\n無制限の共有{ $object_type }にアクセスするには、有料プランにアップグレードしてください。
ai-assistant-ai-default-dynamic-subheader = Warpの無料プランには限られた数の共有{ $object_type }が付属しています。\n\n無制限の共有{ $object_type }にアクセスするには、チーム管理者に連絡して有料プランにアップグレードしてください。

## -- エージェントタイプセレクター ------------------------------------------------------

ai-assistant-ai-choose-your-agent = エージェントを選択
ai-assistant-ai-suggested = おすすめ
ai-assistant-ai-cloud-agent = クラウドエージェント
ai-assistant-ai-cloud-agent-desc = 選択したクラウド環境で自律的に実行されます。並列または長時間の作業に最適。
ai-assistant-ai-local-agent = ローカルエージェント
ai-assistant-ai-local-agent-desc = お使いのマシンで実行され、監視が必要です。素早くインタラクティブなタスクに最適。

## -- エージェント管理ビュー ----------------------------------------------------

ai-assistant-ai-sessions-expire-text = セッションは1週間後に期限切れとなり、再度開くことはできません。
ai-assistant-ai-filter-all = すべて
ai-assistant-ai-filter-none = なし
ai-assistant-ai-filter-all-tooltip = 自分のエージェントタスクとすべての共有チームタスクを表示
ai-assistant-ai-filter-personal = 個人
ai-assistant-ai-filter-personal-tooltip = 自分が作成したエージェントタスクを表示
ai-assistant-ai-search-placeholder = 検索
ai-assistant-ai-status-label = ステータス
ai-assistant-ai-status-all = すべて
ai-assistant-ai-status-working = 処理中
ai-assistant-ai-status-done = 完了
ai-assistant-ai-status-failed = 失敗
ai-assistant-ai-source-label = ソース

## -- エージェント管理ビュー追加 -----------------------------------------------

ai-assistant-ai-environment-with-name = 環境：{ $name }
ai-assistant-ai-environment-abbreviated = 環境：{ $name }…
ai-assistant-ai-source-with-name = ソース：{ $name }
ai-assistant-ai-harness-with-name = ハーネス：{ $name }
ai-assistant-ai-executor-label = 実行者
ai-assistant-ai-executor-with-name = { $label }：{ $name }
ai-assistant-ai-run-time-with-value = 実行時間：{ $value }
ai-assistant-ai-credits-used-with-value = 使用クレジット：{ $value }
ai-assistant-ai-runs = 実行
ai-assistant-ai-loading-agents = エージェントを読み込み中...
ai-assistant-ai-no-filter-results = フィルターに一致する結果がありません
ai-assistant-ai-created-on-label = 作成日時
ai-assistant-ai-has-artifact-label = アーティファクトあり
ai-assistant-ai-created-by-label = 作成者
ai-assistant-ai-environment-label = 環境
ai-assistant-ai-session-expired = セッションが期限切れです
ai-assistant-ai-no-session-available = 利用可能なセッションがありません
ai-assistant-ai-loading-cloud-agent-runs = クラウドエージェントの実行を読み込み中

## -- 通知ビュー文字列 --------------------------------------------------

ai-assistant-ai-notif-filter-all = すべてのタブ
ai-assistant-ai-notif-filter-unread = 未読
ai-assistant-ai-notif-filter-errors = エラー

## -- エージェント管理モデル文字列 -------------------------------------------

ai-assistant-ai-agent-completed = { $agent } が完了しました
ai-assistant-ai-notification-from-codex = Codexからの通知
ai-assistant-ai-task-completed = タスクが完了しました。
ai-assistant-ai-agent-needs-attention = { $agent } に注意が必要です
ai-assistant-ai-waiting-for-input = 入力を待っています。
ai-assistant-ai-child-agent = 子エージェント
ai-assistant-ai-agent-task = エージェントタスク
ai-assistant-ai-child-agent-completed = 子エージェントが完了しました。
ai-assistant-ai-task-completed-2 = タスクが完了しました。
ai-assistant-ai-child-agent-cancelled = 子エージェントがキャンセルされました。
ai-assistant-ai-child-agent-error = 子エージェントでエラーが発生しました。
ai-assistant-ai-something-went-wrong = 問題が発生しました。

## -- 詳細アクションボタン ---------------------------------------------------

## -- 通知ビュー -------------------------------------------------------

## -- クラウドセットアップガイド --------------------------------------------------------
## -- クラウドセットアップガイド --------------------------------------------------------

ai-assistant-ai-cloud-agents-getting-started = Ozクラウドエージェントの使い方
ai-assistant-ai-cloud-agents-subtitle = 統合（Linear、Slack）、イベント（GitHub、内蔵スケジュール）、またはOz SDK/CLIを使用してプログラム的に、Warpで直接Ozクラウドエージェントを開始できます。
ai-assistant-ai-check-out-the = 確認する
ai-assistant-ai-oz-documentation = Oz ドキュメント
ai-assistant-ai-to-learn-more =  詳細をご覧ください。
ai-assistant-ai-quick-start-visit = クイックスタート：oz.warp.dev にアクセスしてUIベースのセットアップ体験を。
ai-assistant-ai-manual-setup-create-integration = 手動セットアップ：Oz CLIでSlackまたはLinear統合を作成
ai-assistant-ai-create-an-environment = 環境を作成
ai-assistant-ai-first-set-up-environment = まず、統合を作成するための環境をセットアップします。
ai-assistant-ai-use-warps-env-setup = Warpの環境セットアップコマンドを使用して、エージェントに支援させます。
ai-assistant-ai-visit-docs = ドキュメントにアクセス
ai-assistant-ai-or-supply-docker-image = または、既存のDockerイメージを提供してください。
ai-assistant-ai-create-an-integration = 統合を作成
ai-assistant-ai-integrate-slack-linear = SlackまたはLinearを統合して、@WarpでWarpのエージェントにタスクを割り当てます。

## -- ワークフロー名と引数の説明 ----------------------------------

ai-assistant-ai-wf-create-environment = 環境を作成
ai-assistant-ai-wf-create-environment-cli = 環境を作成 (CLI)
ai-assistant-ai-wf-create-slack-integration = Slack統合を作成
ai-assistant-ai-wf-create-linear-integration = Linear統合を作成
ai-assistant-ai-wf-create-env-arg-repo = GitHubリンクまたはローカルファイルパス
ai-assistant-ai-wf-create-env-cli-arg-name = 環境名
ai-assistant-ai-wf-create-env-cli-arg-image = 環境に使用するDockerイメージ
ai-assistant-ai-wf-integration-arg-env-id = 統合する環境のID

## -- エージェント入力フッター文字列 -----------------------------------------

ai-assistant-ai-voice-input-tooltip = 音声入力
ai-assistant-ai-attach-file-tooltip = ファイルを添付
ai-assistant-ai-hand-off-to-cloud-tooltip = クラウドに引き継ぐ
ai-assistant-ai-file-explorer-label = ファイルエクスプローラー
ai-assistant-ai-file-explorer-tooltip = ファイルエクスプローラーを開く
ai-assistant-ai-rich-input-label = リッチ入力
ai-assistant-ai-rich-input-tooltip = リッチ入力を開く
ai-assistant-ai-hide-rich-input-label = リッチ入力を隠す
ai-assistant-ai-hide-rich-input-tooltip = リッチ入力を隠す
ai-assistant-ai-open-coding-agent-settings-tooltip = コーディングエージェント設定を開く
ai-assistant-ai-enable-notifications-label = 通知を有効化
ai-assistant-ai-install-plugin-tooltip = WarpプラグインをインストールしてWarp内でリッチエージェント通知を有効にする
ai-assistant-ai-notifications-setup-instructions-label = 通知セットアップ手順
ai-assistant-ai-notifications-setup-instructions-tooltip = Warpプラグインのインストール手順を表示
ai-assistant-ai-update-warp-plugin-label = Warpプラグインを更新
ai-assistant-ai-update-plugin-tooltip = Warpプラグインの新バージョンが利用可能です
ai-assistant-ai-plugin-update-instructions-label = プラグイン更新手順
ai-assistant-ai-plugin-update-instructions-tooltip = Warpプラグインの更新手順を表示
ai-assistant-ai-dismiss-tooltip = 閉じる
ai-assistant-ai-stop-sharing-label = 共有を停止
ai-assistant-ai-stop-sharing-tooltip = 共有を停止
ai-assistant-ai-context-window-usage-tooltip = コンテキストウィンドウ使用量
ai-assistant-ai-enable-nld-tooltip = ターミナルコマンド自動検出を有効にする
ai-assistant-ai-disable-nld-tooltip = ターミナルコマンド自動検出を無効にする
ai-assistant-ai-fast-forward-on-tooltip = エージェント操作の自動承認をすべてオフにする
ai-assistant-ai-fast-forward-off-tooltip = このタスクのエージェント操作をすべて自動承認する
ai-assistant-ai-start-remote-control-tooltip = リモートコントロールを開始
ai-assistant-ai-start-remote-control-login-tooltip = ログインして /remote-control を使用
ai-assistant-ai-agent-environment-tooltip = エージェント環境
ai-assistant-ai-choose-environment-tooltip = 環境を選択
ai-assistant-ai-new-environment-label = 新しい環境
ai-assistant-ai-available-chips-label = 利用可能なチップ
ai-assistant-ai-edit-agent-toolbelt-title = エージェントツールベルトを編集
ai-assistant-ai-edit-cli-agent-toolbelt-title = CLIエージェントツールベルトを編集
ai-assistant-ai-plugin-install-failed = プラグインを自動インストールできませんでした。チップを再度クリックして手動インストール手順を確認してください。
ai-assistant-ai-no-plugin-manager = プラグインマネージャーがありません
ai-assistant-ai-see-logs-for-details = 詳細はログを確認
ai-assistant-ai-plugin-installed-restart = Warpプラグインがインストールされました。有効化するにはセッションを再起動してください。
ai-assistant-ai-installing-plugin = Warpプラグインをインストール中...
ai-assistant-ai-failed-install-plugin = Warpプラグインのインストールに失敗しました
ai-assistant-ai-plugin-updated-restart = Warpプラグインが更新されました。有効化するにはセッションを再起動してください。
ai-assistant-ai-updating-plugin = Warpプラグインを更新中...
ai-assistant-ai-failed-update-plugin = Warpプラグインの更新に失敗しました
ai-assistant-ai-voice-input-limit = 音声入力の上限に達しました
ai-assistant-ai-failed-transcribe = 音声入力の文字起こしに失敗しました
ai-assistant-ai-failed-start-voice = 音声入力の開始に失敗しました（マイクアクセスを有効にする必要がある場合があります）
ai-assistant-ai-voice-enabled-toast = 音声入力が有効になりました。`{key}`キーを押し続けて音声入力をアクティブにすることもできます（設定 > AI > 音声で設定）
ai-assistant-ai-now-using-default-model = Full Terminal Agentのデフォルトモデルを使用中です。
ai-assistant-ai-plugin-install-log-title = Warpプラグインインストール — { $agent }

## -- エージェントビューゼロ状態文字列 --------------------------------------

ai-assistant-ai-new-oz-cloud-conversation = 新しいOzクラウドエージェント会話
ai-assistant-ai-send-prompt-below = 下のプロンプトを送信して新しい会話を開始してください
ai-assistant-ai-new-oz-agent-conversation = 新しいOzエージェント会話
ai-assistant-ai-run-agent-task-cloud = 分離されたクラウド環境でエージェントタスクを実行します。
ai-assistant-ai-use-cloud-agents-desc = クラウドエージェントを使用して並列エージェントを実行、自律的に動作するエージェントを構築、どこからでもエージェントを確認できます。
ai-assistant-ai-visit-docs-link = ドキュメントにアクセス
ai-assistant-ai-recent-activity = 最近のアクティビティ
ai-assistant-ai-view-changelog = 変更履歴を表示
ai-assistant-ai-whats-new-oz = Ozの最新情報

## -- エージェントメッセージバー文字列 -----------------------------------------

ai-assistant-ai-get-figma-mcp = Figma MCPを入手
ai-assistant-ai-enable-figma-mcp = Figma MCPを有効化
ai-assistant-ai-enabling-figma-mcp = 有効化中...

## -- ブロックビュー共通文字列 --------------------------------------------

ai-assistant-ai-summarizing-output = コマンド出力を要約中...
ai-assistant-ai-waiting-for-command = コマンドの終了を待機中...
ai-assistant-ai-can-write-command = この実行中のコマンドに以下を書き込んでもよろしいですか？
ai-assistant-ai-grant-repo-access = 以下のリポジトリへのアクセスを許可しますか？
ai-assistant-ai-ok-search-files = このディレクトリ内のファイルを検索してもよろしいですか？
ai-assistant-ai-take-over-tooltip = コマンドの制御を引き継ぐ
ai-assistant-ai-show-responses = レスポンスを表示
ai-assistant-ai-hide-responses = レスポンスを隠す
ai-assistant-ai-show-agent-responses = エージェントレスポンスを表示
ai-assistant-ai-hide-agent-responses = エージェントレスポンスを隠す
ai-assistant-ai-stop-agent-task = エージェントタスクを停止
ai-assistant-ai-auto-queue-on = 自動キューがオン：次のプロンプトがキューに追加されます
ai-assistant-ai-auto-queue-off = エージェント応答中に次のプロンプトを自動キュー
ai-assistant-ai-turn-off-autoapprove = エージェント操作の自動承認をすべてオフにする
ai-assistant-ai-autoapprove-all = このタスクのエージェント操作をすべて自動承認
ai-assistant-ai-ask-agent-now-tooltip = タイマーをスキップして、エージェントに今すぐこのコマンドをチェックさせる。
ai-assistant-ai-mermaid-diagram = Mermaidダイアグラム
ai-assistant-ai-warp-overloaded = Warpは現在過負荷状態です。後でもう一度お試しください。
ai-assistant-ai-edit-api-keys = APIキーを編集
ai-assistant-ai-send-feedback = フィードバックを送信
ai-assistant-ai-copy-debug-id = デバッグIDをコピー

## -- ユーザー質問ビュー文字列 -------------------------------------

ai-assistant-ai-type-answer = 回答を入力してEnterキーを押してください
ai-assistant-ai-questions-skipped-label = 質問がスキップされました

## -- AWS Bedrock認証エラー文字列 ------------------------------

ai-assistant-ai-aws-auth-failed = { $model_name }使用時のAWS Bedrock認証に失敗しました。認証情報を更新するために `{ $login_command }` を実行してください。
ai-assistant-ai-always-run-auto = 常に自動で実行

## -- コード差分ビュー文字列 ---------------------------------------------

ai-assistant-ai-expand = 展開
ai-assistant-ai-collapse = 折りたたむ
ai-assistant-ai-open-config = 設定を開く
ai-assistant-ai-no-file-name = ファイル名なし
ai-assistant-ai-file-renamed-no-changes = ファイル名が変更されました（変更なし）
ai-assistant-ai-dont-show-banners = 提案コードバナーを今後表示しない
ai-assistant-ai-manage-banner-settings = 提案コードバナー設定を管理
ai-assistant-ai-settings-ai = 設定 > AI
ai-assistant-ai-requested-edit = 要求された編集

## -- オーケストレーション制御文字列 ------------------------------------

ai-assistant-ai-opencode-not-supported-cloud = OpenCodeはクラウドでまだサポートされていません。ローカルに切り替えるか、別のハーネスを選択してください。
ai-assistant-ai-agent-location = エージェントの場所
ai-assistant-ai-local = ローカル
ai-assistant-ai-cloud = クラウド
ai-assistant-ai-agent-harness = エージェントハーネス
ai-assistant-ai-host = ホスト
ai-assistant-ai-base-model = ベースモデル
ai-assistant-ai-recommend-environment = クラウドエージェントには環境を選択することをお勧めします。
ai-assistant-ai-recommend-create-environment = クラウドエージェントには環境を作成することをお勧めします。

## -- 要求コマンド文字列 ------------------------------------------

ai-assistant-ai-derived-from = 派生元
ai-assistant-ai-always-allow-readonly = Ozが読み取り専用コマンドを常に実行することを許可（モデルに依存）
ai-assistant-ai-profile-always-ask = プロファイルはコマンド実行の許可を常に求めるように設定されています。

## -- 実行プロファイルエディター文字列 ---------------------------------

ai-assistant-ai-edit-profile = プロファイルを編集
ai-assistant-ai-agent-decides = エージェントが決定
ai-assistant-ai-always-allow = 常に許可
ai-assistant-ai-always-ask = 常に確認
ai-assistant-ai-ask-on-first-write = 初回書き込み時に確認
ai-assistant-ai-never = なし
ai-assistant-ai-frontier-models-unavailable = 無料プランではフロンティアモデルを利用できません。アップグレードしてください

## -- 提案ルールモーダル文字列 ----------------------------------------

ai-assistant-ai-editing-disabled-offline = オフライン中は編集が無効です。
ai-assistant-ai-untitled = 無題
ai-assistant-ai-name-label = 名前
ai-assistant-ai-rule-label = ルール

## -- 要約キャンセルダイアログ文字列 --------------------------------

ai-assistant-ai-cancel-summarization = 要約をキャンセル
ai-assistant-ai-continue-summarization = 要約を続行
ai-assistant-ai-cancel-summarization-title = 要約をキャンセルしますか？
ai-assistant-ai-cancel-summarization-message = 要約は既に実行中です。今キャンセルすると、リクエストにコストが発生する可能性があり、これまでの進捗が失われ、再開に時間がかかります。\n\n本当にキャンセルしますか？

## -- テレメトリバナー文字列 ------------------------------------------

ai-assistant-ai-telemetry-title-existing = テレメトリポリシーを更新しました。
ai-assistant-ai-telemetry-title-new = Warpの改善にご協力ください。
ai-assistant-ai-telemetry-description = WarpのAI機能を改善するため、特定のコンソール操作を収集する場合があります。いつでもオプトアウトできます。
ai-assistant-ai-manage-privacy-settings = プライバシー設定を管理

## -- コードベースインデックス確認バナー文字列 ---------------------------

ai-assistant-ai-index-codebase-header = コードベースをインデックスしますか？
ai-assistant-ai-index-codebase-text = インデックスにより、エージェントはコンテキストをすばやく理解し、的を絞ったソリューションを提供できます。コードはサーバーに保存されません。
ai-assistant-ai-index-codebase-button = コードベースをインデックス
ai-assistant-ai-allow-automatic-indexing = 自動インデックスを許可
ai-assistant-ai-indexing-codebase-header = コードベースをインデックス中
ai-assistant-ai-view-status = ステータスを表示

## -- コードベース検索文字列 --------------------------------------------

ai-assistant-ai-searched-for-in = { $repo }で"{ $query }"を検索しました
ai-assistant-ai-searched-for = "{ $query }"を検索しました
ai-assistant-ai-no-results-found = 結果が見つかりません
ai-assistant-ai-searching-for-in = { $repo }で"{ $query }"を検索中
ai-assistant-ai-searching-codebase-for = コードベースで"{ $query }"を検索中
ai-assistant-ai-search-cancelled-in = { $repo }での"{ $query }"の検索がキャンセルされました
ai-assistant-ai-search-cancelled = "{ $query }"の検索がキャンセルされました
ai-assistant-ai-searched-codebase-for-in = { $repo }のコードベースで"{ $query }"を検索しました
ai-assistant-ai-searched-codebase-for = コードベースで"{ $query }"を検索しました

## -- Webフェッチ文字列 -------------------------------------------------

ai-assistant-ai-fetching-pages = { $count }件のWebページを取得中...
ai-assistant-ai-fetched-pages = { $count }件のWebページを取得しました
ai-assistant-ai-fetched-pages-partial = { $total }件中{ $successful }件のWebページを取得しました
ai-assistant-ai-urls-label = URL
ai-assistant-ai-no-urls-fetched = URLは取得されませんでした

## -- Web検索文字列 ------------------------------------------------

ai-assistant-ai-searching-web-for = Webで"{ $query }"を検索中
ai-assistant-ai-searched-web = Webを検索しました
ai-assistant-ai-searched-web-for = Webで"{ $query }"を検索しました

## -- CLI ブロックビュー文字列 ------------------------------------------------

ai-assistant-ai-the-current-directory = 現在のディレクトリ
ai-assistant-ai-grep-for-in = { $path }で`{ $query }`を検索
ai-assistant-ai-grep-for-patterns-in = { $path }で以下のパターンを検索：
{ $patterns }
ai-assistant-ai-search-for-files-in = { $path }で`{ $pattern }`に一致するファイルを検索
ai-assistant-ai-find-files-patterns-in = { $path }で以下のパターンに一致するファイルを検索：
{ $patterns }
ai-assistant-ai-warping = 処理中...
ai-assistant-ai-adjusting-tasks = タスクを調整中...
ai-assistant-ai-generating-fix = 修正を生成中...
ai-assistant-ai-creating-diff = 差分を作成中...
ai-assistant-ai-preparing-question = 質問を準備中...
ai-assistant-ai-generating-plan = プランを生成中...
ai-assistant-ai-updating-plan = プランを更新中...
ai-assistant-ai-summarizing-conversation = 会話を要約中...
ai-assistant-ai-searching-codebase = コードベースを検索中...
ai-assistant-ai-reading-files = ファイルを読み取り中...
ai-assistant-ai-grepping = 検索中...
ai-assistant-ai-finding-files = ファイルを検索中...
ai-assistant-ai-executing-command = コマンドを実行中...
ai-assistant-ai-writing-command-input = コマンド入力を書き込み中...
ai-assistant-ai-searching-web = Webを検索中...
ai-assistant-ai-fetching-pr-comments = PRコメントを取得中...
ai-assistant-ai-waiting-for-user-input = エージェントが指示を待機中...
ai-assistant-ai-error-apology = 申し訳ありませんが、そのリクエストを完了できませんでした。
ai-assistant-ai-internal-warp-error = Warp内部エラー。

## -- エラーメッセージの組み合わせ ------------------------------------------

ai-assistant-ai-quota-limit-error = { ai-error-apology }

クレジット制限に達しました。クレジット制限は { $next_refresh_time } にリセットされます。
ai-assistant-ai-internal-warp-error-full = { ai-error-apology }

{ ai-internal-warp-error }
ai-assistant-ai-error-with-message = { ai-error-apology }

{ $error_message }
ai-assistant-ai-error-resume = { $error_message }

会話の再開を試みています...
ai-assistant-ai-error-resume-network = { $error_message }

ネットワーク接続が復旧したら会話を再開します...
ai-assistant-ai-aws-credentials-expired = { ai-error-apology }

{ $model_name } のAWS認証情報が期限切れまたは不足しています。AWS認証情報を更新してください。

## -- 追加のCLIブロック文字列 -----------------------------------------

ai-assistant-ai-agent-asking-take-control = エージェントが制御を引き継ぐよう求めています。
ai-assistant-ai-take-control-running-command = 実行中のコマンドの制御を取得
ai-assistant-ai-manage-agent-permissions = エージェント権限を管理

## -- 追加のインラインアクション文字列 -------------------------------------

ai-assistant-ai-answered-question = 質問に回答しました
ai-assistant-ai-answered-all-questions = 全 { $total } 問に回答しました
ai-assistant-ai-answered-count = { $total } 問中 { $answered_count } 問に回答
ai-assistant-ai-question-label = Q: { $question }
ai-assistant-ai-answer-label = A: { $answer }
ai-assistant-ai-skipped = スキップ済み
ai-assistant-ai-running-command = `{ $command }` を実行中...
ai-assistant-ai-failed-revert-changes = { $file_name } の変更を元に戻せませんでした
ai-assistant-ai-file-new = { $file_name }（新規）
ai-assistant-ai-file-deleted = { $file_name }（削除）
ai-assistant-ai-file-renamed = { $file_name } → { $rename_file_name }
ai-assistant-ai-error-formatting-json = JSONのフォーマットエラー
ai-assistant-ai-mcp-error = エラー：{ $error }
ai-assistant-ai-mcp-cancelled = ツール呼び出しがキャンセルされました
ai-assistant-ai-mcp-response = { $command_text }

レスポンス：{ $result_text }

## -- 追加のエージェント文字列 ---------------------------------------------

ai-assistant-ai-tasks-label = タスク
ai-assistant-ai-address-these-comments = これらのコメントに対応
ai-assistant-ai-review-comment = レビューコメント
ai-assistant-ai-not-started = 未開始
ai-assistant-ai-seconds-count = { $count ->
   [one] { $count } 秒
  *[other] { $count } 秒
}
ai-assistant-ai-minutes-count = { $count ->
   [one] { $count } 分
  *[other] { $count } 分
}

## -- 共通検索結果ラベル -------------------------------------------

ai-assistant-ai-results-label = 件

## -- エージェントドライバーエラー文字列 -------------------------------------------

ai-assistant-ai-internal-error-retry = 内部エラーが発生しました。タスクを再実行してください。問題が続く場合はサポートにお問い合わせください。
ai-assistant-ai-bootstrap-failed = ターミナルセッションの開始に失敗しました。タスクを再実行してください。
ai-assistant-ai-share-session-internal-error = 内部エラーによりエージェントセッションの共有に失敗しました。タスクを再実行してください。
ai-assistant-ai-share-session-interrupted = セッション共有が完了する前に中断されました。タスクを再実行してください。

## -- Agent SDK 認証文字列 ---------------------------------------------

ai-assistant-ai-auth-failed = 認証に失敗しました
ai-assistant-ai-auth-failed-detail = 認証に失敗しました：{ $error }
ai-assistant-ai-invalid-api-key = APIキーが無効です。'--api-key'またはWARP_API_KEY環境変数で有効なキーを提供してください。
ai-assistant-ai-invalid-credentials = 認証情報が無効です。`{ $cli_name } login`で再度ログインしてください。

## -- Agent SDK 表示ラベル文字列 -------------------------------------

ai-assistant-ai-artifacts-label = アーティファクト：
ai-assistant-ai-pr-repo-num = PR：{ $repo } #{ $num }
ai-assistant-ai-link-label-url =     リンク：{ $url }
ai-assistant-ai-untitled-plan = 無題のプラン
ai-assistant-ai-plan-label =   プラン：{ $title }
ai-assistant-ai-no-description = 説明なし
ai-assistant-ai-screenshot-label =   スクリーンショット：{ $uid }（{ $desc }）
ai-assistant-ai-file-label =   ファイル：{ $label }
ai-assistant-ai-path-label =     パス：{ $filepath }
ai-assistant-ai-description-label =     説明：{ $description }
ai-assistant-ai-secret-raw-value = Raw値
ai-assistant-ai-secret-dotenvx = dotenvx
ai-assistant-ai-secret-anthropic-api-key = Anthropic APIキー
ai-assistant-ai-secret-anthropic-bedrock-access-key = Anthropic Bedrock アクセスキー
ai-assistant-ai-secret-anthropic-bedrock-api-key = Anthropic Bedrock APIキー
ai-assistant-ai-secret-openai-api-key = OpenAI APIキー

## -- ステータスバーと MCP 文字列 -------------------------------------------

ai-assistant-ai-fallback-model-retry-primary = プライマリモデル（{ $primary }）が失敗しました。フォールバックモデルで再試行しています。
ai-assistant-ai-fallback-model-retry = プライマリモデルが失敗しました。フォールバックモデルで再試行しています。
ai-assistant-ai-warping-with-model = { $name } で処理中。
ai-assistant-ai-warping-with-other-model = 別のモデルで処理中。
ai-assistant-ai-calling-mcp-tool = "{ $name }" MCPツールを呼び出し中...
ai-assistant-ai-reading-mcp-resource = "{ $name }" MCPリソースを読み取り中...

## -- エージェント実行カードビュー文字列 ------------------------------------------

ai-assistant-ai-orchestration-disabled = オーケストレーションは現在無効です。起動するにはプランカードで再度有効にしてください。
ai-assistant-ai-orchestration-disabled-reason = オーケストレーションは現在無効です。起動するにはプランカードで再度有効にしてください。（{ $reason }）
ai-assistant-ai-failed-start-orchestration = オーケストレーションの開始に失敗しました
ai-assistant-ai-failed-start-orchestration-error = オーケストレーションの開始に失敗しました：{ $error }
ai-assistant-ai-spawning-1-agent = 1つのエージェントを生成中...
ai-assistant-ai-spawning-agents = { $total }つのエージェントを生成中...

## -- Block.rs ActionButton ラベルとツールチップ ---------------------------------

ai-assistant-ai-open-in-github-tooltip = GitHubで開く
ai-assistant-ai-open-in-code-review = コードレビューで開く
ai-assistant-ai-manage-rules = ルールを管理
ai-assistant-ai-review-changes = 変更を確認
ai-assistant-ai-open-all-in-code-review = すべてコードレビューで開く
ai-assistant-ai-dismiss-suggestion = 閉じる
ai-assistant-ai-dont-show-again = 今後表示しない
ai-assistant-ai-rewind = 巻き戻し
ai-assistant-ai-rewind-tooltip = このブロックの前に巻き戻す
ai-assistant-ai-cancel = キャンセル

## -- Block.rs DismissibleToast メッセージ ----------------------------------------

ai-assistant-ai-copied-to-clipboard = クリップボードにコピーしました
ai-assistant-ai-thank-you-feedback = フィードバックありがとうございます！

## -- Block view_impl output.rs 追加ツールチップ --------------------------------

ai-assistant-ai-follow-up-conversation-tooltip = 既存の会話を続行

## -- CLI サブエージェントビュー文字列 -------------------------------------------------

ai-assistant-ai-allow = 許可
ai-assistant-ai-refine = 精査
ai-assistant-ai-take-over = 引き継ぐ
ai-assistant-ai-take-control = 制御を取得
ai-assistant-ai-accept = 受け入れる
ai-assistant-ai-copied-branch-name = ブランチ名をコピーしました

## -- Block 保留中のユーザークエリ文字列 -------------------------------------------

ai-assistant-ai-remove-queued-prompt = キューのプロンプトを削除
ai-assistant-ai-send-now = 今すぐ送信
ai-assistant-ai-queued = キューに入りました

## -- 会話詳細パネル文字列 -------------------------------------------------

ai-assistant-ai-conversation-title = 会話
ai-assistant-ai-cloud-agent-run-title = クラウドエージェント実行
ai-assistant-ai-agent-label = エージェント
ai-assistant-ai-harness-label = ハーネス
ai-assistant-ai-open-in-oz = Ozで開く
ai-assistant-ai-open-in-github = GitHubで開く
ai-assistant-ai-artifacts = アーティファクト
ai-assistant-ai-pr-label = PR
ai-assistant-ai-branch-label = ブランチ
ai-assistant-ai-link-label = リンク
ai-assistant-ai-environment-setup-commands = 環境セットアップコマンド
ai-assistant-ai-environment-details = 環境詳細
ai-assistant-ai-docker-image = Dockerイメージ

## -- エージェント管理ビュー文字列 ----------------------------------------------

ai-assistant-ai-all = すべて
ai-assistant-ai-all-tooltip = 自分のエージェントタスクとすべての共有チームタスクを表示
ai-assistant-ai-personal = 個人
ai-assistant-ai-personal-tooltip = 自分が作成したエージェントタスクを表示
ai-assistant-ai-all-filter-tooltip = 自分のエージェントタスクとすべての共有チームタスクを表示
ai-assistant-ai-personal-filter-tooltip = 自分が作成したエージェントタスクを表示
ai-assistant-ai-get-started = 始める
ai-assistant-ai-view-agents = エージェントを表示
ai-assistant-ai-clear-filters = フィルターをクリア
ai-assistant-ai-clear-all = すべてクリア
ai-assistant-ai-search = 検索
ai-assistant-ai-new-agent = 新規エージェント
ai-assistant-ai-unknown = 不明
ai-assistant-ai-created-on = 作成日時
ai-assistant-ai-has-artifact = アーティファクトあり
ai-assistant-ai-pull-request = プルリクエスト
ai-assistant-ai-plan = プラン
ai-assistant-ai-screenshot = スクリーンショット
ai-assistant-ai-file = ファイル
ai-assistant-ai-none = なし
ai-assistant-ai-last-24-hours = 過去24時間
ai-assistant-ai-past-3-days = 過去3日間
ai-assistant-ai-last-week = 過去1週間
ai-assistant-ai-environment = 環境
ai-assistant-ai-created-by = 作成者
ai-assistant-ai-accept-without-orchestration = オーケストレーションなしで受け入れる
ai-assistant-ai-spawn-agents-cancelled = エージェント生成がキャンセルされました
ai-assistant-ai-configuring-agents = エージェントを設定中…
ai-assistant-ai-spawned-1-agent = 1つのエージェントを生成しました
ai-assistant-ai-spawned-agents = { $total }つのエージェントを生成しました
ai-assistant-ai-spawned-agents-partial = { $total }つのうち{ $launched }つのエージェントを生成しました
ai-assistant-ai-spawning-1-agent-card = 1つのエージェントを生成中…
ai-assistant-ai-spawning-agents-card = { $total }つのエージェントを生成中…

## -- エージェント管理/通知 ------------------------------------------------

ai-assistant-ai-task-cancelled = タスクがキャンセルされました。
## -- エージェント管理メタデータフォーマット文字列 ----------------------------

ai-assistant-ai-metadata-source-format = ソース：{ $name }
ai-assistant-ai-metadata-harness-format = ハーネス：{ $name }
ai-assistant-ai-metadata-agent = エージェント
ai-assistant-ai-metadata-executor = 実行者
ai-assistant-ai-metadata-executor-format = { $label }：{ $name }
ai-assistant-ai-metadata-run-time-format = 実行時間：{ $value }
ai-assistant-ai-metadata-credits-used-format = 使用クレジット：{ $value }

## -- エージェントチップ ------------------------------------------------

ai-assistant-ai-tip-slash-command = `/` スラッシュコマンドメニューを開き、クイックエージェント操作にアクセス。
ai-assistant-ai-tip-toggle-input-mode = <keybinding> 自然言語検出を切り替え、エージェントとターミナル入力を切り替え。
ai-assistant-ai-tip-plan = `/plan` <prompt> 実行前にエージェントのプランを作成。
ai-assistant-ai-tip-command-palette = <keybinding> コマンドパレットを開き、Warpアクションとショートカットにアクセス。
ai-assistant-ai-tip-warp-drive = 再利用可能なワークフロー、ノートブック、プロンプトを
ai-assistant-ai-tip-redirect-agent = エージェント実行中に新しいプロンプトを入力してリダイレクト。
ai-assistant-ai-tip-at-context = `@` ファイル、ブロック、またはWarp Driveオブジェクトからコンテキストをプロンプトに追加。
ai-assistant-ai-tip-attach-block = <keybinding> 前のコマンド出力をエージェントコンテキストとして添付。
ai-assistant-ai-tip-init = `/init` エージェントがコードベースを理解できるようにリポジトリをインデックス。
ai-assistant-ai-tip-agent-profiles = エージェントプロファイルを追加して、セッションごとに権限とモデルをカスタマイズ。
ai-assistant-ai-tip-fork-block = ブロックを右クリックして、そのポイントから会話をフォーク。
ai-assistant-ai-tip-copy-block = ブロックを右クリックして会話の出力をコピー。
ai-assistant-ai-tip-drag-image = 画像をペインにドラッグしてエージェントコンテキストとして添付。
ai-assistant-ai-tip-interactive-tools = エージェントに指示して、node、python、postgres、gdb、vimなどのインタラクティブツールを操作。
ai-assistant-ai-tip-code-review = <keybinding> コードレビューパネルを開き、エージェントの変更を確認。
ai-assistant-ai-tip-add-mcp = `/add-mcp` MCPサーバーをワークスペースに追加。
ai-assistant-ai-tip-open-mcp = `/open-mcp-servers` チームとMCPサーバーを表示・共有。
ai-assistant-ai-tip-create-env = `/create-environment` リポジトリをエージェントが実行できるリモートDocker環境に変換。
ai-assistant-ai-tip-add-prompt = `/add-prompt` 繰り返し可能なワークフロー用の再利用可能なプロンプトを作成。
ai-assistant-ai-tip-add-rule = `/add-rule` グローバルエージェントルールを作成。
ai-assistant-ai-tip-fork = `/fork` 現在の会話の新しいコピーを作成。オプションで新しいプロンプトを指定。
ai-assistant-ai-tip-open-code-review = `/open-code-review` コードレビューパネルを開き、エージェント生成の差分を確認。
ai-assistant-ai-tip-new = `/new` クリーンなコンテキストで新しいエージェント会話を開始。
ai-assistant-ai-tip-compact = `/compact` 現在の会話を要約し、コンテキストウィンドウの空き容量を増やす。
ai-assistant-ai-tip-usage = `/usage` 現在のAIクレジット使用量を表示。
ai-assistant-ai-tip-oz-headless = `oz` コマンドを使用してヘッドレスモードでOzエージェントを実行。リモートマシンに便利。
ai-assistant-ai-tip-select-text = 選択テキストを右クリックしてエージェントコンテキストとして添付。
ai-assistant-ai-tip-agents-md = `AGENTS.md` または `CLAUDE.md` を使用してプロジェクトスコープのルールを適用。
ai-assistant-ai-tip-paste-url = URLを貼り付けてそのWebページをエージェントコンテキストとして添付。
ai-assistant-ai-tip-warpify = リモートSSHセッションをWarpifyして、その環境でOzを有効に。
ai-assistant-ai-tip-switch-profile = エージェントプロファイルを切り替えて、モデルとエージェント権限を素早く変更。
ai-assistant-ai-tip-init-warp-md = `/init` `WARP.md` ファイルを生成し、エージェントのプロジェクトルールを定義。
ai-assistant-ai-tip-auto-approve = <keybinding> セッションの残り時間、エージェントのコマンドと差分を自動承認。
ai-assistant-ai-tip-enable-notifications = デスクトップ通知を有効にして、エージェントが注意を必要とする際にアラートを受け取る。
ai-assistant-ai-tip-cancel-task = <keybinding> 現在のエージェントタスクをキャンセル。
ai-assistant-ai-tip-voice = <keybinding> を押し続けてエージェントに直接プロンプトを話す。

## -- Toast ヒントテキスト ------------------------------------------------

ai-assistant-ai-open-conversation-hint = 会話を開く
ai-assistant-ai-failed-to-start-orchestration = オーケストレーションの開始に失敗しました
ai-assistant-ai-failed-to-start-orchestration-error = オーケストレーションの開始に失敗しました：{ $error }
ai-assistant-ai-can-i-start-agents = このタスクのために追加のエージェントを開始できますか？
ai-assistant-ai-agents-count = エージェント（{ $count }）
ai-assistant-ai-spawn-agents-default = { $count }個のエージェントを生成してこのタスクに対応します。
ai-assistant-ai-refresh-aws-credentials = AWS認証情報を更新
ai-assistant-ai-configure = 設定

## -- Agent SDK 文字列 ---------------------------------------------------------

ai-assistant-ai-internal-error-retry-sdk = 内部エラーが発生しました。タスクを再実行してください。問題が続く場合はサポートにお問い合わせください。
ai-assistant-ai-bootstrap-failed-sdk = ターミナルセッションの開始に失敗しました。タスクを再実行してください。
ai-assistant-ai-share-session-internal-error-sdk = 内部エラーによりエージェントセッションの共有に失敗しました。タスクを再実行してください。
ai-assistant-ai-share-session-failed = エージェントセッションの共有に失敗しました：{ $reason }
ai-assistant-ai-share-session-disabled = お使いのアカウントではセッション共有が有効になっていません。管理者がチームのセッション共有を無効にしている可能性があります。チーム設定でセッション共有が有効になっていることを確認するか、--shareフラグなしで実行してみてください。
ai-assistant-ai-share-session-timeout = エージェントセッションの共有に失敗しました：セッション共有サーバーの応答を待機中にタイムアウトしました。ネットワーク接続を確認して再試行してください。
ai-assistant-ai-share-session-interrupted-sdk = セッション共有が完了する前に中断されました。タスクを再実行してください。
ai-assistant-ai-authentication-failed-sdk = 認証に失敗しました

## -- エージェントドライバーエラー文字列 -----------------------------------------

ai-assistant-ai-warp-drive-sync-failed = Warp Driveの同期に失敗しました。ネットワーク接続を確認して再試行してください。
ai-assistant-ai-authentication-required = 認証が必要です。'{ $bin } login'でログインするか、'--api-key'でAPIキーを提供するか、WARP_API_KEY環境変数を設定してください。

## -- その他のエージェントドライバーエラー文字列 -------------------------------------

ai-assistant-ai-cloud-provider-setup-error = クラウドアクセスの設定エラー：{ $error }
ai-assistant-ai-mcp-server-not-found = MCPサーバー{ $uuid }が見つかりません。Warp Driveにサーバーが存在することとUUIDが正しいことを確認してください。
ai-assistant-ai-mcp-startup-failed = 1つ以上のMCPサーバーの起動に失敗しました。MCPサーバー設定が有効であり、サーバープロセスが実行可能であることを確認してください。
ai-assistant-ai-mcp-json-parse-error = MCPサーバーJSON設定の解析に失敗しました：{ $msg }
ai-assistant-ai-mcp-missing-variables = MCPサーバー設定に必要な変数が不足しています。すべての必須環境変数またはテンプレート値を提供してください。
ai-assistant-ai-profile-not-found = エージェントプロファイル「{ $name }」が見つかりません。プロファイルIDを確認し、チームのWarp Driveに存在することを確認してください。
ai-assistant-ai-workflow-not-found = ID { $id }の保存済みプロンプトが見つかりません。Warp Driveにプロンプトが存在することを確認してください。
ai-assistant-ai-environment-not-found = 環境'{ $id }'が見つかりません。環境IDを確認し、チーム設定に存在することを確認してください。
ai-assistant-ai-environment-setup-failed = 環境設定に失敗しました：{ $msg }。リポジトリURLとセットアップコマンドを確認してください。
ai-assistant-ai-invalid-working-directory = 作業ディレクトリ'{ $path }'が存在しないか、ディレクトリではありません。環境設定のパスを確認してください。
ai-assistant-ai-agent-blocked-waiting = エージェントがアクションのユーザー確認待ちでスタックしました：{ $blocked_action }
ai-assistant-ai-team-metadata-refresh-timeout = チームメタデータの更新がタイムアウトしました。ネットワーク接続を確認して再試行してください。
ai-assistant-ai-skill-resolution-failed = スキルの解決に失敗しました：{ $msg }
ai-assistant-ai-config-build-failed = エージェント設定のビルドに失敗しました：{ $error }
ai-assistant-ai-prompt-resolution-failed = 実行のプロンプト解決に失敗しました：{ $error }
ai-assistant-ai-secrets-fetch-failed = タスクシークレットの取得に失敗しました：{ $error }
ai-assistant-ai-aws-bedrock-credentials-failed = AWS Bedrock認証情報の初期化に失敗しました：{ $msg }
ai-assistant-ai-conversation-load-failed = 会話の読み込みに失敗しました：{ $msg }
ai-assistant-ai-conversation-harness-mismatch = 会話{ $conversation_id }は{ $expected }ハーネスで生成されましたが、--harness { $got }が要求されました。--harness { $expected }で再実行するか（または--harnessを省略して）、この会話を続行してください。
ai-assistant-ai-task-harness-mismatch = タスク{ $task_id }は{ $expected }ハーネスで作成されましたが、--harness { $got }が要求されました。--harness { $expected }で再実行するか（または--harnessを省略して）、このタスクを続行してください。
ai-assistant-ai-conversation-resume-state-missing = 会話{ $conversation_id }には{ $harness }ハーネスの保存されたトランスクリプトがありません。以前の実行が状態を保存する前にクラッシュした可能性があります。
ai-assistant-ai-harness-command-failed = ハーネスコマンドが終了コード{ $exit_code }で終了しました
ai-assistant-ai-harness-validation-failed = ハーネス'{ $harness }'の検証に失敗しました：{ $reason }
ai-assistant-ai-harness-config-setup-failed = ハーネス'{ $harness }'の設定セットアップに失敗しました：{ $error }
ai-assistant-ai-unsynced = 未同期

## -- CLI 失敗レスポンスフッター -----------------------------------------

ai-assistant-ai-fallback-response-footer = このレスポンスは使用量にカウントされません。「引き継ぐ」で続行してください。

## -- 音声入力トースト文字列 -----------------------------------------------

ai-assistant-ai-failed-start-voice-cli-toast = 音声入力の開始に失敗しました（マイクアクセスを有効にする必要がある場合があります）
ai-assistant-ai-voice-enabled-cli-toast = 音声入力が有効になりました。`{ $key }`キーを押し続けて音声入力をアクティブにすることもできます（設定 > AI > 音声で設定）

## -- AI ドキュメントビュー文字列 -------------------------------------------------

ai-assistant-ai-show-version-history-tooltip = バージョン履歴を表示
ai-assistant-ai-update-agent = エージェントを更新
ai-assistant-ai-update-agent-tooltip = このプランにはエージェントが認識していない変更があります。{ $save_action } でエージェントの現在のタスクを停止し、更新されたプランを送信
ai-assistant-ai-restore = 復元
ai-assistant-ai-save-and-sync-tooltip = このプランをWarp Driveに保存して自動同期
ai-assistant-ai-plan-synced-message = このプランはWarp Driveに同期されており、編集内容は自動保存されます。
ai-assistant-ai-copy-link = リンクをコピー
ai-assistant-ai-show-in-warp-drive = Warp Driveで表示
ai-assistant-ai-save-as-markdown = Markdownファイルとして保存
ai-assistant-ai-attach-to-active-session = アクティブセッションに添付
ai-assistant-ai-copy-plan-id = プランIDをコピー
ai-assistant-ai-link-copied-toast = リンクをクリップボードにコピーしました
ai-assistant-ai-plan-id-copied-toast = プランIDをクリップボードにコピーしました
ai-assistant-ai-planning-document = プランニングドキュメント

## -- AI ドキュメントビューオーバーフローメニュー項目 -----------------------------------

ai-assistant-ai-doc-copy-link = リンクをコピー
ai-assistant-ai-doc-show-in-warp-drive = Warp Driveで表示
ai-assistant-ai-doc-save-as-markdown = Markdownファイルとして保存
ai-assistant-ai-doc-attach-to-active-session = アクティブセッションに添付
ai-assistant-ai-doc-copy-plan-id = プランIDをコピー

## -- クラウドセットアップガイド文字列 -------------------------------------------------

ai-assistant-ai-visit-oz = Ozにアクセス
ai-assistant-ai-cloud-setup-title = Ozクラウドエージェントの始め方
ai-assistant-ai-cloud-setup-description = インテグレーション（Linear、Slack）、イベント（GitHub、内蔵スケジュール）、またはOz SDK/CLIを使用して、Warp内からOzクラウドエージェントを直接起動します。
ai-assistant-ai-cloud-setup-check-out = 詳しくは
ai-assistant-ai-cloud-setup-docs = Ozドキュメント
ai-assistant-ai-cloud-setup-quick-start = クイックスタート：oz.warp.devにアクセスしてUIベースのセットアップを利用。
ai-assistant-ai-cloud-setup-manual-setup = 手動セットアップ：Oz CLIでSlackまたはLinearインテグレーションを作成
ai-assistant-ai-cloud-setup-create-environment = 環境を作成
ai-assistant-ai-cloud-setup-create-environment-cli = 環境を作成（CLI）
ai-assistant-ai-cloud-setup-create-slack-integration = Slackインテグレーションを作成
ai-assistant-ai-cloud-setup-create-linear-integration = Linearインテグレーションを作成
ai-assistant-ai-cloud-setup-repo-argument = リポジトリのGitHubリンクまたはローカルファイルパス
ai-assistant-ai-cloud-setup-name-argument = 環境名
ai-assistant-ai-cloud-setup-docker-image-argument = 環境で使用するDockerイメージ
ai-assistant-ai-cloud-setup-create-environment-header = 環境を作成
ai-assistant-ai-cloud-setup-first-environment = まず、インテグレーションを作成するための環境を設定します。
ai-assistant-ai-cloud-setup-visit-docs-prefix = Warpの環境セットアップコマンドを使用して、エージェントにセットアップを支援させます。
ai-assistant-ai-cloud-setup-visit-docs-link = ドキュメントにアクセス
ai-assistant-ai-cloud-setup-integrate-prefix = SlackまたはLinearを統合して、@WarpでWarpのエージェントにタスクを割り当てます。

## -- 通知ビュー文字列 -------------------------------------------------

ai-assistant-ai-mark-all-as-read = すべて既読にする
ai-assistant-ai-close-tooltip = 閉じる
ai-assistant-ai-notifications-title = 通知
ai-assistant-ai-no-notifications = 通知はありません

## -- 詳細アクションボタン文字列 --------------------------------------------

ai-assistant-ai-open-conversation = 会話を開く
ai-assistant-ai-cancel-task = タスクをキャンセル
ai-assistant-ai-fork-conversation = 会話をフォーク
ai-assistant-ai-view-details = 詳細を表示
ai-assistant-ai-copy-link-to-run = 実行リンクをコピー

## -- コード差分ビュー文字列 ----------------------------------------------------

ai-assistant-ai-review-changes-tooltip = 変更を確認
ai-assistant-ai-expand-tooltip = 展開
ai-assistant-ai-collapse-tooltip = 折りたたみ
ai-assistant-ai-edit-code-diff = コード差分を編集

## -- 要求コマンド文字列 -------------------------------------------------

ai-assistant-ai-reject = 拒否
ai-assistant-ai-run = 実行
ai-assistant-ai-edit-command = 編集
ai-assistant-ai-done = 完了
ai-assistant-ai-generating-command = コマンドを生成中...
ai-assistant-ai-agent-monitoring-command = エージェントがコマンドを監視中...
ai-assistant-ai-agent-needs-input = エージェントは続行にあたってあなたの入力を必要としています
ai-assistant-ai-user-in-control = ユーザーが制御中。
ai-assistant-ai-user-stopped-agent = エージェントを一時停止。ユーザーが制御中。
ai-assistant-ai-user-take-control = ユーザー制御中
ai-assistant-ai-agent-errored = エージェントに問題が発生しました。制御を引き継いでください。
ai-assistant-ai-viewing-command-detail = コマンド詳細を表示中
ai-assistant-ai-viewing-mcp-tool-detail = MCPツール呼び出し詳細を表示中
ai-assistant-ai-ok-run-command = このコマンドを実行して出力を読み取ってもよろしいですか？
ai-assistant-ai-ok-call-mcp-tool = このMCPツールを呼び出してもよろしいですか？
ai-assistant-ai-edit-requested-command = 要求されたコマンドを編集
ai-assistant-ai-auto-approve = 自動承認
ai-assistant-ai-copied-from = コピー元

## -- 提案ユニットテスト文字列 -----------------------------------------------

ai-assistant-ai-generate-tests = テストを生成
ai-assistant-ai-dismiss-tests = 閉じる
ai-assistant-ai-dont-show-suggested-banners = 提案コードバナーを今後表示しない
ai-assistant-ai-manage-suggested-settings = 設定 > AI

## -- ユーザー質問文字列 -------------------------------------------------

ai-assistant-ai-skip-all = すべてスキップ
ai-assistant-ai-next = 次へ
ai-assistant-ai-other = その他...
ai-assistant-ai-type-answer-placeholder = 回答を入力してEnterを押してください
ai-assistant-ai-agent-questions = エージェントの質問
ai-assistant-ai-questions-unavailable = 質問は利用できません
ai-assistant-ai-questions-skipped = 質問がスキップされました
ai-assistant-ai-questions-skipped-autoapprove = 自動承認により質問がスキップされました
ai-assistant-ai-allow-agent-questions = エージェントによる質問を許可：

## -- AWS Bedrock認証情報エラー文字列 --------------------------------------

ai-assistant-ai-refresh-aws-credentials-btn = AWS認証情報を更新
ai-assistant-ai-configure-btn = 設定
ai-assistant-ai-always-run-automatically = 常に自動実行
ai-assistant-ai-running-login-command = `{ $login_command }`を実行中...

## -- 実行プロファイルエディター文字列 -------------------------------------------

ai-assistant-ai-delete-profile = プロファイルを削除

## -- ルールビュー文字列 ----------------------------------------------------------

ai-assistant-ai-initialize-project = プロジェクトを初期化
ai-assistant-ai-global = グローバル
ai-assistant-ai-project-based = プロジェクトベース
ai-assistant-ai-open-file = ファイルを開く
ai-assistant-ai-search-rules = ルールを検索
ai-assistant-ai-zero-state = ルールを追加するとここに表示されます。
ai-assistant-ai-zero-state-project = プロジェクトのWARP.mdルールファイルを生成するとここに表示されます。
ai-assistant-ai-rules-disabled-prefix = ルールは無効になっており、セッションのコンテキストとして使用されません。
ai-assistant-ai-rules-disabled-link = 設定 > AI
ai-assistant-ai-header-rules = ルール
ai-assistant-ai-description-rules = ルールは、一貫性の維持、ベストプラクティスの実行、コードベースやより広範なタスクへの適応を支援する構造化ガイドラインを提供することでエージェントを強化します。

## -- ルールエディター文字列 --------------------------------------------------------

ai-assistant-ai-delete-rule = ルールを削除
ai-assistant-ai-add-rule = ルールを追加
ai-assistant-ai-edit-rule = ルールを編集
ai-assistant-ai-rules-name = 名前
ai-assistant-ai-rules-rule = ルール

## -- ブロックビュー / エージェントステータスメッセージ ---------------------------------

ai-assistant-ai-agent-waiting = エージェントが指示を待っています...
ai-assistant-ai-internal-error = 内部Warpエラー。
ai-assistant-ai-adjusting = タスクを調整中...
ai-assistant-ai-writing-command = コマンド入力を書き込み中...
ai-assistant-ai-waiting-command = コマンドの終了を待機中...
ai-assistant-ai-fetching-pr = PRコメントを取得中...
ai-assistant-ai-grant-files = 以下のファイルへのアクセスを許可しますか？
ai-assistant-ai-can-write = 実行中のコマンドに以下を書き込んでもよいですか？
ai-assistant-ai-grant-repo = 以下のリポジトリへのアクセスを許可しますか？
ai-assistant-ai-ok-search = このディレクトリ内のファイルを検索してもよいですか？
ai-assistant-ai-grant-upload = このアーティファクトのアップロードを許可しますか？
ai-assistant-ai-next-check = · 次回チェックまで { $formatted }
ai-assistant-ai-stop-agent = エージェントタスクを停止
ai-assistant-ai-auto-approve-on = すべてのエージェント操作の自動承認をオフにする
ai-assistant-ai-auto-approve-off = このタスクのすべてのエージェント操作を自動承認
ai-assistant-ai-check-now =  · 今すぐチェック
ai-assistant-ai-1-second = 1秒
ai-assistant-ai-seconds = { $total_seconds }秒
ai-assistant-ai-overloaded = Warpは現在過負荷状態です。後でもう一度お試しください。
ai-assistant-ai-credit-limit = { $error_apology_text }

クレジット制限に達しました。クレジット制限は { $formatted_next_refresh_time } にリセットされます。
ai-assistant-ai-will-resume = { $error_message }

ネットワーク接続が復帰したら会話を再開します...
ai-assistant-ai-attempting-resume = { $error_message }

会話の再開を試みています...
ai-assistant-ai-api-key-invalid = 提供されたAPIキーが無効です
ai-assistant-ai-api-key-auth-failed = { $provider }の{ $model_name }を使用した認証に失敗しました。APIキーが正しいことを確認してください。
ai-assistant-ai-debug-info = デバッグ情報：{ $debug_info }

## -- インラインエージェントビューヘッダー文字列 ---------------------------------------

ai-assistant-ai-prompt-agent = エージェントに操作を促す
ai-assistant-ai-agent-waiting-instructions = エージェントが指示を待っています
ai-assistant-ai-agent-waiting-command = エージェントがコマンドの終了を待っています
ai-assistant-ai-agent-blocked = エージェントは続行するために許可が必要です
ai-assistant-ai-agent-in-control = エージェントが制御中
ai-assistant-ai-again-to-stop-exit = もう一度押すと停止して終了
ai-assistant-ai-again-to-exit = もう一度押すと終了
ai-assistant-ai-again-to-new = もう一度押すと新しい会話を開始

## -- エージェントビューブロック文字列 -----------------------------------------------

ai-assistant-ai-deleted-conversation = 削除された会話
ai-assistant-ai-deleted = 削除済み
ai-assistant-ai-untitled-conversation = 無題の会話
ai-assistant-ai-open-different-pane = 別のペインで開く
ai-assistant-ai-restored = 復元済み
ai-assistant-ai-continued = 継続済み
ai-assistant-ai-couldnt-navigate = 会話に移動できませんでした。

## -- オーケストレーションビュー文字列 -----------------------------------------------

ai-assistant-ai-generating-title = タイトルを生成中...
ai-assistant-ai-orchestrator = オーケストレーター
ai-assistant-ai-unknown-agent = 不明なエージェント
ai-assistant-ai-orchestrator-agent = エージェント
ai-assistant-ai-sending-message-to = メッセージ送信先
ai-assistant-ai-started-agent = エージェントを開始しました
ai-assistant-ai-cancelled = キャンセルされました。
ai-assistant-ai-locally = ローカルで。
ai-assistant-ai-remotely = リモートで。
ai-assistant-ai-failed-start-agent = エージェントの起動に失敗しました
ai-assistant-ai-failed-start-remote-agent = リモートエージェントの起動に失敗しました
ai-assistant-ai-start-agent = エージェントを開始
ai-assistant-ai-start-remote-agent = リモートエージェントを開始
ai-assistant-ai-starting-agent = エージェントを起動中
ai-assistant-ai-starting-remote-agent = リモートエージェントを起動中

## -- エージェントゼロ状態文字列 ---------------------------------------------------

ai-assistant-ai-new-cloud-conversation = 新しいOzクラウドエージェント会話
ai-assistant-ai-new-local-conversation = 新しいOzエージェント会話
ai-assistant-ai-send-prompt = 以下にプロンプトを送信して新しい会話を開始
ai-assistant-ai-in-location = `{ $location_label }` で
ai-assistant-ai-run-cloud-task = 分離されたクラウド環境でエージェントタスクを実行。
ai-assistant-ai-use-cloud-agents = クラウドエージェントを使用して、並列エージェントを実行し、自律的に実行するエージェントを構築し、どこからでもエージェントを確認。
ai-assistant-ai-start-new-agent = 新しいエージェント会話を開始
ai-assistant-ai-start-new-cloud = 新しいクラウドエージェント会話を開始
ai-assistant-ai-switch-model = モデルを切り替え
ai-assistant-ai-go-back-terminal = ターミナルに戻る
ai-assistant-ai-to-index = このコードベースをインデックスし、最適なパフォーマンスのためにAGENTS.mdを生成
ai-assistant-ai-1-update = 1つの更新
ai-assistant-ai-updates = { $count }つの更新
ai-assistant-ai-free-cloud-credits = { $credits }無料クラウドエージェントクレジット

ai-assistant-ai-id-of-env-integrate = インテグレーション先の環境のID
ai-assistant-ai-cloud-setup-to-learn-more = 詳しくはこちら。

## -- Toast メッセージ ---------------------------------------------------------------

ai-assistant-ai-failed-prepare-file-download = ファイルダウンロードの準備に失敗しました。
ai-assistant-ai-downloaded-file = { $filename } をダウンロードしました。
ai-assistant-ai-failed-download-file = { $filename } のダウンロードに失敗しました。
ai-assistant-ai-installing-warp-plugin = Warpプラグインをインストール中...
ai-assistant-ai-failed-install-warp-plugin = Warpプラグインのインストールに失敗しました
ai-assistant-ai-updating-warp-plugin = Warpプラグインを更新中...
ai-assistant-ai-failed-update-warp-plugin = Warpプラグインの更新に失敗しました
ai-assistant-ai-voice-microphone-access = 音声入力の開始に失敗しました（マイクアクセスを有効にする必要がある場合があります）
## -- 事実ビュー ------------------------------------------------------------------

## -- ユーザー質問ビュー --------------------------------------------------------

ai-assistant-ai-select-all-that-apply = （該当するものをすべて選択）
ai-assistant-ai-questions-skipped-auto-approve = 自動承認により質問がスキップされました
ai-assistant-ai-allow-agent-ask-questions = エージェントによる質問を許可：
ai-assistant-ai-prev-nav = 前へ
ai-assistant-ai-next-nav = 次へ
ai-assistant-ai-answered-of-questions = { $total }件中{ $answered_count }件の質問に回答済み
ai-assistant-ai-skipped-answer = スキップ
ai-assistant-ai-question-prefix = Q: { $question }
ai-assistant-ai-answer-prefix = A: { $answer }

## -- 実行プロファイルエディター -------------------------------------------------

ai-assistant-ai-profile-editor = プロファイルエディター
ai-assistant-ai-never-ask = 確認しない
ai-assistant-ai-ask-unless-auto-approve = 自動承認時以外は確認
ai-assistant-ai-command-allowlist-placeholder = 例: ls .*
ai-assistant-ai-command-denylist-placeholder = 例: rm .*
ai-assistant-ai-directory-allowlist-placeholder = 例: ~/code-repos/repo
ai-assistant-ai-profile-name-placeholder = 例: "YOLO code"
ai-assistant-ai-default-profile-name = デフォルト
ai-assistant-ai-upgrade-footer = フリープランではフロンティアモデルは利用できません。アップグレード
ai-assistant-ai-upgrade-link = アップグレード

## -- 実行プロファイルエディター UI ヘルパー -----------------------------------------

ai-assistant-ai-default-profile-name-cannot-change = デフォルトプロファイル名は変更できません。
ai-assistant-ai-models-section = モデル
ai-assistant-ai-base-model-desc = このモデルはエージェントの主要エンジンとして機能します。ほとんどの対話を駆動し、計画やコード生成などのタスクに必要に応じて他のモデルを呼び出します。Warpは、モデルの可用性や会話要約などの補助タスクに基づいて、自動的に代替モデルに切り替える場合があります。
ai-assistant-ai-context-window = コンテキストウィンドウ
ai-assistant-ai-context-window-desc = ベースモデルのワーキングメモリ — 会話、コード、ドキュメントのトークン数を一度にどれだけ考慮できるか。大きなウィンドウは、より大規模なコードベースでより長い会話と一貫性のある応答を可能にしますが、レイテンシとコンピュート使用量が高くなります。
ai-assistant-ai-full-terminal-use-model = フルターミナル使用モデル
ai-assistant-ai-full-terminal-use-model-desc = データベースシェル、デバッガー、REPL、開発サーバーなどのインタラクティブなターミナルアプリケーション内でエージェントが操作する際に使用されるモデル — ライブ出力を読み取り、PTYにコマンドを書き込みます。
ai-assistant-ai-computer-use-model = コンピューター使用モデル
ai-assistant-ai-computer-use-model-desc = エージェントがマウスの移動、クリック、キーボード入力を通じてグラフィカルアプリケーションと対話するためにコンピューターを制御する際に使用されるモデル。
ai-assistant-ai-permissions-section = 権限
ai-assistant-ai-apply-code-diffs = コード差分を適用
ai-assistant-ai-read-files = ファイルを読み取り
ai-assistant-ai-execute-commands = コマンドを実行
ai-assistant-ai-interact-with-running-commands = 実行中のコマンドと対話
ai-assistant-ai-computer-use = コンピューター使用
ai-assistant-ai-ask-questions = 質問する
ai-assistant-ai-call-mcp-servers = MCPサーバーを呼び出し
ai-assistant-ai-workspace-override-tooltip = このオプションは組織の設定によって強制されており、カスタマイズできません。
ai-assistant-ai-directory-allowlist = ディレクトリ許可リスト
ai-assistant-ai-directory-allowlist-desc = エージェントに特定のディレクトリへのファイルアクセスを許可します。
ai-assistant-ai-command-allowlist = コマンド許可リスト
ai-assistant-ai-command-allowlist-desc = Ozが自動的に実行できるコマンドに一致する正規表現。
ai-assistant-ai-command-denylist = コマンド拒否リスト
ai-assistant-ai-command-denylist-desc = Ozが実行前に常に許可を求める必要があるコマンドに一致する正規表現。
ai-assistant-ai-mcp-allowlist = MCP許可リスト
ai-assistant-ai-mcp-allowlist-desc = Ozによる呼び出しが許可されるMCPサーバー。
ai-assistant-ai-mcp-denylist = MCP拒否リスト
ai-assistant-ai-mcp-denylist-desc = Ozによる呼び出しが許可されないMCPサーバー。
ai-assistant-ai-plan-auto-sync = プラン自動同期
ai-assistant-ai-plan-auto-sync-desc = このエージェントが作成するプランはWarp Driveに自動的に追加および同期されます。
ai-assistant-ai-call-web-tools = Webツールを呼び出し
ai-assistant-ai-call-web-tools-desc = エージェントはタスクの完了に役立つ場合、Web検索を使用できます。

## -- 権限の説明 ---------------------------------------------------------------

ai-assistant-ai-permission-agent-decides-desc = エージェントは最も安全な道を選択します：自信がある場合は自ら行動し、不確かな場合は承認を求めます。
ai-assistant-ai-permission-always-allow-desc = エージェントに完全な自律性を与えます — 手動承認は一切不要です。
ai-assistant-ai-permission-always-ask-desc = エージェントがアクションを実行する前に明示的な承認を要求します。
ai-assistant-ai-permission-ask-on-first-write-desc = エージェントは実行中のコマンドと最初にやり取りする際に許可を求めます。その後、そのコマンドの残りの部分は自動的に続行します。
ai-assistant-ai-permission-write-always-ask-desc = エージェントは実行中のコマンドとやり取りする際、常に許可を求めます。
ai-assistant-ai-permission-computer-use-never-desc = コンピューター使用ツールは無効化され、エージェントは使用できません。
ai-assistant-ai-permission-computer-use-always-ask-desc = エージェントがコンピューター使用ツールを使用する前に明示的な承認を要求します。
ai-assistant-ai-permission-computer-use-always-allow-desc = エージェントに承認なしでコンピューター使用ツールを使用する完全な自律性を与えます。
ai-assistant-ai-permission-unknown-desc = 不明な設定。
ai-assistant-ai-permission-ask-except-auto-approve-desc = エージェントは質問をして回答を待つために一時停止する場合がありますが、自動承認がオンの場合は自動的に続行します。
ai-assistant-ai-permission-never-ask-desc = エージェントは質問せず、最善の判断で続行します。
ai-assistant-ai-permission-always-ask-question-desc = エージェントは質問をする場合があり、自動承認がオンの場合でも回答を待つために一時停止します。

## -- 追加のハードコードUIテキストi18n文字列 --------------------------------

ai-assistant-ai-view-in-oz = Ozで表示
ai-assistant-ai-view-in-oz-tooltip = Ozウェブアプリでこの実行を表示

## -- Additional AI assistant strings --
ai-assistant-ai-feature-name = Warp AI
ai-assistant-ai-ask-text = Warp AIに質問
ai-assistant-ai-zero-state-script-prompt = AWS EC2インスタンスに接続するスクリプトを作成。
ai-assistant-ai-zero-state-git-prompt = gitで最近のコミットを取り消すにはどうすればよいですか？
ai-assistant-ai-how-do-i-fix = これをどう修正しますか？
ai-assistant-ai-show-examples = 例を表示。
ai-assistant-ai-enter-custom-docker-image = カスタムDockerイメージ名を入力：
ai-assistant-ai-dont-show-suggested-code-banners = 今後、提案コードバナーを表示しない

## -- Double-prefix aliases for new AI assistant strings --
## -- Double-prefix aliases for AI assistant hardcoded UI text strings --
## -- Agent view / blocklist UI strings --

ai-assistant-ai-open-plan = プランを開く
ai-assistant-ai-open-pull-request = プルリクエストを開く
ai-assistant-ai-enable-figma-mcp = Figma MCPを有効化
ai-assistant-ai-starting-shell = シェルを起動中...
ai-assistant-ai-open-in-different-pane = 別のペインで開く
ai-assistant-ai-open-in-new-pane = 新しいペインで開く
ai-assistant-ai-open-in-new-tab = 新しいタブで開く
ai-assistant-ai-enable-desktop-notifications = エージェントが注意を必要とする際に通知を受け取るには、デスクトップ通知を有効化してください。
ai-assistant-ai-open-palette = パレットを開く
ai-assistant-ai-show-diff-view = 差分ビューを表示

## -- Double-prefix aliases for agent view / blocklist UI strings --
