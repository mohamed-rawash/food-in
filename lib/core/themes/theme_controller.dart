import 'package:flutter/material.dart';
import 'package:food_in/core/helpers/cache_helper.dart';

class ThemeController {
  static ThemeController? _instance;
  ValueNotifier<bool> isDark = ValueNotifier<bool>(false);

  static ThemeController get instance {
    _instance ??= ThemeController._();
    return _instance!;
  }

  ThemeController._();

  final themeCacheKey = "isDark";

  ThemeMode getTheme() {
    final isDarkValue = CacheHelper.getCacheData(key: 'isDark');
    if (isDarkValue != null) {
      isDark.value = isDarkValue as bool;
    }
    return isDark.value ? ThemeMode.dark : ThemeMode.light;
  }

  void toggleTheme() {
    isDark.value = !isDark.value;
    CacheHelper.saveCacheData(key: themeCacheKey, value: isDark.value as bool);
  }
}
