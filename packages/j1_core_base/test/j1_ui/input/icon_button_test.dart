import "package:flutter/material.dart";
import "package:flutter_test/flutter_test.dart";
import "package:j1_core_base/j1_core_base.dart";
import "package:mocktail/mocktail.dart";

import "../helpers/mock_callbacks.dart";
import "../helpers/test_wrapper.dart";

void main() {
  group("Icon Button", () {
    testWidgets("flat button functions as expected", (tester) async {
      final onPressed = MockVoidCallback();
      const smallKey = Key("small");
      const mediumKey = Key("medium");
      const largeKey = Key("large");

      await tester.pumpWidget(
        TestWrapper(
          child: Column(
            children: [
              JIconButton(
                key: smallKey,
                icon: JamIcons.header_1,
                type: JButtonType.flat,
                size: JWidgetSize.small,
                onPressed: onPressed.call,
              ),
              JIconButton(
                key: mediumKey,
                icon: JamIcons.header_2,
                type: JButtonType.flat,
                color: JWidgetColor.secondary,
                onPressed: onPressed.call,
                overrides: const JIconButtonOverrides(outlineColor: Colors.red, outlineWidth: 1),
              ),
              JIconButton(
                key: largeKey,
                icon: JamIcons.header_3,
                type: JButtonType.flat,
                color: JWidgetColor.tertiary,
                size: JWidgetSize.large,
                onPressed: onPressed.call,
              ),
              JIconButton(
                icon: JamIcons.text,
                type: JButtonType.flat,
                color: JWidgetColor.error,
                onPressed: onPressed.call,
              ),
              JIconButton(
                icon: JamIcons.text,
                type: JButtonType.flat,
                color: JWidgetColor.surface,
                onPressed: onPressed.call,
              ),
              JIconButton(
                icon: JamIcons.text,
                type: JButtonType.flat,
                color: JWidgetColor.onSurface,
                onPressed: onPressed.call,
              ),
            ],
          ),
        ),
      );

      final smallFinder = find.byKey(smallKey);
      final mediumFinder = find.byKey(mediumKey);
      final largeFinder = find.byKey(largeKey);

      expect(smallFinder, findsOneWidget);
      expect(mediumFinder, findsOneWidget);
      expect(largeFinder, findsOneWidget);

      expect(find.byIcon(JamIcons.header_1), findsOneWidget);
      expect(find.byIcon(JamIcons.header_2), findsOneWidget);
      expect(find.byIcon(JamIcons.header_3), findsOneWidget);

      await tester.tap(smallFinder);
      await tester.tap(mediumFinder);
      await tester.tap(largeFinder);

      verify(onPressed.call).called(3);
    });

    testWidgets("filled button functions as expected", (tester) async {
      final onPressed = MockVoidCallback();
      const smallKey = Key("small");
      const mediumKey = Key("medium");
      const largeKey = Key("large");

      await tester.pumpWidget(
        TestWrapper(
          child: Column(
            children: [
              JIconButton(key: smallKey, icon: JamIcons.header_1, size: JWidgetSize.small, onPressed: onPressed.call),
              JIconButton(
                key: mediumKey,
                icon: JamIcons.header_2,
                color: JWidgetColor.secondary,
                onPressed: onPressed.call,
                overrides: const JIconButtonOverrides(outlineColor: Colors.red, outlineWidth: 1),
              ),
              JIconButton(
                key: largeKey,
                icon: JamIcons.header_3,
                color: JWidgetColor.tertiary,
                size: JWidgetSize.large,
                onPressed: onPressed.call,
              ),
              JIconButton(icon: JamIcons.text, color: JWidgetColor.error, onPressed: onPressed.call),
              JIconButton(icon: JamIcons.text, color: JWidgetColor.surface, onPressed: onPressed.call),
              JIconButton(icon: JamIcons.text, color: JWidgetColor.onSurface, onPressed: onPressed.call),
            ],
          ),
        ),
      );

      final smallFinder = find.byKey(smallKey);
      final mediumFinder = find.byKey(mediumKey);
      final largeFinder = find.byKey(largeKey);

      expect(smallFinder, findsOneWidget);
      expect(mediumFinder, findsOneWidget);
      expect(largeFinder, findsOneWidget);

      expect(find.byIcon(JamIcons.header_1), findsOneWidget);
      expect(find.byIcon(JamIcons.header_2), findsOneWidget);
      expect(find.byIcon(JamIcons.header_3), findsOneWidget);

      await tester.tap(smallFinder);
      await tester.tap(mediumFinder);
      await tester.tap(largeFinder);

      verify(onPressed.call).called(3);
    });

    test("overrides are compared correctly", () {
      const overrides0 = JIconButtonOverrides(iconSize: JDimens.size_16);
      const overrides1 = JIconButtonOverrides(iconSize: JDimens.size_16);
      const overrides2 = JIconButtonOverrides(iconSize: JDimens.size_12);

      expect(overrides0 == overrides1, true);
      expect(overrides0 == overrides2, false);
    });
  });
}
