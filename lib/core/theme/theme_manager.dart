import 'package:bmi_calc/core/data_sources/local_data/preference_keys.dart';
import 'package:bmi_calc/core/data_sources/local_data/preference_manager.dart';
import 'package:flutter/material.dart';

class ThemeManager {
  static ValueNotifier<ThemeMode> themeNotifier = ValueNotifier(ThemeMode.dark);
  static initTheme() async{
    String? theme = await PreferenceManager.getData<String>(key: PreferenceKeys.theme) ?? 'dark';
    themeNotifier.value = theme == 'light' ? ThemeMode.light : ThemeMode.dark;
  }

  static void toggleTheme() async {
    themeNotifier.value =
        themeNotifier.value == ThemeMode.light
            ? ThemeMode.dark
            : ThemeMode.light;

    await PreferenceManager.setData<String>(
      key: PreferenceKeys.theme,
      value: themeNotifier.value == ThemeMode.light ? 'light' : 'dark',
    );
    print("Theme changed to: ${themeNotifier.value}");
  }

  static bool get isDark => themeNotifier.value == ThemeMode.dark;
}
