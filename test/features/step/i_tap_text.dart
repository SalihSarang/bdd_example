import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Example: When I tap {'some'} text
Future<void> iTapText(WidgetTester tester, String buttonKey) async {
  final buttonFinder = find.byKey(ValueKey(buttonKey));
  await tester.tap(buttonFinder);
  await tester.pumpAndSettle();
}

