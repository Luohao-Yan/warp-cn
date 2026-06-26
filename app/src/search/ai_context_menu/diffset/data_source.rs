use warpui::AppContext;

use super::search_item::DiffSetSearchItem;
use crate::code_review::diff_state::DiffMode;
use crate::search::ai_context_menu::mixer::AIContextMenuSearchableAction;
use crate::search::data_source::{Query, QueryResult};
use crate::search::mixer::{DataSourceRunErrorWrapper, SyncDataSource};
use crate::static_tr;
static_tr!(UNCOMMITTED_CHANGES_NAME, "search", "diff-uncommitted");
static_tr!(MAIN_BRANCH_CHANGES_NAME, "search", "diff-vs-main");

pub struct DiffSetDataSource;

impl SyncDataSource for DiffSetDataSource {
    type Action = AIContextMenuSearchableAction;

    fn run_query(
        &self,
        query: &Query,
        _app: &AppContext,
    ) -> Result<Vec<QueryResult<Self::Action>>, DataSourceRunErrorWrapper> {
        // Filter based on query if provided
        let query_text = &query.text.to_lowercase();
        let mut results: Vec<QueryResult<Self::Action>> = vec![];

        // Add uncommitted changes option
        if let Some(match_result) =
            fuzzy_match::match_indices_case_insensitive(UNCOMMITTED_CHANGES_NAME.get(), query_text)
        {
            results.push(
                DiffSetSearchItem {
                    diff_mode: DiffMode::Head,
                    match_result,
                }
                .into(),
            );
        }

        // Add main branch comparison option
        if let Some(match_result) =
            fuzzy_match::match_indices_case_insensitive(MAIN_BRANCH_CHANGES_NAME.get(), query_text)
        {
            results.push(
                DiffSetSearchItem {
                    diff_mode: DiffMode::MainBranch,
                    match_result,
                }
                .into(),
            );
        }

        Ok(results)
    }
}

impl warpui::Entity for DiffSetDataSource {
    type Event = ();
}
