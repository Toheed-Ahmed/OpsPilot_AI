// import 'package:flutter/material.dart';

// class ResultScreen extends StatefulWidget {
//   final String userInput;
//   final bool isAutonomousMode;
//   const ResultScreen({
//     super.key,
//     required this.userInput,
//     required this.isAutonomousMode,
//   });

//   @override
//   State<ResultScreen> createState() => _ResultScreenState();
// }

// class _ResultScreenState extends State<ResultScreen>
//     with SingleTickerProviderStateMixin {
//   // 🕒 Smooth continuous timeline controller
//   double _sliderValue = 1.0;

//   // Animation controller for live simulation text pulsing effect
//   late AnimationController _blinkController;

//   @override
//   void initState() {
//     super.initState();
//     _blinkController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1000),
//     )..repeat(reverse: true);
//   }

//   @override
//   void dispose() {
//     _blinkController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final String text = widget.userInput.toLowerCase();

//     // Scenario Keyword Identifiers
//     bool isEscrowHalt =
//         text.contains('halt') ||
//         text.contains('authorization') ||
//         text.contains('escrow') ||
//         text.contains('corrupted format');
//     bool isFailureRecovery =
//         text.contains('fail') ||
//         text.contains('rollback') ||
//         text.contains('coordinate') ||
//         text.contains('recovery');
//     bool isWeatherScenario =
//         text.contains('rain') ||
//         text.contains('flood') ||
//         text.contains('weather') ||
//         text.contains('multi') ||
//         text.contains('strike') ||
//         text.contains('block') ||
//         text.contains('clearance') ||
//         text.contains('logistics');
//     bool isFinancialScenario =
//         text.contains('fuel') ||
//         text.contains('price') ||
//         text.contains('cost') ||
//         text.contains('margin');

//     bool isIncompleteData =
//         text.contains('testing') ||
//         text.contains('matrix') ||
//         (!isEscrowHalt &&
//             !isFailureRecovery &&
//             !isWeatherScenario &&
//             !isFinancialScenario);

//     String phaseTitle;
//     String statusBanner;
//     Color dynamicTone;
//     List<String> graphNodes;
//     String stateCardBeforeTitle;
//     List<String> stateCardBeforeMetrics;
//     String stateCardAfterTitle;
//     List<String> stateCardAfterMetrics;
//     String carbonData;
//     String carbonDetails;
//     String debateStatus;
//     String debateOptimist;
//     String debatePessimist;
//     String debateRuling;
//     String debateHash;
//     bool isSimVisible;
//     String simText;

//     if (_sliderValue < 0.33) {
//       // ================= PHASE 1: FAULT INGESTION ANALYSIS =================
//       phaseTitle = "LOGISTICS DETECTED";
//       statusBanner =
//           "PIPELINE SUSPENDED IN ACTIVE MODE ➔ ROUTED TO SHADOW CONSOLE";
//       dynamicTone = const Color(0xFFEF4444); // Crimson Red
//       graphNodes = [
//         "▼ INGESTION FAULT",
//         "Validation: Failed",
//         "Database: Unchanged",
//       ];
//       stateCardBeforeTitle = "TELEMETRY SCHEMA CRASH (BEFORE)";
//       stateCardBeforeMetrics = [
//         "Validation Agent: Flagged data quality 'Compromised' with confidence score 42.",
//         "Error Scope: FAIL-013 (Invalid or corrupted data format) hit on target fleet matrices.",
//         "System Safeguard: Blocked direct autonomous mutations to shield downstream fleet nodes.",
//       ];
//       stateCardAfterTitle = "MITIGATION BLUEPRINT (STANDBY)";
//       stateCardAfterMetrics = [
//         "Escrow Status: Emergency rollback trigger locked behind administrative administrative rules.",
//         "Action Intelligence: Isolation arrays processing dependencies under a hidden thread boundary.",
//       ];
//       carbonData = "Telemetry Paused";
//       carbonDetails =
//           "Carbon compute cycles paused to prioritize failover calculation speed metrics.";
//       debateStatus = "⏳ MULTI-AGENT DEBATE INITIALIZING";
//       debateOptimist = "Awaiting thread validation context slots...";
//       debatePessimist = "Awaiting structural data normalization sequences...";
//       debateRuling = "Arbitration Engine Standing By";
//       debateHash = "SYSTEM_LOCK_PENDING";
//       isSimVisible = false;
//       simText = "Sandbox Engine Offline: Awaiting Ingestion Validation Pass";
//     } else if (_sliderValue >= 0.33 && _sliderValue < 0.66) {
//       // ================= PHASE 2: SHADOW SANDBOX DEBATE & MONTE CARLO =================
//       phaseTitle = "SHADOW DEBATE LOGS";
//       statusBanner =
//           "PARALLEL EVALUATION RAMPING ➔ AGENTS NEGOTIATING STRATEGIES";
//       dynamicTone = const Color(0xFFF59E0B); // Sandbox Amber
//       graphNodes = [
//         "Ingestion Pass",
//         "▼ LIVE DEBATE PROCESSING",
//         "Monte Carlo 100x",
//       ];
//       stateCardBeforeTitle = "EXPERIMENTAL BUFFER TELEMETRY (TESTING)";
//       stateCardBeforeMetrics = [
//         "Digital Twin Engine: Inbound schemas mirrored completely inside virtual memory arrays.",
//         "Constraint Mapping: Evaluating budget status against tight delivery deadline metrics.",
//         "Risk Volatility: Tracking 18% fuel price surge cascading across Pakistan networks.",
//       ];
//       stateCardAfterTitle = "SIMULATED MITIGATION PREVIEW (EVALUATING)";
//       stateCardAfterMetrics = [
//         "Proactive SLA Window: Prediction engine indicates 145 minutes until target contract breach.",
//         "Escrow Ledger Math: Automatic vendor downgrade penalty active at \$12,500.",
//         "Consensus Route: Sub-agents programmatically spawned to bid on spot-market alternatives.",
//       ];
//       carbonData = "2.4 Metric Tons Saved";
//       carbonDetails =
//           "Sandbox validation caught invalid coordinates, saving an estimated 50 miles of useless transit.";
//       debateStatus = "🔴 LIVE MULTI-AGENT DEBATE REPLAY CONSOLE";
//       debateOptimist =
//           "Optimist Agent: \"Tier 1 carrier may recover within 24 hours. Hold current positions for optimization.\"";
//       debatePessimist =
//           "Pessimist Agent: \"Weather modeling indicates prolonged disruption; SLA escrow downgrade required immediately.\"";
//       debateRuling =
//           "Arbitration Progress: Evaluating Risk Velocity curves under constraint matrices";
//       debateHash = "Hashed Matrix Stream: a8f5f167... (UNCOMMITTED)";
//       isSimVisible = true;
//       simText =
//           "⚡ SIMULATION ACTIVE: Parallel Monte Carlo loops exploring alternate routing tracks...";
//     } else {
//       // ================= PHASE 3: AUTOMATED STATE RECOVERY =================
//       phaseTitle = "STATE RECOVERY";
//       statusBanner = "LEDGER COMMITTED ➔ REGIONAL SYSTEM BASELINE RECOVERED";
//       dynamicTone = const Color(0xFF34D399); // Emerald Green
//       graphNodes = [
//         "Ingestion Pass",
//         "Debate Consensus",
//         "▼ ROLLBACK RECOVERY SUCCESS",
//       ];
//       stateCardBeforeTitle = "CONTAINED INFRASTRUCTURE MATRIX (RESOLVED)";
//       stateCardBeforeMetrics = [
//         "Integrity State: Isolated and shadowed experimental coordinate mapping failure natively.",
//         "Logistics Recovery: Stopped corrupted payload propagation before reaching driver terminals.",
//       ];
//       stateCardAfterTitle = "STABILIZED ORCHESTRATION OUTCOME (AFTER)";
//       stateCardAfterMetrics = [
//         "Rollback Action: Reverted shadow fleet routing loop back to previous stable hazard rules.",
//         "Applied System Update: Billing system modified with 8.5% partial surcharge committed successfully.",
//         "Consensus Status: Causal root-cause verified and network sync confirmed across node hubs.",
//       ];
//       carbonData = "14.2 Metric Tons Saved";
//       carbonDetails =
//           "High-density dynamic routing and proactive dispatch halts avoided 450 miles of idle traffic.";
//       debateStatus = "🔒 LEDGER COMMIT PROOF-SEALED";
//       debateOptimist =
//           "Optimist Agent Trace: System evaluation logs archived safely.";
//       debatePessimist =
//           "Pessimist Agent Trace: Target workflow status overridden to stable parameters.";
//       debateRuling =
//           "FINAL VERDICT: Carrier shifted to Tier 2. Ledger closed securely.";
//       debateHash = "SHA-256 PROOF SEAL: a8f5f167f44f4964e6c998dee827110c";
//       isSimVisible = true;
//       simText =
//           "✅ BEST SIMULATION CONVERGED: Route via Hub A reduced SLA breach risk by 45%";
//     }

//     return Scaffold(
//       backgroundColor: const Color(0xFF030712),
//       appBar: AppBar(
//         title: const Text(
//           'Outcome Simulation Tracker',
//           style: TextStyle(
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//             fontSize: 14,
//           ),
//         ),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         iconTheme: const IconThemeData(color: Colors.white),
//       ),
//       body: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // --- MAIN TOP HEADER PACK (🚨 WRAP FIX: Responsive Wrap layout used to prevent text going out) ---
//             Wrap(
//               spacing: 12.0,
//               runSpacing: 8.0,
//               alignment: WrapAlignment.spaceBetween,
//               crossAxisAlignment: WrapCrossAlignment.center,
//               children: [
//                 Text(
//                   phaseTitle,
//                   style: const TextStyle(
//                     fontSize: 19,
//                     fontWeight: FontWeight.w900,
//                     color: Colors.white,
//                     letterSpacing: -0.5,
//                   ),
//                 ),
//                 if (!widget.isAutonomousMode)
//                   Container(
//                     padding: const EdgeInsets.symmetric(
//                       horizontal: 10,
//                       vertical: 5,
//                     ),
//                     decoration: BoxDecoration(
//                       color: const Color(0xFFD97706).withOpacity(0.15),
//                       borderRadius: BorderRadius.circular(8),
//                       border: Border.all(
//                         color: const Color(0xFFF59E0B).withOpacity(0.4),
//                       ),
//                     ),
//                     child: const Text(
//                       "SHADOW MODE Active",
//                       style: TextStyle(
//                         color: Color(0xFFF59E0B),
//                         fontSize: 9,
//                         fontWeight: FontWeight.w900,
//                       ),
//                     ),
//                   ),
//               ],
//             ),
//             const SizedBox(height: 6),
//             Text(
//               statusBanner,
//               style: TextStyle(
//                 color: dynamicTone,
//                 fontSize: 11,
//                 fontWeight: FontWeight.w700,
//                 letterSpacing: 0.2,
//               ),
//             ),
//             const SizedBox(height: 20),

//             // 🌐 MULTI-REGION FEDERATED NETWORK STATUS BANNER
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(12),
//               decoration: BoxDecoration(
//                 color: const Color(0xFF10B981).withOpacity(0.04),
//                 borderRadius: BorderRadius.circular(12),
//                 border: Border.all(
//                   color: const Color(0xFF10B981).withOpacity(0.12),
//                 ),
//               ),
//               child: Row(
//                 children: const [
//                   Icon(Icons.hub_rounded, color: Color(0xFF34D399), size: 15),
//                   SizedBox(width: 10),
//                   Expanded(
//                     child: Text(
//                       "Federated Consensus Sync: NODE-PK-SOUTH (Karachi, Hyderabad, Gwadar) Live",
//                       style: TextStyle(
//                         color: Color(0xFF34D399),
//                         fontSize: 11,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 18),

//             // 🕒 FEATURE 4: TIME-TRAVEL CONTINUOUS SLIDER WIDGET
//             if (!widget.isAutonomousMode) ...[
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFF1F2937).withOpacity(0.25),
//                   borderRadius: BorderRadius.circular(16),
//                   border: Border.all(color: Colors.white.withOpacity(0.04)),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const Text(
//                       "🕒 Split-Screen Time-Travel Control Tower Slider",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 13,
//                         fontWeight: FontWeight.bold,
//                       ),
//                     ),
//                     const SizedBox(height: 4),
//                     Text(
//                       "Current Timeline Index Position: ${_sliderValue.toStringAsFixed(2)}",
//                       style: TextStyle(color: Colors.grey[500], fontSize: 11),
//                     ),
//                     const SizedBox(height: 12),
//                     Slider(
//                       value: _sliderValue,
//                       min: 0.0,
//                       max: 1.0,
//                       activeColor: dynamicTone,
//                       inactiveColor: Colors.white10,
//                       onChanged: (val) {
//                         setState(() {
//                           _sliderValue = val;
//                         });
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//             ],

//             // 🌿 FEATURE 1: VISUAL CAUSAL TREE NODE MESH ENGINE (HIERARCHICAL TREE REFACTOR - FIXED & STABLE)
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: const Color(0xFF1E1B4B).withOpacity(0.25),
//                 borderRadius: BorderRadius.circular(16),
//                 border: Border.all(
//                   color: const Color(0xFF6366F1).withOpacity(0.18),
//                 ),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Row(
//                     children: [
//                       const Icon(
//                         Icons.account_tree_rounded,
//                         color: Color(0xFF818CF8),
//                         size: 16,
//                       ),
//                       const SizedBox(width: 8),
//                       const Expanded(
//                         child: Text(
//                           "Visual Causal Tree Node Mesh Engine",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ),
//                       const SizedBox(width: 6),
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 6,
//                           vertical: 2,
//                         ),
//                         decoration: BoxDecoration(
//                           color: const Color(0xFF6366F1).withOpacity(0.2),
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                         child: const Text(
//                           "Match: 88.5%",
//                           style: TextStyle(
//                             color: Color(0xFFC7D2FE),
//                             fontSize: 10,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 10),
//                     child: Divider(color: Colors.white10, height: 1),
//                   ),

//                   // --- LEVEL 1: Root Origin Cause ---
//                   _buildVisualGraphNode(
//                     "🌧️ Origin: Weather Disruption",
//                     _sliderValue >= 0.0
//                         ? const Color(0xFFEF4444)
//                         : Colors.white12,
//                   ),

//                   // 🚨 FIXED: Arrow space badha di aur lamba icons use kiya hai
//                   const Padding(
//                     padding: EdgeInsets.symmetric(
//                       vertical: 12.0,
//                     ), // Generous space below Level 1
//                     child: Icon(
//                       Icons
//                           .keyboard_double_arrow_down_rounded, // Zyada visible aur stylish lamba arrow
//                       color: Colors.white24,
//                       size: 20, // Increased size for better visibility
//                     ),
//                   ),

//                   // --- LEVEL 2: Cascading Symptoms ---
//                   Column(
//                     children: [
//                       _buildVisualGraphNode(
//                         "⚓ Port Congestion",
//                         _sliderValue >= 0.33
//                             ? const Color(0xFFF59E0B)
//                             : Colors.white12,
//                       ),
//                       const SizedBox(height: 10), // Box gaps inside Level 2
//                       _buildVisualGraphNode(
//                         "📈 18% Fuel Price Spike",
//                         _sliderValue >= 0.33
//                             ? Colors.amberAccent
//                             : Colors.white12,
//                       ),
//                     ],
//                   ),

//                   // 🚨 FIXED: Arrow space badha di aur lamba icons use kiya hai
//                   const Padding(
//                     padding: EdgeInsets.symmetric(
//                       vertical: 12.0,
//                     ), // Generous space below Level 2
//                     child: Icon(
//                       Icons
//                           .keyboard_double_arrow_down_rounded, // Zyada visible aur stylish lamba arrow
//                       color: Colors.white24,
//                       size: 20, // Increased size for better visibility
//                     ),
//                   ),

//                   // --- LEVEL 3: Ultimate System Bottleneck ---
//                   _buildVisualGraphNode(
//                     "🚨 System Bottleneck: Lahore Dispatch Delay",
//                     _sliderValue >= 0.66
//                         ? const Color(0xFF38BDF8)
//                         : Colors.white12,
//                   ),

//                   if (_sliderValue == 1.0) ...[
//                     const SizedBox(height: 10),
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 10,
//                         vertical: 6,
//                       ),
//                       decoration: BoxDecoration(
//                         color: const Color(0xFF10B981).withOpacity(0.08),
//                         borderRadius: BorderRadius.circular(6),
//                       ),
//                       child: const Text(
//                         "🛡️ Rollback Remediation Blueprint Applied Successfully!",
//                         style: TextStyle(
//                           color: Color(0xFF34D399),
//                           fontSize: 11,
//                           fontWeight: FontWeight.bold,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ],
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),

//             // --- DEGRADED METRICS CARD ---
//             _buildStateCard(
//               title: stateCardBeforeTitle,
//               icon: Icons.gpp_maybe_rounded,
//               iconColor: const Color(0xFFF87171),
//               bgColor: const Color(0xFF7F1D1D).withOpacity(0.08),
//               borderColor: const Color(0xFFEF4444).withOpacity(0.15),
//               content: stateCardBeforeMetrics,
//             ),

//             const Padding(
//               padding: EdgeInsets.symmetric(vertical: 14),
//               child: Center(
//                 child: Icon(
//                   Icons.arrow_downward_rounded,
//                   size: 24,
//                   color: Colors.white24,
//                 ),
//               ),
//             ),

//             // --- RECOVERED METRICS CARD ---
//             _buildStateCard(
//               title: stateCardAfterTitle,
//               icon: Icons.verified_user_rounded,
//               iconColor: dynamicTone,
//               bgColor: dynamicTone.withOpacity(0.04),
//               borderColor: dynamicTone.withOpacity(0.15),
//               content: stateCardAfterMetrics,
//             ),
//             const SizedBox(height: 24),

//             // ⏳ FEATURE 3: PROACTIVE SLIDING-WINDOW SLA DRIFT FORECASTER COUNTER
//             if (!widget.isAutonomousMode && _sliderValue >= 0.33) ...[
//               Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.all(14),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFF7C2D12).withOpacity(0.1),
//                   borderRadius: BorderRadius.circular(14),
//                   border: Border.all(
//                     color: const Color(0xFFEA580C).withOpacity(0.2),
//                   ),
//                 ),
//                 child: Row(
//                   children: [
//                     const Icon(
//                       Icons.hourglass_top_rounded,
//                       color: Color(0xFFFB923C),
//                       size: 16,
//                     ),
//                     const SizedBox(width: 12),
//                     Expanded(
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: const [
//                           Text(
//                             "⏳ Proactive SLA Forecast: 145 Minutes until Violation",
//                             style: TextStyle(
//                               color: Colors.white,
//                               fontSize: 12,
//                               fontWeight: FontWeight.bold,
//                             ),
//                           ),
//                           Text(
//                             "Trend Indicator: De-escalation active. Risk velocity decreasing",
//                             style: TextStyle(
//                               color: Color(0xFFFB923C),
//                               fontSize: 11,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 16),
//             ],

//             // 🛡️ FEATURE 3: AUTONOMOUS CONTRACTUAL SLA ESCROW ENFORCEMENT (🚨 WRAP FIX: Changed to Wrap layout for stable dollar text scaling)
//             if (!widget.isAutonomousMode && _sliderValue >= 0.33) ...[
//               Container(
//                 width: double.infinity,
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFF991B1B).withOpacity(0.04),
//                   borderRadius: BorderRadius.circular(16),
//                   border: Border.all(
//                     color: const Color(0xFFEF4444).withOpacity(0.18),
//                   ),
//                 ),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Wrap(
//                       spacing: 12.0,
//                       runSpacing: 6.0,
//                       alignment: WrapAlignment.spaceBetween,
//                       crossAxisAlignment: WrapCrossAlignment.center,
//                       children: [
//                         Row(
//                           mainAxisSize: MainAxisSize.min,
//                           children: const [
//                             Icon(
//                               Icons.gavel_rounded,
//                               color: Color(0xFFF87171),
//                               size: 15,
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               "Autonomous SLA Enforcement Escrow Tracker",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 12,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                         Text(
//                           "Risk Factor: 78/100",
//                           style: const TextStyle(
//                             color: Color(0xFFF87171),
//                             fontSize: 11,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ],
//                     ),
//                     const Divider(color: Colors.white10, height: 20),
//                     const Text(
//                       "\$12,500 Systemic Penalty Drafted",
//                       style: TextStyle(
//                         color: Color(0xFFFCA5A5),
//                         fontSize: 16,
//                         fontWeight: FontWeight.w900,
//                       ),
//                     ),
//                     const SizedBox(height: 2),
//                     const Text(
//                       "Drift Rule: Auto-Downgrade sequence triggered for unverified vendor pipelines",
//                       style: TextStyle(color: Colors.white38, fontSize: 10),
//                     ),
//                   ],
//                 ),
//               ),
//               const SizedBox(height: 20),
//             ],

//             // 🗣️ FEATURE 1: DYNAMIC TWO-COLUMN AGENT DEBATE TERMINAL CONSOLE
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: const Color(0xFF0F172A),
//                 borderRadius: BorderRadius.circular(16),
//                 border: Border.all(color: Colors.white.withOpacity(0.05)),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     children: [
//                       const Icon(
//                         Icons.forum_rounded,
//                         color: Color(0xFF38BDF8),
//                         size: 16,
//                       ),
//                       const SizedBox(width: 8),
//                       Expanded(
//                         child: Text(
//                           debateStatus,
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ),
//                       const Icon(
//                         Icons.security_rounded,
//                         color: Colors.white24,
//                         size: 14,
//                       ),
//                     ],
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 10),
//                     child: Divider(color: Colors.white10, height: 1),
//                   ),
//                   IntrinsicHeight(
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.stretch,
//                       children: [
//                         // Left Column: Optimist Agent Panel
//                         Expanded(
//                           child: Container(
//                             padding: const EdgeInsets.all(12),
//                             decoration: BoxDecoration(
//                               color: const Color(0xFF1E293B).withOpacity(0.4),
//                               borderRadius: BorderRadius.circular(12),
//                               border: Border.all(
//                                 color: Colors.amberAccent.withOpacity(0.1),
//                               ),
//                             ),
//                             // 🟢 WRAP FIX: Inside a SingleChildScrollView to absorb any line overflows safely
//                             child: SingleChildScrollView(
//                               physics: const BouncingScrollPhysics(),
//                               child: _buildConsoleStreamLine(
//                                 "Optimist Agent",
//                                 debateOptimist,
//                                 Colors.amberAccent,
//                               ),
//                             ),
//                           ),
//                         ),
//                         const SizedBox(width: 12),
//                         // Right Column: Pessimist Agent Panel
//                         Expanded(
//                           child: Container(
//                             padding: const EdgeInsets.all(12),
//                             decoration: BoxDecoration(
//                               color: const Color(0xFF1E293B).withOpacity(0.4),
//                               borderRadius: BorderRadius.circular(12),
//                               border: Border.all(
//                                 color: const Color(0xFF38BDF8).withOpacity(0.1),
//                               ),
//                             ),
//                             // 🟢 WRAP FIX: Inside a SingleChildScrollView to absorb any line overflows safely
//                             child: SingleChildScrollView(
//                               physics: const BouncingScrollPhysics(),
//                               child: _buildConsoleStreamLine(
//                                 "Pessimist Agent",
//                                 debatePessimist,
//                                 const Color(0xFFBAE6FD),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 12),
//                     child: Divider(color: Colors.white10, height: 1),
//                   ),
//                   Container(
//                     width: double.infinity,
//                     padding: const EdgeInsets.all(12),
//                     decoration: BoxDecoration(
//                       color: const Color(0xFF0284C7).withOpacity(0.05),
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(
//                         color: const Color(0xFF38BDF8).withOpacity(0.15),
//                       ),
//                     ),
//                     child: Row(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         const Padding(
//                           padding: EdgeInsets.only(top: 2.0),
//                           child: Icon(
//                             Icons.gavel_rounded,
//                             color: Color(0xFF38BDF8),
//                             size: 14,
//                           ),
//                         ),
//                         const SizedBox(width: 10),
//                         Expanded(
//                           child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Decision Agent Verdict: $debateRuling",
//                                 style: const TextStyle(
//                                   color: Color(0xFF38BDF8),
//                                   fontSize: 11,
//                                   fontWeight: FontWeight.bold,
//                                 ),
//                               ),
//                               const SizedBox(height: 4),
//                               SelectableText(
//                                 "🔒 Block Validation Line: $debateHash",
//                                 style: const TextStyle(
//                                   color: Colors.white12,
//                                   fontSize: 9,
//                                   fontFamily: 'monospace',
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),

//             // 🧪 FEATURE 2: SELF-HEALING SIMULATION SANDBOX / DIGITAL TWIN SCREEN
//             if (!widget.isAutonomousMode) ...[
//               Container(
//                 padding: const EdgeInsets.all(16),
//                 decoration: BoxDecoration(
//                   color: const Color(0xFF0F172A).withOpacity(0.6),
//                   borderRadius: BorderRadius.circular(14),
//                   border: Border.all(
//                     color: const Color(0xFFF59E0B).withOpacity(0.12),
//                   ),
//                 ),
//                 child: SizedBox(
//                   width: double.infinity,
//                   child: Wrap(
//                     spacing: 12.0,
//                     runSpacing: 8.0,
//                     alignment: WrapAlignment.spaceBetween,
//                     crossAxisAlignment: WrapCrossAlignment.center,
//                     children: [
//                       Row(
//                         mainAxisSize: MainAxisSize.min,
//                         children: [
//                           const Icon(
//                             Icons.layers_rounded,
//                             color: Color(0xFFF59E0B),
//                             size: 18,
//                           ),
//                           const SizedBox(width: 12),
//                           Flexible(
//                             child: Column(
//                               crossAxisAlignment: CrossAxisAlignment.start,
//                               children: [
//                                 const Text(
//                                   "Self-Healing Twin Sandbox Monitor",
//                                   style: TextStyle(
//                                     color: Colors.white,
//                                     fontSize: 12,
//                                     fontWeight: FontWeight.bold,
//                                   ),
//                                 ),
//                                 const SizedBox(height: 4),
//                                 isSimVisible &&
//                                         (_sliderValue >= 0.33 &&
//                                             _sliderValue < 0.66)
//                                     ? AnimatedBuilder(
//                                         animation: _blinkController,
//                                         builder: (context, child) {
//                                           return Opacity(
//                                             opacity: _blinkController.value,
//                                             child: Text(
//                                               simText,
//                                               style: const TextStyle(
//                                                 color: Color(0xFFF59E0B),
//                                                 fontSize: 11,
//                                                 fontWeight: FontWeight.bold,
//                                               ),
//                                             ),
//                                           );
//                                         },
//                                       )
//                                     : Text(
//                                         simText,
//                                         style: TextStyle(
//                                           color: _sliderValue >= 0.66
//                                               ? const Color(0xFF34D399)
//                                               : Colors.white38,
//                                           fontSize: 11,
//                                           fontWeight: FontWeight.w500,
//                                         ),
//                                       ),
//                               ],
//                             ),
//                           ),
//                         ],
//                       ),
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 8,
//                           vertical: 4,
//                         ),
//                         decoration: BoxDecoration(
//                           color: const Color(0xFFF59E0B).withOpacity(0.1),
//                           borderRadius: BorderRadius.circular(6),
//                         ),
//                         child: const Text(
//                           "Sandbox Mirror Active",
//                           style: TextStyle(
//                             color: Color(0xFFF59E0B),
//                             fontSize: 10,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//               const SizedBox(height: 24),
//             ],

//             // --- ASYNCHRONOUS CARBON-ARBITRAGE METRICS PANEL ---
//             Container(
//               padding: const EdgeInsets.all(18),
//               decoration: BoxDecoration(
//                 color: const Color(0xFF0F172A).withOpacity(0.5),
//                 borderRadius: BorderRadius.circular(20),
//                 border: Border.all(
//                   color: const Color(0xFF14B8A6).withOpacity(0.12),
//                 ),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                     crossAxisAlignment: CrossAxisAlignment.start,
//                     children: [
//                       const Padding(
//                         padding: EdgeInsets.only(top: 2.0),
//                         child: Icon(
//                           Icons.bolt_sharp,
//                           color: Color(0xFF2DD4BF),
//                           size: 18,
//                         ),
//                       ),
//                       const SizedBox(width: 10),
//                       Expanded(
//                         child: Text(
//                           "Asynchronous Carbon-Arbitrage Control Tower",
//                           style: TextStyle(
//                             color: Colors.tealAccent[100],
//                             fontWeight: FontWeight.w700,
//                             fontSize: 13,
//                           ),
//                         ),
//                       ),
//                       const SizedBox(width: 8),
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 10,
//                           vertical: 5,
//                         ),
//                         decoration: BoxDecoration(
//                           color: const Color(0xFF0D9488).withOpacity(0.12),
//                           borderRadius: BorderRadius.circular(8),
//                           border: Border.all(
//                             color: const Color(0xFF14B8A6).withOpacity(0.2),
//                           ),
//                         ),
//                         child: Text(
//                           carbonData,
//                           style: const TextStyle(
//                             color: Color(0xFF2DD4BF),
//                             fontSize: 11,
//                             fontWeight: FontWeight.w800,
//                           ),
//                           textAlign: TextAlign.center,
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 10),
//                     child: Divider(color: Colors.white10),
//                   ),
//                   Text(
//                     carbonDetails,
//                     style: TextStyle(
//                       color: Colors.grey[400],
//                       fontSize: 12,
//                       height: 1.5,
//                     ),
//                   ),
//                 ],
//               ),
//             ),

//             // --- MANAGER OVERRIDE SUBMISSION GATES ---
//             if (!widget.isAutonomousMode) ...[
//               const SizedBox(height: 16),
//               SizedBox(
//                 width: double.infinity,
//                 height: 54,
//                 child: ElevatedButton.icon(
//                   onPressed: () {
//                     ScaffoldMessenger.of(context).showSnackBar(
//                       SnackBar(
//                         backgroundColor: const Color(0xFF10B981),
//                         behavior: SnackBarBehavior.floating,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12),
//                         ),
//                         content: Row(
//                           children: const [
//                             Icon(Icons.verified_rounded, color: Colors.white),
//                             SizedBox(width: 12),
//                             Expanded(
//                               child: Text(
//                                 "LEDGER COMMITTED: Manager signature verified successfully!",
//                                 style: TextStyle(
//                                   color: Colors.white,
//                                   fontWeight: FontWeight.bold,
//                                   fontSize: 11,
//                                 ),
//                                 softWrap: true,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ),
//                     );
//                   },
//                   icon: const Icon(
//                     Icons.lock_open_rounded,
//                     color: Colors.white,
//                     size: 18,
//                   ),
//                   label: const Expanded(
//                     child: Text(
//                       "Grant Operational Approval",
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontWeight: FontWeight.bold,
//                         fontSize: 13,
//                         letterSpacing: 0.5,
//                       ),
//                       softWrap: true,
//                       maxLines: 1,
//                       overflow: TextOverflow.ellipsis,
//                     ),
//                   ),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: const Color(0xFFD97706),
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(14),
//                     ),
//                     elevation: 0,
//                     padding: const EdgeInsets.symmetric(horizontal: 16),
//                   ),
//                 ),
//               ),
//             ],
//             const SizedBox(height: 40),

//             SizedBox(
//               width: double.infinity,
//               height: 52,
//               child: OutlinedButton(
//                 onPressed: () =>
//                     Navigator.popUntil(context, (route) => route.isFirst),
//                 style: OutlinedButton.styleFrom(
//                   side: BorderSide(color: Colors.white.withOpacity(0.06)),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(14),
//                   ),
//                 ),
//                 child: const Text(
//                   "Return to Systems Console",
//                   style: TextStyle(
//                     color: Colors.white70,
//                     fontWeight: FontWeight.w600,
//                     fontSize: 13,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Graph Causal Node Render Elements
//   Widget _buildVisualGraphNode(String nodeName, Color borderTone) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 250),
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//       width:
//           double.infinity, // Automatically expand vertically inside safe spaces
//       decoration: BoxDecoration(
//         color: borderTone.withOpacity(0.06),
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: borderTone, width: 1.2),
//       ),
//       child: Text(
//         nodeName,
//         style: TextStyle(
//           color: borderTone == Colors.white12 ? Colors.white24 : Colors.white,
//           fontSize: 11,
//           fontWeight: FontWeight.bold,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }

//   // Console Log Line Elements
//   Widget _buildConsoleStreamLine(
//     String agentName,
//     String logText,
//     Color labelColor,
//   ) {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text(
//           "➔ [$agentName Trace Ingestion Mode]",
//           style: TextStyle(
//             color: labelColor,
//             fontSize: 10,
//             fontWeight: FontWeight.w800,
//             fontFamily: 'monospace',
//           ),
//         ),
//         const SizedBox(height: 2),
//         Text(
//           logText,
//           style: const TextStyle(
//             color: Colors.white70,
//             fontSize: 11,
//             height: 1.4,
//           ),
//         ),
//       ],
//     );
//   }

//   Widget _buildStateCard({
//     required String title,
//     required IconData icon,
//     required Color iconColor,
//     required Color bgColor,
//     required Color borderColor,
//     required List<String> content,
//   }) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: bgColor,
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: borderColor),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Icon(icon, color: iconColor, size: 16),
//               const SizedBox(width: 10),
//               Expanded(
//                 child: Text(
//                   title,
//                   style: TextStyle(
//                     color: iconColor,
//                     fontWeight: FontWeight.w800,
//                     fontSize: 11,
//                     letterSpacing: 1.2,
//                   ),
//                   softWrap: true,
//                 ),
//               ),
//             ],
//           ),
//           const Divider(color: Colors.white10, height: 24),
//           ...content.map(
//             (text) => Padding(
//               padding: const EdgeInsets.only(bottom: 10.0),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "• ",
//                     style: TextStyle(
//                       color: iconColor.withOpacity(0.4),
//                       fontSize: 14,
//                     ),
//                   ),
//                   Expanded(
//                     child: Text(
//                       text,
//                       style: const TextStyle(
//                         color: Color(0xFFF3F4F6),
//                         fontSize: 13,
//                         height: 1.5,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'audit_ledger_screen.dart'; // Nayi screen ka portal perfectly linked hai!

// class ResultScreen extends StatefulWidget {
//   final String userInput;
//   final bool isAutonomousMode;
//   const ResultScreen({
//     super.key,
//     required this.userInput,
//     required this.isAutonomousMode,
//   });

//   @override
//   State<ResultScreen> createState() => _ResultScreenState();
// }

// class _ResultScreenState extends State<ResultScreen>
//     with SingleTickerProviderStateMixin {
//   // 🕒 Smooth continuous timeline controller
//   double _sliderValue = 1.0;

//   // Animation controller for live simulation text pulsing effect
//   late AnimationController _blinkController;

//   @override
//   void initState() {
//     super.initState();
//     _blinkController = AnimationController(
//       vsync: this,
//       duration: const Duration(milliseconds: 1000),
//     )..repeat(reverse: true);
//   }

//   @override
//   void dispose() {
//     _blinkController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     final String text = widget.userInput.toLowerCase();

//     // Scenario Keyword Identifiers
//     bool isEscrowHalt =
//         text.contains('halt') ||
//         text.contains('authorization') ||
//         text.contains('escrow') ||
//         text.contains('corrupted format');
//     bool isFailureRecovery =
//         text.contains('fail') ||
//         text.contains('crash') ||
//         text.contains('interrupted') ||
//         text.contains('exception');

//     // 🚨 RANGE BOUND MATCHING LOGIC
//     String phaseTitle;
//     String statusBanner;
//     Color dynamicTone;
//     String stateCardBeforeTitle;
//     List<String> stateCardBeforeMetrics;
//     String stateCardAfterTitle;
//     List<String> stateCardAfterMetrics;
//     String carbonData;
//     String carbonDetails;
//     String debateStatus;
//     String debateOptimist;
//     String debatePessimist;
//     String debateRuling;
//     String debateHash;
//     bool isSimVisible;
//     String simText;

//     if (_sliderValue < 0.33) {
//       // ================= PHASE 1: FAULT INGESTION ANALYSIS =================
//       phaseTitle = "LOGISTICS DETECTED";
//       statusBanner =
//           "PIPELINE SUSPENDED IN ACTIVE MODE ➔ ROUTED TO SHADOW CONSOLE";
//       dynamicTone = const Color(0xFFEF4444); // Crimson Red
//       stateCardBeforeTitle = "TELEMETRY SCHEMA CRASH (BEFORE)";
//       stateCardBeforeMetrics = [
//         "Validation Agent: Flagged data quality 'Compromised' with confidence score 42.",
//         "Error Scope: FAIL-013 (Invalid or corrupted data format) hit on target fleet matrices.",
//         "System Safeguard: Blocked direct autonomous mutations to shield downstream fleet nodes.",
//       ];
//       stateCardAfterTitle = "MITIGATION BLUEPRINT (STANDBY)";
//       stateCardAfterMetrics = [
//         "Escrow Status: Emergency rollback trigger locked behind administrative administrative rules.",
//         "Action Intelligence: Isolation arrays processing dependencies under a hidden thread boundary.",
//       ];
//       carbonData = "Telemetry Paused";
//       carbonDetails =
//           "Carbon compute cycles paused to prioritize failover calculation speed metrics.";
//       debateStatus = "⏳ MULTI-AGENT DEBATE INITIALIZING";
//       debateOptimist = "Awaiting thread validation context slots...";
//       debatePessimist = "Awaiting structural data normalization sequences...";
//       debateRuling = "Arbitration Engine Standing By";
//       debateHash = "SYSTEM_LOCK_PENDING";
//       isSimVisible = false;
//       simText = "Sandbox Engine Offline: Awaiting Ingestion Validation Pass";
//     } else if (_sliderValue >= 0.33 && _sliderValue < 0.66) {
//       // ================= PHASE 2: SHADOW SANDBOX DEBATE & MONTE CARLO =================
//       phaseTitle = "SHADOW DEBATE LOGS";
//       statusBanner =
//           "PARALLEL EVALUATION RAMPING ➔ AGENTS NEGOTIATING STRATEGIES";
//       dynamicTone = const Color(0xFFF59E0B); // Sandbox Amber
//       stateCardBeforeTitle = "EXPERIMENTAL BUFFER TELEMETRY (TESTING)";
//       stateCardBeforeMetrics = [
//         "Digital Twin Engine: Inbound schemas mirrored completely inside virtual memory arrays.",
//         "Constraint Mapping: Evaluating budget status against tight delivery deadline metrics.",
//         "Risk Volatility: Tracking 18% fuel price surge cascading across Pakistan networks.",
//       ];
//       stateCardAfterTitle = "SIMULATED MITIGATION PREVIEW (EVALUATING)";
//       stateCardAfterMetrics = [
//         "Proactive SLA Window: Prediction engine indicates 145 minutes until target contract breach.",
//         "Escrow Ledger Math: Automatic vendor downgrade penalty active at \$12,500.",
//         "Consensus Route: Sub-agents programmatically spawned to bid on spot-market alternatives.",
//       ];
//       carbonData = "2.4 Metric Tons Saved";
//       carbonDetails =
//           "Sandbox validation caught invalid coordinates, saving an estimated 50 miles of useless transit.";
//       debateStatus = "🔴 LIVE MULTI-AGENT DEBATE REPLAY CONSOLE";
//       debateOptimist =
//           "Optimist Agent: \"Tier 1 carrier may recover within 24 hours. Hold current positions for optimization.\"";
//       debatePessimist =
//           "Pessimist Agent: \"Weather modeling indicates prolonged disruption; SLA escrow downgrade required immediately.\"";
//       debateRuling =
//           "Arbitration Progress: Evaluating Risk Velocity curves under constraint matrices";
//       debateHash = "Hashed Matrix Stream: a8f5f167... (UNCOMMITTED)";
//       isSimVisible = true;
//       simText =
//           "⚡ SIMULATION ACTIVE: Parallel Monte Carlo loops exploring alternate routing tracks...";
//     } else {
//       // ================= PHASE 3: AUTOMATED STATE RECOVERY =================
//       phaseTitle = "STATE RECOVERY";
//       statusBanner = "LEDGER COMMITTED ➔ REGIONAL SYSTEM BASELINE RECOVERED";
//       dynamicTone = const Color(0xFF34D399); // Emerald Green
//       stateCardBeforeTitle = "CONTAINED INFRASTRUCTURE MATRIX (RESOLVED)";
//       stateCardBeforeMetrics = [
//         "Integrity State: Isolated and shadowed experimental coordinate mapping failure natively.",
//         "Logistics Recovery: Stopped corrupted payload propagation before reaching driver terminals.",
//       ];
//       stateCardAfterTitle = "STABILIZED ORCHESTRATION OUTCOME (AFTER)";
//       stateCardAfterMetrics = [
//         "Rollback Action: Reverted shadow fleet routing loop back to previous stable hazard rules.",
//         "Applied System Update: Billing system modified with 8.5% partial surcharge committed successfully.",
//         "Consensus Status: Causal root-cause verified and network sync confirmed across node hubs.",
//       ];
//       carbonData = "14.2 Metric Tons Saved";
//       carbonDetails =
//           "High-density dynamic routing and proactive dispatch halts avoided 450 miles of idle traffic.";
//       debateStatus = "🔒 LEDGER COMMIT PROOF-SEALED";
//       debateOptimist =
//           "Optimist Agent Trace: System evaluation logs archived safely.";
//       debatePessimist =
//           "Pessimist Agent Trace: Target workflow status overridden to stable parameters.";
//       debateRuling =
//           "FINAL VERDICT: Carrier shifted to Tier 2. Ledger closed securely.";
//       debateHash = "SHA-256 PROOF SEAL: a8f5f167f44f4964e6c998dee827110c";
//       isSimVisible = true;
//       simText =
//           "✅ BEST SIMULATION CONVERGED: Route via Hub A reduced SLA breach risk by 45%";
//     }

//     return Scaffold(
//       backgroundColor: const Color(0xFF030712),
//       appBar: AppBar(
//         backgroundColor: const Color(0xFF0F172A),
//         elevation: 0,
//         title: const Text(
//           "AGENTIC HYBRID ORCHESTRATION ENGINE",
//           style: TextStyle(
//             color: Colors.white,
//             fontSize: 12,
//             fontWeight: FontWeight.w900,
//             letterSpacing: 1.5,
//           ),
//         ),
//         leading: IconButton(
//           icon: const Icon(
//             Icons.arrow_back_ios_new_rounded,
//             color: Colors.white70,
//             size: 18,
//           ),
//           onPressed: () => Navigator.pop(context),
//         ),
//       ),
//       body: SingleChildScrollView(
//         physics: const BouncingScrollPhysics(),
//         padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             // TOP STATUS BANNER BAR
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
//               decoration: BoxDecoration(
//                 color: dynamicTone.withOpacity(0.08),
//                 borderRadius: BorderRadius.circular(12),
//                 border: Border.all(color: dynamicTone.withOpacity(0.25)),
//               ),
//               child: Text(
//                 statusBanner,
//                 style: TextStyle(
//                   color: dynamicTone,
//                   fontWeight: FontWeight.w800,
//                   fontSize: 10.5,
//                   letterSpacing: 0.5,
//                 ),
//                 textAlign: TextAlign.center,
//               ),
//             ),
//             const SizedBox(height: 24),

//             // INTERACTIVE STATE TIMELINE SLIDER CONTROL
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   "ORCHESTRATION STATE HORIZON",
//                   style: TextStyle(
//                     color: Colors.white.withOpacity(0.4),
//                     fontSize: 11,
//                     fontWeight: FontWeight.w700,
//                     letterSpacing: 1.0,
//                   ),
//                 ),
//                 Container(
//                   padding: const EdgeInsets.symmetric(
//                     horizontal: 10,
//                     vertical: 4,
//                   ),
//                   decoration: BoxDecoration(
//                     color: dynamicTone.withOpacity(0.12),
//                     borderRadius: BorderRadius.circular(20),
//                   ),
//                   child: Text(
//                     phaseTitle,
//                     style: TextStyle(
//                       color: dynamicTone,
//                       fontSize: 10,
//                       fontWeight: FontWeight.w900,
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//             const SizedBox(height: 10),
//             SliderTheme(
//               data: SliderTheme.of(context).copyWith(
//                 activeTrackColor: dynamicTone,
//                 inactiveTrackColor: const Color(0xFF1E293B),
//                 trackHeight: 6.0,
//                 thumbColor: Colors.white,
//                 thumbShape: const RoundSliderThumbShape(
//                   enabledThumbRadius: 10.0,
//                 ),
//                 overlayColor: dynamicTone.withOpacity(0.2),
//                 overlayShape: const RoundSliderOverlayShape(
//                   overlayRadius: 20.0,
//                 ),
//                 tickMarkShape: const RoundSliderTickMarkShape(),
//                 activeTickMarkColor: dynamicTone,
//                 inactiveTickMarkColor: const Color(0xFF334155),
//               ),
//               child: Slider(
//                 value: _sliderValue,
//                 divisions: 2,
//                 min: 0.0,
//                 max: 1.0,
//                 onChanged: (value) {
//                   setState(() {
//                     _sliderValue = value;
//                   });
//                 },
//               ),
//             ),
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 8.0),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     "Phase 1: Ingestion",
//                     style: TextStyle(
//                       color: _sliderValue < 0.33
//                           ? Colors.white
//                           : Colors.white30,
//                       fontSize: 10,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     "Phase 2: Twin Debate",
//                     style: TextStyle(
//                       color: (_sliderValue >= 0.33 && _sliderValue < 0.66)
//                           ? Colors.white
//                           : Colors.white30,
//                       fontSize: 10,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   Text(
//                     "Phase 3: Safe Commit",
//                     style: TextStyle(
//                       color: _sliderValue >= 0.66
//                           ? Colors.white
//                           : Colors.white30,
//                       fontSize: 10,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 28),

//             // 🌿 BACK TO ORIGINAL BEAUTIFUL: VISUAL CAUSAL TREE NODE MESH ENGINE
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: const Color(0xFF1E1B4B).withOpacity(0.25),
//                 borderRadius: BorderRadius.circular(16),
//                 border: Border.all(
//                   color: const Color(0xFF6366F1).withOpacity(0.18),
//                 ),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.center,
//                 children: [
//                   Row(
//                     children: [
//                       const Icon(
//                         Icons.account_tree_rounded,
//                         color: Color(0xFF818CF8),
//                         size: 16,
//                       ),
//                       const SizedBox(width: 8),
//                       const Expanded(
//                         child: Text(
//                           "Visual Causal Tree Node Mesh Engine",
//                           style: TextStyle(
//                             color: Colors.white,
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                           ),
//                           overflow: TextOverflow.ellipsis,
//                         ),
//                       ),
//                       const SizedBox(width: 6),
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 6,
//                           vertical: 2,
//                         ),
//                         decoration: BoxDecoration(
//                           color: const Color(0xFF6366F1).withOpacity(0.2),
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                         child: const Text(
//                           "Match: 88.5%",
//                           style: TextStyle(
//                             color: Color(0xFFC7D2FE),
//                             fontSize: 10,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 10),
//                     child: Divider(color: Colors.white10, height: 1),
//                   ),

//                   // --- LEVEL 1: Root Origin Cause ---
//                   _buildVisualGraphNode(
//                     "🌧️ Origin: Weather Disruption",
//                     _sliderValue >= 0.0
//                         ? const Color(0xFFEF4444)
//                         : Colors.white12,
//                   ),

//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 12.0),
//                     child: Icon(
//                       Icons.keyboard_double_arrow_down_rounded,
//                       color: Colors.white24,
//                       size: 20,
//                     ),
//                   ),

//                   // --- LEVEL 2: Cascading Symptoms ---
//                   Column(
//                     children: [
//                       _buildVisualGraphNode(
//                         "⚓ Port Congestion",
//                         _sliderValue >= 0.33
//                             ? const Color(0xFFF59E0B)
//                             : Colors.white12,
//                       ),
//                       const SizedBox(height: 10),
//                       _buildVisualGraphNode(
//                         "📈 18% Fuel Price Spike",
//                         _sliderValue >= 0.33
//                             ? Colors.amberAccent
//                             : Colors.white12,
//                       ),
//                     ],
//                   ),

//                   const Padding(
//                     padding: EdgeInsets.symmetric(vertical: 12.0),
//                     child: Icon(
//                       Icons.keyboard_double_arrow_down_rounded,
//                       color: Colors.white24,
//                       size: 20,
//                     ),
//                   ),

//                   // --- LEVEL 3: Ultimate System Bottleneck ---
//                   _buildVisualGraphNode(
//                     "🚨 System Bottleneck: Lahore Dispatch Delay",
//                     _sliderValue >= 0.66
//                         ? const Color(0xFF38BDF8)
//                         : Colors.white12,
//                   ),

//                   if (_sliderValue == 1.0) ...[
//                     const SizedBox(height: 10),
//                     Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 10,
//                         vertical: 6,
//                       ),
//                       decoration: BoxDecoration(
//                         color: const Color(0xFF10B981).withOpacity(0.08),
//                         borderRadius: BorderRadius.circular(6),
//                       ),
//                       child: const Text(
//                         "🛡️ Rollback Remediation Blueprint Applied Successfully!",
//                         style: TextStyle(
//                           color: Color(0xFF34D399),
//                           fontSize: 11,
//                           fontWeight: FontWeight.bold,
//                         ),
//                         textAlign: TextAlign.center,
//                       ),
//                     ),
//                   ],
//                 ],
//               ),
//             ),
//             const SizedBox(height: 20),

//             // ORIGINAL METRICS CARDS WITH ARROWS
//             _buildStateCard(
//               title: stateCardBeforeTitle,
//               icon: Icons.gpp_maybe_rounded,
//               iconColor: const Color(0xFFF87171),
//               bgColor: const Color(0xFF7F1D1D).withOpacity(0.08),
//               borderColor: const Color(0xFFEF4444).withOpacity(0.15),
//               content: stateCardBeforeMetrics,
//             ),
//             const Padding(
//               padding: EdgeInsets.symmetric(vertical: 14),
//               child: Center(
//                 child: Icon(
//                   Icons.arrow_downward_rounded,
//                   size: 24,
//                   color: Colors.white24,
//                 ),
//               ),
//             ),
//             _buildStateCard(
//               title: stateCardAfterTitle,
//               icon: Icons.verified_user_rounded,
//               iconColor: dynamicTone,
//               bgColor: dynamicTone.withOpacity(0.04),
//               borderColor: dynamicTone.withOpacity(0.15),
//               content: stateCardAfterMetrics,
//             ),
//             const SizedBox(height: 28),

//             // 🗣️ FEATURE 1: DYNAMIC TWO-COLUMN AGENT DEBATE TERMINAL CONSOLE
//             Container(
//               width: double.infinity,
//               padding: const EdgeInsets.all(16),
//               decoration: BoxDecoration(
//                 color: const Color(0xFF0F172A),
//                 borderRadius: BorderRadius.circular(16),
//                 border: Border.all(color: const Color(0xFF1E293B), width: 1.5),
//               ),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   // 🟢 FIXED: Wrap with Expanded/Flexible to handle dynamic length gracefully
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Expanded(
//                         child: Text(
//                           debateStatus,
//                           style: const TextStyle(
//                             color: Colors.white,
//                             fontSize: 11,
//                             fontWeight: FontWeight.w900,
//                             letterSpacing: 0.5,
//                           ),
//                           overflow: TextOverflow
//                               .ellipsis, // Text lamba ho toh automatic dots (...) ban jayein
//                         ),
//                       ),
//                       const SizedBox(width: 8), // Safe gap
//                       Container(
//                         padding: const EdgeInsets.symmetric(
//                           horizontal: 8,
//                           vertical: 3,
//                         ),
//                         decoration: BoxDecoration(
//                           color: Colors.white.withOpacity(0.05),
//                           borderRadius: BorderRadius.circular(6),
//                         ),
//                         child: Text(
//                           debateHash.split(':').first,
//                           style: const TextStyle(
//                             color: Colors.white38,
//                             fontSize: 9,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const Divider(color: Colors.white10, height: 24),

//                   // Optimist Agent Sub-card Layout
//                   Container(
//                     width: double.infinity,
//                     padding: const EdgeInsets.all(12),
//                     decoration: BoxDecoration(
//                       color: const Color(0xFF1E293B).withOpacity(0.4),
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(
//                         color: const Color(0xFF34D399).withOpacity(0.1),
//                       ),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: const [
//                             Icon(
//                               Icons.add_chart_rounded,
//                               color: Color(0xFF34D399),
//                               size: 14,
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               "OPTIMIST CRITIQUE ENGINE",
//                               style: TextStyle(
//                                 color: Color(0xFF34D399),
//                                 fontSize: 10,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 8),
//                         Text(
//                           debateOptimist,
//                           style: TextStyle(
//                             color: Colors.grey[300],
//                             fontSize: 12,
//                             height: 1.4,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const SizedBox(height: 12),

//                   // Pessimist Agent Sub-card Layout
//                   Container(
//                     width: double.infinity,
//                     padding: const EdgeInsets.all(12),
//                     decoration: BoxDecoration(
//                       color: const Color(0xFF1E293B).withOpacity(0.4),
//                       borderRadius: BorderRadius.circular(10),
//                       border: Border.all(
//                         color: const Color(0xFFF87171).withOpacity(0.1),
//                       ),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Row(
//                           children: const [
//                             Icon(
//                               Icons
//                                   .bar_chart_rounded, // 🔥 RED LINE FIXED NATIVELY!
//                               color: Color(0xFFF87171),
//                               size: 14,
//                             ),
//                             SizedBox(width: 8),
//                             Text(
//                               "PESSIMIST CONSTRAINT MODEL",
//                               style: TextStyle(
//                                 color: Color(0xFFF87171),
//                                 fontSize: 10,
//                                 fontWeight: FontWeight.bold,
//                               ),
//                             ),
//                           ],
//                         ),
//                         const SizedBox(height: 8),
//                         Text(
//                           debatePessimist,
//                           style: TextStyle(
//                             color: Colors.grey[300],
//                             fontSize: 12,
//                             height: 1.4,
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                   const Divider(color: Colors.white10, height: 24),

//                   // Arbitration Result Footer Row
//                   Row(
//                     children: [
//                       const Icon(
//                         Icons.gavel_rounded,
//                         color: Color(0xFFF59E0B),
//                         size: 15,
//                       ),
//                       const SizedBox(width: 10),
//                       Expanded(
//                         child: Text(
//                           debateRuling,
//                           style: const TextStyle(
//                             color: Color(0xFFF59E0B),
//                             fontSize: 12,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 10),
//                   Text(
//                     debateHash,
//                     style: const TextStyle(
//                       color: Colors.white24,
//                       fontSize: 9,
//                       fontFamily: 'monospace',
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//             const SizedBox(height: 28),

//             // ⚡ DIGITAL TWIN SANDBOX SIMULATION SYSTEM METRICS
//             if (isSimVisible) ...[
//               FadeTransition(
//                 opacity: _blinkController,
//                 child: Container(
//                   width: double.infinity,
//                   padding: const EdgeInsets.all(14),
//                   decoration: BoxDecoration(
//                     color: const Color(0xFFF59E0B).withOpacity(0.05),
//                     borderRadius: BorderRadius.circular(12),
//                     border: Border.all(
//                       color: const Color(0xFFF59E0B).withOpacity(0.2),
//                     ),
//                   ),
//                   child: Row(
//                     children: [
//                       const Icon(
//                         Icons.waves_rounded,
//                         color: Color(0xFFF59E0B),
//                         size: 18,
//                       ),
//                       const SizedBox(width: 12),
//                       Expanded(
//                         child: Text(
//                           simText,
//                           style: const TextStyle(
//                             color: Color(0xFFFCE8B3),
//                             fontSize: 11.5,
//                             fontWeight: FontWeight.w600,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],

//             // 🌐 PORTAL GATE TO THE AUDIT SCREEN
//             const SizedBox(height: 25),
//             InkWell(
//               onTap: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(
//                     builder: (context) => AuditLedgerScreen(
//                       sliderValue: _sliderValue,
//                       isAutonomousMode: widget.isAutonomousMode,
//                       carbonData: carbonData,
//                       carbonDetails: carbonDetails,
//                     ),
//                   ),
//                 );
//               },
//               child: Container(
//                 padding: const EdgeInsets.symmetric(
//                   vertical: 16,
//                   horizontal: 20,
//                 ),
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                     colors: [
//                       const Color(0xFF0F172A),
//                       const Color(0xFF1E293B).withOpacity(0.8),
//                     ],
//                   ),
//                   borderRadius: BorderRadius.circular(14),
//                   border: Border.all(
//                     color: const Color(0xFF38BDF8).withOpacity(0.3),
//                     width: 1.5,
//                   ),
//                 ),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
//                     Row(
//                       children: [
//                         Container(
//                           padding: const EdgeInsets.all(8),
//                           decoration: BoxDecoration(
//                             color: const Color(0xFF38BDF8).withOpacity(0.1),
//                             borderRadius: BorderRadius.circular(8),
//                           ),
//                           child: const Icon(
//                             Icons.admin_panel_settings_rounded,
//                             color: Color(0xFF38BDF8),
//                             size: 20,
//                           ),
//                         ),
//                         const SizedBox(width: 14),
//                         Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           children: const [
//                             Text(
//                               "SECURE AUDIT VAULT",
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontWeight: FontWeight.w800,
//                                 fontSize: 13,
//                                 letterSpacing: 1.2,
//                               ),
//                             ),
//                             SizedBox(height: 3),
//                             Text(
//                               "View SLA Escrow, Nodes & Consensus Ledger",
//                               style: TextStyle(
//                                 color: Colors.white38,
//                                 fontSize: 11,
//                               ),
//                             ),
//                           ],
//                         ),
//                       ],
//                     ),
//                     const Icon(
//                       Icons.arrow_forward_ios_rounded,
//                       color: Color(0xFF38BDF8),
//                       size: 16,
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             const SizedBox(height: 30),

//             // SYSTEM RESET TERMINAL BUTTON
//             SizedBox(
//               width: double.infinity,
//               height: 52,
//               child: OutlinedButton(
//                 onPressed: () =>
//                     Navigator.popUntil(context, (route) => route.isFirst),
//                 style: OutlinedButton.styleFrom(
//                   side: BorderSide(color: Colors.white.withOpacity(0.06)),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(14),
//                   ),
//                 ),
//                 child: const Text(
//                   "Return to Systems Console",
//                   style: TextStyle(
//                     color: Colors.white70,
//                     fontWeight: FontWeight.w600,
//                     fontSize: 13,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   // Graph Causal Node Render Elements
//   Widget _buildVisualGraphNode(String nodeName, Color borderTone) {
//     return AnimatedContainer(
//       duration: const Duration(milliseconds: 250),
//       padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
//       width: double.infinity,
//       decoration: BoxDecoration(
//         color: borderTone.withOpacity(0.06),
//         borderRadius: BorderRadius.circular(8),
//         border: Border.all(color: borderTone, width: 1.2),
//       ),
//       child: Text(
//         nodeName,
//         style: TextStyle(
//           color: borderTone == Colors.white12 ? Colors.white24 : Colors.white,
//           fontSize: 11,
//           fontWeight: FontWeight.bold,
//         ),
//         textAlign: TextAlign.center,
//       ),
//     );
//   }

//   Widget _buildStateCard({
//     required String title,
//     required IconData icon,
//     required Color iconColor,
//     required Color bgColor,
//     required Color borderColor,
//     required List<String> content,
//   }) {
//     return Container(
//       width: double.infinity,
//       padding: const EdgeInsets.all(20),
//       decoration: BoxDecoration(
//         color: bgColor,
//         borderRadius: BorderRadius.circular(20),
//         border: Border.all(color: borderColor),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Row(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Icon(icon, color: iconColor, size: 16),
//               const SizedBox(width: 10),
//               Expanded(
//                 child: Text(
//                   title,
//                   style: TextStyle(
//                     color: iconColor,
//                     fontWeight: FontWeight.w800,
//                     fontSize: 11,
//                     letterSpacing: 1.2,
//                   ),
//                   softWrap: true,
//                 ),
//               ),
//             ],
//           ),
//           const Divider(color: Colors.white10, height: 24),
//           ...content.map(
//             (text) => Padding(
//               padding: const EdgeInsets.only(bottom: 10.0),
//               child: Row(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     "• ",
//                     style: TextStyle(
//                       color: iconColor.withOpacity(0.4),
//                       fontSize: 14,
//                     ),
//                   ),
//                   Expanded(
//                     child: Text(
//                       text,
//                       style: const TextStyle(
//                         color: Color(0xFFF3F4F6),
//                         fontSize: 13,
//                         height: 1.5,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'audit_vault_screen.dart';
import 'audit_ledger_screen.dart';

class ResultScreen extends StatefulWidget {
  final String userInput;
  final bool isAutonomousMode;
  const ResultScreen({
    super.key,
    required this.userInput,
    required this.isAutonomousMode,
  });

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen>
    with SingleTickerProviderStateMixin {
  double _sliderValue = 1.0;
  late AnimationController _blinkController;

  @override
  void initState() {
    super.initState();
    _blinkController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    )..repeat(reverse: true);
  }

  @override
  void dispose() {
    _blinkController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    String phaseTitle;
    String statusBanner;
    Color dynamicTone;
    String stateCardBeforeTitle;
    List<String> stateCardBeforeMetrics;
    String stateCardAfterTitle;
    List<String> stateCardAfterMetrics;
    String carbonData;
    String carbonDetails;
    String debateStatus;
    String debateOptimist;
    String debatePessimist;
    String debateRuling;
    String debateHash;
    bool isSimVisible;
    String simText;

    if (_sliderValue < 0.33) {
      phaseTitle = "LOGISTICS DETECTED";
      statusBanner =
          "PIPELINE SUSPENDED IN ACTIVE MODE ➔ ROUTED TO SHADOW CONSOLE";
      dynamicTone = const Color(0xFFEF4444);
      stateCardBeforeTitle = "TELEMETRY SCHEMA CRASH (BEFORE)";
      stateCardBeforeMetrics = [
        "Validation Agent: Flagged data quality 'Compromised' with confidence score 42.",
        "Error Scope: FAIL-013 (Invalid or corrupted data format) hit on target fleet matrices.",
        "System Safeguard: Blocked direct autonomous mutations to shield downstream fleet nodes.",
      ];
      stateCardAfterTitle = "MITIGATION BLUEPRINT (STANDBY)";
      stateCardAfterMetrics = [
        "Escrow Status: Emergency rollback trigger locked behind administrative rules.",
        "Action Intelligence: Isolation arrays processing dependencies under a hidden thread boundary.",
      ];
      carbonData = "Telemetry Paused";
      carbonDetails =
          "Carbon compute cycles paused to prioritize failover calculation speed metrics.";
      debateStatus = "⏳ MULTI-AGENT DEBATE INITIALIZING";
      debateOptimist = "Awaiting thread validation context slots...";
      debatePessimist = "Awaiting structural data normalization sequences...";
      debateRuling = "Arbitration Engine Standing By";
      debateHash = "SYSTEM_LOCK_PENDING";
      isSimVisible = false;
      simText = "Sandbox Engine Offline: Awaiting Ingestion Validation Pass";
    } else if (_sliderValue >= 0.33 && _sliderValue < 0.66) {
      phaseTitle = "SHADOW DEBATE LOGS";
      statusBanner =
          "PARALLEL EVALUATION RAMPING ➔ AGENTS NEGOTIATING STRATEGIES";
      dynamicTone = const Color(0xFFF59E0B);
      stateCardBeforeTitle = "EXPERIMENTAL BUFFER TELEMETRY (TESTING)";
      stateCardBeforeMetrics = [
        "Digital Twin Engine: Inbound schemas mirrored completely inside virtual memory arrays.",
        "Constraint Mapping: Evaluating budget status against tight delivery deadline metrics.",
        "Risk Volatility: Tracking 18% fuel price surge cascading across Pakistan networks.",
      ];
      stateCardAfterTitle = "SIMULATED MITIGATION PREVIEW (EVALUATING)";
      stateCardAfterMetrics = [
        "Proactive SLA Window: Prediction engine indicates 145 minutes until target contract breach.",
        "Escrow Ledger Math: Automatic vendor downgrade penalty active at \$12,500.",
        "Consensus Route: Sub-agents programmatically spawned to bid on spot-market alternatives.",
      ];
      carbonData = "2.4 Metric Tons Saved";
      carbonDetails =
          "Sandbox validation caught invalid coordinates, saving an estimated 50 miles of useless transit.";
      debateStatus = "🔴 LIVE MULTI-AGENT DEBATE REPLAY CONSOLE";
      debateOptimist =
          "Optimist Agent: \"Tier 1 carrier may recover within 24 hours. Hold current positions for optimization.\"";
      debatePessimist =
          "Pessimist Agent: \"Weather modeling indicates prolonged disruption; SLA escrow downgrade required immediately.\"";
      debateRuling =
          "Evaluating Risk Velocity curves under constraint matrices";
      debateHash = "Hashed Matrix Stream: a8f5f167... (UNCOMMITTED)";
      isSimVisible = true;
      simText =
          "⚡ SIMULATION ACTIVE: Parallel Monte Carlo loops exploring alternate routing tracks...";
    } else {
      phaseTitle = "STATE RECOVERY";
      statusBanner = "LEDGER COMMITTED ➔ REGIONAL SYSTEM BASELINE RECOVERED";
      dynamicTone = const Color(0xFF34D399);
      stateCardBeforeTitle = "CONTAINED INFRASTRUCTURE MATRIX (RESOLVED)";
      stateCardBeforeMetrics = [
        "Integrity State: Isolated and shadowed experimental coordinate mapping failure natively.",
        "Logistics Recovery: Stopped corrupted payload propagation before reaching driver terminals.",
      ];
      stateCardAfterTitle = "STABILIZED ORCHESTRATION OUTCOME (AFTER)";
      stateCardAfterMetrics = [
        "Rollback Action: Reverted shadow fleet routing loop back to previous stable hazard rules.",
        "Applied System Update: Billing system modified with 8.5% partial surcharge committed successfully.",
        "Consensus Status: Causal root-cause verified and network sync confirmed across node hubs.",
      ];
      carbonData = "14.2 Metric Tons Saved";
      carbonDetails =
          "High-density dynamic routing and proactive dispatch halts avoided 450 miles of idle traffic.";
      debateStatus = "🔒 LEDGER COMMIT PROOF-SEALED";
      debateOptimist =
          "Optimist Agent Trace: System evaluation logs archived safely.";
      debatePessimist =
          "Pessimist Agent Trace: Target workflow status overridden to stable parameters.";
      debateRuling =
          "FINAL VERDICT: Carrier shifted to Tier 2. Ledger closed securely.";
      debateHash = "SHA-256 PROOF SEAL: a8f5f167f44f4964e6c998dee827110c";
      isSimVisible = true;
      simText =
          "✅ BEST SIMULATION CONVERGED: Route via Hub A reduced SLA breach risk by 45%";
    }

    return Scaffold(
      backgroundColor: const Color(0xFF030712),
      appBar: AppBar(
        title: const Text(
          'Outcome Simulation Tracker',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 14,
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
            // Header Section
            Wrap(
              spacing: 12.0,
              runSpacing: 8.0,
              alignment: WrapAlignment.spaceBetween,
              crossAxisAlignment: WrapCrossAlignment.center,
              children: [
                Text(
                  phaseTitle,
                  style: const TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                    letterSpacing: -0.5,
                  ),
                ),
                if (!widget.isAutonomousMode)
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
                      ),
                    ),
                    child: const Text(
                      "SHADOW MODE Active",
                      style: TextStyle(
                        color: Color(0xFFF59E0B),
                        fontSize: 9,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 6),
            Text(
              statusBanner,
              style: TextStyle(
                color: dynamicTone,
                fontSize: 11,
                fontWeight: FontWeight.w700,
                letterSpacing: 0.2,
              ),
            ),
            const SizedBox(height: 20),

            // Time Travel Slider Component
            if (!widget.isAutonomousMode) ...[
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: const Color(0xFF1F2937).withOpacity(0.25),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(color: Colors.white.withOpacity(0.04)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "🕒 Split-Screen Time-Travel Control Tower Slider",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 13,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "Current Timeline Position: ${_sliderValue.toStringAsFixed(2)}",
                      style: TextStyle(color: Colors.grey[500], fontSize: 11),
                    ),
                    const SizedBox(height: 12),
                    Slider(
                      value: _sliderValue,
                      min: 0.0,
                      max: 1.0,
                      activeColor: dynamicTone,
                      inactiveColor: Colors.white10,
                      onChanged: (val) {
                        setState(() {
                          _sliderValue = val;
                        });
                      },
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],

            // Causal Tree Component
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: const Color(0xFF1E1B4B).withOpacity(0.25),
                borderRadius: BorderRadius.circular(16),
                border: Border.all(
                  color: const Color(0xFF6366F1).withOpacity(0.18),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.account_tree_rounded,
                        color: Color(0xFF818CF8),
                        size: 16,
                      ),
                      const SizedBox(width: 8),
                      const Expanded(
                        child: Text(
                          "Visual Causal Tree Node Mesh Engine",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Divider(color: Colors.white10, height: 1),
                  ),
                  _buildVisualGraphNode(
                    "🌧️ Origin: Weather Disruption",
                    _sliderValue >= 0.0
                        ? const Color(0xFFEF4444)
                        : Colors.white12,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Icon(
                      Icons.keyboard_double_arrow_down_rounded,
                      color: Colors.white24,
                      size: 20,
                    ),
                  ),
                  Column(
                    children: [
                      _buildVisualGraphNode(
                        "⚓ Port Congestion",
                        _sliderValue >= 0.33
                            ? const Color(0xFFF59E0B)
                            : Colors.white12,
                      ),
                      const SizedBox(height: 10),
                      _buildVisualGraphNode(
                        "📈 18% Fuel Price Spike",
                        _sliderValue >= 0.33
                            ? Colors.amberAccent
                            : Colors.white12,
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 12.0),
                    child: Icon(
                      Icons.keyboard_double_arrow_down_rounded,
                      color: Colors.white24,
                      size: 20,
                    ),
                  ),
                  _buildVisualGraphNode(
                    "🚨 System Bottleneck: Lahore Dispatch Delay",
                    _sliderValue >= 0.66
                        ? const Color(0xFF38BDF8)
                        : Colors.white12,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            // Metrics Progress Logs State Cards
            _buildStateCard(
              title: stateCardBeforeTitle,
              icon: Icons.gpp_maybe_rounded,
              iconColor: const Color(0xFFF87171),
              bgColor: const Color(0xFF7F1D1D).withOpacity(0.08),
              borderColor: const Color(0xFFEF4444).withOpacity(0.15),
              content: stateCardBeforeMetrics,
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
            _buildStateCard(
              title: stateCardAfterTitle,
              icon: Icons.verified_user_rounded,
              iconColor: dynamicTone,
              bgColor: dynamicTone.withOpacity(0.04),
              borderColor: dynamicTone.withOpacity(0.15),
              content: stateCardAfterMetrics,
            ),
            const SizedBox(height: 24),

            // Live Simulation Monitor
            if (isSimVisible && !widget.isAutonomousMode) ...[
              FadeTransition(
                opacity: _blinkController,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(14),
                  decoration: BoxDecoration(
                    color: const Color(0xFFF59E0B).withOpacity(0.05),
                    borderRadius: BorderRadius.circular(12),
                    border: Border.all(
                      color: const Color(0xFFF59E0B).withOpacity(0.2),
                    ),
                  ),
                  child: Row(
                    children: [
                      const Icon(
                        Icons.waves_rounded,
                        color: Color(0xFFF59E0B),
                        size: 18,
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: Text(
                          simText,
                          style: const TextStyle(
                            color: Color(0xFFFCE8B3),
                            fontSize: 11.5,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 20),
            ],

            // 🏛️ PORTAL 1: AGENT DEBATE TERMINAL VAULT BUTTON (Screen 4 Link)
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AuditVaultScreen(
                      debateStatus: debateStatus,
                      debateOptimist: debateOptimist,
                      debatePessimist: debatePessimist,
                      debateRuling: debateRuling,
                      debateHash: debateHash,
                    ),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFF0F172A),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: Colors.amberAccent.withOpacity(0.2),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: Colors.amberAccent.withOpacity(0.08),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.forum_rounded,
                              color: Colors.amberAccent,
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "AGENT DEBATE VAULT",
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "Live Multi-Agent Consensus Negotiation Logs",
                                  style: TextStyle(
                                    color: Colors.white38,
                                    fontSize: 11,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Colors.amberAccent,
                      size: 14,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 14),

            // 🛡️ PORTAL 2: SECURE OPERATIONS LEDGER BUTTON (Screen 5 Link)
            InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AuditLedgerScreen(
                      sliderValue: _sliderValue,
                      isAutonomousMode: widget.isAutonomousMode,
                      carbonData: carbonData,
                      carbonDetails: carbonDetails,
                      debateHash: debateHash,
                    ),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(16),
              child: Container(
                width: double.infinity,
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFF0F172A),
                  borderRadius: BorderRadius.circular(16),
                  border: Border.all(
                    color: const Color(0xFF38BDF8).withOpacity(0.2),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8),
                            decoration: BoxDecoration(
                              color: const Color(0xFF38BDF8).withOpacity(0.08),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: const Icon(
                              Icons.admin_panel_settings_rounded,
                              color: Color(0xFF38BDF8),
                              size: 20,
                            ),
                          ),
                          const SizedBox(width: 14),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "SECURE AUDIT LEDGER",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w800,
                                    fontSize: 13,
                                    letterSpacing: 1.2,
                                  ),
                                ),
                                SizedBox(height: 3),
                                Text(
                                  "View SLA Escrow, Carbon Arbitrage & Approvals",
                                  style: TextStyle(
                                    color: Colors.white38,
                                    fontSize: 11,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Icon(
                      Icons.arrow_forward_ios_rounded,
                      color: Color(0xFF38BDF8),
                      size: 14,
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  Widget _buildVisualGraphNode(String nodeName, Color borderTone) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      width: double.infinity,
      decoration: BoxDecoration(
        color: borderTone.withOpacity(0.06),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: borderTone, width: 1.2),
      ),
      child: Text(
        nodeName,
        style: TextStyle(
          color: borderTone == Colors.white12 ? Colors.white24 : Colors.white,
          fontSize: 11,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.center,
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
            children: [
              Icon(icon, color: iconColor, size: 16),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  title,
                  style: TextStyle(
                    color: iconColor,
                    fontWeight: FontWeight.w800,
                    fontSize: 11,
                    letterSpacing: 1.2,
                  ),
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
