import 'package:dclm_radio/views/splash_screen/intro_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Intro screen smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const MaterialApp(home: IntroScreen(image: 'assets/images/splash1.png', text: 'Testing testing',),));

    expect(find.text('Testing testing'), findsOneWidget);
    expect(find.byType(TextButton), findsOneWidget);
  });
}
