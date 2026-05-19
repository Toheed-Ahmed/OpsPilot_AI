# System Architecture: OpsPilot AI

## High-Level System Overview
OpsPilot AI is built on a Control-Tower style architecture featuring a synchronized 14-agent matrix.

## Full 14-Agent Workflow
`	ext
Ingestion Agent -> Conflict Detection Agent -> Alert Agent -> Insight Agent -> Impact Agent -> Constraint Agent -> Validation Agent -> Decision Agent -> Recommendation Agent -> Execution Agent -> Monitoring Agent -> Rollback Agent -> Visualization Agent -> Data Persistence Module
`

## Execution Pipeline
The pipeline operates in a linear yet dynamically branching flow depending on safety thresholds and SLA limits. All agent transitions require validated JSON contracts. Semantic contextual reasoning was introduced to reduce false-positive crisis escalation.

## Rollback Flow
When the Monitoring Agent flags instability, the Rollback Agent takes over, reverting the operation using predefined safe-state matrices and halting the execution loop to request human escalation.

## Shadow vs Active Architecture
- **Shadow Mode:** Operates within the simulation sandbox. Safe, consequence-free testing. Shadow mode was designed to prevent unsafe autonomous mutations before execution approval.
- **Active Mode:** Mutates live routing and dispatch systems.

## Federated Sync Architecture
Maintains state synchronization across remote geographic nodes (Karachi, Lahore, Gwadar). Resolves network boundary mismatches via the Conflict Detection Agent.

## Debate Ledger Flow
Optimist and Pessimist agents analyze execution blueprints. The Decision Agent acts as the arbiter, hashing the final ruling via SHA-256 and committing it to the immutable ledger.

## Execution Trace Lifecycle
Append-only JSON logs capturing multi-source ingestion up to visualization indexing. Append-only execution traces were chosen to guarantee auditability and replay-safe workflow reconstruction.

## Alert Propagation Lifecycle
Semantic anomaly detection in pre-execution phases propagates downstream to inform Risk Velocity and SLA Forecasting.

## Visualization Pipeline
Extracts efore_state, fter_state, and diff_map directly from the trace for the Split-Screen Time Travel Control Tower.
