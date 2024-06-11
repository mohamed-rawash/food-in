import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:food_in/core/themes/colors.dart';

abstract class DarkTheme {
  static ThemeData get theme {
    return ThemeData(
      primaryColor: Colors.black,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: const AppBarTheme(
        color: Colors.black,
        iconTheme: IconThemeData(color: Colors.white),
      ),
      textTheme: TextTheme(
        titleMedium: TextStyle(
          fontSize: 24.sp,
          fontWeight: FontWeight.w500,
          color: AppColors.white,
        ),
      ),
    );
  }
}