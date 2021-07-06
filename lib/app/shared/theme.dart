import 'package:coffee_app/app/shared/colors.dart';
import 'package:flutter/material.dart';

class CustomTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.white,
      scaffoldBackgroundColor: Colors.white,
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: KDarkBackgound,
      scaffoldBackgroundColor: KDarkBackgound,
      cardColor: KCardColor,
      textTheme: ThemeData.dark().textTheme,
    );
  }
}
