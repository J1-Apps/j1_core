import "package:flutter_test/flutter_test.dart";
import "package:j1_core_base/j1_core_base.dart";

void main() {
  group("J1 Page Transition", () {
    test("parses to and from value", () {
      expect(J1PageTransition.fromValue("cupertino"), J1PageTransition.cupertino);
      expect(J1PageTransition.fromValue("zoom"), J1PageTransition.zoom);
    });
  });
}
