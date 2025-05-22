import "package:flutter/material.dart";
import "package:j1_crash_handler/j1_crash_handler.dart";
import "dart:developer";

class LocalCrashHandler extends J1CrashHandler {
  const LocalCrashHandler();

  @override
  void handleFlutterError(FlutterErrorDetails details) {
    log("flutter error", error: details.exception, stackTrace: details.stack);
  }

  @override
  bool handleAsyncError(Object object, StackTrace stack) {
    log("async error", error: object, stackTrace: stack);
    return true;
  }
}
