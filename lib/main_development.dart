import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'food_in.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.amber,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.red,
      systemNavigationBarDividerColor: Colors.green,
    ),
  );
  runApp(const FoodIn());
}