import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'core/helpers/cache_helper.dart';
import 'food_in.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CacheHelper.init();
  await Future.wait([ScreenUtil.ensureScreenSize()]);
  runApp(const FoodIn());
}