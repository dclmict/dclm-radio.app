import 'package:flutter/material.dart';

void main() {
  runApp(const DCLMRadioApp());
}

class DCLMRadioApp extends StatelessWidget {
  const DCLMRadioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'DCLM Radio',
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('DCLM Radio App'),
      ),
    );
  }
}
