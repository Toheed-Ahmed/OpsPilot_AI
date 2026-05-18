import 'package:flutter/material.dart';
import 'audit_vault_screen.dart'; // Cross-linking import

class AuditLedgerScreen extends StatefulWidget {
  final double sliderValue;
  final bool isAutonomousMode;
  final String carbonData;
  final String carbonDetails;
  final String debateHash;

  // Hamein baqi parameters bhi chahiye taake hum wapas dynamic Debate screen ko bhej sakein
  final String debateStatus;
  final String debateOptimist;
  final String debatePessimist;
  final String debateRuling;

  const AuditLedgerScreen({
    super.key,
    required this.sliderValue,
    required this.isAutonomousMode,
    required this.carbonData,
    required this.carbonDetails,
    required this.debateHash,
    this.debateStatus = "🔒 LEDGER COMMIT PROOF-SEALED",
    this.debateOptimist = "Optimist Agent Trace: System evaluation logs archived safely.",
    this.debatePessimist = "Pessimist Agent Trace: Target workflow status overridden.",
    this.debateRuling = "FINAL VERDICT: Carrier shifted to Tier 2.",
  });

  @override
  State<AuditLedgerScreen> createState() => _AuditLedgerScreenState();
}

class _AuditLedgerScreenState extends State<AuditLedgerScreen> {
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
          "OPERATIONAL COMPLIANCE LEDGER",
          style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.w900, letterSpacing: 1.5),
        ),
      ),
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("SECURE BLOCKCHAIN COMPLIANCE CORE", style: TextStyle(color: Colors.white38, fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 1.2)),
            const SizedBox(height: 16),

            if (!widget.isAutonomousMode && widget.sliderValue >= 0.33) ...[
              Container(
                width: double.infinity, padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(color: const Color(0xFF991B1B).withOpacity(0.04), borderRadius: BorderRadius.circular(16), border: Border.all(color: const Color(0xFFEF4444).withOpacity(0.18))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: const [
                            Icon(Icons.gavel_rounded, color: Color(0xFFF87171), size: 15),
                            SizedBox(width: 8),
                            Text("Autonomous SLA Escrow Tracker", style: TextStyle(color: Colors.white, fontSize: 12, fontWeight: FontWeight.bold)),
                          ],
                        ),
                        const Text("Risk: Critical", style: TextStyle(color: Color(0xFFF87171), fontSize: 11, fontWeight: FontWeight.bold)),
                      ],
                    ),
                    const Divider(color: Colors.white10, height: 20),
                    const Text("\$12,500 Systemic Penalty Drafted", style: TextStyle(color: Color(0xFFFCA5A5), fontSize: 16, fontWeight: FontWeight.w900)),
                    const SizedBox(height: 4),
                    const Text("Drift Rule: Auto-Downgrade sequence triggered for unverified vendor pipelines", style: TextStyle(color: Colors.white38, fontSize: 10)),
                  ],
                ),
              ),
              const SizedBox(height: 20),
            ],

            Container(
              padding: const EdgeInsets.all(18),
              decoration: BoxDecoration(color: const Color(0xFF0F172A), borderRadius: BorderRadius.circular(20), border: Border.all(color: const Color(0xFF14B8A6).withOpacity(0.12))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(child: Text("Asynchronous Carbon-Arbitrage Control Tower", style: TextStyle(color: Colors.tealAccent[100], fontWeight: FontWeight.w700, fontSize: 13), overflow: TextOverflow.ellipsis)),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                        decoration: BoxDecoration(color: const Color(0xFF0D9488).withOpacity(0.12), borderRadius: BorderRadius.circular(8), border: Border.all(color: const Color(0xFF14B8A6).withOpacity(0.2))),
                        child: Text(widget.carbonData, style: const TextStyle(color: Color(0xFF2DD4BF), fontSize: 11, fontWeight: FontWeight.w800)),
                      ),
                    ],
                  ),
                  const Padding(padding: EdgeInsets.symmetric(vertical: 10), child: Divider(color: Colors.white10)),
                  Text(widget.carbonDetails, style: TextStyle(color: Colors.grey[400], fontSize: 12, height: 1.5)),
                ],
              ),
            ),
            const SizedBox(height: 32),

            if (!widget.isAutonomousMode) ...[
              SizedBox(
                width: double.infinity, height: 52,
                child: ElevatedButton.icon(
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(backgroundColor: const Color(0xFF10B981), behavior: SnackBarBehavior.floating, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), content: Row(children: const [Icon(Icons.verified_rounded, color: Colors.white), SizedBox(width: 12), Expanded(child: Text("LEDGER COMMITTED: Operational signature approved!", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 11)))])));
                  },
                  icon: const Icon(Icons.lock_open_rounded, color: Colors.white, size: 16),
                  label: const Text("Grant Cryptographic Operational Approval", style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 12), overflow: TextOverflow.ellipsis),
                  style: ElevatedButton.styleFrom(backgroundColor: const Color(0xFFD97706), shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)), elevation: 0),
                ),
              ),
            ],
            const SizedBox(height: 16),
            SelectableText("BLOCK SECURITY HASH SUMMARY: ${widget.debateHash}", style: const TextStyle(color: Colors.white12, fontSize: 9, fontFamily: 'monospace')),
            
            const SizedBox(height: 35),
            const Divider(color: Colors.white10),
            const SizedBox(height: 15),

            // 🔀 CROSS REDIRECT PORTAL: Back aaye bina direct Agent Debate Terminal kholne ke liye!
            InkWell(
              onTap: () {
                // Current route pop karenge taake navigation clean rahe
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => AuditVaultScreen(
                      debateStatus: widget.debateStatus,
                      debateOptimist: widget.debateOptimist,
                      debatePessimist: widget.debatePessimist,
                      debateRuling: widget.debateRuling,
                      debateHash: widget.debateHash,
                      sliderValue: widget.sliderValue,
                      isAutonomousMode: widget.isAutonomousMode,
                      carbonData: widget.carbonData,
                      carbonDetails: widget.carbonDetails,
                    ),
                  ),
                );
              },
              borderRadius: BorderRadius.circular(16),
              child: Container(
                width: double.infinity, padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(color: const Color(0xFF1E293B).withOpacity(0.3), borderRadius: BorderRadius.circular(16), border: Border.all(color: Colors.amberAccent.withOpacity(0.2))),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: const [
                        Icon(Icons.forum_rounded, color: Colors.amberAccent, size: 18),
                        SizedBox(width: 12),
                        Text("Switch to Agent Debate Vault ➔", style: TextStyle(color: Colors.amberAccent, fontSize: 11, fontWeight: FontWeight.bold, letterSpacing: 0.5)),
                      ],
                    ),
                    const Icon(Icons.arrow_forward_ios_rounded, color: Colors.amberAccent, size: 12),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}