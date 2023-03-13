import 'dart:async';
import 'package:flutter/material.dart';
import 'intro_model.dart';

class SplashMain extends StatefulWidget {
  const SplashMain({super.key});

  @override
  State<SplashMain> createState() => _SplashMainState();
}

class _SplashMainState extends State<SplashMain> {
  int _currentPage = 0;

late Timer _timer;

final controller = PageController(
  initialPage: 0,
);

@override
void initState() {
  super.initState();
  _timer = Timer.periodic(Duration(seconds: 5), (Timer timer) {
    if (_currentPage < 2) {
      _currentPage++;
    } else {
      _currentPage = 0;
    }

    controller.animateToPage(
      _currentPage,
      duration: Duration(milliseconds: 350),
      curve: Curves.easeIn,
    );
  });
}

  @override
  void dispose() {
    super.dispose();
    _timer.cancel();
  }

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: controller,
      children: [
        IntroScreen(
          image: 'assets/images/splash1.png',
          text: 'Listen to live & recorded\nmessages & programs'),
        IntroScreen(
          image: 'assets/images/splash2.png',
          text: 'Improved experience to help\nyou love God more'),
        IntroScreen(
          image: 'assets/images/splash3.png',
          text: 'Find all you need in one place;\nat the right time'),
      ],
    );
  }
}