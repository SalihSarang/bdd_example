import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: I enter {'123'} into {'passwordField'}

Future<void> iEnterInto(
  WidgetTester tester,
  String text,
  String fieldKey,
) async {
  final fieldFinder = find.byKey(ValueKey(fieldKey));
  expect(fieldFinder, findsOneWidget);
  await tester.enterText(fieldFinder, text);
  await tester.pumpAndSettle();
}
