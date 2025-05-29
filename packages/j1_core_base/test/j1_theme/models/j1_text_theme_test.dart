import "package:flutter_test/flutter_test.dart";
import "package:j1_core_base/j1_core_base.dart";

import "../test_models.dart";

void main() {
  group("J1 Text Theme", () {
    test("parses to and from json", () {
      final json = testTextThemeRoboto.toJson();
      final parsed = J1TextTheme.fromJson(json);

      expect(testTextThemeRoboto, parsed);
    });

    test("parses to and from map", () {
      final map = testTextThemeRoboto.toMap();
      final parsed = J1TextTheme.fromMap(map);

      expect(testTextThemeRoboto, parsed);
    });

    test("copies with header fonts", () {
      final copied = testTextThemeRoboto.copyWithHeaderFont("family");

      expect(copied.displayLarge.fontFamily, "family");
      expect(copied.displayMedium.fontFamily, "family");
      expect(copied.displaySmall.fontFamily, "family");
      expect(copied.headlineLarge.fontFamily, "family");
      expect(copied.headlineMedium.fontFamily, "family");
      expect(copied.headlineSmall.fontFamily, "family");
      expect(copied.titleLarge.fontFamily, "family");
      expect(copied.titleMedium.fontFamily, "family");
      expect(copied.titleSmall.fontFamily, "family");
      expect(copied.bodyLarge.fontFamily, "roboto");
      expect(copied.bodyMedium.fontFamily, "roboto");
      expect(copied.bodySmall.fontFamily, "roboto");
      expect(copied.labelLarge.fontFamily, "roboto");
      expect(copied.labelMedium.fontFamily, "roboto");
      expect(copied.labelSmall.fontFamily, "roboto");
    });

    test("copies with body fonts", () {
      final copied = testTextThemeRoboto.copyWithBodyFont("family");

      expect(copied.displayLarge.fontFamily, "roboto");
      expect(copied.displayMedium.fontFamily, "roboto");
      expect(copied.displaySmall.fontFamily, "roboto");
      expect(copied.headlineLarge.fontFamily, "roboto");
      expect(copied.headlineMedium.fontFamily, "roboto");
      expect(copied.headlineSmall.fontFamily, "roboto");
      expect(copied.titleLarge.fontFamily, "roboto");
      expect(copied.titleMedium.fontFamily, "roboto");
      expect(copied.titleSmall.fontFamily, "roboto");
      expect(copied.bodyLarge.fontFamily, "family");
      expect(copied.bodyMedium.fontFamily, "family");
      expect(copied.bodySmall.fontFamily, "family");
      expect(copied.labelLarge.fontFamily, "family");
      expect(copied.labelMedium.fontFamily, "family");
      expect(copied.labelSmall.fontFamily, "family");
    });
  });
}
