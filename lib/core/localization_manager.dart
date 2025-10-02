import 'package:bmi_calc/core/data_sources/local_data/preference_keys.dart';
import 'package:bmi_calc/core/data_sources/local_data/preference_manager.dart';
import 'package:flutter/material.dart';

class LocalizationManager {
  static ValueNotifier<Locale> localeNotifier = ValueNotifier(const Locale('ar'));

  static Future<void> initLocale() async {
    String? localeCode =
        await PreferenceManager.getData(key: PreferenceKeys.locale) ?? "ar";
    localeNotifier.value = Locale(localeCode);
  }

  static changeLocale()async
  {
      if (localeNotifier.value.languageCode == 'ar') {
      localeNotifier.value = const Locale('en');
      await PreferenceManager.setData<String>(
        key: PreferenceKeys.locale,
        value: 'en',
      );
    } else {
      localeNotifier.value = const Locale('ar');
      await PreferenceManager.setData<String>(
        key: PreferenceKeys.locale,
        value: 'ar',
      );
    }
  }

  static bool get isArabic => localeNotifier.value.languageCode == 'ar' ? true : false;
}
