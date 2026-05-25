# =============================================================================
# agent_cloud.ftl — Cloud agent UI strings
# =============================================================================
# Message IDs: agent-cloud-{id}
# =============================================================================

agent-cloud-tier-machine-text = Your agent is currently running on a { $specs } machine.
agent-cloud-upgrade-label = Upgrade
agent-cloud-upgrade-suffix = for more powerful cloud agents.
agent-cloud-failed-title = Failed to start environment
agent-cloud-github-auth-title = GitHub Authentication Required
agent-cloud-github-auth-message = Please authenticate with GitHub to continue
agent-cloud-github-auth-button = Authenticate with GitHub
agent-cloud-cancelled-title = Cloud Agent Run Cancelled
agent-cloud-cancelled-subtitle = No cloud environment was started
agent-cloud-start-title = Start a new Oz cloud agent
agent-cloud-description-text = Use Oz cloud agents to run parallel agents, build agents that run autonomously, and check in on your agents from anywhere.
agent-cloud-visit-docs = Visit docs
agent-cloud-subheading = Cloud agents require an environment that they'll run in to get their task done. Create your first environment below. You'll be able to edit the environment later, or add new environments when you need them.
agent-cloud-credits-single = You have 1 free credit to use on Oz cloud agents.
agent-cloud-credits-plural = You have { $count } free credits to use on Oz cloud agents.
agent-cloud-starting-up = Cloud agent starting up…
agent-cloud-interact-soon = You'll be able to interact with Oz soon
agent-cloud-agent-failed = Agent failed
agent-cloud-agent-harness-tooltip = Agent harness
agent-cloud-agent-harness-header = Agent harness
agent-cloud-warp-handoff-tooltip = This conversation is with the Warp Agent, so the cloud handoff will also use Warp
agent-cloud-disabled-by-admin = Disabled by your administrator
agent-cloud-execution-host-tooltip = Execution host
agent-cloud-execution-host-header = Execution host
agent-cloud-search-models = Search models
agent-cloud-choose-agent-model = Choose agent model
agent-cloud-no-results = No results
agent-cloud-default-model = Default
agent-cloud-secret-name-required = Please enter a name for the secret.
agent-cloud-select-api-key = Please select an API key or create a new one to use { $display_name } as a cloud agent.
agent-cloud-failed-save-api-key = Failed to save API key: { $error }
agent-cloud-new-cloud-agent = New cloud agent
agent-cloud-starting-environment = Starting environment...
agent-cloud-agent-working-on-task = Agent is working on task
agent-cloud-agent-failed-status = Agent failed
agent-cloud-authentication-required = Authentication required
agent-cloud-cancelled = Cancelled
agent-cloud-agent-fallback-name = Agent
agent-cloud-running-agent = Running { $cli_name }...

## -- Primary keys for migrated UI strings --

agent-cloud-loading-cloud-agent-runs = Loading cloud agent runs

## -- Agent status strings ---------------------------------------------------

agent-cloud-completed = { $name } completed
agent-cloud-needs-attention = { $name } needs attention
agent-cloud-filter-with-count = { $label } ({ $count })

## -- Double-prefix aliases --

agent-cloud-agent-cloud-tier-machine-text = Your agent is currently running on a { $specs } machine.
agent-cloud-agent-cloud-upgrade-label = { agent-cloud-upgrade-label }
agent-cloud-agent-cloud-upgrade-suffix = { agent-cloud-upgrade-suffix }
agent-cloud-agent-cloud-failed-title = { agent-cloud-failed-title }
agent-cloud-agent-cloud-github-auth-title = { agent-cloud-github-auth-title }
agent-cloud-agent-cloud-github-auth-message = { agent-cloud-github-auth-message }
agent-cloud-agent-cloud-github-auth-button = { agent-cloud-github-auth-button }
agent-cloud-agent-cloud-cancelled-title = { agent-cloud-cancelled-title }
agent-cloud-agent-cloud-cancelled-subtitle = { agent-cloud-cancelled-subtitle }
agent-cloud-agent-cloud-start-title = { agent-cloud-start-title }
agent-cloud-agent-cloud-description-text = { agent-cloud-description-text }
agent-cloud-agent-cloud-visit-docs = { agent-cloud-visit-docs }
agent-cloud-agent-cloud-subheading = { agent-cloud-subheading }
agent-cloud-agent-cloud-credits-single = { agent-cloud-credits-single }
agent-cloud-agent-cloud-credits-plural = You have { $count } free credits to use on Oz cloud agents.
agent-cloud-agent-cloud-starting-up = { agent-cloud-starting-up }
agent-cloud-agent-cloud-interact-soon = { agent-cloud-interact-soon }
agent-cloud-agent-cloud-agent-failed = { agent-cloud-agent-failed }
agent-cloud-agent-cloud-agent-harness-tooltip = { agent-cloud-agent-harness-tooltip }
agent-cloud-agent-cloud-agent-harness-header = { agent-cloud-agent-harness-header }
agent-cloud-agent-cloud-warp-handoff-tooltip = { agent-cloud-warp-handoff-tooltip }
agent-cloud-agent-cloud-disabled-by-admin = { agent-cloud-disabled-by-admin }
agent-cloud-agent-cloud-execution-host-tooltip = { agent-cloud-execution-host-tooltip }
agent-cloud-agent-cloud-execution-host-header = { agent-cloud-execution-host-header }
agent-cloud-agent-cloud-search-models = { agent-cloud-search-models }
agent-cloud-agent-cloud-choose-agent-model = { agent-cloud-choose-agent-model }
agent-cloud-agent-cloud-no-results = { agent-cloud-no-results }
agent-cloud-agent-cloud-default-model = { agent-cloud-default-model }
agent-cloud-agent-cloud-secret-name-required = { agent-cloud-secret-name-required }
agent-cloud-agent-cloud-select-api-key = Please select an API key or create a new one to use { $display_name } as a cloud agent.
agent-cloud-agent-cloud-failed-save-api-key = Failed to save API key: { $error }
agent-cloud-agent-cloud-new-cloud-agent = { agent-cloud-new-cloud-agent }
agent-cloud-agent-cloud-starting-environment = { agent-cloud-starting-environment }
agent-cloud-agent-cloud-agent-working-on-task = { agent-cloud-agent-working-on-task }
agent-cloud-agent-cloud-agent-failed-status = { agent-cloud-agent-failed-status }
agent-cloud-agent-cloud-authentication-required = { agent-cloud-authentication-required }
agent-cloud-agent-cloud-cancelled = { agent-cloud-cancelled }
agent-cloud-agent-cloud-agent-fallback-name = { agent-cloud-agent-fallback-name }
agent-cloud-agent-cloud-running-agent = Running { $cli_name }...

## -- Double-prefix aliases for agent status strings --

agent-cloud-agent-cloud-completed = { $name } completed
agent-cloud-agent-cloud-needs-attention = { $name } needs attention
agent-cloud-agent-cloud-filter-with-count = { $label } ({ $count })

## -- Double-prefix aliases for migrated UI strings --

agent-cloud-agent-cloud-loading-cloud-agent-runs = { agent-cloud-loading-cloud-agent-runs }
