import 'package:bmi_calc/core/data_sources/local_data/preference_keys.dart';
import 'package:bmi_calc/core/data_sources/local_data/preference_manager.dart';
import 'package:bmi_calc/core/theme/light_theme.dart';
import 'package:bmi_calc/core/theme/dark_theme.dart';
import 'package:bmi_calc/core/theme/theme_manager.dart';
import 'package:bmi_calc/generated/l10n.dart';
import 'package:bmi_calc/screens/bmi_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
ValueNotifier<Locale> localeNotifier = ValueNotifier(const Locale('ar'));

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  PreferenceManager.initPrefs();
  String? localeCode = await PreferenceManager.getData(key: PreferenceKeys.locale) ?? "ar";
  localeNotifier.value = Locale(localeCode);
  ThemeManager.initTheme();

  runApp(const BMICalculatorApp());
}

class BMICalculatorApp extends StatelessWidget {
  const BMICalculatorApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<Locale>(
      valueListenable: localeNotifier,
      builder: (context, locale, child) {
        return ValueListenableBuilder<ThemeMode>(
          valueListenable: ThemeManager.themeNotifier,
          builder: (context, theme, child) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'BMI Calculator',
              locale: locale,
              localizationsDelegates: const [
                S.delegate,
                GlobalMaterialLocalizations.delegate,
                GlobalWidgetsLocalizations.delegate,
                GlobalCupertinoLocalizations.delegate,
              ],
              supportedLocales: S.delegate.supportedLocales,

              themeMode: theme,
              theme: lightTheme,
              darkTheme: darkTheme,

              home: const BmiScreen(),
            );
          },
        );
      },
    );
  }
}
