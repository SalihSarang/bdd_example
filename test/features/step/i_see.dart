import 'package:flutter_test/flutter_test.dart';

/// Usage: I see {'Password too short'}
Future<void> iSee(WidgetTester tester, String text) async {
  // Wait for any SnackBar to appear
  await tester.pump(); // ensure previous frames are drawn
  expect(find.text(text), findsOneWidget);
}
