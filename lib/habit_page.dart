import 'package:flutter/material.dart';

class HabitPage extends StatefulWidget {
  const HabitPage({super.key});

  @override
  State<HabitPage> createState() => _HabitPageState();
}

class _HabitPageState extends State<HabitPage> {
  final List<Map<String, dynamic>> _habits = [
    {'title': 'Offer 5 Daily Prayers', 'completed': false},
    {'title': 'Recite Holy Quran', 'completed': false},
    {'title': 'Give Charity (Sadaqah)', 'completed': false},
    {'title': 'Read Morning/Evening Azkar', 'completed': false},
    {'title': 'Perform Taraweeh', 'completed': false},
    {'title': 'Avoid Backbiting', 'completed': false},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("✅ Daily Habit Tracker")),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(20.0),
            child: Text(
              "Track your spiritual growth today:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: _habits.length,
              itemBuilder: (context, index) {
                return CheckboxListTile(
                  title: Text(_habits[index]['title']),
                  value: _habits[index]['completed'],
                  activeColor: const Color(0xFF091930),
                  onChanged: (bool? value) {
                    setState(() {
                      _habits[index]['completed'] = value!;
                    });
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}