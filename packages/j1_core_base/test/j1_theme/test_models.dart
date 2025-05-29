import "package:flutter/material.dart";
import "package:j1_core_base/j1_core_base.dart";
import "package:mocktail/mocktail.dart";

class MockThemeRepository extends Mock implements J1ThemeRepository {}

final testColorSchemeBlack = J1ColorScheme(
  brightness: J1Brightness.dark,
  primary: Colors.black.toARGB32(),
  onPrimary: Colors.black.toARGB32(),
  secondary: Colors.black.toARGB32(),
  onSecondary: Colors.black.toARGB32(),
  tertiary: Colors.black.toARGB32(),
  onTertiary: Colors.black.toARGB32(),
  error: Colors.black.toARGB32(),
  onError: Colors.black.toARGB32(),
  surface: Colors.black.toARGB32(),
  onSurface: Colors.black.toARGB32(),
  background: Colors.black.toARGB32(),
);

final testColorSchemeWhite = J1ColorScheme(
  brightness: J1Brightness.light,
  primary: Colors.white.toARGB32(),
  onPrimary: Colors.white.toARGB32(),
  secondary: Colors.white.toARGB32(),
  onSecondary: Colors.white.toARGB32(),
  tertiary: Colors.white.toARGB32(),
  onTertiary: Colors.white.toARGB32(),
  error: Colors.white.toARGB32(),
  onError: Colors.white.toARGB32(),
  surface: Colors.white.toARGB32(),
  onSurface: Colors.white.toARGB32(),
  background: Colors.white.toARGB32(),
);

const testTextThemeRoboto = J1TextTheme(
  displayLarge: J1TextStyle.displayLarge(fontFamily: "roboto"),
  displayMedium: J1TextStyle.displayMedium(fontFamily: "roboto"),
  displaySmall: J1TextStyle.displaySmall(fontFamily: "roboto"),
  headlineLarge: J1TextStyle.headlineLarge(fontFamily: "roboto"),
  headlineMedium: J1TextStyle.headlineMedium(fontFamily: "roboto"),
  headlineSmall: J1TextStyle.headlineSmall(fontFamily: "roboto"),
  titleLarge: J1TextStyle.titleLarge(fontFamily: "roboto"),
  titleMedium: J1TextStyle.titleMedium(fontFamily: "roboto"),
  titleSmall: J1TextStyle.titleSmall(fontFamily: "roboto"),
  bodyLarge: J1TextStyle.bodyLarge(fontFamily: "roboto"),
  bodyMedium: J1TextStyle.bodyMedium(fontFamily: "roboto"),
  bodySmall: J1TextStyle.bodySmall(fontFamily: "roboto"),
  labelLarge: J1TextStyle.labelLarge(fontFamily: "roboto"),
  labelMedium: J1TextStyle.labelMedium(fontFamily: "roboto"),
  labelSmall: J1TextStyle.labelSmall(fontFamily: "roboto"),
);

const testTextThemeArial = J1TextTheme(
  displayLarge: J1TextStyle.displayLarge(fontFamily: "arial", fontWeight: J1FontWeight.thin),
  displayMedium: J1TextStyle.displayMedium(fontFamily: "arial", fontWeight: J1FontWeight.extraLight),
  displaySmall: J1TextStyle.displaySmall(fontFamily: "arial", fontWeight: J1FontWeight.light),
  headlineLarge: J1TextStyle.headlineLarge(fontFamily: "arial"),
  headlineMedium: J1TextStyle.headlineMedium(fontFamily: "arial", fontWeight: J1FontWeight.medium),
  headlineSmall: J1TextStyle.headlineSmall(fontFamily: "arial", fontWeight: J1FontWeight.semiBold),
  titleLarge: J1TextStyle.titleLarge(fontFamily: "arial", fontWeight: J1FontWeight.bold),
  titleMedium: J1TextStyle.titleMedium(fontFamily: "arial", fontWeight: J1FontWeight.extraBold),
  titleSmall: J1TextStyle.titleSmall(fontFamily: "arial", fontWeight: J1FontWeight.black),
  bodyLarge: J1TextStyle.bodyLarge(fontFamily: "arial"),
  bodyMedium: J1TextStyle.bodyMedium(fontFamily: "arial"),
  bodySmall: J1TextStyle.bodySmall(fontFamily: "arial"),
  labelLarge: J1TextStyle.labelLarge(fontFamily: "arial"),
  labelMedium: J1TextStyle.labelMedium(fontFamily: "arial"),
  labelSmall: J1TextStyle.labelSmall(fontFamily: "arial"),
);
