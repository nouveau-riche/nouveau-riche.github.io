import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  AppColors._();

  static ThemeData lightTheme() {
    return ThemeData(
      brightness: Brightness.light,
      primaryColor: const Color.fromRGBO(8, 80, 255, 1),
      scaffoldBackgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      cardColor: const Color.fromRGBO(255, 209, 220, 1),
      shadowColor: Colors.grey,
      canvasColor: const Color.fromRGBO(230, 218, 206, 1),
      focusColor: const Color.fromRGBO(244, 236, 230, 1),
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: Color.fromRGBO(187, 214, 251, 1),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          side: const BorderSide(
            color: Colors.black,
            width: 1.6,
          ),
          foregroundColor: Colors.black,
        ),
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.anton(
          fontWeight: FontWeight.bold,
          fontSize: 76,
          letterSpacing: 1.8,
          color: const Color.fromRGBO(0, 0, 0, 1),
        ),
        displayMedium: GoogleFonts.anton(
          fontWeight: FontWeight.bold,
          fontSize: 44,
          letterSpacing: 1.4,
          color: const Color.fromRGBO(0, 0, 0, 1),
        ),
        labelMedium: const TextStyle(
          wordSpacing: 1,
          fontSize: 16,
          letterSpacing: 0.6,
          height: 1.4,
          color: Color.fromRGBO(0, 0, 0, 1),
        ),
        labelSmall: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Colors.black,
          fontSize: 14,
        ),
      ),
    );
  }

  static ThemeData darkTheme() {
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: const Color.fromRGBO(90, 61, 241, 1),
      scaffoldBackgroundColor: const Color.fromRGBO(0, 0, 0, 1),
      shadowColor: Colors.white38,
      canvasColor: const Color.fromRGBO(50, 44, 38, 1),
      focusColor: const Color.fromRGBO(89, 77, 69, 1),
      textSelectionTheme: const TextSelectionThemeData(
        selectionColor: Color.fromRGBO(187, 214, 251, 1),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: TextButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          side: const BorderSide(
            color: Color.fromRGBO(229, 224, 232, 1),
            width: 1.6,
          ),
          foregroundColor: const Color.fromRGBO(229, 224, 232, 1),
        ),
      ),
      textTheme: TextTheme(
        displayLarge: GoogleFonts.anton(
          fontWeight: FontWeight.bold,
          fontSize: 76,
          letterSpacing: 1.8,
          color: const Color.fromRGBO(229, 224, 232, 1),
        ),
        displayMedium: GoogleFonts.anton(
          fontWeight: FontWeight.bold,
          fontSize: 44,
          letterSpacing: 1.4,
          color: const Color.fromRGBO(229, 224, 232, 1),
        ),
        labelMedium: const TextStyle(
          wordSpacing: 1,
          fontSize: 16,
          letterSpacing: 0.6,
          height: 1.4,
          color: Color.fromRGBO(229, 224, 232, 1),
        ),
        labelSmall: const TextStyle(
          fontWeight: FontWeight.w600,
          color: Color.fromRGBO(229, 224, 232, 1),
          fontSize: 14,
        ),
      ),
    );
  }
}
