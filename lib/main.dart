import 'package:dclm_radio/constants/app_color.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DCLMRadioApp());
}

class DCLMRadioApp extends StatelessWidget {
  const DCLMRadioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DCLM Radio',
      theme: AppTheme.lightThemess,
    );
  }
}
