import "package:flutter_test/flutter_test.dart";
import "package:j1_core_base/j1_core_base.dart";
import "package:mocktail/mocktail.dart";

import "../helpers/mock_callbacks.dart";
import "../helpers/test_wrapper.dart";

void main() {
  group("Text Field", () {
    testWidgets("outlined text field produces a string", (tester) async {
      final onChanged = MockCallback();

      await tester.pumpWidget(
        TestWrapper(
          child: JTextField(size: JWidgetSize.large, onChanged: onChanged.call),
        ),
      );

      final input = find.byType(JTextField);

      expect(input, findsOneWidget);
      await tester.enterText(input, "test");

      verify(() => onChanged("test")).called(1);
    });

    testWidgets("underline text field produces a string", (tester) async {
      final onChanged = MockCallback();

      await tester.pumpWidget(
        TestWrapper(
          child: JTextField(type: JTextFieldType.underlined, onChanged: onChanged.call),
        ),
      );

      final input = find.byType(JTextField);

      expect(input, findsOneWidget);
      await tester.enterText(input, "test");

      verify(() => onChanged("test")).called(1);
    });

    testWidgets("flat text field produces a string", (tester) async {
      final onChanged = MockCallback();

      await tester.pumpWidget(
        TestWrapper(
          child: JTextField(size: JWidgetSize.small, type: JTextFieldType.flat, onChanged: onChanged.call),
        ),
      );

      final input = find.byType(JTextField);

      expect(input, findsOneWidget);
      await tester.enterText(input, "test");

      verify(() => onChanged("test")).called(1);
    });

    testWidgets("text field handles an icon", (tester) async {
      final onPressed = MockVoidCallback();

      await tester.pumpWidget(
        TestWrapper(
          child: JTextField(onChanged: (_) {}, icon: JamIcons.pencil, onIconPressed: onPressed.call),
        ),
      );

      final icon = find.byIcon(JamIcons.pencil);

      expect(icon, findsOneWidget);
      await tester.tap(icon);

      verify(onPressed.call).called(1);
    });

    testWidgets("text field handles an error", (tester) async {
      String? validator(value) => value?.contains("error") ?? false ? "validation" : null;

      await tester.pumpWidget(
        TestWrapper(
          child: JTextField(showErrorText: true, errorText: "validation", validator: validator),
        ),
      );

      final input = find.byType(JTextField);
      final error = find.text("validation");

      await tester.enterText(input, "error");
      await tester.pumpAndSettle();
      expect(error, findsOneWidget);
    });

    testWidgets("text field can be disabled", (tester) async {
      await tester.pumpWidget(const TestWrapper(child: JTextField(enabled: false)));

      final input = find.byType(JTextField);
      final test = find.text("test");

      await tester.enterText(input, "test");
      await tester.pumpAndSettle();
      expect(test, findsNothing);
    });

    test("overrides are compared correctly", () {
      const overrides0 = JTextFieldOverrides(iconSize: JDimens.size_16);
      const overrides1 = JTextFieldOverrides(iconSize: JDimens.size_16);
      const overrides2 = JTextFieldOverrides(iconSize: JDimens.size_12);

      expect(overrides0 == overrides1, true);
      expect(overrides0 == overrides2, false);
    });
  });
}
