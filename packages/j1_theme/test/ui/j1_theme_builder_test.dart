import "package:flutter/material.dart";
import "package:flutter_bloc/flutter_bloc.dart";
import "package:flutter_test/flutter_test.dart";
import "package:get_it/get_it.dart";
import "package:j1_theme/j1_theme.dart";
import "package:mocktail/mocktail.dart";

import "../test_models.dart";

final _locator = GetIt.instance;

void main() {
  final themeRepository = MockThemeRepository();

  setUpAll(() {
    _locator.registerSingleton<J1ThemeRepository>(themeRepository);
  });

  setUp(() {
    reset(themeRepository);
  });

  group("J1 Theme Builder", () {
    testWidgets("builds with a theme", (tester) async {
      when(themeRepository.getColorStream).thenAnswer((_) => const Stream.empty());
      when(themeRepository.getTextStream).thenAnswer((_) => const Stream.empty());
      when(themeRepository.getTransitionStream).thenAnswer((_) => const Stream.empty());

      final bloc = J1ThemeBloc(defaultColorScheme: testColorSchemeBlack, defaultTextTheme: testTextThemeRoboto);

      await tester.pumpWidget(
        MaterialApp(
          home: BlocProvider(
            create: (_) => bloc,
            child: J1ThemeBuilder(
              builder: (context, theme) => Theme(
                data: theme,
                child: Column(
                  children: [
                    IconButton(
                      onPressed: () => bloc.add(UpdateColorSchemeEvent(testColorSchemeWhite)),
                      icon: const Icon(Icons.format_paint),
                    ),
                    Text("color: ${theme.colorScheme.primary.toARGB32()}"),
                    IconButton(
                      onPressed: () => bloc.add(const UpdateTextThemeEvent(testTextThemeArial)),
                      icon: const Icon(Icons.format_paint_sharp),
                    ),
                    Text("font: ${theme.textTheme.displayLarge?.fontFamily}"),
                    IconButton(
                      onPressed: () => bloc.add(const UpdatePageTransitionEvent(J1PageTransition.zoom)),
                      icon: const Icon(Icons.format_paint_outlined),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      );

      final colorSchemeFinder = find.byIcon(Icons.format_paint);
      final textThemeFinder = find.byIcon(Icons.format_paint_sharp);
      final pageTransitionFinder = find.byIcon(Icons.format_paint_outlined);

      expect(colorSchemeFinder, findsOneWidget);

      expect(find.text("color: 4278190080"), findsOneWidget);
      expect(find.text("font: roboto"), findsOneWidget);

      await tester.tap(colorSchemeFinder);
      await tester.pumpAndSettle();

      expect(find.text("color: 4294967295"), findsOneWidget);
      expect(find.text("font: roboto"), findsOneWidget);

      await tester.tap(textThemeFinder);
      await tester.pumpAndSettle();

      expect(find.text("color: 4294967295"), findsOneWidget);
      expect(find.text("font: arial"), findsOneWidget);

      await tester.tap(pageTransitionFinder);
      await tester.pumpAndSettle();
    });
  });
}
