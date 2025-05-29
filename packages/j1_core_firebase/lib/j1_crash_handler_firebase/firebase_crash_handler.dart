library;

import "package:firebase_crashlytics/firebase_crashlytics.dart";
import "package:flutter/foundation.dart";
import "package:j1_core_base/j1_core_base.dart";

class FirebaseCrashHandler extends J1CrashHandler {
  final FirebaseCrashlytics _crashlytics;

  FirebaseCrashHandler({FirebaseCrashlytics? crashlytics}) : _crashlytics = crashlytics ?? FirebaseCrashlytics.instance;

  @override
  void handleFlutterError(FlutterErrorDetails details) {
    _crashlytics.recordFlutterFatalError(details);
  }

  @override
  bool handleAsyncError(Object object, StackTrace stack) {
    _crashlytics.recordError(object, stack, fatal: true);
    return true;
  }
}
