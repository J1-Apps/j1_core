import "package:flutter/material.dart";
import "package:j1_crash_handler/j1_crash_handler.dart";
import "package:logger/logger.dart";

class LocalCrashHandler extends J1CrashHandler {
  final Logger logger;

  LocalCrashHandler({Logger? logger}) : logger = logger ?? Logger();

  @override
  void handleFlutterError(FlutterErrorDetails details) {
    logger.e("flutter error", error: details.exception, stackTrace: details.stack);
  }

  @override
  bool handleAsyncError(Object object, StackTrace stack) {
    logger.e("async error", error: object, stackTrace: stack);
    return true;
  }
}
