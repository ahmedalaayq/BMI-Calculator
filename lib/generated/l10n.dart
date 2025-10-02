// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(
      _current != null,
      'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.',
    );
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(
      instance != null,
      'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?',
    );
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `BMI Calculator`
  String get appTitle {
    return Intl.message('BMI Calculator', name: 'appTitle', desc: '', args: []);
  }

  /// `Height (cm)`
  String get heightLabel {
    return Intl.message('Height (cm)', name: 'heightLabel', desc: '', args: []);
  }

  /// `Weight (kg)`
  String get weightLabel {
    return Intl.message('Weight (kg)', name: 'weightLabel', desc: '', args: []);
  }

  /// `Age`
  String get ageLabel {
    return Intl.message('Age', name: 'ageLabel', desc: '', args: []);
  }

  /// `Male`
  String get genderMale {
    return Intl.message('Male', name: 'genderMale', desc: '', args: []);
  }

  /// `Female`
  String get genderFemale {
    return Intl.message('Female', name: 'genderFemale', desc: '', args: []);
  }

  /// `Calculate BMI`
  String get calculateButton {
    return Intl.message(
      'Calculate BMI',
      name: 'calculateButton',
      desc: '',
      args: [],
    );
  }

  /// `Recalculate`
  String get recalculateButton {
    return Intl.message(
      'Recalculate',
      name: 'recalculateButton',
      desc: '',
      args: [],
    );
  }

  /// `BMI:`
  String get bmiText {
    return Intl.message('BMI:', name: 'bmiText', desc: '', args: []);
  }

  /// `Result Screen`
  String get resultScreen {
    return Intl.message(
      'Result Screen',
      name: 'resultScreen',
      desc: '',
      args: [],
    );
  }

  /// `Category: {category}`
  String categoryText(Object category) {
    return Intl.message(
      'Category: $category',
      name: 'categoryText',
      desc: '',
      args: [category],
    );
  }

  /// `Tip: {tip}`
  String tipText(Object tip) {
    return Intl.message('Tip: $tip', name: 'tipText', desc: '', args: [tip]);
  }

  /// `Age: {age} years`
  String ageText(Object age) {
    return Intl.message(
      'Age: $age years',
      name: 'ageText',
      desc: '',
      args: [age],
    );
  }

  /// `Gender: {gender}`
  String genderText(Object gender) {
    return Intl.message(
      'Gender: $gender',
      name: 'genderText',
      desc: '',
      args: [gender],
    );
  }

  /// `Underweight`
  String get underweight {
    return Intl.message('Underweight', name: 'underweight', desc: '', args: []);
  }

  /// `Normal`
  String get normal {
    return Intl.message('Normal', name: 'normal', desc: '', args: []);
  }

  /// `Overweight`
  String get overweight {
    return Intl.message('Overweight', name: 'overweight', desc: '', args: []);
  }

  /// `Obese`
  String get obese {
    return Intl.message('Obese', name: 'obese', desc: '', args: []);
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'ar'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
