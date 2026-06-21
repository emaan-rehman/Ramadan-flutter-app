import 'package:flutter/material.dart';
import 'dua_page.dart';
import 'tasbeeh_page.dart';
import 'timings_page.dart';
import 'zakat_page.dart';
import 'habit_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final Color primaryNavy = const Color(0xFF091930);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: const Color(0xFF061426), 
        elevation: 0,
        leading: Builder(
          builder: (context) => IconButton(
            icon: const Icon(Icons.menu, color: Colors.white),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),
        ),
        title: const Text(
          "Ramadan App",
          style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.w400),
        ),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.settings, color: Colors.white, size: 20)),
          IconButton(onPressed: () {}, icon: const Icon(Icons.person, color: Colors.white, size: 20)),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: primaryNavy),
              child: const Text('🌙 Ramadan 2025', 
                style: TextStyle(color: Colors.white, fontSize: 24)),
            ),
            _drawerItem(context, '🏠 Home', const HomePage()),
            _drawerItem(context, '🤲 Duaas', const DuaaPage()),
            _drawerItem(context, '📿 Tasbeeh', const TasbeehPage()),
            _drawerItem(context, '🕒 Timings', const TimingsPage()),
            _drawerItem(context, '💰 Zakat', const ZakatPage()),
            _drawerItem(context, '✅ Habits', const HabitPage()),
          ],
        ),
      ),
      body: Column(
        children: [
          Stack(
            clipBehavior: Clip.none,
            alignment: Alignment.center,
            children: [
              // 1. The Banner Image Container
              Container(
                width: double.infinity,
                height: 250,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/Ramadan.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              // 2. The Overlapping Navigation Row
              Positioned(
                bottom: -40, 
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      _circularNav(context, Icons.home, "Home", const HomePage()),
                      _circularNav(context, Icons.menu_book, "Dua", const DuaaPage()),
                      _circularNav(context, Icons.auto_fix_normal, "Tasbeeh", const TasbeehPage()),
                      _circularNav(context, Icons.access_time_filled, "Timings", const TimingsPage()),
                      _circularNav(context, Icons.calendar_today, "Habits", const HabitPage()),
                      _circularNav(context, Icons.paid, "Zakat", const ZakatPage()),
                    ],
                  ),
                ),
              ),
            ],
          ),
          
          const Spacer(),

          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: [
                const Text(
                  "✨ Developed by ✨",
                  style: TextStyle(color: Colors.grey, fontSize: 12, letterSpacing: 1.2),
                ),
                const SizedBox(height: 5),
                const Text(
                  "Maarij Nadeem • Emaan Rehman • Sundas Qaiser",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 14,
                    color: Color(0xFF091930),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 10),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _circularNav(BuildContext context, IconData icon, String label, Widget page) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 6),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          InkWell(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => page));
            },
            child: Container(
              height: 58,
              width: 58,
              decoration: BoxDecoration(
                color: const Color(0xFF5D6B82), 
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 3),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.15),
                    blurRadius: 8,
                    offset: const Offset(0, 4),
                  )
                ],
              ),
              child: Icon(icon, color: Colors.white, size: 26),
            ),
          ),
          const SizedBox(height: 8),
          Text(
            label,
            style: const TextStyle(
              fontSize: 12, 
              fontWeight: FontWeight.w600, 
              color: Color(0xFF091930),
            ),
          ),
        ],
      ),
    );
  }

  Widget _drawerItem(BuildContext context, String title, Widget page) {
    return ListTile(
      title: Text(title),
      onTap: () {
        Navigator.pop(context);
        if (title.contains('Home')) return;
        Navigator.push(context, MaterialPageRoute(builder: (context) => page));
      },
    );
  }
}