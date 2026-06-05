# =============================================================================
# code.ftl — コードエディタ、言語サーバー、ファイルアクション
# =============================================================================
# Message IDs: code-{id}
# app/src/code/*.rs で使用
# =============================================================================

## -- タブ/ファイルアクション ---------------------------------------------------------

code-close-all-tabs = すべてのタブを閉じる
code-close-saved = 保存済みを閉じる
code-close-saved-tabs = 保存済みタブを閉じる
code-save-file = ファイルを保存
code-save-file-as = 名前を付けて保存
code-file-saved = ファイルを保存しました
code-failed-to-save-file = ファイルの保存に失敗しました
code-failed-to-load-file = ファイルの読み込みに失敗しました
code-copy-file-path = ファイルパスをコピー

## -- ファイルマネージャーで表示 ---------------------------------------------------

code-reveal-in-finder = Finder で表示
code-reveal-in-explorer = エクスプローラーで表示
code-reveal-in-file-manager = ファイルマネージャーで表示

## -- 言語サーバー ------------------------------------------------------------------

code-install-server = サーバーをインストール
code-install-servers = サーバーをインストール
code-installing-server = サーバーをインストール中…
code-enable-server = サーバーを有効化
code-enable-servers = サーバーを有効化
code-manage-servers = サーバーを管理
code-restart-server = サーバーを再起動
code-start-server = サーバーを起動
code-stop-server = サーバーを停止
code-remove-server = サーバーを削除
code-start-all-servers = すべてのサーバーを起動
code-start-all-stopped-servers = 停止中のすべてのサーバーを起動
code-stop-all-servers = すべてのサーバーを停止
code-restart-all-servers = すべてのサーバーを再起動
code-enable-ai-tab-config-skill = AI タブ設定スキルを有効化
code-open-agent-input-tab-config-skill = AI タブ設定スキルでエージェント入力を開く
code-language-server-unavailable-codebase = このコードベースでは言語サーバーが利用できません
code-language-support-not-enabled = 言語サポートが有効になっていません
code-language-support-unavailable = 言語サポートは利用できません
code-language-support-unavailable-file-type = このファイルタイプでは言語サポートが利用できません

## -- コードアクション -------------------------------------------------------------

code-comment-label = コメント
code-overwrite-label = 上書き
code-update-label = 更新
code-discard-this-version = このバージョンを破棄
code-find-references = 参照を検索
code-add-as-context = コンテキストとして追加
code-attach-as-context = コンテキストとして添付
code-suggested-fixes-last-command = 最後のコマンドに基づく修正案
code-unknown-workspace = 不明なワークスペース

## -- Markdown プレビュー -----------------------------------------------------------

code-view-markdown-preview = Markdown プレビューを表示
code-open-logs = ログを開く
## -- 検索/置換 ----------------------------------------------------------------

code-find-placeholder = 検索
code-regex-toggle-tooltip = 正規表現を使用
code-case-sensitive-tooltip = 大文字小文字を区別
code-select-all = すべて選択
code-replace-all = すべて置換
code-replace-label = 置換

## -- ファイルツリー ------------------------------------------------------------

code-explorer-remote = プロジェクトエクスプローラはローカルワークスペースへのアクセスを必要としますが、リモートセッションではサポートされていません。
code-explorer-disabled = プロジェクトエクスプローラはローカルワークスペースへのアクセスを必要とします。新しいセッションを開くか、アクティブなセッションに移動してください。
code-explorer-wsl = プロジェクトエクスプローラは現在 WSL では動作しません。

code-file-label = ファイル
code-folder-label = フォルダ
code-open-file = ファイルを開く
code-new-file = 新規ファイル
code-open-in-new-tab = 新しいタブで開く
code-open-in-new-pane = 新しいペインで開く
code-cd-to-directory = ディレクトリにcd
code-copy-relative-path = 相対パスをコピー

## -- コードアクション（追加） -----------------------------------------------------

code-go-to-definition = 定義に移動
code-accept-and-save = 承認して保存
code-reject = 拒否
code-saved-changes-not-reflected = 変更は保存されましたが、ターミナルにはまだ反映されていません
code-untitled = 無題
code-language-support-not-enabled-workspace = { $root_name } の言語サポートは現在有効になっていません
code-use-oz-update-config = /update-tab-config スキルを使用

## -- Code view menu items (i18n) ------------------------------------------

code-split-pane-right = 右にペインを分割
code-split-pane-left = 左にペインを分割
code-split-pane-down = 下にペインを分割
code-split-pane-up = 上にペインを分割
code-close-pane = ペインを閉じる

## -- Footer LSP menu items (lowercase for inline menus) -------------------------

code-footer-open-logs = ログを開く
code-footer-restart-server = サーバーを再起動
code-footer-stop-server = サーバーを停止
code-footer-start-server = サーバーを起動
code-footer-remove-server = サーバーを削除
code-footer-restart-all-servers = すべてのサーバーを再起動
code-footer-stop-all-servers = すべてのサーバーを停止
code-footer-start-all-servers = すべてのサーバーを起動
code-footer-start-all-stopped-servers = 停止中のすべてのサーバーを起動
code-footer-manage-servers = サーバーを管理

## -- コードレビュー ----------------------------------------------------------------

code-review-tooltip = 変更を表示
code-review-remote = 差分はローカルワークスペースでのみ機能します。
code-review-disabled = 差分は Git リポジトリでのみ機能します。
code-review-wsl = 差分は現在 WSL では機能しません。

## -- Code view additional strings ------------------------------------------------

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

