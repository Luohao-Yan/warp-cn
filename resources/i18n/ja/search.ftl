# =============================================================================
# search.ftl — 検索、コマンドパレット、スラッシュコマンドの文字列
# =============================================================================
# Message IDs: search-{id}
# Used in app/src/search/*.rs
# =============================================================================

## -- データソース表示名 -------------------------------------------------------

search-source-history = 履歴
search-source-workflows = ワークフロー
search-source-prompts = プロンプト
search-source-notebooks = ノートブック
search-source-plans = プラン
search-source-ai-suggestions = AI コマンド提案
search-source-actions = アクション
search-source-sessions = セッション
search-source-tabs = タブ
search-source-conversations = 会話
search-source-launch-configs = 起動設定
search-source-warp-drive = Warp Drive
search-source-env-vars = 環境変数
search-source-prompt-history = プロンプト履歴
search-source-files = ファイル
search-source-commands = コマンド
search-source-blocks = ブロック
search-source-code = コード
search-source-rules = ルール
search-source-repos = リポジトリ
search-source-diff-sets = 差分セット
search-source-slash-commands = スラッシュコマンド
search-source-historical-convs = 過去の会話
search-source-skills = スキル
search-source-base-models = ベースモデル
search-source-terminal-models = フルターミナル使用モデル
search-source-cwd-convs = 現在のディレクトリの会話
search-source-diffs = 差分
search-source-docs = ドキュメント
search-source-tasks = 過去のタスク
search-source-servers = サーバーとインテグレーション
search-source-terminal = ターミナル
search-source-web = Web
search-source-recent-diff = 最新の差分
search-source-recent-block = 最新のブロック

## -- データソースプレースホルダー -----------------------------------------------

search-placeholder-history = 履歴を検索
search-placeholder-workflows = ワークフローを検索
search-placeholder-prompts = プロンプトを検索
search-placeholder-notebooks = ノートブックを検索
search-placeholder-plans = プランを検索
search-placeholder-example = 例: ファイル内の文字列を置換
search-placeholder-actions = アクションを検索
search-placeholder-sessions = セッションを検索
search-placeholder-tabs = タブを検索
search-placeholder-conversations = 会話を検索
search-placeholder-historical-convs = 過去の会話を検索
search-placeholder-launch-configs = 起動設定を検索
search-placeholder-warp-drive = Drive 内のオブジェクトを検索
search-placeholder-env-vars = 環境変数を検索
search-placeholder-prompt-history = プロンプト履歴を検索
search-placeholder-files = ファイルを検索
search-placeholder-commands = コマンドを検索
search-placeholder-blocks = ブロックを検索
search-placeholder-code-symbols = コードシンボルを検索
search-placeholder-rules = AI ルールを検索
search-placeholder-repos = コードリポジトリを検索
search-placeholder-diff-sets = 差分セットを検索
search-placeholder-slash-commands = 静的スラッシュコマンドを検索
search-placeholder-skills = スキルを検索
search-placeholder-base-models = ベースモデルを検索
search-placeholder-terminal-models = フルターミナル使用モデルを検索
search-placeholder-cwd-convs = 現在のディレクトリの会話を検索

## -- 共通検索 UI 文字列 --------------------------------------------------------

search-no-results = 結果が見つかりません。
search-loading = ロード中...
search-indexing = コードシンボルをインデックス中...
search-error-results = 結果の検索中にエラーが発生しました
search-upgrade = アップグレード
search-out-of-credits = AI クレジットが不足しています。チーム管理者に連絡してアップグレードしてください。
search-not-visible = 他のユーザーには表示されません

## -- コマンド検索 --------------------------------------------------------------

search-command-placeholder = 履歴、ワークフローなどを検索
search-secret-placeholder = シークレットを検索
search-reference-placeholder = リファレンスを検索
search-ai-suggest = Warp AI にコマンド提案を依頼
search-ai-translate = Warp AI を使用してシェルコマンドに翻訳
search-ai-no-results = 結果が見つかりません。より具体的なクエリで再試行してください。
search-ai-error = 問題が発生しました。再試行してください。
search-ai-out-of-credits = AI クレジットが不足しているようです。後でもう一度お試しください。
search-ai-error-fallback = 問題が発生しました。再試行してください。
search-credits-prefix = クレジットが不足しているようです。
search-credits-suffix =  でクレジットを追加。

## -- 新規セッションオプション -------------------------------------------------

search-new-tab = 新規タブを作成
search-new-window = 新規ウィンドウを作成
search-split-down = ペインを下に分割
search-split-right = ペインを右に分割
search-split-up = ペインを上に分割
search-split-left = ペインを左に分割
search-new-tab-shell = 新規タブを作成: { $shell }
search-new-window-shell = 新規ウィンドウを作成: { $shell }
search-split-pane-shell = ペインを{ $direction }に分割: { $shell }

## -- ナビゲーション検索項目 -----------------------------------------------------

search-status-running = 実行中...
search-status-completed-hour = 1時間以上前に完了
search-status-completed-minute = { $mins ->
    [one] { $mins } 分前に完了
   *[other] { $mins } 分前に完了
}
search-status-no-timestamp = タイムスタンプが見つかりません

## -- ゼロステート --------------------------------------------------------------

search-section-recent = 最近
search-section-suggested = 提案

## -- 時間の説明 ----------------------------------------------------------------

search-just-now = たった今
search-minutes-ago = { $count ->
    [one] { $count } 分前
   *[other] { $count } 分前
}
search-hours-ago = { $count ->
    [one] { $count } 時間前
   *[other] { $count } 時間前
}
search-days-ago = { $count ->
    [one] { $count } 日前
   *[other] { $count } 日前
}

## -- 差分セットの説明 -----------------------------------------------------------

search-diff-uncommitted = 未コミットの変更
search-diff-vs-main = main ブランチとの変更
search-diff-vs-branch = { $branch } との変更
search-diff-uncommitted-desc = 作業ディレクトリ内のすべての未コミット変更
search-diff-vs-main-desc = main ブランチとのすべての変更
search-diff-vs-branch-desc = { $branch } とのすべての変更

## -- スラッシュコマンドの説明 -------------------------------------------------

search-slash-agent = 新しい会話を開始
search-slash-cloud-agent = 新しいクラウドエージェント会話を開始
search-slash-mcp = MCP 設定ページから新しい MCP サーバーを追加
search-slash-pr-comments = GitHub PR レビューコメントを取得
search-slash-env = ガイド付きセットアップで Oz 環境（Docker イメージ + リポジトリ）を作成
search-slash-docker = 新しい Docker サンドボックスターミナルセッションを作成
search-slash-create-project = Oz が新しいコーディングプロジェクトの作成をガイド
search-slash-skill = スキルのマークダウンファイルを Warp の内蔵エディタで開く
search-slash-invoke-skill = スキルを呼び出し
search-slash-add-prompt = 新しいエージェントプロンプトを追加
search-slash-add-rule = エージェントの新しいグローバルルールを追加
search-slash-edit = Warp コードエディタでファイルを開く
search-slash-rename-tab = 現在のタブの名前を変更
search-slash-color-tab = 現在のタブの色を設定
search-slash-fork = 現在の会話を新しいペインまたは新しいタブにフォーク
search-slash-handoff = この会話をクラウドエージェントに引き継ぎ
search-slash-review = コードレビューを開く
search-slash-index = このコードベースをインデックス
search-slash-agents-md = このコードベースをインデックスして AGENTS.md ファイルを生成
search-slash-rules = プロジェクトルールファイル（AGENTS.md）を開く
search-slash-mcp-servers = MCP サーバーを開く
search-slash-settings = 設定ファイル（TOML）を開く
search-slash-changelog = 最新のチェンジログを開く
search-slash-feedback = フィードバックを送信
search-slash-switch-repo = 別のインデックス済みリポジトリに切り替え
search-slash-view-rules = すべてのグローバルおよびプロジェクトルールを表示
search-slash-new-conv = 新しい会話を開始（/agent のエイリアス）
search-slash-base-model = ベースエージェントモデルを切り替え
search-slash-host = クラウドエージェント実行ホストを切り替え
search-slash-harness = クラウドエージェントハーネスを切り替え
search-slash-environment = クラウドエージェント環境を切り替え
search-slash-profile = アクティブな実行プロファイルを切り替え
search-slash-plan = エージェントにリサーチとタスクの計画作成を指示
search-slash-multi-agent = タスクをサブタスクに分割し、複数エージェントで並列実行
search-slash-compact = 会話履歴を要約してコンテキストを解放
search-slash-compact-send = 会話をコンパクトしてからフォローアッププロンプトを送信
search-slash-queue = エージェントの応答完了後に送信するプロンプトをキューに追加
search-slash-fork-compact = 現在の会話をフォークし、フォーク先でコンパクト
search-slash-fork-from = 特定のクエリから会話をフォーク
search-slash-continue-local = このクラウド会話をローカルで継続
search-slash-billing = 請求と使用量の設定を開く
search-slash-remote-control = このセッションのリモートコントロールを開始
search-slash-credits = クレジット使用詳細の切り替え
search-slash-history = 会話履歴を開く
search-slash-saved-prompts = 保存済みプロンプトを検索
search-slash-rewind = 会話内の以前のポイントに巻き戻し
search-slash-export-clipboard = 現在の会話をマークダウン形式でクリップボードにエクスポート
search-slash-export-file = 現在の会話をマークダウンファイルにエクスポート

## -- ウェルカムパレット -------------------------------------------------------

search-add-repo = リポジトリを追加
search-add-repo-keystroke = リポジトリを追加 { $keystroke }
search-terminal-session = ターミナルセッション
search-terminal-session-keystroke = ターミナルセッション { $keystroke }
search-welcome-placeholder = コード、ビルド、何でも検索...
search-command-search-title = コマンド検索
search-looking-for = 探しているのは...
search-example-queries = クエリ例
search-ask-warp-ai-suggestions = Warp AI にコマンドの提案を尋ねる
search-translate-with-warp-ai = Warp AI を使ってシェルコマンドに翻訳
search-command-search-a11y-desc = 履歴、ワークフローなどを検索。上下矢印キーで検索結果を閲覧。Enter キーで選択した結果をターミナル入力に挿入。Escape キーで閉じる。
search-dir-down = 下
search-dir-right = 右
search-dir-up = 上
search-dir-left = 左

## -- アクセシビリティラベル ---------------------------------------------------

search-untitled = 無題
search-loading-suggestions = { $filter } の提案を読み込み中
search-selected = { $label } を選択しました。
