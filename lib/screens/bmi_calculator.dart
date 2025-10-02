// ignore_for_file: curly_braces_in_flow_control_structures

import 'dart:math';

enum Gender { male, female }

class BMICalculator {
  final double heightCm;
  final double weightKg;
  final int age;
  final Gender gender;

  BMICalculator({
    required this.heightCm,
    required this.weightKg,
    required this.age,
    required this.gender,
  });

  double calculateBMI() {
    double heightM = heightCm / 100;
    return weightKg / pow(heightM, 2);
  }

  String getBMICategory({bool arabic = false}) {
    double bmi = calculateBMI();
    if (bmi < 18.5) {
      return arabic ? "نقص الوزن" : "Underweight";
    } else
      switch (bmi) {
        case < 24.9:
          return arabic ? "طبيعي" : "Normal";
        case < 29.9:
          return arabic ? "زيادة الوزن" : "Overweight";
        default:
          return arabic ? "سمنة" : "Obese";
      }
  }

  String getTip({bool arabic = false}) {
    double bmi = calculateBMI();
    if (bmi < 18.5)
      return arabic
          ? "حاول تناول طعام أكثر تغذية 🌱"
          : "Try to eat more nutritious food 🌱";
    else if (bmi < 24.9)
      return arabic
          ? "عمل رائع! استمر على المحافظة 🏋️"
          : "Great job! Keep maintaining 🏋️";
    else if (bmi < 29.9)
      return arabic
          ? "مارس الرياضة بانتظام وراقب نظامك الغذائي 🍎"
          : "Exercise regularly and watch diet 🍎";
    else
      return arabic
          ? "استشر طبيب للحصول على التوجيه 🩺"
          : "Consult a doctor for guidance 🩺";
  }

  String getGenderText({bool arabic = false}) {
    return gender == Gender.male
        ? arabic
            ? "ذكر"
            : "Male"
        : arabic
        ? "أنثى"
        : "Female";
  }
}
