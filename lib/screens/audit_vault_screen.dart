import 'package:flutter/material.dart';
import 'audit_ledger_screen.dart'; // Cross-linking import

class AuditVaultScreen extends StatelessWidget {
  final String debateStatus;
  final String debateOptimist;
  final String debatePessimist;
  final String debateRuling;
  final String debateHash;

  // Hamein baqi parameters bhi chahiye taake hum agli screen ko pass kar sakein
  final double sliderValue;
  final bool isAutonomousMode;
  final String carbonData;
  final String carbonDetails;

  const AuditVaultScreen({
    super.key,
    required this.debateStatus,
    required this.debateOptimist,
    required this.debatePessimist,
    required this.debateRuling,
    required this.debateHash,
    this.sliderValue = 1.0,          // Default parameters safety ke liye
    this.isAutonomousMode = false,
    this.carbonData = "2.4 Metric Tons Saved",
    this.carbonDetails = "Sandbox validation caught invalid coordinates.",
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF030712),
      appBar: AppBar(
        backgroundColor: const Color(0xFF0F172A),
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_ios_new_rounded, color: Colors.white70, size: 18),
          onPressed: () => Navigator.pop(context),
        ),
        title: const Text(
          "CONCURRENT AGENT DEBATE VAULT",
          style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w900, letterSpacing: 1.5),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.all(24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("LIVE CONSENSUS STRATEGY TERMINAL", style: TextStyle(color: Colors.white38, fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 1.2)),
            const SizedBox(height: 16),

            Container(
              width: double.infinity, padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(color: const Color(0xFF0F172A), borderRadius: BorderRadius.circular(20), border: Border.all(color: Colors.white.withOpacity(0.05))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Text(debateStatus, style: const TextStyle(color: Colors.white, fontSize: 13, fontWeight: FontWeight.w900, letterSpacing: 0.5), overflow: TextOverflow.ellipsis)),
                      const SizedBox(width: 8),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                        decoration: BoxDecoration(color: const Color(0xFF10B981).withOpacity(0.1), borderRadius: BorderRadius.circular(6)),
                        child: const Text("PROVEN", style: TextStyle(color: Color(0xFF34D399), fontSize: 9, fontWeight: FontWeight.bold)),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 14), child: Divider(color: Colors.white10, height: 1)),

                  IntrinsicHeight(
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(color: const Color(0xFF1E293B).withOpacity(0.3), borderRadius: BorderRadius.circular(12), border: Border.all(color: Colors.amberAccent.withOpacity(0.1))),
                            child: _buildConsoleBlock("Optimist Agent", "Optimist Trace Mode Active", debateOptimist, Colors.amberAccent),
                          ),
                        ),
                        const SizedBox(width: 14),
                        Expanded(
                          child: Container(
                            padding: const EdgeInsets.all(14),
                            decoration: BoxDecoration(color: const Color(0xFF1E293B).withOpacity(0.3), borderRadius: BorderRadius.circular(12), border: Border.all(color: const Color(0xFFEF4444).withOpacity(0.1))),
                            child: _buildConsoleBlock("Pessimist Agent", "Pessimist Constraint Engine", debatePessimist, const Color(0xFFF87171)),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 16), child: Divider(color: Colors.white10, height: 1)),

                  Container(
                    width: double.infinity, padding: const EdgeInsets.all(14),
                    decoration: BoxDecoration(color: const Color(0xFF38BDF8).withOpacity(0.04), borderRadius: BorderRadius.circular(12), border: Border.all(color: const Color(0xFF38BDF8).withOpacity(0.15))),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.gavel_rounded, color: Color(0xFF38BDF8), size: 14),
                            SizedBox(width: 8),
                            Text("ARBITRATION RULING VERDICT", style: TextStyle(color: Color(0xFF38BDF8), fontSize: 10, fontWeight: FontWeight.bold, letterSpacing: 0.5)),
                          ],
                        ),
                        const SizedBox(height: 8),
                        Text(debateRuling, style: const TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w700, height: 1.4)),
                      ],
                    ),
                  ),
                  const SizedBox(height: 14),
                  SelectableText("SIG FOOTPRINT: $debateHash", style: const TextStyle(color: Colors.white12, fontSize: 9, fontFamily: 'monospace')),
                ],
              ),
            ),

            const SizedBox(height: 35),
            const Divider(color: Colors.white10),
            const SizedBox(height: 15),

            // 🔀 CROSS REDIRECT PORTAL: Back aaye bina direct Ledger screen kholne ke liye!
            InkWell(
              onTap: () {
                // Pehle purani screen ko stack se pop (remove) karenge taake back-loops ki bheed na bane
                Navigator.pop(context); 
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AuditLedgerScreen(
                      sliderValue: sliderValue,
                      isAutonomousMode: isAutonomousMode,
                      carbonData: carbonData,
                      carbonDetails: carbonDetails,
                      debateHash: debateHash,
                      debateStatus: debateStatus,
                      debateOptimist: debateOptimist,
                      debatePessimist: debatePessimist,
                      debateRuling: debateRuling,
                    ),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(16),
              child: Container(
                width: double.infinity, padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(color: const Color(0xFF1E293B).withOpacity(0.3), borderRadius: BorderRadius.circular(16), border: Border.all(color: const Color(0xFF38BDF8).withOpacity(0.2))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.admin_panel_settings_rounded, color: Color(0xFF38BDF8), size: 18),
                        SizedBox(width: 12),
                        Text("Switch to Operational Ledger ➔", style: TextStyle(color: Color(0xFF38BDF8), fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 0.5)),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios_rounded, color: Color(0xFF38BDF8), size: 12),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildConsoleBlock(String name, String trace, String body, Color accent) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(children: [Container(width: 6, height: 6, decoration: BoxDecoration(color: accent, shape: BoxShape.circle)), const SizedBox(width: 6), Text(name, style: TextStyle(color: accent, fontSize: 10, fontWeight: FontWeight.w900))]),
        const SizedBox(height: 8),
        Text("➔ [$trace]", style: TextStyle(color: accent.withOpacity(0.5), fontSize: 8, fontFamily: 'monospace')),
        const SizedBox(height: 6),
        Expanded(child: SingleChildScrollView(child: Text(body, style: const TextStyle(color: Color(0xFFE5E7EB), fontSize: 11, height: 1.4)))),
      ],
    );
  }
}