import 'package:flutter_test/flutter_test.dart';

/// Example: When I see {'text'} text
Future<void> iTapText(WidgetTester tester, String text) async {
  await tester.tap(find.text(text));
  await tester.pumpAndSettle();
}
