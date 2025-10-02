import 'package:bmi_calc/main.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.dark);
  static initTheme() {
    String theme = pref!.getString('theme') ?? 'dark';
    themeNotifier.value =
        theme == 'light' ? ThemeMode.light : ThemeMode.dark;
  }

  static void toggleTheme() async {
    themeNotifier.value =
        themeNotifier.value == ThemeMode.light
            ? ThemeMode.dark
            : ThemeMode.light;

    pref!.setString(
      'theme',
      themeNotifier.value == ThemeMode.light ? 'light' : 'dark',
    );
    print("Theme changed to: ${themeNotifier.value}");
  }

  static bool get isDark => themeNotifier.value == ThemeMode.dark;
}
