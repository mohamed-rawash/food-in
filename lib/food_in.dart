import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_in/core/themes/dark_theme.dart';
import 'package:food_in/core/themes/light_theme.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'generated/l10n.dart';

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
            locale: const Locale('ar'),
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
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
