import 'package:flutter/material.dart';

class TasbeehPage extends StatefulWidget {
  const TasbeehPage({super.key});
  @override
  State<TasbeehPage> createState() => _TasbeehPageState();
}

class _TasbeehPageState extends State<TasbeehPage> {
  int _counter = 0;
  void _increment() => setState(() => _counter++);
  void _reset() => setState(() => _counter = 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("📿 Tasbeeh Counter")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("اللَّهُمَّ صَلِّ عَلَى مُحَمَّدٍ وَّعَلَى آلِ مُحَمَّدٍ", 
              textAlign: TextAlign.center, style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            const SizedBox(height: 40),
            GestureDetector(
              onTap: _increment,
              child: Container(
                width: 200, height: 200,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xFF091930),
                  boxShadow: [BoxShadow(color: Colors.black26, blurRadius: 10)],
                ),
                alignment: Alignment.center,
                child: Text('$_counter', style: const TextStyle(fontSize: 50, color: Colors.white)),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: _reset, child: const Text("Reset"))
          ],
        ),
      ),
    );
  }
}