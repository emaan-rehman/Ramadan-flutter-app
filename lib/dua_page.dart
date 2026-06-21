import 'package:flutter/material.dart';

class DuaaPage extends StatelessWidget {
  const DuaaPage({super.key});

  final List<Map<String, String>> duas = const [
    {"name": "Sehri Dua", "arabic": "وَبِصَوْمِ غَدٍ نَّوَيْتُ مِنْ شَهْرِ رَمَضَانَ", "eng": "I intend to keep the fast for tomorrow in the month of Ramadan."},
    {"name": "Iftari Dua", "arabic": "اللَّهُمَّ إِنِّي لَكَ صُمْتُ وَبِكَ آمَنْتُ وَعَلَيْكَ تَوَكَّلْتُ وَعَلَى رِزْقِكَ أَفْطَرْتُ", "eng": "O Allah! I fasted for You and I believe in You and I put my trust in You and I break my fast with Your sustenance."},
    {"name": "First Ashra", "arabic": "يَا حَيُّ يَا قَيُّومُ بِرَحْمَتِكَ أَسْتَغيثُ", "eng": "O Living, O Sustainer, in Your Mercy I seek relief."},
    {"name": "Second Ashra", "arabic": "أَسْتَغْفِرُ اللهَ رَبِّي مِنْ كُلِّ ذَنْبٍ وَأَتُوبُ إِلَيْهِ", "eng": "I ask forgiveness of my sins from Allah who is my Lord and I turn towards Him."},
    {"name": "Third Ashra", "arabic": "اَللَّهُمَّ أَجِرْنِي مِنَ النَّارِ", "eng": "O Allah, save me from the fire (Hell)."},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("🤲 Daily Duaas")),
      body: ListView.builder(
        itemCount: duas.length,
        itemBuilder: (context, index) => Card(
          margin: const EdgeInsets.all(10),
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                Text(duas[index]['name']!, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                const SizedBox(height: 10),
                Text(duas[index]['arabic']!, textAlign: TextAlign.right, style: const TextStyle(fontSize: 20, color: Color(0xFF091930))),
                const SizedBox(height: 10),
                Text(duas[index]['eng']!, textAlign: TextAlign.center, style: const TextStyle(fontStyle: FontStyle.italic)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}