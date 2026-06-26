use std::borrow::Cow;
use std::fmt;

use warpui::Action;

use crate::server::telemetry::AddTabWithShellSource;
use crate::terminal::available_shells::AvailableShell;
use crate::terminal::view::TerminalAction;
use crate::WorkspaceAction;
use crate::static_tr;
static_tr!(DIR_DOWN, "search", "dir-down");
static_tr!(DIR_RIGHT, "search", "dir-right");
static_tr!(DIR_UP, "search", "dir-up");
static_tr!(DIR_LEFT, "search", "dir-left");

#[derive(Clone, Debug, PartialEq, Eq, Hash)]
pub struct NewSessionOptionId(pub(crate) String);
impl NewSessionOptionId {
    #[cfg_attr(not(feature = "local_tty"), allow(dead_code))]
    pub(super) fn new(s: String) -> Self {
        Self(s)
    }
}

#[derive(Debug)]
pub(super) enum Direction {
    Down,
    Right,
    Up,
    Left,
}

impl fmt::Display for Direction {
    fn fmt(&self, f: &mut fmt::Formatter<'_>) -> fmt::Result {
        write!(
            f,
            "{}",
            match self {
                Direction::Down => DIR_DOWN.get(),
                Direction::Right => DIR_RIGHT.get(),
                Direction::Up => DIR_UP.get(),
                Direction::Left => DIR_LEFT.get(),
            }
        )
    }
}

#[derive(Debug)]
pub(super) enum NewSessionConfig {
    NewTab(AvailableShell),
    NewWindow(AvailableShell),
    Split(Direction, AvailableShell),
}

impl NewSessionConfig {
    fn shell(&self) -> &AvailableShell {
        match self {
            NewSessionConfig::NewTab(shell) => shell,
            NewSessionConfig::NewWindow(shell) => shell,
            NewSessionConfig::Split(_, shell) => shell,
        }
    }
}

#[derive(Debug)]
/// An option for creating a new terminal session
///
/// Contains configuration information like:
/// - which shell to use
/// - how to display the option in the command palette
pub struct NewSessionOption {
    id: NewSessionOptionId,
    description: String,
    config: NewSessionConfig,
}

impl NewSessionOption {
    pub fn id(&self) -> &NewSessionOptionId {
        &self.id
    }

    /// Returns the description (a.k.a. the top line in the command palette entry)
    pub fn description(&self) -> &str {
        self.description.as_str()
    }
}

impl NewSessionOption {
    pub(super) fn new(id: NewSessionOptionId, config: NewSessionConfig) -> Self {
        let description = match &config {
            NewSessionConfig::NewTab(shell) => crate::tr!("search", "new-tab-shell")
                .replace("{ $shell }", shell.short_name().as_ref()),
            NewSessionConfig::NewWindow(shell) => crate::tr!("search", "new-window-shell")
                .replace("{ $shell }", shell.short_name().as_ref()),
            NewSessionConfig::Split(direction, shell) => crate::tr!("search", "split-pane-shell")
                .replace("{ $direction }", &direction.to_string())
                .replace("{ $shell }", shell.short_name().as_ref()),
        };
        Self {
            id,
            description,
            config,
        }
    }

    /// Returns an action that should be triggered if this entry is accepted
    pub fn action(&self) -> Box<dyn Action> {
        match &self.config {
            NewSessionConfig::NewTab(shell) => Box::new(WorkspaceAction::AddTabWithShell {
                shell: shell.clone(),
                source: AddTabWithShellSource::CommandPalette,
            }),
            NewSessionConfig::NewWindow(shell) => Box::new(WorkspaceAction::AddWindowWithShell {
                shell: shell.clone(),
            }),
            NewSessionConfig::Split(Direction::Down, shell) => {
                Box::new(TerminalAction::SplitDown(Some(shell.clone())))
            }
            NewSessionConfig::Split(Direction::Up, shell) => {
                Box::new(TerminalAction::SplitUp(Some(shell.clone())))
            }
            NewSessionConfig::Split(Direction::Right, shell) => {
                Box::new(TerminalAction::SplitRight(Some(shell.clone())))
            }
            NewSessionConfig::Split(Direction::Left, shell) => {
                Box::new(TerminalAction::SplitLeft(Some(shell.clone())))
            }
        }
    }

    /// Returns the details (a.k.a. the second line in the command palette entry)
    pub fn details(&self) -> Cow<'_, str> {
        self.config.shell().details()
    }
}
