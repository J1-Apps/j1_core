library;

import "package:get_it/get_it.dart";
import "package:j1_crash_handler/j1_crash_handler.dart";
import "package:j1_logger/j1_logger.dart";
import "package:j1_router/j1_router.dart";

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
