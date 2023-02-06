import 'package:flutter/material.dart';

class AppTheme {
  //Colors for theme

  static Color primaryColor = const Color(0xfff50057);
  static Color primaryLightColor = const Color(0x00ff5983);
  static Color primaryDarkColor = const Color(0xffbb002f);
  static Color secondaryColor = const Color(0xff263238);
  static Color secondaryLightColor = const Color(0xff4f5b62);
  static Color secondaryDarkColor = const Color(0xff000a12);
  static Color primaryTextColor = const Color(0xff000000);
  static Color secondaryTextColor = const Color(0xffffffff);

  static Color error = Colors.red;
  static Color boarder = Colors.red;

  static ThemeData lightThemess = ThemeData(
    primaryColor: primaryColor,
    scaffoldBackgroundColor: primaryLightColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: primaryDarkColor, backgroundColor: secondaryColor),
    //  accentColor: lightAccent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: primaryDarkColor),
      backgroundColor: primaryLightColor,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: secondaryTextColor,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
    colorScheme: ColorScheme(
        background: primaryColor,
        brightness: Brightness.dark,
        error: error,
        onBackground: secondaryLightColor,
        onError: secondaryLightColor,
        onPrimary: secondaryLightColor,
        onSecondary: primaryColor,
        onSurface: primaryLightColor,
        primary: primaryColor,
        secondary: secondaryColor,
        surface: primaryDarkColor),
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
   primaryColor: primaryColor,
    scaffoldBackgroundColor: primaryLightColor,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
        selectedItemColor: primaryDarkColor, backgroundColor: secondaryColor),
    //  accentColor: lightAccent,
    appBarTheme: AppBarTheme(
      iconTheme: IconThemeData(color: primaryDarkColor),
      backgroundColor: primaryLightColor,
      elevation: 0,
      titleTextStyle: TextStyle(
        color: primaryTextColor,
        fontSize: 18.0,
        fontWeight: FontWeight.w800,
      ),
    ),
    colorScheme: ColorScheme(
        background: primaryColor,
        brightness: Brightness.dark,
        error: error,
        onBackground: secondaryLightColor,
        onError: secondaryLightColor,
        onPrimary: secondaryLightColor,
        onSecondary: primaryColor,
        onSurface: primaryLightColor,
        primary: primaryColor,
        secondary: secondaryColor,
        surface: primaryDarkColor),
  );
}
