import "package:j1_theme/j1_theme.dart";

abstract class J1ThemeEvent {
  const J1ThemeEvent();
}

class UpdateColorSchemeEvent extends J1ThemeEvent {
  final J1ColorScheme colorScheme;
  final bool fromStream;

  const UpdateColorSchemeEvent(this.colorScheme, {this.fromStream = false});
}

class UpdateTextThemeEvent extends J1ThemeEvent {
  final J1TextTheme textTheme;
  final bool fromStream;

  const UpdateTextThemeEvent(this.textTheme, {this.fromStream = false});
}

class UpdatePageTransitionEvent extends J1ThemeEvent {
  final J1PageTransition pageTransition;
  final bool fromStream;

  const UpdatePageTransitionEvent(this.pageTransition, {this.fromStream = false});
}
