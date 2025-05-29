import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:j1_crash_handler/local_crash_handler.dart";
import "package:logger/logger.dart";
import "package:mocktail/mocktail.dart";

class MockLogger extends Mock implements Logger {}

void main() {
  final logger = MockLogger();
  final localCrashHandler = LocalCrashHandler(logger: logger);

  group("Local Crash Handler", () {
    test("logs flutter and async crashes", () {
      when(
        () => logger.e(
          any(),
          time: any(named: "time"),
          error: any(named: "error"),
          stackTrace: any(named: "stackTrace"),
        ),
      ).thenReturn(null);

      final exception = Exception("testException");
      final stackTrace = StackTrace.current;

      localCrashHandler.handleFlutterError(FlutterErrorDetails(exception: exception, stack: stackTrace));
      verify(() => logger.e("flutter error", error: exception, stackTrace: stackTrace)).called(1);

      localCrashHandler.handleAsyncError(exception, stackTrace);
      verify(() => logger.e("async error", error: exception, stackTrace: stackTrace)).called(1);
    });
  });
}
