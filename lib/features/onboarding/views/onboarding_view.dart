import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_in/core/helpers/extensions/size_extension.dart';

import '../../../core/themes/theme_controller.dart';
import '../widgets/onboarding_app_bar.dart';
import '../widgets/onboarding_slider.dart';

class OnBoarding extends StatelessWidget {
  const OnBoarding({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const OnBoardingAppBar(),
          10.verticalSpace,
          const Expanded(child: OnBoardingSlider()),
        ],
      ),
    );
  }
}
