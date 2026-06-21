import 'package:flutter/material.dart';
import 'package:ramadan_futter_app/home_page.dart';

void main() {
  runApp(const RamadanApp());
}

class RamadanApp extends StatelessWidget {
  const RamadanApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Ramadan App',
      theme: ThemeData(
        primaryColor: const Color(0xFF091930),
        scaffoldBackgroundColor: const Color(0xFFF5F5F5),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF091930),
          primary: const Color(0xFF091930),
          secondary: const Color(0xFFBDBDBD),
        ),
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF091930),
          foregroundColor: Colors.white,
          elevation: 0,
        ),
      ),
      home: const HomePage(),
    );
  }
}