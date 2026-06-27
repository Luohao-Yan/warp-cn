-- Local agent task persistence
CREATE TABLE IF NOT EXISTS local_agent_tasks (
    task_id         TEXT PRIMARY KEY NOT NULL,
    parent_task_id  TEXT,
    conversation_id TEXT NOT NULL,
    model_id        TEXT NOT NULL,
    prompt          TEXT NOT NULL,
    summary         TEXT,
    status          TEXT NOT NULL DEFAULT 'pending',
    created_at      TEXT NOT NULL DEFAULT (datetime('now')),
    updated_at      TEXT NOT NULL DEFAULT (datetime('now')),
    error_message   TEXT
);

-- Local agent messages (conversation turns)
CREATE TABLE IF NOT EXISTS local_agent_messages (
    message_id      TEXT PRIMARY KEY NOT NULL,
    task_id         TEXT NOT NULL REFERENCES local_agent_tasks(task_id) ON DELETE CASCADE,
    request_id      TEXT,
    role            TEXT NOT NULL,           -- 'user', 'assistant', 'tool', 'system'
    content         TEXT,                     -- text content for user/assistant/system
    tool_name       TEXT,                     -- tool call name (role='tool')
    tool_call_id    TEXT,                     -- tool call ID (role='tool')
    tool_input      TEXT,                     -- JSON tool input (role='tool')
    tool_output     TEXT,                     -- JSON tool result (role='tool')
    timestamp       TEXT NOT NULL DEFAULT (datetime('now')),
    sequence_num    INTEGER NOT NULL DEFAULT 0
);

-- Index for fast task-based message lookup
CREATE INDEX IF NOT EXISTS idx_local_agent_messages_task_id
    ON local_agent_messages(task_id, sequence_num);

-- Local agent context snapshots (for context window truncation recovery)
CREATE TABLE IF NOT EXISTS local_agent_context_snapshots (
    task_id         TEXT NOT NULL REFERENCES local_agent_tasks(task_id) ON DELETE CASCADE,
    snapshot_seq    INTEGER NOT NULL,
    snapshot_data    TEXT NOT NULL,           -- serialized messages at this snapshot point (base64 prost)
    token_count     INTEGER NOT NULL DEFAULT 0,
    created_at      TEXT NOT NULL DEFAULT (datetime('now')),
    PRIMARY KEY (task_id, snapshot_seq)
);
