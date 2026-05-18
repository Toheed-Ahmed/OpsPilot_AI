# OpsPilot AI - Enterprise Autonomous Multi-Agent Logistics Intelligence System

## System Overview
OpsPilot AI is a production-ready, multi-agent logistics intelligence system designed to ingest unstructured data, assess real-world business impacts, and autonomously simulate execution steps (like routing updates or pricing changes). It acts as an **Agentic Decision-Making and Risk-Aware Control System**, specifically engineered to handle the complexities of supply chain disruptions without blind automation.

This system is powered by Google Antigravity Multi-Agent Orchestration Engine, enabling:
- distributed agent reasoning
- structured JSON communication flow
- autonomous logistics decision simulation
- real-world operational modeling

## Why a Multi-Agent System (Instead of a Single LLM)?
Using a single LLM for complex operations is prone to hallucinations, blending context, and erratic actions. OpsPilot AI utilizes a multi-agent architecture to enforce:
- **Separation of Concerns:** Each agent has a specialized, narrow focus (e.g., *only* extract impacts, or *only* validate).
- **Auditability & Traceability:** By looking at the JSON log between agents, human supervisors can trace exactly *why* a specific operational change was executed.
- **Robustness:** A single LLM might force a decision on bad data. A multi-agent pipeline includes dedicated validation checkpoints to reject bad data safely.

## Architecture & Communication Protocols

- **Strict JSON Passing:** Agents communicate exclusively via structured JSON objects. The output of one agent becomes the *exact* input for the next agent. This ensures a clean, unbreakable chain of thought and eliminates plain text drift.

- **Antigravity Orchestration:** The Antigravity framework operates as the central nervous system, sequentially spinning up specialized prompts, passing the JSON state context, and enforcing the pipeline order.

- **Failure Handling & Fallback Logic:** The Validation Agent monitors the pipeline for ambiguity or low confidence. If `confidence < medium` or `fallback_required: true`, the Decision Agent bypasses automated system changes and safely defaults to human escalation.

- **Real-World Simulation:** The Simulation Agent prevents direct production harm by outputting mock API calls (e.g., `POST /api/routing/geofence`) and expected systemic deltas. This proves the logic works in a controlled, hackathon-ready sandbox.


## 🧠 Key Enhancements 

- Fully semantic multi-source reasoning engine (no hardcoded keyword logic)
- Enterprise-grade 14-Agent autonomous orchestration workflow
- Real-time Alert Agent for dynamic crisis detection (pre + post execution)
- Action-Oriented Intelligence layer for execution tracking and operational state awareness
- Conflict Detection Agent for cross-source contradiction analysis
- Constraint-Aware Decision Intelligence using real-world logistics limitations
- Autonomous multi-strategy decision engine with risk-aware reasoning
- Parallel execution engine supporting 3–5 simultaneous logistics operations
- Dynamic rollback and recovery framework for unsafe or failed executions
- Monitoring Agent with continuous telemetry validation and instability detection
- Strict JSON state contracts across all agents for full traceability
- End-to-end execution trace logging inside `execution_trace.json`
- Live Terminal Command streaming for every agent stage
- Shadow vs Active Mode execution validation system
- Sustainability & Carbon Footprint Intelligence metrics
- Before vs After operational visualization engine
- Cross-region supply chain propagation analysis
- Financial, operational, trade, and infrastructure impact modeling
- Multi-source ingestion support:
  - fleet logs
  - weather alerts
  - warehouse reports
  - customer complaints
  - market/news intelligence
  - operational constraints
  - rollback/failure scenarios
- Advanced failure handling and automated rollback protection
- Human escalation fallback pathway for low-confidence execution
- Google Antigravity orchestration integration with synchronized workflow execution
- Real-time logistics intelligence dashboard compatibility (Flutter UI ready)
- Enterprise control-tower style architecture for supply chain operations
- Adaptive execution modes:
  - SHADOW mode (safe simulation)
  - ACTIVE mode (live operational execution)
- Mock operational APIs and autonomous routing simulation
- Production-style logistics anomaly detection and mitigation system

## 🚀 Next-Generation Intelligence Features (v2.0) (Latest Version)
- **Causal Root-Cause & Memory Graph Engine**: Deep extraction and mapping of operational disruption root causes using semantic embeddings.
- **Self-Healing Digital Twin Sandbox**: Simulation delta modeling allowing Shadow vs Active mode testing before production deployment.
- **Autonomous SLA Enforcement Escrow**: Dynamic vendor risk calculation, SLA breach escrow penalties, and automated carrier downgrades.
- **Dialectical Debate + Cryptographic Ledger Engine**: Multi-agent adversarial reasoning (Optimist vs Pessimist) sealed with SHA256 cryptographic hashes.
- **Multi-Tier Self-Healing Sandbox**: Fallback-ready, tiered execution layers for continuous operation despite API anomalies.
- **Proactive Sliding-Window SLA Drift Forecaster**: Velocity-based SLA breach prediction and continuous confidence modeling.
- **Asynchronous Carbon-Arbitrage Control Tower**: Post-execution optimization tracking for eco-scores and fuel efficiency gains.
- **Split-Screen Time Travel Control Tower**: Unprecedented timeline-based UI tracking state deltas (Before vs After) perfect for high-fidelity dashboards.
- **Multi-Region Federated Intelligence Sync**: Synchronization and conflict resolution across multiple geographic nodes (e.g., Karachi, Hyderabad, Gwadar).

## Full Agent Workflow
```text
5+ Multi-Source Inputs
↓
Ingestion Agent
↓
Conflict Detection Agent
↓
Insight Agent
↓
Impact Agent
↓
Alert Agent
↓
Action Intelligence Agent
↓
Constraint Agent
↓
Validation Agent
↓
Decision Agent
↓
Recommendation Agent
↓
Execution Agent (3–5 parallel actions)
↓
Monitoring Agent
↓
Rollback Agent
↓
Visualization Agent
```


## 🔄 OpsPilot AI — 15-Stage System Workflow Pipeline

1. **5+ Multi-Source Inputs** (News, Weather, Fleet, Warehouse, Complaints)
2. **Ingestion Agent** (Normalizes and structures concurrent data streams)
3. **Conflict Detection Agent** (Resolves cross-source contradictions)
4. **Alert Agent** (Detects cascading supply chain risks)
5. **Insight Agent** (Extracts core operational intelligence)
6. **Impact Agent** (Projects financial and operational SLA bleed rates)
7. **Constraint Agent** (Applies real-world resource restrictions)
8. **Validation Agent** (Audits execution safety and legal compliance)
9. **Decision Agent** (Selects optimal mitigation strategy)
10. **Recommendation Agent** (Builds actionable parallel execution blueprints)
11. **Execution Agent** (Fires ACTIVE/SHADOW parallel API payloads)
12. **Monitoring Agent** (Polls post-execution system telemetry)
13. **Rollback Agent** (Reverts unstable system states if necessary)
14. **Visualization Agent** (Renders Dashboard & Sustainability Metrics)
15. **Data Persistence Module** (Appends secure JSON execution trace)

---

## 📊 Standardized JSON Data Schemas

### 1. `weather.json` / `fleet.json` / `warehouse.json` / `customer_complaints.json`
*(Standardized Input Event Schema)*
```json
[
  {
    "id": "String (e.g., 'WEA-001', 'FLT-001', 'WH-001', 'COMP-001')",
    "category": "String (e.g., 'Weather', 'Operations', 'Infrastructure', 'Sales')",
    "location": "String (e.g., 'Karachi', 'Lahore')",
    "issue": "String (e.g., 'Heavy Rain', 'Transit Delay', 'Inventory Shortage')",
    "severity": "String ('Low', 'Medium', 'High', 'Critical')",
    "signal": "String (Detailed description of the operational event)"
  }
]


```
### 2 .`constraints.json`
(Enterprise Resource Ruleset Schema)
```json
[
  {
    "id": "String (e.g., 'CONSTRAINT-001')",
    "scenario": "String (e.g., 'Fuel Budget Shortage')",
    "fuel_budget_pkr": "Number (e.g., 50000)",
    "available_trucks": "Number (e.g., 12)",
    "available_drivers": "Number (e.g., 8)",
    "delivery_deadline_hours": "Number (e.g., 4)",
    "max_reroute_distance_km": "Number (e.g., 25)",
    "warehouse_capacity_percent": "Number (e.g., 70)",
    "priority_region": "String (e.g., 'Karachi')",
    "sla_time_hours": "Number (e.g., 6)",
    "fuel_shortage": "Boolean (true/false)",
    "notes": "String (Operational directive context)"
  }
]
```




## 🚨 Alert & Action Intelligence System
- Alert Agent detects system-wide logistics instability BEFORE execution
- Generates dynamic, context-aware crisis alerts (no static messages)
- Post-execution alerts confirm system recovery or failure
- Action Agent executes and tracks multi-step operational changes
- Ensures full traceability of decisions inside execution logs

## 📦 Execution Trace System
All workflow executions are stored in:
`mockdata/execution_trace.json`
- Each run is appended (never overwritten)
- Includes full agent-by-agent decision history
- Supports audit-ready AI transparency for evaluation


## 📂 Project Structure
*   `workflows/` — Core Agentic logic and action-execution flows.
*   `prompts/` — SRE Personas and decision-making frameworks.
*   `mobile_app/` — Android interface for on-the-go monitoring and approvals.
*   `mock_data/` — Unstructured reports and simulated system logs for testing.
*   `docs/` — Technical documentation and pitch materials.

## 👥 Team Members
*   **Toheed Ahmed** — Lead Architect: Workflows & Core Agent Development
*   **Muhammad Hasnain** — Failure Recovery & Rollback Engineer
*   **Dua Ali** — Mobile Development & UI/UX
*   **Abdul Ahad** — Data Strategy & Mock Data
*   **Yasir Hafeez** — Constraint & Decision Logic Engineer

---

## 📥 Getting Started

To get a local copy up and running, follow these steps:

```bash
# Clone the repository
git clone https://github.com/Toheed-Ahmed/OpsPilot_AI

# Enter the project directory
cd OpsPilot_AI

# Install dependencies
pip install -r requirements.txt
```
