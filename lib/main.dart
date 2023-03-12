import 'package:dclm_radio/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'views/splash_screen/logo_screen.dart';
import 'views/splash_screen/intro_main.dart';

void main() {
  runApp(const DCLMRadioApp());
}

class DCLMRadioApp extends StatelessWidget {
  const DCLMRadioApp({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);

    return MaterialApp(
      // Please leave debugShowCheckedModeBanner commented out
      // debugShowCheckedModeBanner: false,
      title: 'DCLM Radio',
      theme: AppTheme.theme(),
      home: const SplashMain(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("DCLM Radio App"),
            const SizedBox(
              key: Key('sample_space'),
              height: 10.0,
            ),
            const Card(
              child: Padding(
                padding: EdgeInsets.all(12.0),
                child: Text("Hello World"),
              ),
            ),
            TextButton(
              onPressed: () {},
              child: const Text("Text Button"),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text("Elevated Button"),
            )
          ],
        ),
      ),
    );
  }
}
