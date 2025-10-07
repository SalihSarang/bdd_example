import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

/// Usage: the login button is disabled
Future<void> theLoginButtonIsDisabled(WidgetTester tester) async {
  final buttonFinder = find.byKey(const ValueKey('loginButton'));
  final ElevatedButton button = tester.widget(buttonFinder);
  expect(button.onPressed, isNull);
}
