import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: I tap {'loginButton'}
Future<void> iTap(WidgetTester tester, String buttonKey) async {
  final buttonFinder = find.byKey(ValueKey(buttonKey));
  await tester.ensureVisible(buttonFinder);
  await tester.tap(buttonFinder);
  await tester.pumpAndSettle();
}
