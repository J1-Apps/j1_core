import "package:firebase_crashlytics/firebase_crashlytics.dart";
import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:j1_core_firebase/j1_core_firebase.dart";
import "package:mocktail/mocktail.dart";

class MockCrashlytics extends Mock implements FirebaseCrashlytics {}

void main() {
  final crashlytics = MockCrashlytics();
  final firebaseCrashHandler = FirebaseCrashHandler(crashlytics: crashlytics);

  final exception = Exception("testException");
  final stackTrace = StackTrace.current;
  final flutterErrorDetails = FlutterErrorDetails(exception: exception, stack: stackTrace);

  setUpAll(() {
    registerFallbackValue(flutterErrorDetails);
  });

  group("Firebase Crash Handler", () {
    test("logs flutter and async crashes", () {
      when(
        () => crashlytics.recordFlutterFatalError(any()),
      ).thenAnswer((_) async {});

      when(
        () => crashlytics.recordError(any(), any(), fatal: any(named: "fatal")),
      ).thenAnswer((_) async {});

      firebaseCrashHandler.handleFlutterError(flutterErrorDetails);
      verify(() => crashlytics.recordFlutterFatalError(flutterErrorDetails)).called(1);

      firebaseCrashHandler.handleAsyncError(exception, stackTrace);
      verify(() => crashlytics.recordError(exception, stackTrace, fatal: true)).called(1);
    });
  });
}
