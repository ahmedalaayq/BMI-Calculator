# BMI Calculator App

A modern and elegant **BMI (Body Mass Index) Calculator** built with **Flutter**, featuring **dark and light themes**, **localization support**, and an intuitive **user interface**.

---
## 📌 Features

* **Height, Weight, and Age sliders** for easy input.
* **Gender selection** with visually appealing cards.
* **Dark and Light themes** with elegant UI design.
* **Real-time BMI calculation** with result screen and interpretation.
* **Localization support** (Arabic and English).
* **Persistent user preferences** using `SharedPreferences` for theme and language.
* Fully responsive design for mobile devices.

---

## 🛠️ Technologies & Packages

* **Flutter SDK** (>=3.7.2)
* **Dart**
* **shared_preferences** – Store user theme and locale preferences.
* **flutter_localizations** – Support multiple languages.
* **S (intl/generated)** – Generated localization strings.

---

## 🎨 Theme Support

The app supports **dark and light themes**, fully customizable with:

* Elegant **AppBar** colors.
* Beautiful **sliders** and **buttons**.
* Modern **text styles** for titles, labels, and body text.

---

## 🌐 Localization

Supported languages:

* **Arabic** (`ar`)
* **English** (`en`)

Users can switch between languages from the app's top-right **language button**, and the preference is stored locally.

---

## 📂 Project Structure

```
lib/
 ├─ core/
 │   └─ theme/
 │       ├─ dark_theme.dart
 │       └─ light_theme.dart
 ├─ screens/
 │   ├─ bmi_screen.dart
 │   └─ result_screen.dart
 ├─ main.dart
 └─ generated/
     └─ l10n.dart
```

* **core/theme/** – Theme definitions for dark and light modes.
* **screens/** – UI screens (BMI input and result).
* **generated/** – Localization files.

---

## 🚀 Getting Started

### Prerequisites

* Flutter SDK installed: [Flutter Installation](https://flutter.dev/docs/get-started/install)
* Dart SDK
* Android Studio or VS Code

### Installation

1. Clone the repository:

```bash
git clone https://github.com/yourusername/bmi_calc.git
```

2. Navigate to the project directory:

```bash
cd bmi_calc
```

3. Get dependencies:

```bash
flutter pub get
```

4. Run the app:

```bash
flutter run
```

---

## 📱 Screenshots

| Light Theme                            | Dark Theme                           |
| -------------------------------------- | ------------------------------------ |
| ![Light](assets/images/screenshots/bmi(5).png) | ![Dark](assets/images/screenshots/bmi(1).png) |
| ![Light](assets/images/screenshots/bmi(4).png) | ![Dark](assets/images/screenshots/bmi(2).png) |
---

## ⚡ Notes

* Ensure all **assets (images/icons)** are correctly placed in `assets/` and declared in `pubspec.yaml`.
* For iOS icons, replace manually in `ios/Runner/Assets.xcassets/AppIcon.appiconset/`.
* For Android icons, replace manually in `android/app/src/main/res/mipmap-*/`.
---
