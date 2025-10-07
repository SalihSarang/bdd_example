import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: I enter {'wrongpass'} text into {'password'} input field
Future<void> iEnterTextIntoInputField(
  WidgetTester tester,
  String input,
  String field,
) async {
  final textField = find.byKey(
    Key(field),
  ); // Make sure your TextField has this key
  await tester.enterText(textField, input);
  await tester.pumpAndSettle();
}
