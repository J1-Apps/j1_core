import "package:dart_mappable/dart_mappable.dart";
import "package:j1_theme/j1_theme.dart";

part "j1_theme_state.mapper.dart";

@MappableClass()
final class J1ThemeState with J1ThemeStateMappable {
  final J1ColorScheme colorScheme;
  final J1TextTheme textTheme;
  final J1PageTransition pageTransition;

  const J1ThemeState({
    required this.colorScheme,
    required this.textTheme,
    this.pageTransition = J1PageTransition.cupertino,
  });
}
