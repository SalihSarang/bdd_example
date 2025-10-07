import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter/material.dart';

StepDefinitionGeneric openApp() {
  return given<FlutterWorld>('I open the app', (context) async {});
}

StepDefinitionGeneric enterEmail() {
  return when1<String, FlutterWorld>('I enter {string} into the email field', (
    email,
    context,
  ) async {
    final finder = find.byKey(const ValueKey('emailField'));
    await context.world.appDriver.enterText(finder, email);
  });
}

StepDefinitionGeneric enterPassword() {
  return when1<String, FlutterWorld>(
    'I enter {string} into the password field',
    (password, context) async {
      final finder = find.byKey(const ValueKey('passwordField'));
      await context.world.appDriver.enterText(finder, password);
    },
  );
}

StepDefinitionGeneric tapLoginButton() {
  return when<FlutterWorld>('I tap the login button', (context) async {
    final finder = find.byKey(const ValueKey('loginButton'));
    await context.world.appDriver.tap(finder);
  });
}

StepDefinitionGeneric verifyHomeScreen() {
  return then<FlutterWorld>('I should see the home screen', (context) async {
    final finder = find.byKey(const ValueKey('homeScreen'));
    expect(await context.world.appDriver.isPresent(finder), true);
  });
}

List<StepDefinitionGeneric> steps = [
  openApp(),
  enterEmail(),
  enterPassword(),
  tapLoginButton(),
  verifyHomeScreen(),
];
