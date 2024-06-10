import 'package:flutter/material.dart';

class ThemeController {
  static ThemeController? _instance;
  ValueNotifier<bool> isDark = ValueNotifier<bool>(false);
  static ThemeController get instance {
    _instance ??= ThemeController._();
    return _instance!;
  }

  ThemeController._();

  ThemeMode getTheme() {
    // Get theme from storage
    return isDark.value ? ThemeMode.dark : ThemeMode.light;
  }

  void toggleTheme() {
    isDark.value = !isDark.value;
  }
}