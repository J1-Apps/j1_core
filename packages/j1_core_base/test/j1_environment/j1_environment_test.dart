import "package:flutter_test/flutter_test.dart";
import "package:j1_core_base/j1_core_base.dart";

class _TestEnvironment extends J1Environment {
  @override
  J1CrashHandler get crashHandler => LocalCrashHandler();

  @override
  J1Logger get logger => LocalLogger();

  @override
  J1Router get router => J1RouterGo();
}

void main() {
  group("J1 Environment", () {
    test("configures common dependencies", () {
      _TestEnvironment().configure();

      expect(locator.get<J1Logger>() is LocalLogger, true);
      expect(locator.get<J1Router>() is J1RouterGo, true);
    });
  });
}
