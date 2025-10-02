// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a en locale. All the
// messages from the main program should be duplicated here with the same
// function name.

// Ignore issues from commonly used lints in this file.
// ignore_for_file:unnecessary_brace_in_string_interps, unnecessary_new
// ignore_for_file:prefer_single_quotes,comment_references, directives_ordering
// ignore_for_file:annotate_overrides,prefer_generic_function_type_aliases
// ignore_for_file:unused_import, file_names, avoid_escaping_inner_quotes
// ignore_for_file:unnecessary_string_interpolations, unnecessary_string_escapes

import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final messages = new MessageLookup();

typedef String MessageIfAbsent(String messageStr, List<dynamic> args);

class MessageLookup extends MessageLookupByLibrary {
  String get localeName => 'en';

  static String m0(age) => "Age: ${age} years";

  static String m1(category) => "Category: ${category}";

  static String m2(gender) => "Gender: ${gender}";

  static String m3(tip) => "Tip: ${tip}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "ageLabel": MessageLookupByLibrary.simpleMessage("Age"),
    "ageText": m0,
    "appTitle": MessageLookupByLibrary.simpleMessage("BMI Calculator"),
    "bmiText": MessageLookupByLibrary.simpleMessage("BMI:"),
    "calculateButton": MessageLookupByLibrary.simpleMessage("Calculate BMI"),
    "categoryText": m1,
    "genderFemale": MessageLookupByLibrary.simpleMessage("Female"),
    "genderMale": MessageLookupByLibrary.simpleMessage("Male"),
    "genderText": m2,
    "heightLabel": MessageLookupByLibrary.simpleMessage("Height (cm)"),
    "normal": MessageLookupByLibrary.simpleMessage("Normal"),
    "obese": MessageLookupByLibrary.simpleMessage("Obese"),
    "overweight": MessageLookupByLibrary.simpleMessage("Overweight"),
    "recalculateButton": MessageLookupByLibrary.simpleMessage("Recalculate"),
    "resultScreen": MessageLookupByLibrary.simpleMessage("Result Screen"),
    "tipText": m3,
    "underweight": MessageLookupByLibrary.simpleMessage("Underweight"),
    "weightLabel": MessageLookupByLibrary.simpleMessage("Weight (kg)"),
  };
}
