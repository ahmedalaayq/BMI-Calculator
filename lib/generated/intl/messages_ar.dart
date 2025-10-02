// DO NOT EDIT. This is code generated via package:intl/generate_localized.dart
// This is a library that provides messages for a ar locale. All the
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
  String get localeName => 'ar';

  static String m0(age) => "العمر: ${age} سنة";

  static String m1(category) => "التصنيف: ${category}";

  static String m2(gender) => "النوع: ${gender}";

  static String m3(tip) => "نصيحة: ${tip}";

  final messages = _notInlinedMessages(_notInlinedMessages);
  static Map<String, Function> _notInlinedMessages(_) => <String, Function>{
    "ageLabel": MessageLookupByLibrary.simpleMessage("العمر"),
    "ageText": m0,
    "appTitle": MessageLookupByLibrary.simpleMessage("حاسبة مؤشر كتلة الجسم"),
    "bmiText": MessageLookupByLibrary.simpleMessage("مؤشر الكتلة:"),
    "calculateButton": MessageLookupByLibrary.simpleMessage("احسب مؤشر الكتلة"),
    "categoryText": m1,
    "genderFemale": MessageLookupByLibrary.simpleMessage("أنثى"),
    "genderMale": MessageLookupByLibrary.simpleMessage("ذكر"),
    "genderText": m2,
    "heightLabel": MessageLookupByLibrary.simpleMessage("الطول (سم)"),
    "normal": MessageLookupByLibrary.simpleMessage("طبيعي"),
    "obese": MessageLookupByLibrary.simpleMessage("سمنة"),
    "overweight": MessageLookupByLibrary.simpleMessage("زيادة الوزن"),
    "recalculateButton": MessageLookupByLibrary.simpleMessage("أعد الحساب"),
    "resultScreen": MessageLookupByLibrary.simpleMessage("شاشة النتيجة"),
    "tipText": m3,
    "underweight": MessageLookupByLibrary.simpleMessage("نقص الوزن"),
    "weightLabel": MessageLookupByLibrary.simpleMessage("الوزن (كغ)"),
  };
}
