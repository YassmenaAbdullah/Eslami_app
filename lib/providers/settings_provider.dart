import 'package:flutter/material.dart';

class SettingsProvider extends ChangeNotifier {
  ThemeMode currentTheme = ThemeMode.light;
  String currentLanguage = 'en';

  // observable pattern
  void changeTheme(ThemeMode newMode) {
    currentTheme = newMode;
    notifyListeners();
  }

  String getMainBackGroundImage() {
    return currentTheme == ThemeMode.light
        ? 'assets/images/main_background.png'
        : 'assets/images/dark_bg.png';
  }

  bool isDarkMode() {
    return currentTheme == ThemeMode.dark;
  }

  void changeLocale(String newLocale) {
    currentLanguage = newLocale;
    notifyListeners();
  }

  bool EnLanguage() {
    return currentLanguage == 'en';
  }
}
