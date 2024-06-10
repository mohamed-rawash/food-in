import 'package:flutter/material.dart';

import '../../../core/themes/theme_controller.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ValueListenableBuilder(
          valueListenable: ThemeController.instance.isDark,
          builder: (context, value, child) {
            return Switch(value: value, onChanged: (_) => ThemeController.instance.toggleTheme());
          },
        ),
      ),
    );
  }
}
