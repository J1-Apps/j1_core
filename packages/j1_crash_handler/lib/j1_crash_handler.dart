library;

export "j1_crash_handler.dart";
export "local_crash_handler.dart";

import "package:flutter/foundation.dart";

/// A class that handles crash reporting.
abstract class J1CrashHandler {
  const J1CrashHandler();

  /// Logs a flutter error.
  void handleFlutterError(FlutterErrorDetails details);

  /// Logs an async error.
  bool handleAsyncError(Object object, StackTrace stack);

  /// Configures the crash handler to handle Flutter errors.
  ///
  /// This method must be called in the app's initialization.
  // coverage:ignore-start
  void configure() {
    FlutterError.onError = handleFlutterError;
    PlatformDispatcher.instance.onError = handleAsyncError;
  }
  // coverage:ignore-end
}
