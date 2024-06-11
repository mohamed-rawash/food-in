import 'package:flutter/material.dart';
import 'package:food_in/core/helpers/extensions/size_extension.dart';
import 'package:food_in/core/themes/colors.dart';

import '../../../generated/l10n.dart';

class OnBoardingAppBar extends StatelessWidget {
  const OnBoardingAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding:
          EdgeInsets.only(top: 50.h, bottom: 10.h, left: 20.w, right: 20.w),
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: const BorderRadius.only(
          bottomLeft: Radius.circular(20),
          bottomRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(.1),
            offset: const Offset(0, 2),
            blurRadius: 4,
          ),
        ],
      ),
      child: Center(
        child: Text(
          S.current.on_boarding_app_bar_text,
          style: Theme.of(context).textTheme.titleMedium,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
