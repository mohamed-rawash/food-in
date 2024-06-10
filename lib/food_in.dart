import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_in/core/themes/dark_theme.dart';
import 'package:food_in/core/themes/light_theme.dart';

import 'core/routing/app_router.dart';
import 'core/routing/routes.dart';
import 'core/themes/theme_controller.dart';

class FoodIn extends StatelessWidget {
  const FoodIn({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
      designSize: const Size(375, 812),
      child: ValueListenableBuilder(
        valueListenable: ThemeController.instance.isDark,
        builder: (context, value, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            themeMode: ThemeController.instance.getTheme(),
            theme: LightTheme.theme,
            darkTheme: DarkTheme.theme,
            initialRoute: Routes.onBoarding,
            onGenerateRoute: AppRouter.onGenerateRoute,
          );
        },
      ),
    );
  }
}
