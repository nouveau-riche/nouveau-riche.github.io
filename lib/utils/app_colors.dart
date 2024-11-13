import 'package:flutter/material.dart';

class AppColors {
  AppColors._();

  // Color.fromRGBO(229,224,232,1)

  static ThemeData lightTheme() {
    return ThemeData.light().copyWith(
      brightness: Brightness.light,
      primaryColor: const Color.fromRGBO(8, 80, 255, 1),
      scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      cardColor: const Color.fromRGBO(255, 209, 220, 1),
      shadowColor: Colors.grey,
      canvasColor: const Color.fromRGBO(230, 218, 206, 1),
      focusColor: const Color.fromRGBO(244, 236, 230, 1),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData.dark().copyWith(
      brightness: Brightness.dark,
      primaryColor: const Color.fromRGBO(90, 61, 241, 1),
      scaffoldBackgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      shadowColor: Colors.white38,
      canvasColor: const Color.fromRGBO(50, 44, 38, 1),
      focusColor: const Color.fromRGBO(89, 77, 69, 1),
    );
  }
}
