import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_in/core/helpers/extensions/navigator_extensions.dart';

import '../../../core/routing/routes.dart';

class OnBoardingSlider extends StatelessWidget {
  const OnBoardingSlider({super.key});


  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();
    return Column(
      children: [
        Expanded(
          child: PageView(
            controller: pageController,
            children: [
              Container(
                margin: EdgeInsets.only(left: 40.w, right: 40.w, top: 20.h, bottom: 20.h),
                clipBehavior: Clip.hardEdge,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/food_in_onboarding.png'),
                    fit: BoxFit.contain,
                  ),
                ),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 30.0.w),
          child: GestureDetector(
            onTap: () {
              context.pushReplacementNamed(Routes.login);
            },
            child: Align(
              alignment: AlignmentDirectional.centerStart,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("تخطي", style: Theme.of(context).textTheme.titleMedium),
                  Image.asset('assets/images/on_boarding_arrow.png', width: 60.w,),
                ],
              ),
            ),
          ),
        ),
        20.verticalSpace,
      ],
    );
  }
}
