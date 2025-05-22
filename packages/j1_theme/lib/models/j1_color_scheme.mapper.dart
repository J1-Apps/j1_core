// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'j1_color_scheme.dart';

class J1BrightnessMapper extends EnumMapper<J1Brightness> {
  J1BrightnessMapper._();

  static J1BrightnessMapper? _instance;
  static J1BrightnessMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = J1BrightnessMapper._());
    }
    return _instance!;
  }

  static J1Brightness fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  J1Brightness decode(dynamic value) {
    switch (value) {
      case 'dark':
        return J1Brightness.dark;
      case 'light':
        return J1Brightness.light;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(J1Brightness self) {
    switch (self) {
      case J1Brightness.dark:
        return 'dark';
      case J1Brightness.light:
        return 'light';
    }
  }
}

extension J1BrightnessMapperExtension on J1Brightness {
  String toValue() {
    J1BrightnessMapper.ensureInitialized();
    return MapperContainer.globals.toValue<J1Brightness>(this) as String;
  }
}

class J1ColorSchemeMapper extends ClassMapperBase<J1ColorScheme> {
  J1ColorSchemeMapper._();

  static J1ColorSchemeMapper? _instance;
  static J1ColorSchemeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = J1ColorSchemeMapper._());
      J1BrightnessMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'J1ColorScheme';

  static J1Brightness _$brightness(J1ColorScheme v) => v.brightness;
  static const Field<J1ColorScheme, J1Brightness> _f$brightness = Field('brightness', _$brightness);
  static int _$primary(J1ColorScheme v) => v.primary;
  static const Field<J1ColorScheme, int> _f$primary = Field('primary', _$primary);
  static int _$onPrimary(J1ColorScheme v) => v.onPrimary;
  static const Field<J1ColorScheme, int> _f$onPrimary = Field('onPrimary', _$onPrimary);
  static int _$secondary(J1ColorScheme v) => v.secondary;
  static const Field<J1ColorScheme, int> _f$secondary = Field('secondary', _$secondary);
  static int _$onSecondary(J1ColorScheme v) => v.onSecondary;
  static const Field<J1ColorScheme, int> _f$onSecondary = Field('onSecondary', _$onSecondary);
  static int _$tertiary(J1ColorScheme v) => v.tertiary;
  static const Field<J1ColorScheme, int> _f$tertiary = Field('tertiary', _$tertiary);
  static int _$onTertiary(J1ColorScheme v) => v.onTertiary;
  static const Field<J1ColorScheme, int> _f$onTertiary = Field('onTertiary', _$onTertiary);
  static int _$error(J1ColorScheme v) => v.error;
  static const Field<J1ColorScheme, int> _f$error = Field('error', _$error);
  static int _$onError(J1ColorScheme v) => v.onError;
  static const Field<J1ColorScheme, int> _f$onError = Field('onError', _$onError);
  static int _$surface(J1ColorScheme v) => v.surface;
  static const Field<J1ColorScheme, int> _f$surface = Field('surface', _$surface);
  static int _$onSurface(J1ColorScheme v) => v.onSurface;
  static const Field<J1ColorScheme, int> _f$onSurface = Field('onSurface', _$onSurface);
  static int _$background(J1ColorScheme v) => v.background;
  static const Field<J1ColorScheme, int> _f$background = Field('background', _$background);

  @override
  final MappableFields<J1ColorScheme> fields = const {
    #brightness: _f$brightness,
    #primary: _f$primary,
    #onPrimary: _f$onPrimary,
    #secondary: _f$secondary,
    #onSecondary: _f$onSecondary,
    #tertiary: _f$tertiary,
    #onTertiary: _f$onTertiary,
    #error: _f$error,
    #onError: _f$onError,
    #surface: _f$surface,
    #onSurface: _f$onSurface,
    #background: _f$background,
  };

  static J1ColorScheme _instantiate(DecodingData data) {
    return J1ColorScheme(
      brightness: data.dec(_f$brightness),
      primary: data.dec(_f$primary),
      onPrimary: data.dec(_f$onPrimary),
      secondary: data.dec(_f$secondary),
      onSecondary: data.dec(_f$onSecondary),
      tertiary: data.dec(_f$tertiary),
      onTertiary: data.dec(_f$onTertiary),
      error: data.dec(_f$error),
      onError: data.dec(_f$onError),
      surface: data.dec(_f$surface),
      onSurface: data.dec(_f$onSurface),
      background: data.dec(_f$background),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static J1ColorScheme fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<J1ColorScheme>(map);
  }

  static J1ColorScheme fromJson(String json) {
    return ensureInitialized().decodeJson<J1ColorScheme>(json);
  }
}

mixin J1ColorSchemeMappable {
  String toJson() {
    return J1ColorSchemeMapper.ensureInitialized().encodeJson<J1ColorScheme>(this as J1ColorScheme);
  }

  Map<String, dynamic> toMap() {
    return J1ColorSchemeMapper.ensureInitialized().encodeMap<J1ColorScheme>(this as J1ColorScheme);
  }

  J1ColorSchemeCopyWith<J1ColorScheme, J1ColorScheme, J1ColorScheme> get copyWith =>
      _J1ColorSchemeCopyWithImpl(this as J1ColorScheme, $identity, $identity);
  @override
  String toString() {
    return J1ColorSchemeMapper.ensureInitialized().stringifyValue(this as J1ColorScheme);
  }

  @override
  bool operator ==(Object other) {
    return J1ColorSchemeMapper.ensureInitialized().equalsValue(this as J1ColorScheme, other);
  }

  @override
  int get hashCode {
    return J1ColorSchemeMapper.ensureInitialized().hashValue(this as J1ColorScheme);
  }
}

extension J1ColorSchemeValueCopy<$R, $Out> on ObjectCopyWith<$R, J1ColorScheme, $Out> {
  J1ColorSchemeCopyWith<$R, J1ColorScheme, $Out> get $asJ1ColorScheme =>
      $base.as((v, t, t2) => _J1ColorSchemeCopyWithImpl(v, t, t2));
}

abstract class J1ColorSchemeCopyWith<$R, $In extends J1ColorScheme, $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({
    J1Brightness? brightness,
    int? primary,
    int? onPrimary,
    int? secondary,
    int? onSecondary,
    int? tertiary,
    int? onTertiary,
    int? error,
    int? onError,
    int? surface,
    int? onSurface,
    int? background,
  });
  J1ColorSchemeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _J1ColorSchemeCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, J1ColorScheme, $Out>
    implements J1ColorSchemeCopyWith<$R, J1ColorScheme, $Out> {
  _J1ColorSchemeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<J1ColorScheme> $mapper = J1ColorSchemeMapper.ensureInitialized();
  @override
  $R call({
    J1Brightness? brightness,
    int? primary,
    int? onPrimary,
    int? secondary,
    int? onSecondary,
    int? tertiary,
    int? onTertiary,
    int? error,
    int? onError,
    int? surface,
    int? onSurface,
    int? background,
  }) => $apply(
    FieldCopyWithData({
      if (brightness != null) #brightness: brightness,
      if (primary != null) #primary: primary,
      if (onPrimary != null) #onPrimary: onPrimary,
      if (secondary != null) #secondary: secondary,
      if (onSecondary != null) #onSecondary: onSecondary,
      if (tertiary != null) #tertiary: tertiary,
      if (onTertiary != null) #onTertiary: onTertiary,
      if (error != null) #error: error,
      if (onError != null) #onError: onError,
      if (surface != null) #surface: surface,
      if (onSurface != null) #onSurface: onSurface,
      if (background != null) #background: background,
    }),
  );
  @override
  J1ColorScheme $make(CopyWithData data) => J1ColorScheme(
    brightness: data.get(#brightness, or: $value.brightness),
    primary: data.get(#primary, or: $value.primary),
    onPrimary: data.get(#onPrimary, or: $value.onPrimary),
    secondary: data.get(#secondary, or: $value.secondary),
    onSecondary: data.get(#onSecondary, or: $value.onSecondary),
    tertiary: data.get(#tertiary, or: $value.tertiary),
    onTertiary: data.get(#onTertiary, or: $value.onTertiary),
    error: data.get(#error, or: $value.error),
    onError: data.get(#onError, or: $value.onError),
    surface: data.get(#surface, or: $value.surface),
    onSurface: data.get(#onSurface, or: $value.onSurface),
    background: data.get(#background, or: $value.background),
  );

  @override
  J1ColorSchemeCopyWith<$R2, J1ColorScheme, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _J1ColorSchemeCopyWithImpl($value, $cast, t);
}
