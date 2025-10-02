import 'package:flutter/material.dart';

final ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,
  primarySwatch: Colors.purple,
  scaffoldBackgroundColor: const Color(0xFF1C1C28), // Dark blue-gray background
  cardColor: const Color(0xFF2A2A3D), // Slightly lighter for cards
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF3A0CA3), // Deep purple
    foregroundColor: Colors.white,
    elevation: 6,
    shadowColor: Colors.deepPurpleAccent,
    titleTextStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
    centerTitle: true,
  ),
  sliderTheme: SliderThemeData(
    activeTrackColor: Colors.purpleAccent.shade100,
    inactiveTrackColor: Colors.purple.shade100,
    thumbColor: Colors.purpleAccent,
    overlayColor: Colors.purpleAccent.withOpacity(0.2),
    valueIndicatorColor: Colors.purpleAccent,
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.deepPurpleAccent,
      foregroundColor: Colors.white,
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      textStyle: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 24),
    ),
  ),
  textTheme: const TextTheme(
    displayLarge: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white),
    displayMedium: TextStyle(fontSize: 28, fontWeight: FontWeight.bold, color: Colors.white),
    displaySmall: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white),
    titleLarge: TextStyle(fontSize: 20, fontWeight: FontWeight.w600, color: Colors.white),
    bodyLarge: TextStyle(fontSize: 18, color: Colors.white,fontWeight: FontWeight.w500),
    bodyMedium: TextStyle(fontSize: 16, color: Colors.white,fontWeight: FontWeight.w500),
    labelLarge: TextStyle(fontSize: 16, fontWeight: FontWeight.w500, color: Colors.purpleAccent),
  ),
  colorScheme: ColorScheme.dark(
    primary: Colors.deepPurpleAccent,
    onPrimary: Colors.white,
    secondary: Colors.purpleAccent.shade100,
    onSecondary: Colors.white,
    onSurface: const Color(0xFF1C1C28),
    surface: const Color(0xFF2A2A3D),
    error: Colors.redAccent.shade200,
    onError: Colors.white,
  ),
  dividerColor: Colors.purple.shade700,
  iconTheme: const IconThemeData(color: Colors.purpleAccent),
  floatingActionButtonTheme: const FloatingActionButtonThemeData(
    backgroundColor: Colors.deepPurpleAccent,
    foregroundColor: Colors.white,
  ),
);
