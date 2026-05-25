use regex::Regex;
use std::sync::LazyLock;
use uuid::Uuid;

use crate::terminal::view::PromptSuggestion;

pub struct StaticPromptSuggestion {
    pub name: &'static str,
    pub pattern: &'static str,
    /// FTL message ID for the label, or None if there is no label.
    pub label_msg: Option<&'static str>,
    /// FTL message ID for the query template.
    pub query_msg: &'static str,
}

/// Attempts to match a terminal command against predefined static prompt suggestions.
///
/// If the command matches a static rule, this returns a [`SuggestedQuery`] with details from the
/// command substituted into the rule's query template.
pub fn static_suggested_query(command: &str) -> Option<PromptSuggestion> {
    // Try each rule in turn and apply the first match.
    for pattern in &*RULE_PATTERNS {
        if let Some(captures) = pattern.regex.captures(command) {
            // Extract capture group values for interpolation.
            let arg1 = captures.get(1).map(|m| m.as_str()).unwrap_or("");
            let arg2 = captures.get(2).map(|m| m.as_str()).unwrap_or("");

            let label = pattern.rule.label_msg.map(|msg_id| {
                crate::tr!("ai_assistant", msg_id, arg1 = arg1, arg2 = arg2)
            });
            let query = crate::tr!("ai_assistant", pattern.rule.query_msg, arg1 = arg1, arg2 = arg2);

            return Some(PromptSuggestion {
                id: Uuid::new_v4().to_string(),
                label,
                prompt: query,
                coding_query_context: None,
                static_prompt_suggestion_name: Some(pattern.rule.name.to_string()),
                should_start_new_conversation: false,
            });
        }
    }

    None
}

/// A static prompt suggestion with its pattern precompiled to a [`Regex`].
struct StaticPromptRule {
    rule: &'static StaticPromptSuggestion,
    regex: Regex,
}

static RULE_PATTERNS: LazyLock<Vec<StaticPromptRule>> = LazyLock::new(|| {
    STATIC_RULES
        .iter()
        .map(|rule| match Regex::new(rule.pattern) {
            Ok(regex) => StaticPromptRule { rule, regex },
            Err(e) => {
                panic!(
                    "Invalid pattern for static prompt rule `{}`: {}",
                    rule.name, e
                );
            }
        })
        .collect()
});

static STATIC_RULES: &[StaticPromptSuggestion] = &[
    // git checkout -b <branch>: Checks out a new branch named <branch>.
    StaticPromptSuggestion {
        name: "GIT_CHECKOUT_NEW_BRANCH",
        pattern: r"^git\s+checkout\s+-b\s+(\S+)\s*$",
        label_msg: Some("ai-code-feature-or-fix-bug-in-arg1"),
        query_msg: "ai-implement-feature-or-fix-bug-in-arg1",
    },
    // git clone <repo>: Clones a repository named <repo>.
    StaticPromptSuggestion {
        name: "GIT_CLONE",
        pattern: r"^git\s+clone\s+(\S+)\s*$",
        label_msg: Some("ai-help-code-feature-or-fix-bug-in-arg1"),
        query_msg: "ai-implement-feature-or-fix-bug-in-arg1",
    },
    // git switch -c <branch>: Creates and switches to a new branch named <branch>.
    StaticPromptSuggestion {
        name: "GIT_SWITCH_NEW_BRANCH",
        pattern: r"^git\s+switch\s+-c\s+(\S+)\s*$",
        label_msg: Some("ai-code-feature-or-fix-bug-in-arg1"),
        query_msg: "ai-implement-feature-or-fix-bug-in-arg1",
    },
    // git push: Pushes changes to a remote repository.
    StaticPromptSuggestion {
        name: "GIT_PUSH",
        pattern: r"^git\s+push\s*$",
        label_msg: None,
        query_msg: "ai-help-create-pull-request",
    },
    // git init: Initializes a new, empty Git repository.
    StaticPromptSuggestion {
        name: "GIT_INIT",
        pattern: r"^git\s+init\s*$",
        label_msg: Some("ai-help-start-new-project"),
        query_msg: "ai-help-start-new-project-ask-details",
    },
    // npm init / yarn init / pnpm init: Initializes a Node.js project.
    StaticPromptSuggestion {
        name: "NODE_PACKAGE_INIT",
        pattern: r"^(npm|yarn|pnpm)\s+init\s*$",
        label_msg: Some("ai-help-start-nodejs-project"),
        query_msg: "ai-help-start-nodejs-project-ask-details",
    },
    // npx create-react-app <project>: Creates a new React app called <project>.
    StaticPromptSuggestion {
        name: "NPX_CREATE_REACT_APP",
        pattern: r"^npx\s+create-react-app\s+(\S+)\s*$",
        label_msg: Some("ai-help-create-new-react-app"),
        query_msg: "ai-help-create-new-react-app-called-arg1",
    },
    // npx create-next-app <project>: Creates a new Next.js app called <project>.
    StaticPromptSuggestion {
        name: "NPX_CREATE_NEXT_APP",
        pattern: r"^npx\s+create-next-app\s+(\S+)\s*$",
        label_msg: Some("ai-help-create-new-nextjs-app"),
        query_msg: "ai-help-create-new-nextjs-app-called-arg1",
    },
    // cargo new <project>: Creates a new Rust package named <project>.
    StaticPromptSuggestion {
        name: "CARGO_NEW_PROJECT",
        pattern: r"^cargo\s+new\s+(\S+)\s*$",
        label_msg: Some("ai-help-start-rust-project-for-arg1"),
        query_msg: "ai-help-start-rust-project-for-arg1-ask-details",
    },
    // poetry new <project>: Creates a new Poetry-based Python project named <project>.
    StaticPromptSuggestion {
        name: "POETRY_NEW_PROJECT",
        pattern: r"^poetry\s+new\s+(\S+)\s*$",
        label_msg: Some("ai-help-start-poetry-project-for-arg1"),
        query_msg: "ai-help-start-poetry-project-for-arg1-ask-details",
    },
    // django-admin startproject <project>: Creates a new Django project named <project>.
    StaticPromptSuggestion {
        name: "DJANGO_START_PROJECT",
        pattern: r"^django-admin\s+startproject\s+(\S+)\s*$",
        label_msg: Some("ai-help-start-django-project-for-arg1"),
        query_msg: "ai-help-start-django-project-for-arg1-ask-details",
    },
    // rails new <app>: Creates a new Rails app named <app>.
    StaticPromptSuggestion {
        name: "RAILS_NEW_APP",
        pattern: r"^rails\s+new\s+(\S+)\s*$",
        label_msg: Some("ai-help-start-rails-app-for-arg1"),
        query_msg: "ai-help-start-rails-app-for-arg1-ask-details",
    },
    // gradle init / mvn archetype:generate: Initializes a Gradle or Maven project.
    StaticPromptSuggestion {
        name: "JAVA_PROJECT_INIT",
        pattern: r"^(gradle\s+init|mvn\s+archetype:generate)\s*$",
        label_msg: Some("ai-help-start-gradle-maven-project"),
        query_msg: "ai-help-start-gradle-maven-project-ask-details",
    },
    // go mod init <module>: Initializes a new Go module named <module>.
    StaticPromptSuggestion {
        name: "GO_MOD_INIT",
        pattern: r"^go\s+mod\s+init\s+(\S+)\s*$",
        label_msg: Some("ai-help-start-go-project-for-arg1"),
        query_msg: "ai-help-start-go-project-for-arg1-ask-details",
    },
    // swift package init: Initializes a new Swift package.
    StaticPromptSuggestion {
        name: "SWIFT_PACKAGE_INIT",
        pattern: r"^swift\s+package\s+init\s*$",
        label_msg: Some("ai-help-start-swift-project"),
        query_msg: "ai-help-start-swift-project-ask-details",
    },
    // terraform init: Initializes Terraform in the current directory.
    StaticPromptSuggestion {
        name: "TERRAFORM_INIT",
        pattern: r"^terraform\s+init\s*$",
        label_msg: Some("ai-help-start-terraform-configuration"),
        query_msg: "ai-help-start-terraform-configuration-ask-details",
    },
    // prisma init: Initializes Prisma in the current project.
    StaticPromptSuggestion {
        name: "PRISMA_INIT",
        pattern: r"^prisma\s+init\s*$",
        label_msg: Some("ai-help-set-up-prisma-in-this-project"),
        query_msg: "ai-help-set-up-prisma-in-this-project-query",
    },
    // python -m venv <env_name>: Creates a new Python virtual environment named <env_name>.
    StaticPromptSuggestion {
        name: "PYTHON_CREATE_VENV",
        pattern: r"^python\s+-m\s+venv\s+(\S+)\s*$",
        label_msg: None,
        query_msg: "ai-help-install-dependencies-for-arg1",
    },
    // bundle init: Creates a new Gemfile (Ruby Bundler).
    StaticPromptSuggestion {
        name: "BUNDLE_INIT",
        pattern: r"^bundle\s+init\s*$",
        label_msg: Some("ai-help-set-up-new-ruby-project"),
        query_msg: "ai-help-set-up-new-ruby-project-ask-details",
    },
    // ollama pull <model>: Pulls an Ollama model named <model>.
    StaticPromptSuggestion {
        name: "OLLAMA_PULL_MODEL",
        pattern: r"^ollama\s+pull\s+(\S+)\s*$",
        label_msg: None,
        query_msg: "ai-help-set-up-modelfile-for-arg1",
    },
    // kubectl top nodes: Shows node resource usage in Kubernetes.
    StaticPromptSuggestion {
        name: "KUBECTL_TOP_NODES",
        pattern: r"^kubectl\s+top\s+(nodes|node|no)\s*$",
        label_msg: None,
        query_msg: "ai-help-understand-resource-utilization-in-cluster",
    },
    // kubectl top pods: Shows pod resource usage in Kubernetes.
    StaticPromptSuggestion {
        name: "KUBECTL_TOP_PODS",
        pattern: r"^kubectl\s+top\s+(pods|po|pod)\s*$",
        label_msg: None,
        query_msg: "ai-help-understand-resource-utilization-in-cluster",
    },
    // kubectl get...: Gets Kubernetes resources (any).
    StaticPromptSuggestion {
        name: "KUBECTL_GET_RESOURCES",
        pattern: r"^kubectl\s+get.*$",
        label_msg: None,
        query_msg: "ai-help-inspect-kubernetes-resources",
    },
    // docker ps: Lists Docker containers.
    StaticPromptSuggestion {
        name: "DOCKER_LIST_CONTAINERS",
        pattern: r"^docker\s+ps\s*$",
        label_msg: None,
        query_msg: "ai-help-manage-running-containers",
    },
    // docker image ls: Lists Docker images.
    StaticPromptSuggestion {
        name: "DOCKER_LIST_IMAGES",
        pattern: r"^docker\s+image\s+ls\s*$",
        label_msg: None,
        query_msg: "ai-help-manage-docker-images",
    },
    // docker-compose up -d <service>: Spins up a service <service> in Docker Compose.
    StaticPromptSuggestion {
        name: "DOCKER_COMPOSE_UP_SERVICE",
        pattern: r"^docker-compose\s+up\s+-d\s+(\S+)\s*$",
        label_msg: Some("ai-help-manage-troubleshoot-arg1-docker-compose"),
        query_msg: "ai-help-manage-troubleshoot-arg1-docker-compose-query",
    },
    // docker network create <network>: Creates a Docker network named <network>.
    StaticPromptSuggestion {
        name: "DOCKER_NETWORK_CREATE",
        pattern: r"^docker\s+network\s+create\s+(\S+)\s*$",
        label_msg: None,
        query_msg: "ai-help-configure-containers-to-use-arg1",
    },
    // vagrant init <box>: Initializes a Vagrant box named <box>.
    StaticPromptSuggestion {
        name: "VAGRANT_INIT_BOX",
        pattern: r"^vagrant\s+init\s+(\S+)\s*$",
        label_msg: None,
        query_msg: "ai-help-set-up-customize-vagrant-box-arg1",
    },
    // vagrant up: Brings up a Vagrant environment.
    StaticPromptSuggestion {
        name: "VAGRANT_UP",
        pattern: r"^vagrant\s+up\s*$",
        label_msg: None,
        query_msg: "ai-help-provision-environment-troubleshoot-vagrant",
    },
    // grep -r <pattern>: Searches recursively for <pattern> in files.
    StaticPromptSuggestion {
        // Capture everything after `grep -r ` into capture group 1.
        name: "GREP_RECURSIVE_SEARCH",
        pattern: r"^grep\s+-r\s+(.*)$",
        label_msg: None,
        query_msg: "ai-help-search-code-across-files-for-arg1",
    },
    // find <args>: Searches for files/directories using `find`.
    StaticPromptSuggestion {
        // Capture everything after `find ` into capture group 1.
        // E.g. `find . -name "*.rs"`.
        name: "FIND_FILES",
        pattern: r"^find\s+(.*)$",
        label_msg: None,
        query_msg: "ai-help-search-code-across-files-with-arg1",
    },
    // ssh-keygen (no args): Generates an SSH key with default options.
    StaticPromptSuggestion {
        // This pattern matches "ssh-keygen" by itself or anything after it (e.g. "-t rsa -b 4096").
        name: "SSH_KEYGEN",
        pattern: r"^ssh-keygen(?:\s+(.*))?$",
        // We'll keep the label/query generic so it applies whether or not the user passed extra flags.
        // Not using the capture group here, but it's there if we need it for the future.
        label_msg: None,
        query_msg: "ai-walk-me-through-generating-ssh-key",
    },
];
