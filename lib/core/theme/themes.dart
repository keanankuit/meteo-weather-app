import 'package:flutter/material.dart';

class AppThemes {
  static final light = ThemeData(
    brightness: Brightness.light,
    scaffoldBackgroundColor: const Color(0xFFF2F5FF),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF0B1170),
      brightness: Brightness.light,
    ),
    cardColor: Colors.white,
  );

  static final dark = ThemeData(
    brightness: Brightness.dark,
    scaffoldBackgroundColor: const Color(0xFF07071D),
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF8E95FF),
      brightness: Brightness.dark,
    ),
    cardColor: const Color(0xFF151529),
  );
}