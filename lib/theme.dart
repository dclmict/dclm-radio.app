import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static Color canvas = const Color(0xFF0F111F);
  static Color primaryColor = const Color(0xFFFF6687);
  // NOTE: secondaryColor may change in the future
  static Color secondaryColor = const Color(0xFF263238);
  static Color error = const Color(0xFFED325A);

  // This serves the base theme for all [Button] types
  static ButtonStyle buttonTheme = ElevatedButton.styleFrom(
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(12.0)),
    ),
  );

  // The horizontal padding for [TextButton] need adjustment
  static ButtonStyle textButtonTheme = buttonTheme.copyWith(
    padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
      const EdgeInsets.symmetric(horizontal: 18.0),
    ),
  );

  static ThemeData theme() {
    ThemeData darkTheme = ThemeData(
      canvasColor: canvas,
      cardTheme: CardTheme(color: primaryColor),
      textButtonTheme: TextButtonThemeData(style: textButtonTheme),
      elevatedButtonTheme: ElevatedButtonThemeData(style: buttonTheme),
      outlinedButtonTheme: OutlinedButtonThemeData(style: buttonTheme),
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        background: canvas,
        onBackground: Colors.white,
        primary: primaryColor,
        onPrimary: Colors.white,
        secondary: secondaryColor,
        onSecondary: secondaryColor,
        surface: Colors.white,
        onSurface: Colors.white,
        error: error,
        onError: Colors.black,
      ),
    );

    // This is done so as to inject Nunito Text Theme
    return darkTheme.copyWith(
      textTheme: GoogleFonts.nunitoTextTheme(darkTheme.textTheme),
    );
  }
}
