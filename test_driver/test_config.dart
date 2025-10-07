import 'package:flutter_gherkin/flutter_gherkin_with_driver.dart';
import 'package:flutter_gherkin/flutter_gherkin.dart';
import 'package:gherkin/gherkin.dart';
import 'package:glob/glob.dart';

import 'steps/login_steps.dart';

Future<void> main() async {
  final config = FlutterTestConfiguration(
    features: [Glob('test_driver/features/**.feature')],
    reporters: [ProgressReporter()],
    stepDefinitions: steps,
  );
  return GherkinRunner().execute(config);
}
