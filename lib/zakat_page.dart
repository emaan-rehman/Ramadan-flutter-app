import 'package:flutter/material.dart';

class ZakatPage extends StatefulWidget {
  const ZakatPage({super.key});
  @override
  State<ZakatPage> createState() => _ZakatPageState();
}

class _ZakatPageState extends State<ZakatPage> {
  final TextEditingController _amountController = TextEditingController();
  double _zakat = 0;

  void _calculate() {
    double total = double.tryParse(_amountController.text) ?? 0;
    setState(() {
      _zakat = total * 0.025; // 2.5% Zakat
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("💰 Zakat Calculator")),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            TextField(
              controller: _amountController,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: "Enter Total Wealth Amount"),
            ),
            const SizedBox(height: 20),
            ElevatedButton(onPressed: _calculate, child: const Text("Calculate Zakat (2.5%)")),
            const SizedBox(height: 30),
            Text("Your Zakat Amount: $_zakat", style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
          ],
        ),
      ),
    );
  }
}