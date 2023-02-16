import 'package:dclm_radio/views/splash%20screen/logo_screen.dart';
import 'package:dclm_radio/views/splash%20screen/splash_main.dart';
import 'package:flutter/material.dart';

class RouteGeneration{

  static const String splashScreen = '/splash';
  static const String introScreen = '/intro';

  RouteGeneration._();

  static Route<dynamic> generateRoute(RouteSettings settings){
    switch (settings.name) {
      case introScreen:
        return MaterialPageRoute(
          builder: (_) => const LogoScreen());

      case splashScreen:
        return MaterialPageRoute(
          builder: (_) => const SplashMain());
      
      default:
        throw const FormatException("Route not found");
    }
  }
}