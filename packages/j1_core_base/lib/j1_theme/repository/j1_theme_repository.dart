import "package:j1_core_base/j1_core_base.dart";

/// Handles the storing of the user's color scheme and text theme.
abstract class J1ThemeRepository {
  /// Sets the current color scheme.
  Future<void> setColorScheme(J1ColorScheme colorScheme);

  /// Listens to the latest color scheme.
  Stream<J1ColorScheme> getColorStream();

  /// Sets the current text theme.
  Future<void> setTextTheme(J1TextTheme textTheme);

  /// Listens to the latest text theme.
  Stream<J1TextTheme> getTextStream();

  /// Sets the current page transition.
  Future<void> setPageTransition(J1PageTransition pageTransition);

  /// Listens to the latest page transition.
  Stream<J1PageTransition> getTransitionStream();
}
