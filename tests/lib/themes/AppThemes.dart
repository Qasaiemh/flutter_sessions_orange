import 'package:flutter/material.dart';

class AppThemes {
  static ThemeData lightTheme = ThemeData(
    primaryColor: Color(0xFF0074FF),
    accentColor: Color(0xFFFF6B00),
    backgroundColor: Color(0xFFF4F6F9),
    // Add other theme properties as needed
  );

  static ThemeData darkTheme = ThemeData(
    primaryColor: Color(0xFF1A1A1A),
    accentColor: Color(0xFFFFA500),
    backgroundColor: Color(0xFF121212),
    // Add other theme properties as needed
    brightness: Brightness.dark,
  );
}
