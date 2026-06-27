use warpui::{SingletonEntity, View, ViewContext};

use crate::ai::agent::conversation::AIConversationId;
use crate::ai::blocklist::{BeginConversationRenameError, BlocklistAIHistoryModel};
use crate::server::server_api::ServerApiProvider;
use crate::view_components::DismissibleToast;
use crate::workspace::ToastStack;

const CONVERSATION_TITLE_MAX_CHARS: usize = 500;

use crate::static_tr;

static_tr!(EMPTY_TITLE_MESSAGE, "ai_assistant", "ai-conv-empty-title");
static_tr!(EMPTY_CONVERSATION_MESSAGE, "ai_assistant", "ai-conv-empty-conversation");
static_tr!(CONVERSATION_NOT_FOUND_MESSAGE, "ai_assistant", "ai-conv-not-found");
static_tr!(NOT_SYNCED_MESSAGE, "ai_assistant", "ai-conv-not-synced");
static_tr!(RENAME_IN_PROGRESS_MESSAGE, "ai_assistant", "ai-conv-rename-in-progress");
static_tr!(CONVERSATION_NOT_READY_MESSAGE, "ai_assistant", "ai-conv-not-ready");

/// Renames a conversation locally and triggers a conversation rename on the server.
///
/// Renaming is only exposed for open conversations, so the conversation is expected
/// to already be loaded in the history model.
pub(crate) fn rename_conversation<T: View>(
    conversation_id: AIConversationId,
    title: String,
    ctx: &mut ViewContext<T>,
) {
    let title = match validate_conversation_title(title) {
        Ok(title) => title,
        Err(message) => {
            let window_id = ctx.window_id();
            ToastStack::handle(ctx).update(ctx, |toast_stack, ctx| {
                toast_stack.add_ephemeral_toast(DismissibleToast::error(message), window_id, ctx);
            });
            return;
        }
    };
    if BlocklistAIHistoryModel::as_ref(ctx)
        .conversation(&conversation_id)
        .is_some_and(|conversation| conversation.is_empty())
    {
        let window_id = ctx.window_id();
        ToastStack::handle(ctx).update(ctx, |toast_stack, ctx| {
            toast_stack.add_ephemeral_toast(
                DismissibleToast::error(EMPTY_CONVERSATION_MESSAGE.get().to_owned()),
                window_id,
                ctx,
            );
        });
        return;
    }
    if conversation_already_has_title(conversation_id, &title, ctx) {
        return;
    }

    let history = BlocklistAIHistoryModel::handle(ctx);
    let server_conversation_id = match history.update(ctx, |history, ctx| {
        history.begin_conversation_rename(conversation_id, title.clone(), ctx)
    }) {
        Ok(server_conversation_id) => server_conversation_id,
        Err(err) => {
            let message = match err {
                BeginConversationRenameError::MissingServerConversationToken => NOT_SYNCED_MESSAGE.get().to_owned(),
                BeginConversationRenameError::RenameInProgress => RENAME_IN_PROGRESS_MESSAGE.get().to_owned(),
                BeginConversationRenameError::ConversationNotFound => {
                    CONVERSATION_NOT_FOUND_MESSAGE.get().to_owned()
                }
                BeginConversationRenameError::ConversationNotReady => {
                    CONVERSATION_NOT_READY_MESSAGE.get().to_owned()
                }
            };
            let window_id = ctx.window_id();
            ToastStack::handle(ctx).update(ctx, |toast_stack, ctx| {
                toast_stack.add_ephemeral_toast(
                    DismissibleToast::error(message.to_owned()),
                    window_id,
                    ctx,
                );
            });
            return;
        }
    };

    let server_api = ServerApiProvider::as_ref(ctx).get_ai_client();
    ctx.spawn(
        async move {
            server_api
                .rename_conversation(server_conversation_id, title)
                .await
        },
        move |_, result, ctx| {
            let window_id = ctx.window_id();
            match result {
                Ok(response) => {
                    let title = response.title;
                    BlocklistAIHistoryModel::handle(ctx).update(ctx, |history, ctx| {
                        history.complete_conversation_rename(conversation_id, title.clone(), ctx);
                    });
                    ToastStack::handle(ctx).update(ctx, |toast_stack, ctx| {
                        toast_stack.add_ephemeral_toast(
                            DismissibleToast::success(crate::tr!("ai_assistant", "ai-conv-renamed-to", title = title.as_str())),
                            window_id,
                            ctx,
                        );
                    });
                }
                Err(e) => {
                    BlocklistAIHistoryModel::handle(ctx).update(ctx, |history, ctx| {
                        history.fail_conversation_rename(conversation_id, ctx);
                    });
                    ToastStack::handle(ctx).update(ctx, |toast_stack, ctx| {
                        toast_stack.add_ephemeral_toast(
                            DismissibleToast::error(crate::tr!("ai_assistant", "ai-conv-failed-rename", error = format!("{e:#}"))),
                            window_id,
                            ctx,
                        );
                    });
                }
            }
        },
    );
}

/// Returns whether the conversation's current local title already matches `title`,
/// making the rename a no-op.
fn conversation_already_has_title<T: View>(
    conversation_id: AIConversationId,
    title: &str,
    ctx: &ViewContext<T>,
) -> bool {
    BlocklistAIHistoryModel::as_ref(ctx)
        .conversation(&conversation_id)
        .and_then(|conversation| conversation.title())
        .is_some_and(|current_title| current_title == title)
}

/// Trims and validates a requested conversation title, returning a user-facing
/// error message when the title is invalid.
fn validate_conversation_title(title: String) -> Result<String, String> {
    let title = title.trim();
    if title.is_empty() {
        return Err(EMPTY_TITLE_MESSAGE.get().to_owned());
    }

    if title.chars().count() > CONVERSATION_TITLE_MAX_CHARS {
        return Err(crate::tr!("ai_assistant", "ai-conv-title-max-chars", count = CONVERSATION_TITLE_MAX_CHARS as i64));
    }

    Ok(title.to_owned())
}
