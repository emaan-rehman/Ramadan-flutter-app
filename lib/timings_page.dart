import 'package:flutter/material.dart';

class TimingsPage extends StatefulWidget {
  const TimingsPage({super.key});

  @override
  State<TimingsPage> createState() => _TimingsPageState();
}

class _TimingsPageState extends State<TimingsPage> {
  String selectedCity = 'Kharian';
  final Map<String, Map<String, String>> cityData = {
    'Kharian': {
      'Sehri': '04:50 AM', 'Fajr': '05:05 AM', 'Dhuhr': '12:15 PM',
      'Asr': '04:30 PM', 'Iftari/Maghrib': '06:15 PM', 'Isha': '07:45 PM'
    },
    'Gujrat': {
      'Sehri': '04:48 AM', 'Fajr': '05:03 AM', 'Dhuhr': '12:13 PM',
      'Asr': '04:28 PM', 'Iftari/Maghrib': '06:13 PM', 'Isha': '07:43 PM'
    },
    'Jhelum': {
      'Sehri': '04:52 AM', 'Fajr': '05:07 AM', 'Dhuhr': '12:17 PM',
      'Asr': '04:32 PM', 'Iftari/Maghrib': '06:17 PM', 'Isha': '07:47 PM'
    },
  };

  @override
  Widget build(BuildContext context) {
    var times = cityData[selectedCity]!;

    return Scaffold(
      appBar: AppBar(title: const Text("🕒 Prayer Timings")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // City Selector
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: const Color(0xFF091930)),
              ),
              child: DropdownButton<String>(
                value: selectedCity,
                isExpanded: true,
                underline: const SizedBox(),
                items: cityData.keys.map((String city) {
                  return DropdownMenuItem(value: city, child: Text(city));
                }).toList(),
                onChanged: (value) => setState(() => selectedCity = value!),
              ),
            ),
            const SizedBox(height: 20),
            // Timings Table
            Expanded(
              child: ListView(
                children: times.entries.map((entry) {
                  return Card(
                    color: entry.key.contains('Iftari') ? const Color(0xFF091930) : Colors.white,
                    child: ListTile(
                      title: Text(entry.key, 
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: entry.key.contains('Iftari') ? Colors.white : Colors.black87
                        )),
                      trailing: Text(entry.value, 
                        style: TextStyle(
                          fontSize: 16, 
                          color: entry.key.contains('Iftari') ? Colors.white : const Color(0xFF091930)
                        )),
                    ),
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}