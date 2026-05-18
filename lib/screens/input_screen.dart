import 'package:flutter/material.dart';
import 'package:file_picker/file_picker.dart';
import 'dart:convert';
import 'package:flutter/services.dart';
import 'flow_screen.dart';

class InputScreen extends StatefulWidget {
  const InputScreen({super.key});

  @override
  State<InputScreen> createState() => _InputScreenState();
}

class _InputScreenState extends State<InputScreen> {
  final TextEditingController _controller = TextEditingController();
  String? _selectedFileName;

  bool _isAutonomousActiveMode = true;
  bool _hasActiveSystemAlert = false;
  String _alertMessage = "";
  String _alertLevel = "";

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => setState(() {}));
    _checkSystemAlertsFromJSON();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Future<void> _checkSystemAlertsFromJSON() async {
    try {
      final String response = await rootBundle.loadString(
        'assets/execution_trace.json',
      );
      final List<dynamic> data = json.decode(response);

      final failureWorkflow = data.firstWhere(
        (w) =>
            w['workflow_id'] == 'OP-SYNC-9004' ||
            w['final_state']['status'] == 'FAILURE_RECOVERED',
        orElse: () => null,
      );

      if (failureWorkflow != null) {
        setState(() {
          _hasActiveSystemAlert = true;
          _alertMessage =
              "CRITICAL METRIC OVERRIDE: " +
              (failureWorkflow['final_state']['summary'] ??
                  "System runtime failure intercepted.");
          _alertLevel = "FAILURE_RECOVERED";
        });
      } else {
        final activeWorkflow = data.firstWhere(
          (w) => w['workflow_id'] == 'OP-SYNC-9003',
          orElse: () => data[0],
        );
        final trace = activeWorkflow['execution_trace'] as List<dynamic>;
        final alertAgent = trace.firstWhere(
          (element) => element['agent'] == 'Alert Agent',
          orElse: () => null,
        );

        if (alertAgent != null &&
            alertAgent['output']['alert_generated'] == true) {
          setState(() {
            _hasActiveSystemAlert = true;
            _alertMessage =
                alertAgent['output']['alert_message'] ??
                "Multi-domain risk cascade detected.";
            _alertLevel = alertAgent['output']['alert_level'] ?? "CRITICAL";
          });
        }
      }
    } catch (e) {
      debugPrint("Alert validation engine mismatch: $e");
    }
  }

  Future<void> _pickFile() async {
    try {
      FilePickerResult? result = await FilePicker.pickFiles(
        type: FileType.custom,
        allowedExtensions: ['pdf', 'csv', 'txt', 'docx'],
      );

      if (result != null) {
        setState(() {
          _selectedFileName = result.files.single.name;
          String fn = _selectedFileName!.toLowerCase();

         
          String newTelemetry = "";
          if (fn.contains('rain') ||
              fn.contains('flood') ||
              fn.contains('weather')) {
            newTelemetry =
                " [FILE SYSTEM]: Karachi Weather Alert: Severe rainstorm causing flash floods. Fleet paralyzed in Southern Zone. Logistics nodes failing.";
          } else if (fn.contains('port') || fn.contains('strike')) {
            newTelemetry =
                " [FILE SYSTEM]: Port strike alert: All clearances stalled at primary maritime terminals. Supply chain disruption imminent.";
          } else if (fn.contains('fuel') || fn.contains('price')) {
            newTelemetry =
                " [FILE SYSTEM]: Macro-economic shift: Fuel prices spike by 18% nationwide, damaging variable transport margins.";
          } else {
            newTelemetry =
                " [FILE SYSTEM]: Ingesting external data report [$_selectedFileName]: High-density network infrastructure anomaly discovered.";
          }

          // Agar box pehle se khali nahi hai, toh space de kar aage text jod dein
          if (_controller.text.trim().isNotEmpty) {
            _controller.text = _controller.text + "\n\n" + newTelemetry;
          } else {
            _controller.text = newTelemetry;
          }
        });
      }
    } catch (e) {
      debugPrint("File picking exception: $e");
    }
  }

  @override
  Widget build(BuildContext context) {
    bool isInputEmpty = _controller.text.trim().isEmpty;

    return Scaffold(
      backgroundColor: const Color(0xFF030712), // Deeper premium gray/black
      appBar: AppBar(
        title: const Text(
          'OpsPilot AI Console',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w700,
            letterSpacing: 1.5,
            fontSize: 15,
          ),
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 28.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- PRE-EXECUTION THREAT BANNER (DYNAMIC COLOR OVERHAUL) ---
              if (_hasActiveSystemAlert) ...[
                Container(
                  padding: const EdgeInsets.all(18),
                  decoration: BoxDecoration(
                    color: _alertLevel == "FAILURE_RECOVERED"
                        ? Colors.amber.withOpacity(0.08)
                        : const Color(0xFF7F1D1D).withOpacity(0.15),
                    borderRadius: BorderRadius.circular(16),
                    border: Border.all(
                      color: _alertLevel == "FAILURE_RECOVERED"
                          ? Colors.amberAccent.withOpacity(0.25)
                          : const Color(0xFFEF4444).withOpacity(0.25),
                    ),
                  ),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Icon(
                        _alertLevel == "FAILURE_RECOVERED"
                            ? Icons.notifications_active_rounded
                            : Icons.gpp_bad_rounded,
                        color: _alertLevel == "FAILURE_RECOVERED"
                            ? Colors.amberAccent
                            : const Color(0xFFF87171),
                        size: 22,
                      ),
                      const SizedBox(width: 14),
                      const SizedBox(width: 14),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                // 🚨 THE CRITICAL FIX: Wrapped the text widget in an Expanded inside the Row!
                                Expanded(
                                  child: Text(
                                    "SYSTEM DISRUPTION ALERT • $_alertLevel",
                                    style: TextStyle(
                                      color: _alertLevel == "FAILURE_RECOVERED"
                                          ? Colors.amberAccent
                                          : const Color(0xFFF87171),
                                      fontWeight: FontWeight.w800,
                                      fontSize: 10,
                                      letterSpacing: 1.2,
                                    ),
                                    softWrap:
                                        true, // Dynamics automatic text wrapping
                                  ),
                                ),

                                // 🚨 Removed Spacer() because Expanded already pushes the indicator to the end nicely
                                const SizedBox(width: 8),

                                SizedBox(
                                  width: 8,
                                  height: 8,
                                  child: CircularProgressIndicator(
                                    strokeWidth: 1.5,
                                    color: _alertLevel == "FAILURE_RECOVERED"
                                        ? Colors.amberAccent
                                        : const Color(0xFFF87171),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),
                            Text(
                              _alertMessage,
                              style: const TextStyle(
                                color: Color(0xFFE5E7EB),
                                fontSize: 13,
                                height: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
              ],

              // --- COMPLIANCE FLOW SWITCH ---
              Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                  color: const Color(0xFF1F2937).withOpacity(0.4),
                  borderRadius: BorderRadius.circular(18),
                  border: Border.all(color: Colors.white.withOpacity(0.05)),
                ),
                child: Row(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(10),
                      decoration: BoxDecoration(
                        color: _isAutonomousActiveMode
                            ? const Color(0xFFD97706).withOpacity(0.1)
                            : const Color(0xFF2563EB).withOpacity(0.1),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Icon(
                        _isAutonomousActiveMode
                            ? Icons.bolt_rounded
                            : Icons.shield_rounded,
                        color: _isAutonomousActiveMode
                            ? const Color(0xFFF59E0B)
                            : const Color(0xFF60A5FA),
                        size: 20,
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            _isAutonomousActiveMode
                                ? "Autonomous Action Engine"
                                : "Shadow Co-Pilot Compliance",
                            style: const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            _isAutonomousActiveMode
                                ? "Direct orchestration without manual pipeline locks."
                                : "AI generates mitigation routes holding execution signatures.",
                            style: TextStyle(
                              color: Colors.grey[400],
                              fontSize: 11,
                              height: 1.3,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Switch(
                      value: _isAutonomousActiveMode,
                      activeColor: const Color(0xFFF59E0B),
                      activeTrackColor: const Color(
                        0xFFF59E0B,
                      ).withOpacity(0.15),
                      inactiveThumbColor: const Color(0xFF60A5FA),
                      inactiveTrackColor: const Color(
                        0xFF60A5FA,
                      ).withOpacity(0.15),
                      onChanged: (val) =>
                          setState(() => _isAutonomousActiveMode = val),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 35),

              const Text(
                'Anomalous Stream Ingestion',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w800,
                  color: Colors.white,
                  letterSpacing: -0.5,
                ),
              ),
              const SizedBox(height: 6),
              Text(
                'Deploy multi-agent semantic synthesis for live incident mitigations.',
                style: TextStyle(color: Colors.grey[400], fontSize: 13),
              ),
              const SizedBox(height: 28),

              // --- TEXT AREA PANEL ---
              Container(
                decoration: BoxDecoration(
                  color: const Color(0xFF111827),
                  borderRadius: BorderRadius.circular(22),
                  border: Border.all(color: Colors.white.withOpacity(0.04)),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 14,
                      ),
                      child: Row(
                        children: [
                          const Icon(
                            Icons.hub_outlined,
                            color: Color(0xFF60A5FA),
                            size: 16,
                          ),
                          const SizedBox(width: 10),
                          const Text(
                            "Data Ingestion Stream",
                            style: TextStyle(
                              color: Colors.white70,
                              fontWeight: FontWeight.w600,
                              fontSize: 13,
                            ),
                          ),
                          const Spacer(),
                          IconButton(
                            icon: const Icon(
                              Icons.cloud_upload_outlined,
                              color: Color(0xFF60A5FA),
                              size: 20,
                            ),
                            onPressed: _pickFile,
                          ),
                        ],
                      ),
                    ),
                    const Divider(color: Colors.white10, height: 1),
                    TextField(
                      controller: _controller,
                      maxLines: 5,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        height: 1.5,
                      ),
                      cursorColor: const Color(0xFF3B82F6),
                      decoration: InputDecoration(
                        hintText:
                            "Paste logistics logs, telemetry inputs, or click upload...",
                        hintStyle: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                        ),
                        contentPadding: const EdgeInsets.all(22),
                        border: InputBorder.none,
                      ),
                    ),
                  ],
                ),
              ),

              if (_selectedFileName != null)
                Padding(
                  padding: const EdgeInsets.only(top: 14),
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 14,
                      vertical: 8,
                    ),
                    decoration: BoxDecoration(
                      color: const Color(0xFF3B82F6).withOpacity(0.06),
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color(0xFF3B82F6).withOpacity(0.2),
                      ),
                    ),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.insert_drive_file_outlined,
                          color: Color(0xFF60A5FA),
                          size: 14,
                        ),
                        const SizedBox(width: 8),
                        Text(
                          _selectedFileName!,
                          style: const TextStyle(
                            color: Color(0xFF60A5FA),
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(width: 10),
                        GestureDetector(
                          onTap: () => setState(() {
                            _selectedFileName = null;
                            _controller.clear();
                          }),
                          child: const Icon(
                            Icons.cancel_outlined,
                            color: Color(0xFF60A5FA),
                            size: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),

              const SizedBox(height: 35),
              const Text(
                'SIMULATION WORKLOAD TARGETS',
                style: TextStyle(
                  color: Colors.white38, // Fixed light background trace line
                  fontWeight: FontWeight.w800,
                  fontSize: 11,
                  letterSpacing: 1.5,
                ),
              ),
              const SizedBox(height: 14),

              // 🚨 LINE 1: Cascading Floods & Port Strike Logistics aamne-saamne ek line mein
              Row(
                children: [
                  Expanded(
                    child: _buildScenarioChip(
                      'Cascading Floods',
                      "Heavy Rain & Flooding paralyzing fleet transit. Karachi Central warehouse reporting stock failures.",
                    ),
                  ),
                  const SizedBox(width: 12), // Dono chips ke darmayan ka horizontal gap
                  Expanded(
                    child: _buildScenarioChip(
                      'Port Strike Logistics',
                      "Major container clearance strike. Southern region logistics blocked.",
                    ),
                  ),
                ],
              ),
              
              const SizedBox(height: 12), // Dono lines ke darmayan ka vertical gap

              // 🚨 LINE 2: Fuel Margin Strain & Failure Recovery Loop aamne-saamne ek line mein
              Row(
                children: [
                  Expanded(
                    child: _buildScenarioChip(
                      'Fuel Margin Strain',
                      "Macro price index surge of 18% forcing variable expense spikes.",
                    ),
                  ),
                  const SizedBox(width: 12), // Dono chips ke darmayan ka horizontal gap
                  Expanded(
                    child: _buildScenarioChip(
                      'Failure Recovery Loop',
                      "Triggering coordinate transmission anomaly. Tracking failure isolation parameters, active monitoring logs, and final automated state rollback execution.",
                    ),
                  ),
                ],
              ),

              const SizedBox(height: 45),

              // 🚨 ULTIMATE ZERO-TRUST INPUT STREAM GATEKEEPER
              SizedBox(
                width: double.infinity,
                height: 54,
                child: ElevatedButton(
                  onPressed: isInputEmpty
                      ? null
                      : () {
                          final String text = _controller.text.toLowerCase();

                          // 1. Strict filter for 100% verified enterprise scenarios only
                          // Agar inme se koi ek lafz bhi text me nahi hoga, toh data out-of-domain ya corrupt mana jayega.
                          bool isValidScenario =
                              text.contains('rain') ||
                              text.contains('flood') ||
                              text.contains('weather') ||
                              text.contains('port') ||
                              text.contains('strike') ||
                              text.contains('fuel') ||
                              text.contains('price') ||
                              text.contains('fuel price') ||
                              text.contains('fail') ||
                              text.contains('rollback') ||
                              text.contains('coordinate') ||
                              text.contains('recovery') ||
                              text.contains('halt') ||
                              text.contains('authorization') ||
                              text.contains('escrow');

                          // 🛑 CRITICAL ADAPTATION: Agar data corrupted ho YA bilkul hi out-of-domain ho (!isValidScenario)
                          bool isCorruptedOrOutOfDomain =
                              text.contains('testing') ||
                              text.contains('matrix') ||
                              !isValidScenario;

                          if (isCorruptedOrOutOfDomain) {
                            // 🛑 STOPS ALL PROCESSING IMMEDIATELY: Never allow to push to FlowScreen
                            showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (context) => AlertDialog(
                                backgroundColor: const Color(0xFF111827),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                  side: const BorderSide(
                                    color: Color(0xFFEF4444),
                                    width: 1.5,
                                  ), // Glowing Alert Red Border
                                ),
                                title: Row(
                                  children: const [
                                    Icon(
                                      Icons.gpp_bad_rounded,
                                      color: Color(0xFFEF4444),
                                      size: 24,
                                    ),
                                    SizedBox(width: 10),
                                    Text(
                                      "Pipeline Ingestion Fault",
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 16,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                                content: const Text(
                                  "❌ CRITICAL DISCREPANCY DETECTED:\n\nPayload Stream Validation Failed! The provided telemetry data format is corrupted, out of domain, or contains missing contextual matrices. Initializing engine aborted for system safety.",
                                  style: TextStyle(
                                    color: Color(0xFFE5E7EB),
                                    fontSize: 13,
                                    height: 1.5,
                                  ),
                                ),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text(
                                      "Re-initialize Input Stream",
                                      style: TextStyle(
                                        color: Color(0xFF60A5FA),
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            );
                          } else {
                            // Proceed to animation pipeline ONLY if data is within logistics domains
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => FlowScreen(
                                  userInput: _controller.text,
                                  isAutonomousMode: _isAutonomousActiveMode,
                                ),
                              ),
                            );
                          }
                        },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF2563EB),
                    disabledBackgroundColor: Colors.white.withOpacity(0.02),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    elevation: 0,
                  ),
                  child: Text(
                    'Initialize Pipeline Engine',
                    style: TextStyle(
                      color: isInputEmpty ? Colors.white24 : Colors.white,
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildScenarioChip(String label, String text) {
    return ActionChip(
      label: Text(label),
      labelStyle: const TextStyle(
        color: Colors.white70,
        fontSize: 12,
        fontWeight: FontWeight.w600,
        letterSpacing: 0.2,
      ),
      backgroundColor: const Color(0xFF111827).withOpacity(0.85),
      disabledColor: const Color(0xFF030712),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        side: BorderSide(color: Colors.white.withOpacity(0.04), width: 1),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      onPressed: () => setState(() {
        // 🚨 FIX: Purana text clear nahi hoga, text aage add hota chala jayega!
        if (_controller.text.trim().isNotEmpty) {
          _controller.text = _controller.text + "\n\n" + text;
        } else {
          _controller.text = text;
        }
      }),
    );
  }
}
