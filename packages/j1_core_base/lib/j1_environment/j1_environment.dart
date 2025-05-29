library;

export "j1_environment.dart";

import "package:get_it/get_it.dart";
import "package:j1_core_base/j1_core_base.dart";

final locator = GetIt.instance;

abstract class J1Environment {
  J1CrashHandler get crashHandler;
  J1Logger get logger;
  J1Router get router;

  Future<void> configure() async {
    crashHandler.configure();
    locator.registerSingleton<J1Logger>(logger);
    locator.registerSingleton<J1Router>(router);
  }
}
