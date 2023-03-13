import 'package:flutter_test/flutter_test.dart';

import 'package:dclm_radio/main.dart';

void main() {
  testWidgets('Home text smoke test', (WidgetTester tester) async {
    await tester.pumpWidget(const DCLMRadioApp());

    expect(find.text('DCLM Radio App'), findsOneWidget);
  });
}
