import 'package:flutter/material.dart';

enum EnTheme { dark, light }

final ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  primarySwatch: Colors.purple,
  scaffoldBackgroundColor: Colors.grey[100],
  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.purple,
    foregroundColor: Colors.white,
    elevation: 4,
    shadowColor: Colors.purpleAccent,
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: Colors.purple,
    inactiveTrackColor: Colors.purple.shade100,
    thumbColor: Colors.purple,
    overlayColor: Colors.purple.withValues(alpha: 0.2),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.purple,
      foregroundColor: Colors.white,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
            padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),

      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.black),
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.black),
    displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.black),
    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.black),
    bodyLarge: TextStyle(fontSize: 18, color: Colors.black,fontWeight: FontWeight.w500),
    bodyMedium: TextStyle(fontSize: 16, color: Colors.black,fontWeight: FontWeight.w500),
  ),
);
