// ignore_for_file: curly_braces_in_flow_control_structures

import 'package:bmi_calc/core/localization_manager.dart';
import 'package:bmi_calc/generated/l10n.dart';
import 'package:bmi_calc/main.dart';
import 'package:flutter/material.dart';
import 'models/bmi_model.dart';

class ResultScreen extends StatelessWidget {
  final BmiModel bmiCalc;

  const ResultScreen({super.key, required this.bmiCalc});

  Color _getColorByCategory(String category, {bool arabic = false}) {
    if (arabic) {
      if (category == "نقص الوزن")
        return Colors.blue;
      else if (category == "طبيعي")
        return Colors.green;
      else if (category == "زيادة الوزن")
        return Colors.orange;
      else if (category == "سمنة")
        return Colors.red;
    } else {
      if (category == "Underweight")
        return Colors.blue;
      else if (category == "Normal")
        return Colors.green;
      else if (category == "Overweight")
        return Colors.orange;
      else if (category == "Obese")
        return Colors.red;
    }
    return Colors.grey;
  }

  @override
  Widget build(BuildContext context) {
    bool isArabic = LocalizationManager.isArabic;
    
    final double bmi = bmiCalc.calculateBMI();
    final String category = bmiCalc.getBMICategory(arabic: isArabic);
    final String tip = bmiCalc.getTip(arabic: isArabic);

    return Scaffold(
      appBar: AppBar(title: Text(S.of(context).resultScreen)),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  width: 3,
                  color: _getColorByCategory(category, arabic: isArabic),
                ),
                borderRadius: BorderRadius.circular(20),
                gradient: LinearGradient(
                  colors: [
                    _getColorByCategory(
                      category,
                      arabic: isArabic,
                    ).withValues(alpha: 0.15),
                    Colors.white,
                  ],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                ),
              ),
              padding: const EdgeInsets.all(25),
              child: Column(
                children: [
                  Text(
                    "${S.of(context).bmiText} ${bmi.toStringAsFixed(1)}",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: _getColorByCategory(category, arabic: isArabic),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S.of(context).categoryText(category),
                    style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      color: _getColorByCategory(category, arabic: isArabic),
                    ),
                  ),
                  const SizedBox(height: 15),
                  Text(
                    S.of(context).ageText(bmiCalc.age),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    S
                        .of(context)
                        .genderText(
                          bmiCalc.getGenderText() == 'Male'
                              ? S.of(context).genderMale
                              : S.of(context).genderFemale,
                        ),
                    style: Theme.of(context).textTheme.bodyLarge,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 30),
            Text(
              S.of(context).tipText(tip),
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const Spacer(flex: 8),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () => Navigator.pop(context),
              child: Text(
                S.of(context).recalculateButton,
                style: Theme.of(context).textTheme.bodyLarge,
              ),
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }
}

// calculate BMI 
// category ---> get Category 
// Age 
// Gender 
// Tip 