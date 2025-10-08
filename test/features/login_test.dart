// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bdd_widget_test/bdd_widget_test.dart';
import './step/the_app_is_running.dart';
import './step/i_enter_into.dart';
import './step/i_tap.dart';
import './step/i_see.dart';

void main() {
  group('''Login''', () {
    testWidgets('''Successful login''', (tester) async {
      await theAppIsRunning(tester);
      await iEnterInto(tester, 'testuser@gmail.com', 'emailField');
      await iEnterInto(tester, 'password123', 'passwordField');
      await iTap(tester, 'loginButton');
      await iSee(tester, 'Welcome, testuser!');
    });
    testWidgets('''Failed login with invalid credentials''', (tester) async {
      await theAppIsRunning(tester);
      await iEnterInto(tester, 'wronguser@gmail.com', 'emailField');
      await iEnterInto(tester, 'wrongpass', 'passwordField');
      await iTap(tester, 'loginButton');
      await iSee(tester, 'Invalid credentials');
    });
    testWidgets('''Empty email field''', (tester) async {
      await theAppIsRunning(tester);
      await iEnterInto(tester, '', 'emailField');
      await iEnterInto(tester, 'password123', 'passwordField');
      await iTap(tester, 'loginButton');
      await iSee(tester, 'Email cannot be empty');
    });
    testWidgets('''Empty password field''', (tester) async {
      await theAppIsRunning(tester);
      await iEnterInto(tester, 'testuser@gmail.com', 'emailField');
      await iEnterInto(tester, '', 'passwordField');
      await iTap(tester, 'loginButton');
      await iSee(tester, 'Password cannot be empty');
    });
    testWidgets('''Invalid email format''', (tester) async {
      await theAppIsRunning(tester);
      await iEnterInto(tester, 'invalidemail', 'emailField');
      await iEnterInto(tester, 'password123', 'passwordField');
      await iTap(tester, 'loginButton');
      await iSee(tester, 'Enter a valid email');
    });
    testWidgets('''Password too short''', (tester) async {
      await theAppIsRunning(tester);
      await iEnterInto(tester, 'testuser@gmail.com', 'emailField');
      await iEnterInto(tester, '123', 'passwordField');
      await iTap(tester, 'loginButton');
      await iSee(tester, 'Password too short');
    });
  });
}
