import "package:dart_mappable/dart_mappable.dart";

part "j1_text_theme.mapper.dart";

@MappableEnum()
enum J1FontWeight { thin, extraLight, light, normal, medium, semiBold, bold, extraBold, black }

@MappableClass()
class J1TextStyle with J1TextStyleMappable {
  final String fontFamily;
  final double fontSize;
  final double height;
  final J1FontWeight fontWeight;

  static const fromMap = J1TextStyleMapper.fromMap;
  static const fromJson = J1TextStyleMapper.fromJson;

  const J1TextStyle.displayLarge({
    required this.fontFamily,
    this.fontSize = 57,
    this.height = 64,
    this.fontWeight = J1FontWeight.normal,
  });

  const J1TextStyle.displayMedium({
    required this.fontFamily,
    this.fontSize = 45,
    this.height = 52,
    this.fontWeight = J1FontWeight.normal,
  });

  const J1TextStyle.displaySmall({
    required this.fontFamily,
    this.fontSize = 36,
    this.height = 44,
    this.fontWeight = J1FontWeight.normal,
  });

  const J1TextStyle.headlineLarge({
    required this.fontFamily,
    this.fontSize = 32,
    this.height = 40,
    this.fontWeight = J1FontWeight.normal,
  });

  const J1TextStyle.headlineMedium({
    required this.fontFamily,
    this.fontSize = 28,
    this.height = 36,
    this.fontWeight = J1FontWeight.normal,
  });

  const J1TextStyle.headlineSmall({
    required this.fontFamily,
    this.fontSize = 24,
    this.height = 32,
    this.fontWeight = J1FontWeight.normal,
  });

  const J1TextStyle.titleLarge({
    required this.fontFamily,
    this.fontSize = 22,
    this.height = 28,
    this.fontWeight = J1FontWeight.normal,
  });

  const J1TextStyle.titleMedium({
    required this.fontFamily,
    this.fontSize = 16,
    this.height = 24,
    this.fontWeight = J1FontWeight.normal,
  });

  const J1TextStyle.titleSmall({
    required this.fontFamily,
    this.fontSize = 14,
    this.height = 20,
    this.fontWeight = J1FontWeight.normal,
  });

  const J1TextStyle.bodyLarge({
    required this.fontFamily,
    this.fontSize = 16,
    this.height = 24,
    this.fontWeight = J1FontWeight.normal,
  });

  const J1TextStyle.bodyMedium({
    required this.fontFamily,
    this.fontSize = 14,
    this.height = 20,
    this.fontWeight = J1FontWeight.normal,
  });

  const J1TextStyle.bodySmall({
    required this.fontFamily,
    this.fontSize = 12,
    this.height = 16,
    this.fontWeight = J1FontWeight.normal,
  });

  const J1TextStyle.labelLarge({
    required this.fontFamily,
    this.fontSize = 14,
    this.height = 20,
    this.fontWeight = J1FontWeight.normal,
  });

  const J1TextStyle.labelMedium({
    required this.fontFamily,
    this.fontSize = 12,
    this.height = 16,
    this.fontWeight = J1FontWeight.normal,
  });

  const J1TextStyle.labelSmall({
    required this.fontFamily,
    this.fontSize = 11,
    this.height = 16,
    this.fontWeight = J1FontWeight.normal,
  });
}

@MappableClass()
class J1TextTheme with J1TextThemeMappable {
  final J1TextStyle displayLarge;
  final J1TextStyle displayMedium;
  final J1TextStyle displaySmall;
  final J1TextStyle headlineLarge;
  final J1TextStyle headlineMedium;
  final J1TextStyle headlineSmall;
  final J1TextStyle titleLarge;
  final J1TextStyle titleMedium;
  final J1TextStyle titleSmall;
  final J1TextStyle bodyLarge;
  final J1TextStyle bodyMedium;
  final J1TextStyle bodySmall;
  final J1TextStyle labelLarge;
  final J1TextStyle labelMedium;
  final J1TextStyle labelSmall;

  static const fromMap = J1TextThemeMapper.fromMap;
  static const fromJson = J1TextThemeMapper.fromJson;

  const J1TextTheme({
    required this.displayLarge,
    required this.displayMedium,
    required this.displaySmall,
    required this.headlineLarge,
    required this.headlineMedium,
    required this.headlineSmall,
    required this.titleLarge,
    required this.titleMedium,
    required this.titleSmall,
    required this.bodyLarge,
    required this.bodyMedium,
    required this.bodySmall,
    required this.labelLarge,
    required this.labelMedium,
    required this.labelSmall,
  });

  J1TextTheme copyWithHeaderFont(String fontFamily) {
    return copyWith(
      displayLarge: displayLarge.copyWith(fontFamily: fontFamily),
      displayMedium: displayMedium.copyWith(fontFamily: fontFamily),
      displaySmall: displaySmall.copyWith(fontFamily: fontFamily),
      headlineLarge: headlineLarge.copyWith(fontFamily: fontFamily),
      headlineMedium: headlineMedium.copyWith(fontFamily: fontFamily),
      headlineSmall: headlineSmall.copyWith(fontFamily: fontFamily),
      titleLarge: titleLarge.copyWith(fontFamily: fontFamily),
      titleMedium: titleMedium.copyWith(fontFamily: fontFamily),
      titleSmall: titleSmall.copyWith(fontFamily: fontFamily),
    );
  }

  J1TextTheme copyWithBodyFont(String fontFamily) {
    return copyWith(
      bodyLarge: bodyLarge.copyWith(fontFamily: fontFamily),
      bodyMedium: bodyMedium.copyWith(fontFamily: fontFamily),
      bodySmall: bodySmall.copyWith(fontFamily: fontFamily),
      labelLarge: labelLarge.copyWith(fontFamily: fontFamily),
      labelMedium: labelMedium.copyWith(fontFamily: fontFamily),
      labelSmall: labelSmall.copyWith(fontFamily: fontFamily),
    );
  }
}
