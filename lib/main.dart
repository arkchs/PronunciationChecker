import 'package:flutter/material.dart';
import 'package:pronunciation/pages/home_page/home_page.dart';
import 'package:pronunciation/pages/practice_page/practice_pages.dart';

void main() {
  runApp(const SpeakRightApp());
}

class SpeakRightApp extends StatelessWidget {
  const SpeakRightApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SpeakRight',
      theme: ThemeData(
        fontFamily: 'Poppins',
        scaffoldBackgroundColor: const Color(0xFF181A2A),
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xFF19A7F2),
          brightness: Brightness.dark,
        ),
        textTheme: const TextTheme(
          headlineLarge: TextStyle(
            fontFamily: 'Poppins',
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 32,
          ),
          bodyMedium: TextStyle(
            fontFamily: 'Poppins',
            color: Color(0xFFBFC2D5),
            fontSize: 16,
          ),
        ),
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
