import 'package:nomnom_planner/injection/injection.dart';

class PackageSetup {
  static Future<void> setup() async {
    await _configureEnvironment();
  }

  static Future<void> _configureEnvironment() async {
    configureInjection();
  }
}
