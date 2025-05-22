import "package:dart_mappable/dart_mappable.dart";

part "j1_color_scheme.mapper.dart";

@MappableEnum()
enum J1Brightness { dark, light }

@MappableClass()
class J1ColorScheme with J1ColorSchemeMappable {
  final J1Brightness brightness;
  final int primary;
  final int onPrimary;
  final int secondary;
  final int onSecondary;
  final int tertiary;
  final int onTertiary;
  final int error;
  final int onError;
  final int surface;
  final int onSurface;
  final int background;

  static const fromMap = J1ColorSchemeMapper.fromMap;
  static const fromJson = J1ColorSchemeMapper.fromJson;

  const J1ColorScheme({
    required this.brightness,
    required this.primary,
    required this.onPrimary,
    required this.secondary,
    required this.onSecondary,
    required this.tertiary,
    required this.onTertiary,
    required this.error,
    required this.onError,
    required this.surface,
    required this.onSurface,
    required this.background,
  });
}
