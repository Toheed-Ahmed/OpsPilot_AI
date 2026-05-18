import 'package:flutter/material.dart';

class ResultScreen extends StatelessWidget {
  final String userInput;
  final bool isAutonomousMode;
  const ResultScreen({
    super.key,
    required this.userInput,
    required this.isAutonomousMode,
  });

  @override
  Widget build(BuildContext context) {
    final String text = userInput.toLowerCase();

    // 1. Strict Scenario Definitions based on enterprise JSON matrices
    bool isEscrowHalt =
        text.contains('halt') ||
        text.contains('authorization') ||
        text.contains('escrow') ||
        text.contains('corrupted format');
    bool isFailureRecovery =
        text.contains('fail') ||
        text.contains('rollback') ||
        text.contains('coordinate') ||
        text.contains('recovery');
    bool isWeatherScenario =
        text.contains('rain') ||
        text.contains('flood') ||
        text.contains('weather') ||
        text.contains('multi');
    bool isFinancialScenario =
        text.contains('fuel') ||
        text.contains('price') ||
        text.contains('cost') ||
        text.contains('margin');

    // 🚨 STOPS UNWANTED EXECUTION: Active strict gatekeeper rule for missing/incomplete data
    bool isIncompleteData =
        text.contains('testing') ||
        text.contains('matrix') ||
        (!isEscrowHalt &&
            !isFailureRecovery &&
            !isWeatherScenario &&
            !isFinancialScenario);

    String scenarioTitle = "Disruption Vectors Remediated";
    List<String> beforeMetrics = [];
    List<String> afterMetrics = [];
    String carbonText = "0 metric tons";
    String carbonSummary = "No active ecological measurements available.";

    // Custom tracking layout properties to retain the premium design structure
    Color trackingStatusColor = isAutonomousMode
        ? const Color(0xFF34D399)
        : const Color(0xFFF59E0B);
    String statusSubtitle = !isAutonomousMode
        ? "PREVIEW MATRIX: Shadow logs active. Awaiting manager approval sequence."
        : "COMMIT CONFIRMED: Framework variations committed autonomously via Antigravity cores.";

    // 🚨 CONDITION A: INCOMPLETE TELEMETRY MATRIX BLOCK
    if (isIncompleteData) {
      scenarioTitle = "Incomplete Telemetry Interception";
      trackingStatusColor = const Color(0xFFEF4444); // Crimson Alert Red
      statusSubtitle =
          "PIPELINE TERMINATED: Safety constraints forced an automatic lock due to unmapped telemetry strings.";
      carbonText = "HALTED";
      carbonSummary =
          "Data Compliance Watchdog: Ingested telemetry patterns do not fit known enterprise scenario configurations. Orchestration layers held baseline to protect node arrays.";
      beforeMetrics = [
        "Ingestion Buffer: Data payload tracing strings ingested into system memory slots.",
        "Payload Anomaly: Missing critical scenario tokens or regional destination metadata markers.",
        "Integrity State: Pipeline evaluation layer flagged an active validation halt query.",
      ];
      afterMetrics = [
        "Mitigation Execution: Halted execution distribution to shield downstream fleet nodes.",
        "System Safeguard: Released automation signatures and put parsing cores on standby loop.",
        "Operational Recovery: Restored baseline parameters gracefully without script configuration crashes.",
      ];
    }
    // 🚨 CONDITION B: SOVEREIGN AUTHORIZATION ESCROW LOCK
    else if (isEscrowHalt) {
      scenarioTitle = "Sovereign Authorization Gateway";
      trackingStatusColor = const Color(0xFFEF4444);
      statusSubtitle =
          "GATEWAY BLOCK: High asset valuation bounds triggered. Direct administrator override token required.";
      carbonText = "PAUSED";
      carbonSummary =
          "Sovereign Escrow Telemetry: Carbon engine processing paused to ensure failover capacity prioritizes sovereign isolation protocols.";
      beforeMetrics = [
        "Ingestion Module: Inbound route vectors loaded with insufficient context parameters.",
        "API Pipeline: Fleet telemetry synchronization lag verified across the national fleet.",
        "Risk Profiler: Targeted transaction index values exceeded automatic processing limits.",
      ];
      afterMetrics = [
        "Billing State: Committed 8.5% surcharge ledger corrections securely on the active database plane.",
        "Navigation State: Isolated and shadowed experimental routing paths to isolate coordinate map bugs.",
        "Watchdog Action: Frozen execution flow completely until override validation signature is provided.",
      ];
    }
    // 🚨 CONDITION C: AUTOMATED FAIL-SAFE TRIGGER
    else if (isFailureRecovery) {
      scenarioTitle = "Automated Rollback & State Reversion";
      trackingStatusColor = const Color(0xFFFBBF24); // Amber Warning
      statusSubtitle =
          "CRITICAL FAIL-SAFE TRIGGERED: Coordination transmission discrepancy caught by watchdog. Stable route state restored.";
      carbonText = "RECOVERED";
      carbonSummary =
          "Watchdog Engine Summary: Boundary violation triggered exception FAIL-008 (Rerouting optimization failed). System isolated experimental routing loops and triggered ROLLBACK-002 protocol natively.";
      beforeMetrics = [
        "Pipeline Mode: Multi-path runtime concurrent analytics execution active.",
        "Coordinate Discrepancy: Target fleet navigation api transmitted unstable routing nodes.",
        "System Risk Index: Active critical hazard flag broadcasted directly to core infrastructure.",
      ];
      afterMetrics = [
        "Orchestration State: Halted unsafe route tracking dynamically to preserve logistics safety.",
        "Rollback Parameter: Inverted navigation endpoints back to previous verified checkout parameters.",
        "Escalation Engine: Transmitted automated emergency notification arrays straight to human operators.",
      ];
    }
    // 🟢 NOMINAL SCENARIO A: WEATHER OPTIMIZATION
    else if (isWeatherScenario) {
      scenarioTitle = "Multi-Source Node Optimization";
      carbonText = "14.2 metric tons";
      carbonSummary =
          "High-density dynamic rerouting avoided 450 miles of idle traffic in flooded zones, reducing fuel burn completely.";
      beforeMetrics = [
        "Inbound Channels: Karachi Port completely locked by labor union strike.",
        "Fleet Assets: Last-mile delivery vehicles immobilized in flooded zones.",
        "Warehouse Target: Karachi Central node facing total stock-out in <12 hours.",
      ];
      afterMetrics = [
        "Fleet Recovery: High-clearance tactical trucks deployed for critical triage.",
        "SLA Management: Standard constraints frozen safely under legal Force Majeure.",
        "Pipeline Protection: Incoming core inventory diverted safely via Hyderabad Depot.",
      ];
    }
    // 🟢 NOMINAL SCENARIO B: FINANCIAL MARGIN PROTECTION
    else if (isFinancialScenario) {
      scenarioTitle = "Financial Vector Margin Protection";
      carbonText = "2.8 metric tons";
      carbonSummary =
          "Route consolidation reduced unnecessary delivery node cycles, protecting environmental indexes.";
      beforeMetrics = [
        "Market Surge: Abrupt 18% petroleum price escalation active nationwide.",
        "Margin Viability: High financial probability of erasing standard profit margins.",
        "Routing Engine: Standard routing routes operate with unoptimized pricing parameters.",
      ];
      afterMetrics = [
        "Billing Execution: Operational margins secured via 8.5% dynamic fuel surcharge.",
        "Algorithmic Saving: Route efficiency targets improved by 10% via consolidation.",
        "Network State: Transportation variable costs stabilized across Pakistan.",
      ];
    }

    return Scaffold(
      backgroundColor: const Color(0xFF030712),
      appBar: AppBar(
        title: const Text(
          'Outcome Simulation Tracker',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 15,
            letterSpacing: 0.5,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🚨 ADAPTED TITLE BLOCK WITH BADGE INJECTION
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Expanded(
                  child: Text(
                    scenarioTitle,
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.w800,
                      color: Colors.white,
                      letterSpacing: -0.5,
                    ),
                  ),
                ),
                if (!isAutonomousMode) ...[
                  const SizedBox(width: 12),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFFD97706).withOpacity(0.15),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(
                        color: const Color(0xFFF59E0B).withOpacity(0.4),
                        width: 1,
                      ),
                    ),
                    child: const Text(
                      "SHADOW MODE ACTIVE",
                      style: TextStyle(
                        color: Color(0xFFF59E0B),
                        fontSize: 9,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1.0,
                      ),
                    ),
                  ),
                ],
              ],
            ),
            const SizedBox(height: 6),
            Text(
              statusSubtitle,
              style: TextStyle(
                color: trackingStatusColor,
                fontSize: 12,
                fontWeight: FontWeight.w600,
                letterSpacing: 0.2,
              ),
            ),
            const SizedBox(height: 28),

            // --- DEGRADED CONTEXT CARD (BEFORE) ---
            _buildStateCard(
              title: isIncompleteData
                  ? "TELEMETRY FAULT OVERVIEW (CRITICAL)"
                  : (isEscrowHalt || isFailureRecovery
                      ? "ANOMALY EXPOSED VECTOR (CRITICAL)"
                      : "CRITICAL SYSTEM STATE (BEFORE)"),
              icon: Icons.gpp_maybe_rounded,
              iconColor: const Color(0xFFF87171),
              bgColor: const Color(0xFF7F1D1D).withOpacity(0.08),
              borderColor: const Color(0xFFEF4444).withOpacity(0.15),
              content: beforeMetrics,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(vertical: 14),
              child: Center(
                child: Icon(
                  Icons.arrow_downward_rounded,
                  size: 24,
                  color: Colors.white24,
                ),
              ),
            ),

            // --- RECOVERED CONTEXT CARD (AFTER) ---
            _buildStateCard(
              title: isIncompleteData
                  ? "SAFE MODE RECOVERY DATA (STABLE)"
                  : (isEscrowHalt
                      ? "ESCROW LOCKDOWN PARAMS (STABLE)"
                      : (isFailureRecovery
                            ? "WATCHDOG MITIGATION COMPLETED (STABLE)"
                            : "STABILIZED ORCHESTRATION OUTCOME (AFTER)")),
              icon: Icons.verified_user_rounded,
              iconColor: isIncompleteData || isEscrowHalt
                  ? trackingStatusColor
                  : const Color(0xFF34D399),
              bgColor: isIncompleteData || isEscrowHalt
                  ? trackingStatusColor.withOpacity(0.04)
                  : const Color(0xFF064E3B).withOpacity(0.12),
              borderColor: isIncompleteData || isEscrowHalt
                  ? trackingStatusColor.withOpacity(0.2)
                  : const Color(0xFF10B981).withOpacity(0.18),
              content: afterMetrics,
            ),

            const SizedBox(height: 28),

            // --- GLASSMORPHIC SUSTAINABILITY REPORT PANEL ---
            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(
                color: const Color(0xFF0F172A).withOpacity(0.5),
                borderRadius: BorderRadius.circular(20),
                border: Border.all(
                  color: isIncompleteData || isEscrowHalt
                      ? trackingStatusColor.withOpacity(0.2)
                      : const Color(0xFF14B8A6).withOpacity(0.2),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 2.0),
                        child: Icon(
                          isIncompleteData || isEscrowHalt
                              ? Icons.gpp_bad_sharp
                              : Icons.bolt_sharp,
                          color: isIncompleteData || isEscrowHalt
                              ? trackingStatusColor
                              : const Color(0xFF2DD4BF),
                          size: 18,
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          isIncompleteData
                              ? "Payload Schema Mismatch Diagnosis"
                              : (isEscrowHalt || isFailureRecovery
                                  ? "Automated Failure Recovery Loop Telemetry"
                                  : "Antigravity Green Telemetry Metrics"),
                          style: TextStyle(
                            color: isIncompleteData || isEscrowHalt
                                ? trackingStatusColor
                                : const Color(0xFF2DD4BF),
                            fontWeight: FontWeight.w700,
                            fontSize: 13,
                            letterSpacing: 0.2,
                          ),
                        ),
                      ),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 5,
                        ),
                        decoration: BoxDecoration(
                          color:
                              (isIncompleteData || isEscrowHalt
                                      ? trackingStatusColor
                                      : const Color(0xFF0D9488))
                                  .withOpacity(0.15),
                          borderRadius: BorderRadius.circular(8),
                          border: Border.all(
                            color: isIncompleteData || isEscrowHalt
                                ? trackingStatusColor.withOpacity(0.3)
                                : const Color(0xFF14B8A6).withOpacity(0.3),
                          ),
                        ),
                        child: Text(
                          carbonText,
                          style: TextStyle(
                            color: isIncompleteData || isEscrowHalt
                                ? trackingStatusColor
                                : const Color(0xFF2DD4BF),
                            fontSize: 11,
                            fontWeight: FontWeight.w800,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(color: Colors.white10),
                  ),
                  Text(
                    carbonSummary,
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 12,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            // 🚨 SHADOW MODE MANAGER APPROVAL INTERACTION BLOCK
            if (!isAutonomousMode) ...[
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        backgroundColor: const Color(0xFF10B981), // Success Green
                        behavior: SnackBarBehavior.floating,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                        content: Row(
                          children: const [
                            Icon(Icons.verified_rounded, color: Colors.white),
                            SizedBox(width: 12),
                            // 🚨 FIXED SNACKBAR POPUP OVERFLOW
                            Expanded(
                              child: Text(
                                "LEDGER COMMITTED: Manager signature verified successfully!",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11, // Font size tightly bound for clean text wrapping
                                ),
                                softWrap: true,
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                  icon: const Icon(
                    Icons.lock_open_rounded,
                    color: Colors.white,
                    size: 18,
                  ),
                  label: const Expanded(
                    child: Text(
                      "Grant Operational Approval",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                        letterSpacing: 0.5,
                      ),
                      softWrap: true,
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFD97706),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(14),
                    ),
                    elevation: 0,
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                  ),
                ),
              ),
            ],
            const SizedBox(height: 40),

            SizedBox(
              width: double.infinity,
              height: 52,
              child: OutlinedButton(
                onPressed: () =>
                    Navigator.popUntil(context, (route) => route.isFirst),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(color: Colors.white.withOpacity(0.06)),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(14),
                  ),
                ),
                child: const Text(
                  "Return to Systems Console",
                  style: TextStyle(
                    color: Colors.white70,
                    fontWeight: FontWeight.w600,
                    fontSize: 13,
                    letterSpacing: 0.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildStateCard({
    required String title,
    required IconData icon,
    required Color iconColor,
    required Color bgColor,
    required Color borderColor,
    required List<String> content,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: borderColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(icon, color: iconColor, size: 16),
              const SizedBox(width: 10),
              // 🚨 FIXED CARD TITLE OVERFLOW ENGINE HERE
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: iconColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 11,
                    letterSpacing: 1.2,
                  ),
                  softWrap: true,
                ),
              ),
            ],
          ),
          const Divider(color: Colors.white10, height: 24),
          ...content.map(
            (text) => Padding(
              padding: const EdgeInsets.only(bottom: 10.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "• ",
                    style: TextStyle(
                      color: iconColor.withOpacity(0.4),
                      fontSize: 14,
                    ),
                  ),
                  Expanded(
                    child: Text(
                      text,
                      style: const TextStyle(
                        color: Color(0xFFF3F4F6),
                        fontSize: 13,
                        height: 1.5,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}