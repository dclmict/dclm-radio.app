import 'package:flutter/material.dart';

class AppTheme {
  //Colors for theme

  static Color primaryColor = const Color(0xffED325A);
  static Color primaryLightColor = const Color(0xffED476B);
  static Color primaryDarkColor = const Color(0xffE5738B);
  static Color secondaryColor = const Color(0xff09355E);
  static Color secondaryLightColor = const Color(0xff184A78);
  static Color secondaryDarkColor = const Color(0xff434A73);
  static Color primaryTextColor = const Color(0xff000000);
  static Color secondaryTextColor = const Color(0xffffffff);
  static Color boarder = const Color(0xff434A73);
  static Color error = Colors.red;
  


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
        background: secondaryColor,
        brightness: Brightness.dark,
        error: error,
        onBackground: secondaryLightColor,
        onError: error,
        onPrimary: secondaryLightColor,
        onSecondary: primaryColor,
        onSurface: primaryLightColor,
        primary: primaryColor,
        secondary: secondaryColor,
        surface: primaryDarkColor),
  );
}
