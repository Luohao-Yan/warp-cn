# =============================================================================
# notebooks.ftl — Notebook / plan UI strings (ja)
# =============================================================================
# Message IDs: notebooks-{id}
# Domain: "notebooks"
# =============================================================================

## -- Block types (block insertion menu & omnibar) -----------------------------

notebooks-block-text = テキスト
notebooks-block-command = コマンド
notebooks-block-bulleted-list = 箇条書き
notebooks-block-numbered-list = 番号付きリスト
notebooks-block-code = コード
notebooks-block-to-do-list = やることリスト
notebooks-block-embed = 埋め込み
notebooks-block-divider = 区切り線

## -- Block header labels (h1–h6) ---------------------------------------------

notebooks-block-header-1 = H1
notebooks-block-header-2 = H2
notebooks-block-header-3 = H3
notebooks-block-header-4 = H4
notebooks-block-header-5 = H5
notebooks-block-header-6 = H6

## -- Editor / omnibar ---------------------------------------------------------

notebooks-insert-block = ブロックを挿入
notebooks-copy = コピー
notebooks-run-in-terminal = ターミナルで実行
notebooks-edit = 編集
notebooks-raw = 生テキスト
notebooks-rendered = レンダリング済み
notebooks-mermaid-lang = Mermaid

## -- Link editor ---------------------------------------------------------------

notebooks-link-text = テキスト
notebooks-link-url = リンク（Web またはファイル）
notebooks-apply-link = リンクを適用

## -- Find bar ------------------------------------------------------------------

notebooks-no-matches = 一致なし
notebooks-enable-regex-search = 正規表現検索を有効にする
notebooks-disable-regex-search = 正規表現検索を無効にする
notebooks-enable-case-sensitive-search = 大文字小文字を区別する検索を有効にする
notebooks-disable-case-sensitive-search = 大文字小文字を区別する検索を無効にする
notebooks-focus-next-match = 次の一致にフォーカス
notebooks-focus-previous-match = 前の一致にフォーカス
notebooks-close-find-bar = 検索バーを閉じる

## -- Details bar ---------------------------------------------------------------

notebooks-sign-in-to-edit = 編集するにはサインイン
notebooks-viewing = 閲覧中
notebooks-editing = 編集中
notebooks-other-user = 他のユーザー
notebooks-is-editing = {$editor} が編集中

## -- Notebook view --------------------------------------------------------------

notebooks-untitled = 無題
notebooks-notebook-was-moved-to-trash = ノートブックがゴミ箱に移動されました
notebooks-you-no-longer-have-access = このノートブックにアクセスできなくなりました
notebooks-restore = 復元
notebooks-restore-notebook-from-trash = ゴミ箱からノートブックを復元
notebooks-copy-to-personal = 個人にコピー
notebooks-copy-notebook-contents-into-personal-workspace = ノートブックの内容を個人ワークスペースにコピー
notebooks-copy-all = すべてコピー
notebooks-copy-notebook-contents-to-clipboard = ノートブックの内容をクリップボードにコピー
notebooks-refresh = 更新
notebooks-refresh-notebook = ノートブックを更新

## -- Conflict / feature-not-available banners ----------------------------------

notebooks-conflict-resolution-message = 編集中に他の変更があったため、このノートブックは保存できませんでした。作業内容をコピーして更新してください。
notebooks-feature-not-available-message = 機能が一時的に利用できないため、このノートブックはサーバーに保存できませんでした。変更はローカルに保存されています。後でもう一度お試しください。

## -- Secret redaction toast -----------------------------------------------------

notebooks-cannot-save-content-secrets = 内容にシークレットが含まれているため、このノートブックは保存できません
notebooks-cannot-save-title-secrets = タイトルにシークレットが含まれているため、このノートブックは保存できません

## -- Overflow menu items --------------------------------------------------------

notebooks-copy-link = リンクをコピー
notebooks-link-copied-to-clipboard = リンクがクリップボードにコピーされました
notebooks-open-on-desktop = デスクトップで開く
notebooks-duplicate = 複製
notebooks-export = エクスポート
notebooks-trash = ゴミ箱に移動
notebooks-attach-to-active-session = アクティブなセッションに添付
notebooks-move-to-space = {$space_name} に移動

## -- File notebook view ---------------------------------------------------------

notebooks-could-not-read = {$file_name} を読み取れませんでした
notebooks-try-again = 再試行
notebooks-loading-file = {$file_name} を読み込み中...
notebooks-missing-source-file = ソースファイルがありません
notebooks-refresh-file = ファイルを更新
notebooks-open-in-editor = エディタで開く
notebooks-copy-file-path = ファイルパスをコピー
notebooks-unnamed = 名称未設定
notebooks-notebook = {$title} ノートブック

## -- Keybinding labels ----------------------------------------------------------

notebooks-increase-notebook-font-size = ノートブックのフォントサイズを大きく
notebooks-decrease-notebook-font-size = ノートブックのフォントサイズを小さく
notebooks-reset-notebook-font-size = ノートブックのフォントサイズをリセット
notebooks-focus-terminal-input-from-notebook = ノートブックからターミナル入力にフォーカス
notebooks-focus-terminal-input-from-file = ファイルからターミナル入力にフォーカス
notebooks-reload-file = ファイルを再読み込み
notebooks-increase-font-size = フォントサイズを大きく
notebooks-decrease-font-size = フォントサイズを小さく

## -- Rich-text editor keybinding labels -----------------------------------------

notebooks-find-in-notebook = ノートブック内を検索
notebooks-toggle-regular-expression-search = 正規表現検索を切り替え
notebooks-toggle-case-sensitive-search = 大文字小文字区別検索を切り替え
notebooks-toggle-bold-styling = 太字スタイルを切り替え
notebooks-toggle-italic-styling = イタリックスタイルを切り替え
notebooks-toggle-strikethrough-styling = 取り消し線スタイルを切り替え
notebooks-toggle-inline-code-styling = インラインコードスタイルを切り替え
notebooks-toggle-underline-styling = 下線スタイルを切り替え
notebooks-create-or-edit-link = リンクを作成または編集
notebooks-de-select-shell-commands = Shellコマンドの選択を解除
notebooks-select-shell-command-at-cursor = カーソル位置のShellコマンドを選択
notebooks-select-previous-command = 前のコマンドを選択
notebooks-select-next-command = 次のコマンドを選択
notebooks-run-selected-commands = 選択したコマンドを実行
notebooks-remove-link = リンクを削除
notebooks-convert-to-block = {$block_label} に変換

## -- Model type names -----------------------------------------------------------

notebooks-model-type-plan = プラン
notebooks-model-type-notebook = ノートブック

## -- Accessibility --------------------------------------------------------------

notebooks-enable-regex-search-a11y = 正規表現検索を有効にする
notebooks-disable-regex-search-a11y = 正規表現検索を無効にする
notebooks-enable-case-sensitive-search-a11y = 大文字小文字を区別する検索を有効にする
notebooks-disable-case-sensitive-search-a11y = 大文字小文字を区別する検索を無効にする

## -- Split pane context menu items ---------------------------------------------

notebooks-split-pane-right = 右にペインを分割
notebooks-split-pane-left = 左にペインを分割
notebooks-split-pane-down = 下にペインを分割
notebooks-split-pane-up = 上にペインを分割

## -- Link secondary actions -----------------------------------------------------

notebooks-new-session = 新しいセッション
notebooks-open-a-new-terminal-session-in-this-directory = このディレクトリで新しいターミナルセッションを開く
notebooks-open-in-terminal-session = ターミナルセッションで開く
notebooks-open-in-editor-label = エディタで開く
notebooks-edit-markdown-file = Markdownファイルを編集

## -- Link error messages --------------------------------------------------------

notebooks-file-not-found = ファイルが見つかりません
notebooks-no-base-directory = ベースディレクトリがありません
notebooks-broken-file-link = ファイルリンクが壊れています

## -- Rich-text editor keybinding labels (detailed) -----------------------------

notebooks-copy-binding = コピー
notebooks-paste-binding = 貼り付け
notebooks-cut-binding = 切り取り
notebooks-undo-binding = 元に戻す
notebooks-redo-binding = やり直す
notebooks-move-backward-one-word = 後方に1単語移動
notebooks-move-forward-one-word = 前方に1単語移動
notebooks-move-forward-one-word-lower = 前方に1単語移動
notebooks-move-backward-one-word-lower = 後方に1単語移動
notebooks-move-cursor-up = カーソルを上に移動
notebooks-move-cursor-down = カーソルを下に移動
notebooks-move-cursor-left = カーソルを左に移動
notebooks-move-cursor-right = カーソルを右に移動
notebooks-move-to-paragraph-start = 段落の先頭に移動
notebooks-move-to-paragraph-end = 段落の末尾に移動
notebooks-end = 終了
notebooks-select-one-word-left = 左に1単語選択
notebooks-select-one-word-right = 右に1単語選択
notebooks-select-one-character-left = 左に1文字選択
notebooks-select-one-character-right = 右に1文字選択
notebooks-select-up = 上に選択
notebooks-select-down = 下に選択
notebooks-select-to-paragraph-start = 段落の先頭まで選択
notebooks-select-to-paragraph-end = 段落の末尾まで選択
notebooks-select-to-line-end = 行末まで選択
notebooks-select-to-line-start = 行頭まで選択
notebooks-remove-previous-character = 前の文字を削除
notebooks-cut-word-left = 左の単語を切り取り
notebooks-delete-word-left = 左の単語を削除
notebooks-cut-word-right = 右の単語を切り取り
notebooks-delete-word-right = 右の単語を削除
notebooks-cut-all-left = 左すべてを切り取り
notebooks-delete-all-left = 左すべてを削除
notebooks-cut-all-right = 右すべてを切り取り
notebooks-delete-all-right = 右すべてを削除
notebooks-toggle-debug-mode = リッチテキストデバッグモードを切り替え
notebooks-copy-rich-text-buffer = リッチテキストバッファをコピー
notebooks-copy-rich-text-selection = リッチテキスト選択をコピー
notebooks-log-editor-state = エディタの状態をログ出力

## -- Link tooltip ---------------------------------------------------------------

notebooks-copy-link-tooltip = リンクをコピー
notebooks-edit-link-button = 編集
notebooks-link-copied-toast = リンクをコピーしました

## -- File path tooltip ----------------------------------------------------------

notebooks-open-folder = フォルダを開く
notebooks-open-file = ファイルを開く
notebooks-open-in-warp = Warpで開く

## -- Accessibility (editor view) -----------------------------------------------

notebooks-pasting-a11y = 貼り付け中: {$content}
notebooks-edit-link-a11y = リンクを編集
notebooks-copy-link-a11y = リンクをコピー
notebooks-open-link-a11y = リンクを開く: {$url}
notebooks-secondary-click-a11y = {$url} をセカンダリクリック
notebooks-delete-line-left-a11y = 左の行を削除
notebooks-delete-line-right-a11y = 右の行を削除
notebooks-delete-word-left-a11y = 左の単語を削除
notebooks-delete-word-right-a11y = 右の単語を削除
notebooks-cut-line-left-a11y = 左の行を切り取り
notebooks-cut-line-right-a11y = 右の行を切り取り
notebooks-cut-word-left-a11y = 左の単語を切り取り
notebooks-cut-word-right-a11y = 右の単語を切り取り
notebooks-show-character-palette-a11y = 文字パレットを表示
notebooks-show-find-bar-a11y = 検索バーを表示
notebooks-open-block-insertion-menu-a11y = ブロック挿入メニューを開く
notebooks-open-embedded-object-search-a11y = 埋め込みオブジェクト検索メニューを開く
notebooks-insert-block-a11y = {$block_label} ブロックを挿入
notebooks-de-select-command-a11y = コマンドの選択を解除
notebooks-switch-selecting-commands-to-text-a11y = コマンド選択からテキスト選択に切り替え
notebooks-change-code-block-lang-a11y = コードブロックの言語を {$code_block_type} に変更
notebooks-copy-code-block-a11y = コードブロックをコピー
notebooks-toggle-task-list-a11y = タスクリストを切り替え

## -- File notebook strings ------------------------------------------------------

notebooks-command-from = {$location_name} からのコマンド
notebooks-move-to-space-prefix = {""} に移動
## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

