//! SQLite-backed task store for the local agent orchestration engine.
//!
//! Persists tasks, messages, and context snapshots so agent runs can survive
//! process restarts and be inspected after completion.

use std::sync::Arc;

use chrono::{DateTime, Local};
use diesel::prelude::*;
use diesel::SqliteConnection;
use parking_lot::Mutex;
use uuid::Uuid;

use super::errors::TaskStoreError;

// ---------------------------------------------------------------------------
// Diesel schema (mirrors the migration SQL)
// ---------------------------------------------------------------------------

mod schema {
    use diesel::table;

    table! {
        local_agent_tasks (task_id) {
            task_id -> Text,
            parent_task_id -> Nullable<Text>,
            conversation_id -> Text,
            model_id -> Text,
            prompt -> Text,
            summary -> Nullable<Text>,
            status -> Text,
            created_at -> Text,
            updated_at -> Text,
            error_message -> Nullable<Text>,
        }
    }

    table! {
        local_agent_messages (message_id) {
            message_id -> Text,
            task_id -> Text,
            request_id -> Nullable<Text>,
            role -> Text,
            content -> Nullable<Text>,
            tool_name -> Nullable<Text>,
            tool_call_id -> Nullable<Text>,
            tool_input -> Nullable<Text>,
            tool_output -> Nullable<Text>,
            timestamp -> Text,
            sequence_num -> Integer,
        }
    }

    table! {
        local_agent_context_snapshots (task_id, snapshot_seq) {
            task_id -> Text,
            snapshot_seq -> Integer,
            snapshot_data -> Text,
            token_count -> Integer,
            created_at -> Text,
        }
    }
}

use schema::{local_agent_context_snapshots, local_agent_messages, local_agent_tasks};

// ---------------------------------------------------------------------------
// Diesel models
// ---------------------------------------------------------------------------

#[derive(Queryable, Insertable, Debug, Clone)]
#[diesel(table_name = local_agent_tasks)]
struct TaskRow {
    task_id: String,
    parent_task_id: Option<String>,
    conversation_id: String,
    model_id: String,
    prompt: String,
    summary: Option<String>,
    status: String,
    created_at: String,
    updated_at: String,
    error_message: Option<String>,
}

#[derive(Queryable, Insertable, Debug, Clone)]
#[diesel(table_name = local_agent_messages)]
struct MessageRow {
    message_id: String,
    task_id: String,
    request_id: Option<String>,
    role: String,
    content: Option<String>,
    tool_name: Option<String>,
    tool_call_id: Option<String>,
    tool_input: Option<String>,
    tool_output: Option<String>,
    timestamp: String,
    sequence_num: i32,
}

#[derive(Queryable, Insertable, Debug, Clone)]
#[diesel(table_name = local_agent_context_snapshots)]
struct ContextSnapshotRow {
    task_id: String,
    snapshot_seq: i32,
    snapshot_data: String,
    token_count: i32,
    created_at: String,
}

// ---------------------------------------------------------------------------
// High-level domain types
// ---------------------------------------------------------------------------

/// Status of a local agent task.
#[derive(Debug, Clone, Copy, PartialEq, Eq)]
pub enum TaskStatus {
    Pending,
    Running,
    Completed,
    Failed,
    Cancelled,
}

impl TaskStatus {
    fn as_str(&self) -> &'static str {
        match self {
            TaskStatus::Pending => "pending",
            TaskStatus::Running => "running",
            TaskStatus::Completed => "completed",
            TaskStatus::Failed => "failed",
            TaskStatus::Cancelled => "cancelled",
        }
    }

    fn from_str_opt(s: &str) -> Option<Self> {
        match s {
            "pending" => Some(TaskStatus::Pending),
            "running" => Some(TaskStatus::Running),
            "completed" => Some(TaskStatus::Completed),
            "failed" => Some(TaskStatus::Failed),
            "cancelled" => Some(TaskStatus::Cancelled),
            _ => None,
        }
    }
}

/// A persisted task record.
#[derive(Debug, Clone)]
pub struct StoredTask {
    pub task_id: String,
    pub parent_task_id: Option<String>,
    pub conversation_id: String,
    pub model_id: String,
    pub prompt: String,
    pub summary: Option<String>,
    pub status: TaskStatus,
    pub created_at: DateTime<Local>,
    pub updated_at: DateTime<Local>,
    pub error_message: Option<String>,
}

/// A persisted message record.
#[derive(Debug, Clone)]
pub struct StoredMessage {
    pub message_id: String,
    pub task_id: String,
    pub request_id: Option<String>,
    pub role: String,
    pub content: Option<String>,
    pub tool_name: Option<String>,
    pub tool_call_id: Option<String>,
    pub tool_input: Option<String>,
    pub tool_output: Option<String>,
    pub timestamp: DateTime<Local>,
    pub sequence_num: i32,
}

// ---------------------------------------------------------------------------
// LocalAgentTaskStore
// ---------------------------------------------------------------------------

/// SQLite-backed store for local agent tasks and their messages.
pub struct LocalAgentTaskStore {
    conn: Arc<Mutex<SqliteConnection>>,
}

impl LocalAgentTaskStore {
    /// Creates a new task store backed by the given SQLite connection.
    ///
    /// The caller is responsible for ensuring the schema has been migrated
    /// (see `run_migrations`).
    pub fn new(conn: Arc<Mutex<SqliteConnection>>) -> Self {
        Self { conn }
    }

    /// Run the embedded migrations against the database.
    pub fn run_migrations(conn: &Mutex<SqliteConnection>) -> Result<(), TaskStoreError> {
        let mut conn = conn.lock();
        diesel::sql_query(
            include_str!("migrations/001_local_agent_tables.sql"),
        )
        .execute(&mut *conn)
        .map_err(|e| TaskStoreError::Migration(e.to_string()))?;
        Ok(())
    }

    // -- Task CRUD -----------------------------------------------------------

    /// Insert a new task.
    pub fn insert_task(
        &self,
        task_id: &str,
        parent_task_id: Option<&str>,
        conversation_id: &str,
        model_id: &str,
        prompt: &str,
    ) -> Result<(), TaskStoreError> {
        let now = Local::now().to_rfc3339();
        let row = TaskRow {
            task_id: task_id.to_string(),
            parent_task_id: parent_task_id.map(|s| s.to_string()),
            conversation_id: conversation_id.to_string(),
            model_id: model_id.to_string(),
            prompt: prompt.to_string(),
            summary: None,
            status: TaskStatus::Pending.as_str().to_string(),
            created_at: now.clone(),
            updated_at: now,
            error_message: None,
        };
        let mut conn = self.conn.lock();
        diesel::insert_into(local_agent_tasks::table)
            .values(&row)
            .execute(&mut *conn)?;
        Ok(())
    }

    /// Update task status.
    pub fn update_task_status(
        &self,
        task_id: &str,
        status: TaskStatus,
        error_message: Option<&str>,
    ) -> Result<(), TaskStoreError> {
        let now = Local::now().to_rfc3339();
        let mut conn = self.conn.lock();
        let target = local_agent_tasks::table.filter(
            local_agent_tasks::task_id.eq(task_id),
        );
        diesel::update(target)
            .set((
                local_agent_tasks::status.eq(status.as_str()),
                local_agent_tasks::updated_at.eq(now),
                local_agent_tasks::error_message.eq(error_message),
            ))
            .execute(&mut *conn)?;
        Ok(())
    }

    /// Update task summary.
    pub fn update_task_summary(
        &self,
        task_id: &str,
        summary: &str,
    ) -> Result<(), TaskStoreError> {
        let now = Local::now().to_rfc3339();
        let mut conn = self.conn.lock();
        let target = local_agent_tasks::table.filter(
            local_agent_tasks::task_id.eq(task_id),
        );
        diesel::update(target)
            .set((
                local_agent_tasks::summary.eq(summary),
                local_agent_tasks::updated_at.eq(now),
            ))
            .execute(&mut *conn)?;
        Ok(())
    }

    /// Get a task by ID.
    pub fn get_task(&self, task_id: &str) -> Result<Option<StoredTask>, TaskStoreError> {
        let mut conn = self.conn.lock();
        let row = local_agent_tasks::table
            .filter(local_agent_tasks::task_id.eq(task_id))
            .first::<TaskRow>(&mut *conn)
            .optional()?;
        Ok(row.map(|r| StoredTask {
            task_id: r.task_id,
            parent_task_id: r.parent_task_id,
            conversation_id: r.conversation_id,
            model_id: r.model_id,
            prompt: r.prompt,
            summary: r.summary,
            status: TaskStatus::from_str_opt(&r.status).unwrap_or(TaskStatus::Pending),
            created_at: r.created_at.parse().unwrap_or_else(|_| Local::now()),
            updated_at: r.updated_at.parse().unwrap_or_else(|_| Local::now()),
            error_message: r.error_message,
        }))
    }

    /// List tasks with an optional status filter.
    pub fn list_tasks(
        &self,
        status_filter: Option<TaskStatus>,
    ) -> Result<Vec<StoredTask>, TaskStoreError> {
        let mut conn = self.conn.lock();
        let rows: Vec<TaskRow> = match status_filter {
            Some(s) => local_agent_tasks::table
                .filter(local_agent_tasks::status.eq(s.as_str()))
                .load(&mut *conn)?,
            None => local_agent_tasks::table.load(&mut *conn)?,
        };
        Ok(rows
            .into_iter()
            .map(|r| StoredTask {
                task_id: r.task_id,
                parent_task_id: r.parent_task_id,
                conversation_id: r.conversation_id,
                model_id: r.model_id,
                prompt: r.prompt,
                summary: r.summary,
                status: TaskStatus::from_str_opt(&r.status).unwrap_or(TaskStatus::Pending),
                created_at: r.created_at.parse().unwrap_or_else(|_| Local::now()),
                updated_at: r.updated_at.parse().unwrap_or_else(|_| Local::now()),
                error_message: r.error_message,
            })
            .collect())
    }

    /// Delete a task and all its messages.
    pub fn delete_task(&self, task_id: &str) -> Result<(), TaskStoreError> {
        let mut conn = self.conn.lock();
        // Delete messages and snapshots first (foreign keys may not cascade).
        diesel::delete(
            local_agent_messages::table
                .filter(local_agent_messages::task_id.eq(task_id)),
        )
        .execute(&mut *conn)?;
        diesel::delete(
            local_agent_context_snapshots::table
                .filter(local_agent_context_snapshots::task_id.eq(task_id)),
        )
        .execute(&mut *conn)?;
        diesel::delete(
            local_agent_tasks::table
                .filter(local_agent_tasks::task_id.eq(task_id)),
        )
        .execute(&mut *conn)?;
        Ok(())
    }

    // -- Message CRUD -------------------------------------------------------

    /// Append a user/assistant/system message.
    pub fn append_text_message(
        &self,
        task_id: &str,
        request_id: Option<&str>,
        role: &str,
        content: &str,
    ) -> Result<String, TaskStoreError> {
        let msg_id = Uuid::new_v4().to_string();
        let now = Local::now().to_rfc3339();
        let seq = self.next_sequence_num(task_id)?;
        let row = MessageRow {
            message_id: msg_id.clone(),
            task_id: task_id.to_string(),
            request_id: request_id.map(|s| s.to_string()),
            role: role.to_string(),
            content: Some(content.to_string()),
            tool_name: None,
            tool_call_id: None,
            tool_input: None,
            tool_output: None,
            timestamp: now,
            sequence_num: seq,
        };
        let mut conn = self.conn.lock();
        diesel::insert_into(local_agent_messages::table)
            .values(&row)
            .execute(&mut *conn)?;
        Ok(msg_id)
    }

    /// Append a tool-call + result pair.
    pub fn append_tool_message(
        &self,
        task_id: &str,
        request_id: Option<&str>,
        tool_name: &str,
        tool_call_id: &str,
        tool_input: &str,
        tool_output: &str,
    ) -> Result<(String, String), TaskStoreError> {
        let call_id = Uuid::new_v4().to_string();
        let result_id = Uuid::new_v4().to_string();
        let now = Local::now().to_rfc3339();
        let seq_call = self.next_sequence_num(task_id)?;
        let seq_result = seq_call + 1;

        let call_row = MessageRow {
            message_id: call_id.clone(),
            task_id: task_id.to_string(),
            request_id: request_id.map(|s| s.to_string()),
            role: "tool".to_string(),
            content: None,
            tool_name: Some(tool_name.to_string()),
            tool_call_id: Some(tool_call_id.to_string()),
            tool_input: Some(tool_input.to_string()),
            tool_output: None,
            timestamp: now.clone(),
            sequence_num: seq_call,
        };
        let result_row = MessageRow {
            message_id: result_id.clone(),
            task_id: task_id.to_string(),
            request_id: request_id.map(|s| s.to_string()),
            role: "tool".to_string(),
            content: None,
            tool_name: Some(tool_name.to_string()),
            tool_call_id: Some(tool_call_id.to_string()),
            tool_input: None,
            tool_output: Some(tool_output.to_string()),
            timestamp: now,
            sequence_num: seq_result,
        };

        let mut conn = self.conn.lock();
        diesel::insert_into(local_agent_messages::table)
            .values(&call_row)
            .execute(&mut *conn)?;
        diesel::insert_into(local_agent_messages::table)
            .values(&result_row)
            .execute(&mut *conn)?;
        Ok((call_id, result_id))
    }

    /// Get all messages for a task, ordered by sequence.
    pub fn get_messages(&self, task_id: &str) -> Result<Vec<StoredMessage>, TaskStoreError> {
        let mut conn = self.conn.lock();
        let rows = local_agent_messages::table
            .filter(local_agent_messages::task_id.eq(task_id))
            .order(local_agent_messages::sequence_num.asc())
            .load::<MessageRow>(&mut *conn)?;
        Ok(rows
            .into_iter()
            .map(|r| StoredMessage {
                message_id: r.message_id,
                task_id: r.task_id,
                request_id: r.request_id,
                role: r.role,
                content: r.content,
                tool_name: r.tool_name,
                tool_call_id: r.tool_call_id,
                tool_input: r.tool_input,
                tool_output: r.tool_output,
                timestamp: r.timestamp.parse().unwrap_or_else(|_| Local::now()),
                sequence_num: r.sequence_num,
            })
            .collect())
    }

    /// Delete messages for a task from a given sequence number onward.
    /// Returns the number of deleted messages.
    pub fn delete_messages_from(&self, task_id: &str, from_seq: i32) -> Result<usize, TaskStoreError> {
        let mut conn = self.conn.lock();
        let count = diesel::delete(
            local_agent_messages::table
                .filter(local_agent_messages::task_id.eq(task_id))
                .filter(local_agent_messages::sequence_num.ge(from_seq)),
        )
        .execute(&mut *conn)?;
        Ok(count)
    }

    // -- Context snapshots ---------------------------------------------------

    /// Save a context snapshot for a task using raw (already-serialized) data.
    ///
    /// This version accepts a pre-serialized string instead of `Vec<api::Message>`
    /// because proto Message types may not implement serde Serialize/Deserialize.
    pub fn save_context_snapshot_raw(
        &self,
        task_id: &str,
        snapshot_seq: i32,
        snapshot_data: &str,
        token_count: usize,
    ) -> Result<(), TaskStoreError> {
        let now = Local::now().to_rfc3339();
        let row = ContextSnapshotRow {
            task_id: task_id.to_string(),
            snapshot_seq,
            snapshot_data: snapshot_data.to_string(),
            token_count: token_count as i32,
            created_at: now,
        };
        let mut conn = self.conn.lock();
        // Use INSERT OR REPLACE for upsert semantics (SQLite-specific).
        diesel::sql_query(
            "INSERT OR REPLACE INTO local_agent_context_snapshots \
             (task_id, snapshot_seq, snapshot_data, token_count, created_at) \
             VALUES (?, ?, ?, ?, ?)",
        )
        .bind::<diesel::sql_types::Text, _>(&row.task_id)
        .bind::<diesel::sql_types::Integer, _>(row.snapshot_seq)
        .bind::<diesel::sql_types::Text, _>(&row.snapshot_data)
        .bind::<diesel::sql_types::Integer, _>(row.token_count)
        .bind::<diesel::sql_types::Text, _>(&row.created_at)
        .execute(&mut *conn)?;
        Ok(())
    }

    /// Load the latest context snapshot for a task.
    ///
    /// Returns the raw serialized snapshot data and the token count.
    /// The caller is responsible for deserializing the data.
    pub fn load_latest_context_snapshot_raw(
        &self,
        task_id: &str,
    ) -> Result<Option<(String, usize)>, TaskStoreError> {
        let mut conn = self.conn.lock();
        let row = local_agent_context_snapshots::table
            .filter(local_agent_context_snapshots::task_id.eq(task_id))
            .order(local_agent_context_snapshots::snapshot_seq.desc())
            .first::<ContextSnapshotRow>(&mut *conn)
            .optional()?;
        match row {
            Some(r) => Ok(Some((r.snapshot_data, r.token_count as usize))),
            None => Ok(None),
        }
    }

    // -- Helpers ---------------------------------------------------------

    /// Get the next sequence number for a task's messages.
    fn next_sequence_num(&self, task_id: &str) -> Result<i32, TaskStoreError> {
        let mut conn = self.conn.lock();
        let max: Option<i32> = local_agent_messages::table
            .filter(local_agent_messages::task_id.eq(task_id))
            .select(diesel::dsl::max(local_agent_messages::sequence_num))
            .first(&mut *conn)?;
        Ok(max.unwrap_or(-1) + 1)
    }
}
