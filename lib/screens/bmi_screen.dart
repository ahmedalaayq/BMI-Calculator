import 'package:bmi_calc/core/theme/theme_manager.dart';
import 'package:bmi_calc/generated/l10n.dart';
import 'package:bmi_calc/main.dart';
import 'package:flutter/material.dart';
import 'bmi_calculator.dart';
import 'result_screen.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen> {
  double height = 120;
  double weight = 40;
  int age = 15;
  Gender? selectedGender;

  _changeLocale() {
    if (localeNotifier.value.languageCode == 'ar') {
      localeNotifier.value = const Locale('en');
      pref!.setString('locale', 'en');
    } else {
      localeNotifier.value = const Locale('ar');
      pref!.setString('locale', 'ar');
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;
    Color cardBackground(Color base) =>
        isDark ? base.withOpacity(0.3) : base.withOpacity(0.15);

    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            onPressed: ThemeManager.toggleTheme,
            icon: Icon(
              ThemeManager.isDark ? Icons.dark_mode : Icons.light_mode,
              color: Colors.white,
            ),
          ),
          IconButton(
            onPressed: _changeLocale,
            icon: const Icon(Icons.language, color: Colors.white),
          ),
        ],
        centerTitle: true,
        title: Text(
          S.of(context).appTitle,
          style: theme.textTheme.titleLarge?.copyWith(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          children: [
            // Gender
            Row(
              children: [
                genderCard(
                  label: S.of(context).genderMale,
                  icon: Icons.male,
                  genderValue: Gender.male,
                  activeColor: Colors.blueAccent,
                ),
                const SizedBox(width: 15),
                genderCard(
                  label: S.of(context).genderFemale,
                  icon: Icons.female,
                  genderValue: Gender.female,
                  activeColor: Colors.pink,
                ),
              ],
            ),
            const SizedBox(height: 20),

            // Height
            _customBmiSlider(
              theme: theme,
              color: cardBackground(Theme.of(context).primaryColor),
              labelText: S.of(context).heightLabel,
              sliderValue: height,
              minSliderValue: 100,
              maxSliderValue: 220,
              onChanged: (val) => setState(() => height = val),
              displayText:
                  '${height.toStringAsFixed(0)}  ${S.of(context).heightLabel.substring(6)}',
            ),
            const SizedBox(height: 15),
            // Weight
            _customBmiSlider(
              theme: theme,
              color: cardBackground(Colors.green),
              labelText: S.of(context).weightLabel,
              sliderValue: weight,
              minSliderValue: 30,
              maxSliderValue: 150,
              onChanged: (val) => setState(() => weight = val),
              thumbColor: Colors.green,
              displayText:
                  '${weight.toStringAsFixed(0)}  ${S.of(context).weightLabel.substring(6)}',
            ),
            const SizedBox(height: 15),

            // Age
            _customBmiSlider(
              theme: theme,
              color: cardBackground(Colors.orange),
              labelText: S.of(context).ageLabel,
              sliderValue: age.toDouble(),
              minSliderValue: 10,
              maxSliderValue: 80,
              onChanged: (val) {
                setState(() {
                  age = val.toInt();
                });
              },
              thumbColor: Colors.green,
              displayText: S.of(context).ageText(age),
            ),
            const Spacer(),

            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                minimumSize: const Size(double.infinity, 50),
              ),
              onPressed: () {
                final bmiCalc = BMICalculator(
                  heightCm: height,
                  weightKg: weight,
                  age: age,
                  gender: selectedGender ?? Gender.male,
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ResultScreen(bmiCalc: bmiCalc),
                  ),
                );
              },
              child: Text(
                S.of(context).calculateButton,
                style: theme.textTheme.bodyLarge?.copyWith(color: Colors.white),
              ),
            ),
            const Spacer(),
            Row(
              spacing: 5,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(Icons.copyright),
                Text(
                  'Eng.Ahmed Emad',
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                const Icon(Icons.copyright),
              ],
            ),
            const Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _customBmiSlider({
    required dynamic theme,
    required Color color,
    required String labelText,
    required double sliderValue,
    double? minSliderValue,
    double? maxSliderValue,
    required ValueChanged onChanged,
    required String displayText,
    Color? thumbColor,
  }) {
    return Container(
      padding: const EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        children: [
          Text(labelText, style: theme.textTheme.bodyLarge),
          Slider(
            thumbColor: thumbColor ?? theme.sliderTheme.thumbColor,
            value: sliderValue,
            min: minSliderValue ?? 100,
            max: maxSliderValue ?? 220,
            inactiveColor: theme.sliderTheme.disabledSecondaryActiveTrackColor,
            activeColor: theme.sliderTheme.activeTrackColor,
            onChanged: onChanged,
          ),
          Text(displayText, style: theme.textTheme.titleLarge),
        ],
      ),
    );
  }

  Widget genderCard({
    required String label,
    required IconData icon,
    required Gender genderValue,
    required Color activeColor,
  }) {
    bool isSelected = selectedGender == genderValue;
    final theme = Theme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    Color cardColor =
        isSelected
            ? activeColor.withValues(alpha: isDark ? 0.3 : 0.15)
            : theme.primaryColor.withValues(alpha: 0.2);

    return Expanded(
      child: InkWell(
        overlayColor: const WidgetStatePropertyAll(Colors.transparent),
        splashColor: Colors.transparent,
        onTap: () => setState(() => selectedGender = genderValue),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 450),
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: cardColor,
            borderRadius: BorderRadius.circular(15),
            border: Border.all(
              color: isSelected ? activeColor : Colors.transparent,
              width: 2,
            ),
          ),
          child: Column(
            children: [
              Icon(icon, size: 40, color: activeColor),
              const SizedBox(height: 10),
              Text(
                label,
                style: theme.textTheme.bodyLarge?.copyWith(
                  fontWeight: FontWeight.w600,
                  color:
                      isSelected
                          ? activeColor
                          : theme.textTheme.bodyLarge?.color,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
