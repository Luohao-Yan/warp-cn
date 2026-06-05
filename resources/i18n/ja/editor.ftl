# =============================================================================
# editor.ftl — エディタキーバインドの説明とUI文字列
# =============================================================================
# Message IDs: editor-{id}
# app/src/editor/*.rs で使用
# =============================================================================

## -- 固定バインドの説明 ------------------------------------------------------

editor-copy = コピー
editor-cut = 切り取り
editor-paste = 貼り付け
editor-undo = 元に戻す
editor-redo = やり直す

## -- 編集可能なバインドの説明（キーバインド設定）----------------------------

editor-select-one-word-left = 左へ1単語選択
editor-select-one-word-right = 右へ1単語選択
editor-select-one-char-left = 左へ1文字選択
editor-select-one-char-right = 右へ1文字選択
editor-select-up = 上へ選択
editor-select-down = 下へ選択
editor-select-all = すべて選択
editor-select-to-line-start = 行頭まで選択
editor-select-to-line-end = 行末まで選択
editor-copy-and-clear-lines = 選択した行をコピーしてクリア
editor-add-selection-next-occurrence = 次の出現箇所に選択を追加
editor-select-to-line-end-title = 行末まで選択
editor-select-to-line-start-title = 行頭まで選択
editor-move-cursor-up = カーソルを上に移動
editor-move-cursor-down = カーソルを下に移動
editor-move-cursor-left = カーソルを左に移動
editor-move-cursor-right = カーソルを右に移動
editor-move-to-line-start = 行頭に移動
editor-move-to-line-end = 行末に移動
editor-end = 終了
editor-move-cursor-bottom = 一番下に移動
editor-move-cursor-top = 一番上に移動
editor-select-and-move-top = 選択して一番上に移動
editor-select-and-move-bottom = 選択して一番下に移動
editor-move-forward-one-word = 前方に1単語移動
editor-move-backward-one-word = 後方に1単語移動
editor-move-paragraph-start = 段落の先頭に移動
editor-move-paragraph-end = 段落の末尾に移動
editor-move-buffer-start = バッファの先頭に移動
editor-move-buffer-end = バッファの末尾に移動
editor-remove-previous-char = 前の文字を削除
editor-cut-word-left = 左の単語を切り取り
editor-delete-word-left = 左の単語を削除
editor-cut-word-right = 右の単語を切り取り
editor-delete-word-right = 右の単語を削除
editor-clear-selected-lines = 選択した行をクリア
editor-cut-all-right = 右側をすべて切り取り
editor-delete-all-right = 右側をすべて削除
editor-delete-all-left = 左側をすべて削除
editor-insert-newline = 改行を挿入
editor-fold = 折りたたむ
editor-unfold = 展開する
editor-fold-selected-ranges = 選択範囲を折りたたむ
editor-insert-last-word-prev-cmd = 前のコマンドの最後の単語を挿入
editor-move-backward-one-word-title = 後方に1単語移動
editor-move-forward-one-word-title = 前方に1単語移動
editor-move-backward-one-subword = 後方に1サブワード移動
editor-move-forward-one-subword = 前方に1サブワード移動
editor-select-one-subword-left = 左へ1サブワード選択
editor-select-one-subword-right = 右へ1サブワード選択
editor-accept-autosuggestion = 自動サジェストを承認
editor-inspect-command = コマンドを検査
editor-clear-command-editor = コマンドエディタをクリア
editor-add-cursor-above = 上にカーソルを追加
editor-add-cursor-below = 下にカーソルを追加

## -- ツールチップ ------------------------------------------------------------

editor-search-files-directories = ファイルとディレクトリを検索

## -- 画像エラーメッセージ ----------------------------------------------------

editor-model-no-image-support = 選択されたモデルは画像コンテキストをサポートしていません。
editor-image-unsupported-single = 画像を添付できません - 対応形式は PNG、JPG、GIF、WEBP です。
editor-image-unsupported-one = 1 つの画像が添付されませんでした - 対応形式は PNG、JPG、GIF、WEBP です。
editor-image-unsupported-many = { $count } 個の画像が添付されませんでした - 対応形式は PNG、JPG、GIF、WEBP です。
editor-image-read-error-single = 画像を添付できません - ファイルの読み取りに失敗しました。
editor-image-read-error-one = 1 つの画像が添付されませんでした - ファイルの読み取りに失敗しました。
editor-image-read-error-many = { $count } 個の画像が添付されませんでした - ファイルの読み取りに失敗しました。
editor-image-too-large-single = 画像を添付できません - ファイルが大きすぎます。
editor-image-too-large-one = 1 つの画像が添付されませんでした - ファイルが大きすぎます。
editor-image-too-large-many = { $count } 個の画像が添付されませんでした - ファイルが大きすぎます。
editor-image-processing-error-single = 画像を添付できません - 処理中にエラーが発生しました。
editor-image-processing-error-one = 1 つの画像が添付されませんでした - 処理中にエラーが発生しました。
editor-image-processing-error-many = { $count } 個の画像が添付されませんでした - 処理中にエラーが発生しました。
editor-limit-per-query = クエリあたりの上限は { $count }
editor-limit-per-conversation = 会話あたりの上限は { $count }
editor-image-not-attached = 1 つの画像が添付されませんでした - { $reason }。
editor-images-not-attached = { $count } 個の画像が添付されませんでした - { $reason }。

## -- キーバインドの説明 -------------------------------------------------------

editor-insert-nonexpanding-space = 非拡張スペースを挿入
editor-exit-vim-insert-mode = Vim 挿入モードを終了

## -- 自動サジェスト UI --------------------------------------------------------

editor-custom-ellipsis = カスタム...
editor-change-keybinding = キーバインドを変更
editor-ignore-suggestion = このサジェストを無視

## -- 画像コンテキストツールチップ --------------------------------------------

editor-image-unsupported-model = このモデルは画像添付をサポートしていません
editor-image-loading = 読み込み中...
editor-image-limit-per-query = 画像添付は無効です — クエリあたりの上限は { $count }
editor-image-limit-per-conversation = 画像添付は無効です — 会話あたりの上限は { $count }
editor-attach-images = 画像を添付

## -- 音声入力 ----------------------------------------------------------------

editor-voice-limit-hit = 音声リクエストの制限に達しました。制限は次のサイクルの一部としてリフレッシュされます。
editor-voice-error = 音声入力の処理中にエラーが発生しました。

## -- 自動サジェスト承認キーバインド文字列 ----------------------------------------

editor-custom-keybinding = カスタム...
editor-change-keybinding-tooltip = キーバインドを変更

## -- Double-prefix aliases for tr!() calls that include domain prefix in message ID --

