import "package:flutter_test/flutter_test.dart";
import "package:j1_theme/j1_theme.dart";

import "../test_models.dart";

void main() {
  group("J1 Color Scheme", () {
    test("parses to and from json", () {
      final json = testColorSchemeBlack.toJson();
      final parsed = J1ColorScheme.fromJson(json);

      expect(testColorSchemeBlack, parsed);
    });

    test("parses to and from map", () {
      final map = testColorSchemeBlack.toMap();
      final parsed = J1ColorScheme.fromMap(map);

      expect(testColorSchemeBlack, parsed);
    });
  });
}
