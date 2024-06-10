import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../features/onboarding/views/onboarding_view.dart';
import 'routes.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    switch(settings.name) {
      case Routes.onBoarding:
        return CupertinoPageRoute(
          builder: (_) => const OnBoarding(),
        );
      default:
        return CupertinoPageRoute(
          builder: (_) => const Scaffold(),
        );
    }
  }
}