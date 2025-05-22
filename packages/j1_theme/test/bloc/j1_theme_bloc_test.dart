import "package:flutter_test/flutter_test.dart";
import "package:j1_theme/j1_theme.dart";
import "package:mocktail/mocktail.dart";

import "../test_models.dart";

void main() {
  setUpAll(() {
    registerFallbackValue(testColorSchemeBlack);
    registerFallbackValue(testTextThemeRoboto);
    registerFallbackValue(J1PageTransition.cupertino);
  });

  group("J1 Theme Bloc", () {
    test("updates values from stream", () async {
      final themeRepository = MockThemeRepository();
      when(themeRepository.getColorStream).thenAnswer((_) => Stream.fromIterable([testColorSchemeWhite]));
      when(themeRepository.getTextStream).thenAnswer((_) => Stream.fromIterable([testTextThemeArial]));
      when(themeRepository.getTransitionStream).thenAnswer((_) => Stream.fromIterable([J1PageTransition.zoom]));

      final bloc = J1ThemeBloc(
        repository: themeRepository,
        defaultColorScheme: testColorSchemeBlack,
        defaultTextTheme: testTextThemeRoboto,
      );

      expect(
        bloc.stream,
        emitsInOrder([
          J1ThemeState(colorScheme: testColorSchemeWhite, textTheme: testTextThemeRoboto),
          J1ThemeState(colorScheme: testColorSchemeWhite, textTheme: testTextThemeArial),
          J1ThemeState(
            colorScheme: testColorSchemeWhite,
            textTheme: testTextThemeArial,
            pageTransition: J1PageTransition.zoom,
          ),
        ]),
      );
    });

    test("updates repository when manually updated", () async {
      final themeRepository = MockThemeRepository();
      when(themeRepository.getColorStream).thenAnswer((_) => const Stream.empty());
      when(themeRepository.getTextStream).thenAnswer((_) => const Stream.empty());
      when(themeRepository.getTransitionStream).thenAnswer((_) => const Stream.empty());
      when(() => themeRepository.setColorScheme(any())).thenAnswer((_) => Future.value());
      when(() => themeRepository.setTextTheme(any())).thenAnswer((_) => Future.value());
      when(() => themeRepository.setPageTransition(any())).thenAnswer((_) => Future.value());

      final bloc = J1ThemeBloc(
        repository: themeRepository,
        defaultColorScheme: testColorSchemeBlack,
        defaultTextTheme: testTextThemeRoboto,
      );

      bloc.add(UpdateColorSchemeEvent(testColorSchemeWhite));
      final color = await bloc.stream.first;
      expect(color.colorScheme, testColorSchemeWhite);

      bloc.add(const UpdateTextThemeEvent(testTextThemeArial));
      final font = await bloc.stream.first;
      expect(font.textTheme, testTextThemeArial);

      bloc.add(const UpdatePageTransitionEvent(J1PageTransition.zoom));
      final transition = await bloc.stream.first;
      expect(transition.pageTransition, J1PageTransition.zoom);

      verify(() => themeRepository.setColorScheme(testColorSchemeWhite)).called(1);
      verify(() => themeRepository.setTextTheme(testTextThemeArial)).called(1);
      verify(() => themeRepository.setPageTransition(J1PageTransition.zoom)).called(1);
    });
  });
}
