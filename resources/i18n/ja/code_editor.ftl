# =============================================================================
# code_editor.ftl — コードエディタ、差分、コードレビュー文字列
# =============================================================================
# Message IDs: code-{id}
# =============================================================================

## -- ファイルツリー -----------------------------------------------------------

code-editor-file-tree-delete = 削除
code-editor-file-tree-rename = 名前変更
code-editor-file-tree-new-file = 新規ファイル
code-editor-file-tree-new-folder = 新規フォルダ
code-editor-file-tree-reveal-in-finder = Finder で表示
code-editor-file-tree-copy-path = パスをコピー

## -- エディタ -------------------------------------------------------------------

code-editor-editor-delete-label = 削除
code-editor-editor-save-label = 保存
code-editor-editor-undo-label = 元に戻す
code-editor-editor-redo-label = やり直し
code-editor-editor-find-label = 検索
code-editor-editor-replace-label = 置換
code-editor-editor-go-to-line = 行番号へ移動
code-editor-editor-select-all = すべて選択

## -- 差分ビュー -----------------------------------------------------------------

code-editor-diff-added-lines = { $count ->
    [one] { $count } 行追加
   *[other] { $count } 行追加
}
code-editor-diff-removed-lines = { $count ->
    [one] { $count } 行削除
   *[other] { $count } 行削除
}
code-editor-diff-title = コード差分
code-editor-diff-hunk = ハンク:
code-editor-diff-reject = 拒否
code-editor-diff-suggested-fixes = 前回のコマンドに基づく修正案:

## -- ガターボタン ---------------------------------------------------------------

code-editor-gutter-add-as-context = 差分ハンクをコンテキストとして追加
code-editor-gutter-save-to-attach = 変更を保存してコンテキストとして添付。
code-editor-gutter-revert-hunk = 差分ハンクを元に戻す
code-editor-gutter-save-to-revert = 変更を保存して元に戻す
code-editor-gutter-add-comment = 行にコメントを追加
code-editor-gutter-save-to-comment = 変更を保存してコメントを追加
code-editor-gutter-show-comment = 保存されたコメントを表示

## -- コメント -------------------------------------------------------------------

code-editor-comment-add = コメントを追加
code-editor-comment-edit = コメントを編集
code-editor-comment-delete = コメントを削除
code-editor-comment-resolve = 解決済み
code-editor-comment-unresolve = 未解決
code-editor-comment-cancel-button = キャンセル
code-editor-comment-save-button = 保存
code-editor-comment-update-button = 更新
code-editor-comment-placeholder = コメントを書く…
code-editor-comment-imported-from-github = GitHub からインポートされたコメント
code-editor-review-comment = コメント

## -- コードレビュー -------------------------------------------------------------

code-editor-review-approve = 承認
code-editor-review-request-changes = 変更を要求
code-editor-review-close = レビューを閉じる
code-editor-review-open = レビューを開く
code-editor-review-uncommitted-changes = 未コミットの変更
## -- Git dialog ---------------------------------------------------------------

code-editor-review-generating-commit-message = コミットメッセージを生成中…
code-editor-review-type-commit-message = コミットメッセージを入力
code-editor-review-committing = コミット中…
code-editor-review-enter-commit-message = コミットメッセージを入力
code-editor-review-changes-committed = 変更が正常にコミットされました。
code-editor-review-changes-committed-pushed = 変更がコミットおよびプッシュされました。
code-editor-review-include-unstaged = 未ステージ変更を含める
code-editor-review-commit-message-label = コミットメッセージ
code-editor-review-no-changes-to-commit = コミットする変更がありません。
code-editor-review-git-identity-not-configured = Gitアイデンティティが設定されていません。user.nameとuser.emailを設定してください。
code-editor-review-remote-has-new-changes = リモートに新しい変更があります — プッシュ前にプルしてください。
code-editor-review-no-remote-configured = このブランチにリモートが設定されていません。
code-editor-review-auth-failed = 認証に失敗しました。Git認証情報を確認してください。
code-editor-review-network-error = ネットワークエラー。接続を確認してください。
code-editor-review-remote-not-found = リモートリポジトリが見つかりません。
code-editor-review-gh-not-installed = GitHub CLI (gh) がインストールされていません。https://cli.github.com/ を参照してください。
code-editor-review-gh-not-authenticated = GitHub CLIが認証されていません。`gh auth login` を実行してください。
code-editor-review-git-operation-failed = Git操作が失敗しました。
code-editor-review-branch = ブランチ
code-editor-review-confirm = 確認
code-editor-review-commit-your-changes = 変更をコミット
code-editor-review-publish-branch = ブランチをパブリッシュ
code-editor-review-push-changes = 変更をプッシュ
code-editor-review-create-pull-request = プルリクエストを作成
code-editor-review-create-pr-button = PRを作成
code-editor-review-creating = 作成中…
code-editor-review-open-pr = PRを開く
code-editor-review-pr-created = PRが正常に作成されました。
code-editor-review-default-branch = デフォルトブランチ
code-editor-review-search-diff-placeholder = 差分セットまたはブランチを検索…
code-editor-review-no-matches = 一致なし

## -- 行番号に移動 -------------------------------------------------------------

code-editor-goto-line-placeholder = 行番号:列

## -- 検索バー -------------------------------------------------------------------

code-editor-find-regex-toggle = 正規表現切り替え
code-editor-find-case-sensitive = 大文字小文字を区別して検索
code-editor-find-preserve-case = 大文字小文字を保持
code-editor-find-placeholder = 検索
code-editor-find-replace-placeholder = 置換
code-editor-find-select-all = すべて選択
code-editor-find-replace-all = すべて置換
code-editor-find-result = { $total } 件中 { $current } 件目の結果。
code-editor-find-no-results = 結果なし。
code-editor-find-navigate-help = Enter と shift-Enter で一致間を移動。Esc で終了。
code-editor-find-a11y-label = 検索フレーズを入力。
code-editor-find-a11y-help = Esc で終了、Enter と shift-Enter で一致間を移動

## -- キーバインドラベル ---------------------------------------------------------

code-editor-keybind-move-backward-one-word = 単語を後方に移動
code-editor-keybind-move-forward-one-word = 単語を前方に移動
code-editor-keybind-move-forward-one-word-alt = 単語を前方に移動
code-editor-keybind-move-backward-one-word-alt = 単語を後方に移動
code-editor-keybind-move-cursor-up = カーソルを上に移動
code-editor-keybind-move-cursor-down = カーソルを下に移動
code-editor-keybind-move-cursor-left = カーソルを左に移動
code-editor-keybind-move-cursor-right = カーソルを右に移動
code-editor-keybind-move-to-line-start = 行頭に移動
code-editor-keybind-home = Home
code-editor-keybind-move-to-line-end = 行末に移動
code-editor-keybind-end = End
code-editor-keybind-cursor-at-buffer-start = バッファの先頭にカーソルを移動
code-editor-keybind-cursor-at-buffer-end = バッファの末尾にカーソルを移動
code-editor-keybind-select-word-left = 単語を左に選択
code-editor-keybind-select-word-right = 単語を右に選択
code-editor-keybind-select-char-left = 文字を左に選択
code-editor-keybind-select-char-right = 文字を右に選択
code-editor-keybind-select-up = 上に選択
code-editor-keybind-select-down = 下に選択
code-editor-keybind-select-all = すべて選択
code-editor-keybind-select-to-line-start = 行頭まで選択
code-editor-keybind-select-to-line-end = 行末まで選択
code-editor-keybind-select-to-line-end-alt = 行末まで選択
code-editor-keybind-select-to-line-start-alt = 行頭まで選択
code-editor-keybind-remove-previous-char = 前の文字を削除
code-editor-keybind-toggle-comment = コメントを切り替え
code-editor-keybind-scroll-half-page-down-vim = 半ページ下にスクロール (vim)
code-editor-keybind-scroll-half-page-up-vim = 半ページ上にスクロール (vim)
code-editor-keybind-cut-word-left = 単語を左にカット
code-editor-keybind-delete-word-left = 単語を左に削除
code-editor-keybind-cut-word-right = 単語を右にカット
code-editor-keybind-delete-word-right = 単語を右に削除
code-editor-keybind-cut-all-left = 左をすべてカット
code-editor-keybind-delete-all-left = 左をすべて削除
code-editor-keybind-cut-all-right = 右をすべてカット
code-editor-keybind-delete-all-right = 右をすべて削除
code-editor-keybind-exit-vim-insert = Vim 挿入モードを終了
code-editor-keybind-find-in-editor = コードエディタで検索
code-editor-keybind-go-to-line = 行番号に移動

## -- フッター / LSP ステータス -------------------------------------------------

code-editor-enable-server = {} を有効化
code-editor-install-server = {} をインストール
code-editor-install-servers = サーバーをインストール
code-editor-enable-servers = サーバーを有効化
code-editor-unknown-workspace = 不明なワークスペース
code-editor-this-workspace = このワークスペース
code-editor-this-codebase = このコードベース
code-editor-open-logs = ログを開く
code-editor-restart-server = サーバーを再起動
code-editor-stop-server = サーバーを停止
code-editor-start-server = サーバーを起動
code-editor-remove-server = サーバーを削除
code-editor-restart-all-servers = すべてのサーバーを再起動
code-editor-stop-all-servers = すべてのサーバーを停止
code-editor-start-all-stopped-servers = 停止中のすべてのサーバーを起動
code-editor-start-all-servers = すべてのサーバーを起動
code-editor-manage-servers = サーバーを管理
code-editor-server-stopped = { $server }: 停止
code-editor-server-error = { $server }: エラー
code-editor-server-progress = { $server }: { $message }
code-editor-server-failed = { $server }: { $error }
code-editor-support-unavailable-file = このファイルタイプは言語サポートがありません
code-editor-support-not-enabled = {} の言語サポートは現在有効ではありません
code-editor-server-unavailable-codebase = このコードベースには言語サーバーがありません
code-editor-installing-server = {} をインストール中…
code-editor-support-unavailable = {} の言語サポートは利用できません
code-editor-use-oz-to-update-config = Oz を使ってこの設定を更新
code-editor-tab-config-skill-tooltip = エージェント入力を開き /update-tab-config スキルを使用
code-editor-tab-config-enable-ai-tooltip = AI を有効化して /update-tab-config スキルを使用

## -- Git ダイアログ（共用） -------------------------------------------------------

code-editor-git-error-nothing-to-commit = コミットする変更がありません。
code-editor-git-error-identity = Git ID が未設定です。user.name と user.email を設定してください。
code-editor-git-error-remote-new = リモートに新しい変更があります — プッシュ前にプルしてください。
code-editor-git-error-no-remote = このブランチにリモートが設定されていません。
code-editor-git-error-auth = 認証に失敗しました。Git 認証情報を確認してください。
code-editor-git-error-network = ネットワークエラー。接続を確認してください。
code-editor-git-error-not-found = リモートリポジトリが見つかりません。
code-editor-git-error-gh-missing = GitHub CLI (gh) がインストールされていません。https://cli.github.com/ を参照。
code-editor-git-error-gh-auth = GitHub CLI が認証されていません。`gh auth login` を実行してください。
code-editor-git-error-generic = Git 操作に失敗しました。
code-editor-git-branch-label = ブランチ
code-editor-git-dialog-confirm = 確認
code-editor-git-dialog-cancel = キャンセル

## -- Git ダイアログ — コミットモード ----------------------------------------------

code-editor-commit-generating-placeholder = コミットメッセージを生成中…
code-editor-commit-fallback-placeholder = コミットメッセージを入力
code-editor-commit-loading-label = コミット中…
code-editor-commit-confirm-tooltip = コミットメッセージを入力してください
code-editor-commit-toast-success = 変更が正常にコミットされました。
code-editor-commit-toast-pushed = 変更がコミットおよびプッシュされました。
code-editor-commit-changes-label = 変更
code-editor-commit-include-unstaged = ステージされていない変更を含む
code-editor-commit-message-label = コミットメッセージ
code-editor-commit-button = コミット
code-editor-commit-and-push-button = コミットしてプッシュ
code-editor-commit-and-publish-button = コミットして公開
code-editor-commit-and-create-pr-button = コミットして PR を作成

## -- Git ダイアログ — プッシュモード ----------------------------------------------

code-editor-push-confirm-publish = 公開
code-editor-push-confirm-push = プッシュ
code-editor-push-loading-publish = 公開中…
code-editor-push-loading-push = プッシュ中…
code-editor-push-toast-published = ブランチが正常に公開されました。
code-editor-push-toast-pushed = 変更が正常にプッシュされました。
code-editor-push-included-commits = 含まれるコミット
code-editor-push-file-singular = ファイル
code-editor-push-file-plural = ファイル

## -- Git ダイアログ — PR 作成モード -----------------------------------------------

code-editor-pr-confirm-label = PR を作成
code-editor-pr-loading-label = 作成中…
code-editor-pr-toast-link = PR を開く
code-editor-pr-toast-success = PR が正常に作成されました。
code-editor-pr-default-branch = デフォルトブランチ
code-editor-pr-changes-label = 変更

## -- コードレビュー — 破棄ダイアログ -----------------------------------------------

code-editor-review-discard-all-uncommitted = 未コミットの変更を破棄しますか？
code-editor-review-discard-file-uncommitted = ファイルの未コミット変更をすべて破棄しますか？
code-editor-review-discard-all-against-branch = すべての変更を破棄しますか？
code-editor-review-discard-file-against-branch = ファイルのすべての変更を破棄しますか？
code-editor-review-discard-desc-all-uncommitted = 未コミットのローカル変更をすべて破棄しようとしています。
code-editor-review-discard-desc-file-uncommitted = このファイルを最後にコミットされたバージョンに復元し、ローカルの編集を破棄します。
code-editor-review-discard-desc-all-no-branch = コミット済みおよび未コミットの変更をすべて破棄しようとしています。
code-editor-review-discard-desc-file-no-branch = このファイルをメインブランチのバージョンに復元し、コミット済みおよび未コミットの編集をすべて破棄します。
code-editor-review-discard-desc-all-with-branch = コミット済みおよび未コミットの変更をすべて破棄しようとしています。
code-editor-review-discard-desc-file-with-branch = このファイルを { $branch } ブランチのバージョンにリセットし、コミット済みおよび未コミットの編集をすべて破棄します。
## -- Git dialog ---------------------------------------------------------------

## -- コードレビュー追加文字列 ---------------------------------------------------

code-editor-review-discard-all = すべて破棄
code-editor-review-add-diff-context = 差分セットをコンテキストとして追加
code-editor-review-reviewing-open-changes = 未コミットの変更をレビュー中
code-editor-review-hide-file-navigation = ファイルナビゲーションを非表示
code-editor-review-show-file-navigation = ファイルナビゲーションを表示
code-editor-review-cannot-discard-git = Git操作（マージ、リベースなど）が進行中は変更を破棄できません
code-editor-review-no-changes-to-discard = 破棄する変更はありません
code-editor-review-discard-uncommitted-title = 未コミットの変更を破棄しますか？
code-editor-review-discard-file-uncommitted-title = ファイルの未コミット変更をすべて破棄しますか？
code-editor-review-discard-all-branch-title = すべての変更を破棄しますか？
code-editor-review-discard-file-branch-title = ファイルのすべての変更を破棄しますか？
code-editor-review-discard-uncommitted-body = コミットされていないすべてのローカル変更を破棄しようとしています。
code-editor-review-discard-file-uncommitted-body = このファイルを最後にコミットされたバージョンに復元し、ローカル編集を破棄します。
code-editor-review-discard-all-branch-body = コミット済みおよび未コミットのすべての変更を破棄しようとしています。
code-editor-review-discard-file-branch-body = このファイルをメインブランチのバージョンに復元し、コミット済みおよび未コミットの編集をすべて破棄します。
code-editor-review-discard-file-branch-body-named = このファイルを { $branch } ブランチのバージョンにリセットし、コミット済みおよび未コミットの編集をすべて破棄します。
code-editor-review-maximize = 最大化
code-editor-review-restore = 復元
code-editor-review-commit = コミット
code-editor-review-undo = 元に戻す
code-editor-review-discard-changes = 変更を破棄
code-editor-review-cancel = キャンセル
code-editor-review-initialize-codebase = コードベースを初期化
code-editor-review-initialize-codebase-tooltip = コードベースのインデックス作成とWARP.mdを有効にします
code-editor-review-open-repository = リポジトリを開く
code-editor-review-open-repository-tooltip = リポジトリに移動し、コーディング用に初期化
## -- Git dialog ---------------------------------------------------------------

code-editor-review-push = プッシュ
code-editor-review-publish = パブリッシュ
code-editor-review-create-pr = PRを作成
code-editor-review-add-diff-set-context = 差分セットをコンテキストとして追加
code-editor-review-show-saved-comment = 保存されたコメントを表示
code-editor-review-add-comment = コメントを追加
code-editor-review-cannot-detect-diffs = このフォルダーの差分を検出できません
code-editor-review-view-changes = 変更を表示
code-editor-review-diffs-local-only = 差分はローカルワークスペースでのみ機能します。
code-editor-review-diffs-git-only = 差分はgitリポジトリでのみ機能します。
code-editor-review-diffs-no-wsl = 差分は現在WSLでは機能しません。
code-editor-review-open-file = ファイルを開く
code-editor-review-add-file-diff-context = ファイルの差分をコンテキストとして追加
code-editor-review-copy-file-path = ファイルパスをコピー
code-editor-review-loading-open-changes = 未コミットの変更を読み込み中...
code-editor-review-error-loading-diffs = 差分の読み込みエラー
code-editor-review-no-open-changes = 未コミットの変更はありません
code-editor-review-no-open-changes-description = あなたまたはエージェントが変更を行うと、ここで追跡できるようになります。
code-editor-review-repo-initialized = リポジトリが { $file_name } ファイルで初期化されました。
code-editor-review-comments-sent = エージェントにコメントを送信しました
code-editor-review-could-not-submit-comments = エージェントにコメントを送信できませんでした
code-editor-review-unsaved-changes = このファイルには未保存の変更があります。{ $save_shortcut } で保存
code-editor-review-diff-too-large = 差分が大きすぎて表示できません
code-editor-review-binary-file = バイナリファイル - 差分はありません
code-editor-review-file-renamed-no-changes = ファイル名が変更されました（変更内容はありません）
code-editor-review-new-empty-file = 新しい空のファイル
code-editor-review-unable-to-load-file = ファイル内容を読み込めません
code-editor-review-no-file-selected = ファイルが選択されていません
code-editor-review-no-files-to-discard = 破棄するファイルはありません
code-editor-review-stash-changes = 変更をスタッシュ
code-editor-review-diff-removed = 差分が削除されました
code-editor-review-cannot-attach-context-terminal = ターミナル実行中はコンテキストを添付できません
code-editor-review-cannot-attach-diff-input = 入力が利用できない場合、差分を添付できません
code-editor-review-no-git-actions = 利用可能なgitアクションがありません
code-editor-review-refreshing-pr-info = PR情報を更新中
code-editor-review-reviewing-code-changes = コードの変更をレビュー中
## -- Comment list view --------------------------------------------------------

code-editor-review-no-non-outdated-comments = 送信する非期限切れコメントがありません
code-editor-review-send-diff-comments-to = 差分コメントを { $label } に送信
code-editor-review-ai-must-be-enabled = Agentにコメントを送信するにはAIを有効にする必要があります
code-editor-review-agent-requires-credits = AgentコードレビューにはAIクレジットが必要です
code-editor-review-all-terminals-busy = すべてのターミナルがビジーです
code-editor-review-send-diff-comments-to-agent = 差分コメントをAgentに送信
code-editor-review-send-to-agent = Agentに送信
code-editor-review-copy-text = テキストをコピー
code-editor-review-edit = 編集
code-editor-review-file-level-cannot-edit = ファイルレベルのコメントは現在編集できません。
code-editor-review-outdated-cannot-edit = 期限切れのコメントは編集できません。
code-editor-review-view-in-github = GitHubで表示
code-editor-review-remove = 削除
code-editor-review-outdated = 期限切れ
code-editor-review-from-github = GitHubから
## -- Diff menu ----------------------------------------------------------------

code-editor-review-search-diff-sets = 比較する差分セットまたはブランチを検索…
## -- Git dialog ---------------------------------------------------------------

## -- Push dialog ---------------------------------------------------------------

code-editor-review-publishing = パブリッシュ中…
code-editor-review-pushing = プッシュ中…
code-editor-review-branch-published = ブランチが正常にパブリッシュされました。
code-editor-review-changes-pushed = 変更が正常にプッシュされました。
code-editor-review-included-commits = 含まれるコミット

## -- コミットダイアログ（追加） -----------------------------------------------

code-editor-review-commit-and-push = コミットしてプッシュ
code-editor-review-commit-and-publish = コミットして公開
code-editor-review-commit-label = コミット
code-editor-review-commit-and-create-pr = コミットして PR を作成

## -- プッシュダイアログ（追加） -----------------------------------------------

code-editor-review-files = { $count ->
    [one] ファイル
   *[other] ファイル
}

## -- フッター文字列 -----------------------------------------------------------

code-editor-language-support-unavailable-file-type = このファイルタイプでは言語サポートが利用できません
code-editor-language-support-not-enabled = { $root_name } の言語サポートは現在有効になっていません
code-editor-language-server-unavailable-codebase = このコードベースでは言語サーバーが利用できません
code-editor-language-support-unavailable = { $root_name } の言語サポートは利用できません
code-editor-open-agent-input-tab-config-skill = /update-tab-config スキルでエージェント入力を開く
code-editor-enable-ai-tab-config-skill = /update-tab-config スキルを使用するために AI を有効化

## -- 差分ビューア文字列 ---------------------------------------------------------

code-editor-suggested-fixes-last-command = 最後のコマンドに基づく修正提案：

## -- コメントエディタ文字列 -----------------------------------------------------

code-editor-update-label = 更新
code-editor-comment-label = コメント

## -- ローカルコードエディタ文字列 -----------------------------------------------

code-editor-add-as-context = コンテキストとして追加
code-editor-find-references = 参照を検索
code-editor-discard-this-version = このバージョンを破棄
code-editor-overwrite-label = 上書き

## -- コードビュー文字列 ---------------------------------------------------------

code-editor-save-file = ファイルを保存
code-editor-save-file-as = 名前を付けて保存
code-editor-close-all-tabs = すべてのタブを閉じる
code-editor-close-saved-tabs = 保存済みタブを閉じる
code-editor-close-saved = 保存済みを閉じる
code-editor-failed-to-load-file = ファイルの読み込みに失敗しました。
code-editor-failed-to-save-file = ファイルの保存に失敗しました。
code-editor-file-saved = ファイルを保存しました。
code-editor-reveal-in-finder = Finder で表示
code-editor-reveal-in-explorer = エクスプローラーで表示
code-editor-reveal-in-file-manager = ファイルマネージャーで表示
code-editor-copy-file-path = ファイルパスをコピー
code-editor-view-markdown-preview = Markdown プレビューを表示

## -- 期限切れコメントセクションヘッダー -----------------------------------------

code-editor-outdated-comments-omitted-singular = 1件のコメントは期限切れのため省略されます。
code-editor-outdated-comments-omitted-plural = { $count }件のコメントは期限切れのため省略されます。

## -- コメント数ラベル ---------------------------------------------------------

code-editor-review-comment-count = { $count ->
    [one] { $count } 件のコメント
   *[other] { $count } 件のコメント
}
code-editor-review-outdated-comment-count = { $count ->
    [one] { $count } 件の期限切れコメント
   *[other] { $count } 件の期限切れコメント
}
code-editor-review-outdated-count = { $count } 件期限切れ

## -- PR番号ラベル -------------------------------------------------------------

code-editor-review-pr-number = PR #{ $number }

## -- ファイル数ラベル (git ダイアログ) -------------------------------------------

code-editor-review-files-count = { $count ->
    [one] { $count } ファイル
   *[other] { $count } ファイル
}

## -- コードレビュー残りのキー -----------------------------------------------

code-editor-review-changes = 変更
code-editor-review-commit-message = コミットメッセージ

## -- Code review additional strings (i18n) ------------------------------------------

code-editor-code-review-confirm = 確認
code-editor-code-review-commit-your-changes = 変更をコミット
code-editor-code-review-publish-branch = ブランチをパブリッシュ
code-editor-code-review-push-changes = 変更をプッシュ
code-editor-code-review-create-pull-request = プルリクエストを作成
code-editor-code-review-commit-and-push = コミットしてプッシュ
code-editor-code-review-commit-and-publish = コミットして公開
code-editor-code-review-commit-and-create-pr = コミットして PR を作成
code-editor-code-review-enter-commit-message = コミットメッセージを入力
code-editor-code-review-changes = 変更
code-editor-code-review-include-unstaged = 未ステージ変更を含める
code-editor-code-review-commit-message = コミットメッセージ
code-editor-code-review-generating-message = コミットメッセージを生成中…
code-editor-code-review-type-commit-message = コミットメッセージを入力
code-editor-code-review-committing = コミット中…
code-editor-code-review-changes-successfully-committed = 変更が正常にコミットされました。
code-editor-code-review-changes-committed-and-pushed = 変更がコミットおよびプッシュされました。
code-editor-code-review-no-changes-to-commit = コミットする変更がありません。
code-editor-code-review-git-identity-not-configured = Gitアイデンティティが設定されていません。user.nameとuser.emailを設定してください。
code-editor-code-review-remote-has-new-changes = リモートに新しい変更があります — プッシュ前にプルしてください。
code-editor-code-review-no-remote-configured = このブランチにリモートが設定されていません。
code-editor-code-review-authentication-failed = 認証に失敗しました。Git認証情報を確認してください。
code-editor-code-review-network-error = ネットワークエラー。接続を確認してください。
code-editor-code-review-remote-repository-not-found = リモートリポジトリが見つかりません。
code-editor-code-review-gh-cli-not-installed = GitHub CLI (gh) がインストールされていません。https://cli.github.com/ を参照してください。
code-editor-code-review-gh-cli-not-authenticated = GitHub CLIが認証されていません。`gh auth login` を実行してください。
code-editor-code-review-git-operation-failed = Git操作が失敗しました。
code-editor-code-review-branch = ブランチ

## -- Code review view additional strings -----------------------------------------

code-editor-code-review-undo = 元に戻す
code-editor-code-review-discard-changes = 変更を破棄
code-editor-code-review-cancel = キャンセル
code-editor-code-review-initialize-codebase = コードベースを初期化
code-editor-code-review-initialize-codebase-tooltip = コードベースのインデックス作成とWARP.mdを有効にします
code-editor-code-review-open-repository = リポジトリを開く
code-editor-code-review-open-repository-tooltip = リポジトリに移動し、コーディング用に初期化
code-editor-code-review-show-file-navigation = ファイルナビゲーションを表示

## -- Push dialog strings ---------------------------------------------------------

code-editor-code-review-publishing = パブリッシュ中…
code-editor-code-review-pushing = プッシュ中…
code-editor-code-review-branch-published = ブランチが正常にパブリッシュされました。
code-editor-code-review-changes-pushed = 変更が正常にプッシュされました。

## -- PR dialog strings -----------------------------------------------------------

code-editor-code-review-creating = 作成中…
code-editor-code-review-open-pr = PRを開く
code-editor-code-review-pr-created = PRが正常に作成されました。

## -- code- prefixed entries (tr!("code_editor", "code-...")) -------------------

## -- File tree (code- prefix) ------------------------------------------------

code-editor-code-file-tree-delete = 削除
code-editor-code-file-tree-rename = 名前変更
code-editor-code-file-tree-new-file = 新規ファイル
code-editor-code-file-tree-new-folder = 新規フォルダ
code-editor-code-file-tree-reveal-in-finder = Finder で表示
code-editor-code-file-tree-copy-path = パスをコピー

## -- Editor (code- prefix) ---------------------------------------------------

code-editor-delete-label = 削除
code-editor-save-label = 保存
code-editor-undo-label = 元に戻す
code-editor-redo-label = やり直し
code-editor-find-label = 検索
code-editor-replace-label = 置換
code-editor-go-to-line = 行番号へ移動
code-editor-select-all = すべて選択

## -- Diff view (code- prefix) -------------------------------------------------

code-editor-code-diff-added-lines = { $count ->
    [one] { $count } 行追加
   *[other] { $count } 行追加
}
code-editor-code-diff-removed-lines = { $count ->
    [one] { $count } 行削除
   *[other] { $count } 行削除
}
code-editor-code-diff-title = コード差分

## -- Comments (code- prefix) --------------------------------------------------

code-editor-code-comment-add = コメントを追加
code-editor-code-comment-edit = コメントを編集
code-editor-code-comment-delete = コメントを削除
code-editor-code-comment-resolve = 解決済み
code-editor-code-comment-unresolve = 未解決
code-editor-code-comment-cancel-button = キャンセル
code-editor-code-comment-save-button = 保存
code-editor-code-comment-update-button = 更新
code-editor-code-comment-placeholder = コメントを書く…

## -- Code review (code- prefix) ----------------------------------------------

code-editor-code-review-approve = 承認
code-editor-code-review-request-changes = 変更を要求
code-editor-code-review-comment = コメント
code-editor-code-review-close = レビューを閉じる
code-editor-code-review-open = レビューを開く

## -- Go to line (code- prefix) ------------------------------------------------

code-editor-code-goto-line-placeholder = 行番号:列

## -- Diff menu (code- prefix) -------------------------------------------------

code-editor-search-diff-placeholder = 差分セットまたはブランチを検索…
code-editor-no-matches = 一致なし
code-editor-restore = 復元
code-editor-maximize = 最大化

## -- Code review menu items (code- prefix) ------------------------------------

code-editor-code-review-commit = コミット
code-editor-code-review-push = プッシュ
code-editor-code-review-publish = パブリッシュ
code-editor-code-review-create-pr = PRを作成
code-editor-code-review-add-diff-set-context = 差分セットをコンテキストとして追加
code-editor-code-review-discard-all = すべて破棄
code-editor-code-review-copy-text = テキストをコピー
code-editor-code-review-edit = 編集
code-editor-code-review-view-in-github = GitHubで表示
code-editor-code-review-remove = 削除
code-editor-code-review-send-to-agent = Agentに送信

## -- Code review additional strings (code- prefix) ----------------------------

## -- Code review view additional strings (code- prefix) ----------------------

## -- Push dialog strings (code- prefix) ---------------------------------------

## -- PR dialog strings (code- prefix) ----------------------------------------

## -- review- prefixed entries (tr!("code_editor", "review-...")) -------------

code-editor-review-authentication-failed = 認証に失敗しました。Git認証情報を確認してください。
code-editor-review-gh-cli-not-authenticated = GitHub CLIが認証されていません。`gh auth login` を実行してください。
code-editor-review-gh-cli-not-installed = GitHub CLI (gh) がインストールされていません。https://cli.github.com/ を参照してください。
code-editor-review-remote-repository-not-found = リモートリポジトリが見つかりません。
code-editor-review-branch-published = ブランチが正常にパブリッシュされました。
code-editor-review-cancel = キャンセル
code-editor-review-changes-committed-and-pushed = 変更がコミットおよびプッシュされました。
code-editor-review-changes-pushed = 変更が正常にプッシュされました。
code-editor-review-comment-count = { $count ->
    [one] { $count } 件のコメント
   *[other] { $count } 件のコメント
}
code-editor-review-commit = コミット
code-editor-review-commit-and-create-pr = コミットして PR を作成
code-editor-review-commit-and-publish = コミットして公開
code-editor-review-commit-and-push = コミットしてプッシュ
code-editor-review-committing = コミット中…
code-editor-review-confirm = 確認
code-editor-review-create-pull-request = プルリクエストを作成
code-editor-review-creating = 作成中…
code-editor-review-discard-all = すべて破棄
code-editor-review-discard-changes = 変更を破棄
code-editor-review-generating-commit-message = コミットメッセージを生成中…
code-editor-review-git-identity-not-configured = Gitアイデンティティが設定されていません。user.nameとuser.emailを設定してください。
code-editor-review-git-operation-failed = Git操作が失敗しました。
code-editor-review-initialize-codebase = コードベースを初期化
code-editor-review-initialize-codebase-tooltip = コードベースのインデックス作成とWARP.mdを有効にします
code-editor-review-network-error = ネットワークエラー。接続を確認してください。
code-editor-review-no-changes-to-commit = コミットする変更がありません。
code-editor-review-no-remote-configured = このブランチにリモートが設定されていません。
code-editor-review-open-pr = PRを開く
code-editor-review-open-repository = リポジトリを開く
code-editor-review-open-repository-tooltip = リポジトリに移動し、コーディング用に初期化
code-editor-review-pr-created = PRが正常に作成されました。
code-editor-review-publish-branch = ブランチをパブリッシュ
code-editor-review-publishing = パブリッシュ中…
code-editor-review-push-changes = 変更をプッシュ
code-editor-review-pushing = プッシュ中…
code-editor-review-remote-has-new-changes = リモートに新しい変更があります — プッシュ前にプルしてください。
code-editor-review-show-file-navigation = ファイルナビゲーションを表示
code-editor-review-type-commit-message = コミットメッセージを入力
code-editor-review-undo = 元に戻す
code-editor-review-changes-successfully-committed = 変更が正常にコミットされました。

## -- コードレビュービュー追加文字列 -------------------------------------------

code-editor-code-no-open-changes = 未コミットの変更はありません
code-editor-code-stash-changes = 変更をスタッシュ
code-editor-code-previous = 前へ

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

## -- Additional code editor strings --
code-editor-code-hunk = ハンク：

## -- Double-prefix aliases for new code_editor strings --
