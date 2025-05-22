// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'j1_text_theme.dart';

class J1FontWeightMapper extends EnumMapper<J1FontWeight> {
  J1FontWeightMapper._();

  static J1FontWeightMapper? _instance;
  static J1FontWeightMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = J1FontWeightMapper._());
    }
    return _instance!;
  }

  static J1FontWeight fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  J1FontWeight decode(dynamic value) {
    switch (value) {
      case 'thin':
        return J1FontWeight.thin;
      case 'extraLight':
        return J1FontWeight.extraLight;
      case 'light':
        return J1FontWeight.light;
      case 'normal':
        return J1FontWeight.normal;
      case 'medium':
        return J1FontWeight.medium;
      case 'semiBold':
        return J1FontWeight.semiBold;
      case 'bold':
        return J1FontWeight.bold;
      case 'extraBold':
        return J1FontWeight.extraBold;
      case 'black':
        return J1FontWeight.black;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(J1FontWeight self) {
    switch (self) {
      case J1FontWeight.thin:
        return 'thin';
      case J1FontWeight.extraLight:
        return 'extraLight';
      case J1FontWeight.light:
        return 'light';
      case J1FontWeight.normal:
        return 'normal';
      case J1FontWeight.medium:
        return 'medium';
      case J1FontWeight.semiBold:
        return 'semiBold';
      case J1FontWeight.bold:
        return 'bold';
      case J1FontWeight.extraBold:
        return 'extraBold';
      case J1FontWeight.black:
        return 'black';
    }
  }
}

extension J1FontWeightMapperExtension on J1FontWeight {
  String toValue() {
    J1FontWeightMapper.ensureInitialized();
    return MapperContainer.globals.toValue<J1FontWeight>(this) as String;
  }
}

class J1TextStyleMapper extends ClassMapperBase<J1TextStyle> {
  J1TextStyleMapper._();

  static J1TextStyleMapper? _instance;
  static J1TextStyleMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = J1TextStyleMapper._());
      J1FontWeightMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'J1TextStyle';

  static String _$fontFamily(J1TextStyle v) => v.fontFamily;
  static const Field<J1TextStyle, String> _f$fontFamily = Field('fontFamily', _$fontFamily);
  static double _$fontSize(J1TextStyle v) => v.fontSize;
  static const Field<J1TextStyle, double> _f$fontSize = Field('fontSize', _$fontSize, opt: true, def: 57);
  static double _$height(J1TextStyle v) => v.height;
  static const Field<J1TextStyle, double> _f$height = Field('height', _$height, opt: true, def: 64);
  static J1FontWeight _$fontWeight(J1TextStyle v) => v.fontWeight;
  static const Field<J1TextStyle, J1FontWeight> _f$fontWeight = Field(
    'fontWeight',
    _$fontWeight,
    opt: true,
    def: J1FontWeight.normal,
  );

  @override
  final MappableFields<J1TextStyle> fields = const {
    #fontFamily: _f$fontFamily,
    #fontSize: _f$fontSize,
    #height: _f$height,
    #fontWeight: _f$fontWeight,
  };

  static J1TextStyle _instantiate(DecodingData data) {
    return J1TextStyle.displayLarge(
      fontFamily: data.dec(_f$fontFamily),
      fontSize: data.dec(_f$fontSize),
      height: data.dec(_f$height),
      fontWeight: data.dec(_f$fontWeight),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static J1TextStyle fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<J1TextStyle>(map);
  }

  static J1TextStyle fromJson(String json) {
    return ensureInitialized().decodeJson<J1TextStyle>(json);
  }
}

mixin J1TextStyleMappable {
  String toJson() {
    return J1TextStyleMapper.ensureInitialized().encodeJson<J1TextStyle>(this as J1TextStyle);
  }

  Map<String, dynamic> toMap() {
    return J1TextStyleMapper.ensureInitialized().encodeMap<J1TextStyle>(this as J1TextStyle);
  }

  J1TextStyleCopyWith<J1TextStyle, J1TextStyle, J1TextStyle> get copyWith =>
      _J1TextStyleCopyWithImpl(this as J1TextStyle, $identity, $identity);
  @override
  String toString() {
    return J1TextStyleMapper.ensureInitialized().stringifyValue(this as J1TextStyle);
  }

  @override
  bool operator ==(Object other) {
    return J1TextStyleMapper.ensureInitialized().equalsValue(this as J1TextStyle, other);
  }

  @override
  int get hashCode {
    return J1TextStyleMapper.ensureInitialized().hashValue(this as J1TextStyle);
  }
}

extension J1TextStyleValueCopy<$R, $Out> on ObjectCopyWith<$R, J1TextStyle, $Out> {
  J1TextStyleCopyWith<$R, J1TextStyle, $Out> get $asJ1TextStyle =>
      $base.as((v, t, t2) => _J1TextStyleCopyWithImpl(v, t, t2));
}

abstract class J1TextStyleCopyWith<$R, $In extends J1TextStyle, $Out> implements ClassCopyWith<$R, $In, $Out> {
  $R call({String? fontFamily, double? fontSize, double? height, J1FontWeight? fontWeight});
  J1TextStyleCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _J1TextStyleCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, J1TextStyle, $Out>
    implements J1TextStyleCopyWith<$R, J1TextStyle, $Out> {
  _J1TextStyleCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<J1TextStyle> $mapper = J1TextStyleMapper.ensureInitialized();
  @override
  $R call({String? fontFamily, double? fontSize, double? height, J1FontWeight? fontWeight}) => $apply(
    FieldCopyWithData({
      if (fontFamily != null) #fontFamily: fontFamily,
      if (fontSize != null) #fontSize: fontSize,
      if (height != null) #height: height,
      if (fontWeight != null) #fontWeight: fontWeight,
    }),
  );
  @override
  J1TextStyle $make(CopyWithData data) => J1TextStyle.displayLarge(
    fontFamily: data.get(#fontFamily, or: $value.fontFamily),
    fontSize: data.get(#fontSize, or: $value.fontSize),
    height: data.get(#height, or: $value.height),
    fontWeight: data.get(#fontWeight, or: $value.fontWeight),
  );

  @override
  J1TextStyleCopyWith<$R2, J1TextStyle, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _J1TextStyleCopyWithImpl($value, $cast, t);
}

class J1TextThemeMapper extends ClassMapperBase<J1TextTheme> {
  J1TextThemeMapper._();

  static J1TextThemeMapper? _instance;
  static J1TextThemeMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = J1TextThemeMapper._());
      J1TextStyleMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'J1TextTheme';

  static J1TextStyle _$displayLarge(J1TextTheme v) => v.displayLarge;
  static const Field<J1TextTheme, J1TextStyle> _f$displayLarge = Field('displayLarge', _$displayLarge);
  static J1TextStyle _$displayMedium(J1TextTheme v) => v.displayMedium;
  static const Field<J1TextTheme, J1TextStyle> _f$displayMedium = Field('displayMedium', _$displayMedium);
  static J1TextStyle _$displaySmall(J1TextTheme v) => v.displaySmall;
  static const Field<J1TextTheme, J1TextStyle> _f$displaySmall = Field('displaySmall', _$displaySmall);
  static J1TextStyle _$headlineLarge(J1TextTheme v) => v.headlineLarge;
  static const Field<J1TextTheme, J1TextStyle> _f$headlineLarge = Field('headlineLarge', _$headlineLarge);
  static J1TextStyle _$headlineMedium(J1TextTheme v) => v.headlineMedium;
  static const Field<J1TextTheme, J1TextStyle> _f$headlineMedium = Field('headlineMedium', _$headlineMedium);
  static J1TextStyle _$headlineSmall(J1TextTheme v) => v.headlineSmall;
  static const Field<J1TextTheme, J1TextStyle> _f$headlineSmall = Field('headlineSmall', _$headlineSmall);
  static J1TextStyle _$titleLarge(J1TextTheme v) => v.titleLarge;
  static const Field<J1TextTheme, J1TextStyle> _f$titleLarge = Field('titleLarge', _$titleLarge);
  static J1TextStyle _$titleMedium(J1TextTheme v) => v.titleMedium;
  static const Field<J1TextTheme, J1TextStyle> _f$titleMedium = Field('titleMedium', _$titleMedium);
  static J1TextStyle _$titleSmall(J1TextTheme v) => v.titleSmall;
  static const Field<J1TextTheme, J1TextStyle> _f$titleSmall = Field('titleSmall', _$titleSmall);
  static J1TextStyle _$bodyLarge(J1TextTheme v) => v.bodyLarge;
  static const Field<J1TextTheme, J1TextStyle> _f$bodyLarge = Field('bodyLarge', _$bodyLarge);
  static J1TextStyle _$bodyMedium(J1TextTheme v) => v.bodyMedium;
  static const Field<J1TextTheme, J1TextStyle> _f$bodyMedium = Field('bodyMedium', _$bodyMedium);
  static J1TextStyle _$bodySmall(J1TextTheme v) => v.bodySmall;
  static const Field<J1TextTheme, J1TextStyle> _f$bodySmall = Field('bodySmall', _$bodySmall);
  static J1TextStyle _$labelLarge(J1TextTheme v) => v.labelLarge;
  static const Field<J1TextTheme, J1TextStyle> _f$labelLarge = Field('labelLarge', _$labelLarge);
  static J1TextStyle _$labelMedium(J1TextTheme v) => v.labelMedium;
  static const Field<J1TextTheme, J1TextStyle> _f$labelMedium = Field('labelMedium', _$labelMedium);
  static J1TextStyle _$labelSmall(J1TextTheme v) => v.labelSmall;
  static const Field<J1TextTheme, J1TextStyle> _f$labelSmall = Field('labelSmall', _$labelSmall);

  @override
  final MappableFields<J1TextTheme> fields = const {
    #displayLarge: _f$displayLarge,
    #displayMedium: _f$displayMedium,
    #displaySmall: _f$displaySmall,
    #headlineLarge: _f$headlineLarge,
    #headlineMedium: _f$headlineMedium,
    #headlineSmall: _f$headlineSmall,
    #titleLarge: _f$titleLarge,
    #titleMedium: _f$titleMedium,
    #titleSmall: _f$titleSmall,
    #bodyLarge: _f$bodyLarge,
    #bodyMedium: _f$bodyMedium,
    #bodySmall: _f$bodySmall,
    #labelLarge: _f$labelLarge,
    #labelMedium: _f$labelMedium,
    #labelSmall: _f$labelSmall,
  };

  static J1TextTheme _instantiate(DecodingData data) {
    return J1TextTheme(
      displayLarge: data.dec(_f$displayLarge),
      displayMedium: data.dec(_f$displayMedium),
      displaySmall: data.dec(_f$displaySmall),
      headlineLarge: data.dec(_f$headlineLarge),
      headlineMedium: data.dec(_f$headlineMedium),
      headlineSmall: data.dec(_f$headlineSmall),
      titleLarge: data.dec(_f$titleLarge),
      titleMedium: data.dec(_f$titleMedium),
      titleSmall: data.dec(_f$titleSmall),
      bodyLarge: data.dec(_f$bodyLarge),
      bodyMedium: data.dec(_f$bodyMedium),
      bodySmall: data.dec(_f$bodySmall),
      labelLarge: data.dec(_f$labelLarge),
      labelMedium: data.dec(_f$labelMedium),
      labelSmall: data.dec(_f$labelSmall),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static J1TextTheme fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<J1TextTheme>(map);
  }

  static J1TextTheme fromJson(String json) {
    return ensureInitialized().decodeJson<J1TextTheme>(json);
  }
}

mixin J1TextThemeMappable {
  String toJson() {
    return J1TextThemeMapper.ensureInitialized().encodeJson<J1TextTheme>(this as J1TextTheme);
  }

  Map<String, dynamic> toMap() {
    return J1TextThemeMapper.ensureInitialized().encodeMap<J1TextTheme>(this as J1TextTheme);
  }

  J1TextThemeCopyWith<J1TextTheme, J1TextTheme, J1TextTheme> get copyWith =>
      _J1TextThemeCopyWithImpl(this as J1TextTheme, $identity, $identity);
  @override
  String toString() {
    return J1TextThemeMapper.ensureInitialized().stringifyValue(this as J1TextTheme);
  }

  @override
  bool operator ==(Object other) {
    return J1TextThemeMapper.ensureInitialized().equalsValue(this as J1TextTheme, other);
  }

  @override
  int get hashCode {
    return J1TextThemeMapper.ensureInitialized().hashValue(this as J1TextTheme);
  }
}

extension J1TextThemeValueCopy<$R, $Out> on ObjectCopyWith<$R, J1TextTheme, $Out> {
  J1TextThemeCopyWith<$R, J1TextTheme, $Out> get $asJ1TextTheme =>
      $base.as((v, t, t2) => _J1TextThemeCopyWithImpl(v, t, t2));
}

abstract class J1TextThemeCopyWith<$R, $In extends J1TextTheme, $Out> implements ClassCopyWith<$R, $In, $Out> {
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get displayLarge;
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get displayMedium;
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get displaySmall;
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get headlineLarge;
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get headlineMedium;
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get headlineSmall;
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get titleLarge;
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get titleMedium;
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get titleSmall;
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get bodyLarge;
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get bodyMedium;
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get bodySmall;
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get labelLarge;
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get labelMedium;
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get labelSmall;
  $R call({
    J1TextStyle? displayLarge,
    J1TextStyle? displayMedium,
    J1TextStyle? displaySmall,
    J1TextStyle? headlineLarge,
    J1TextStyle? headlineMedium,
    J1TextStyle? headlineSmall,
    J1TextStyle? titleLarge,
    J1TextStyle? titleMedium,
    J1TextStyle? titleSmall,
    J1TextStyle? bodyLarge,
    J1TextStyle? bodyMedium,
    J1TextStyle? bodySmall,
    J1TextStyle? labelLarge,
    J1TextStyle? labelMedium,
    J1TextStyle? labelSmall,
  });
  J1TextThemeCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _J1TextThemeCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, J1TextTheme, $Out>
    implements J1TextThemeCopyWith<$R, J1TextTheme, $Out> {
  _J1TextThemeCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<J1TextTheme> $mapper = J1TextThemeMapper.ensureInitialized();
  @override
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get displayLarge =>
      $value.displayLarge.copyWith.$chain((v) => call(displayLarge: v));
  @override
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get displayMedium =>
      $value.displayMedium.copyWith.$chain((v) => call(displayMedium: v));
  @override
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get displaySmall =>
      $value.displaySmall.copyWith.$chain((v) => call(displaySmall: v));
  @override
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get headlineLarge =>
      $value.headlineLarge.copyWith.$chain((v) => call(headlineLarge: v));
  @override
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get headlineMedium =>
      $value.headlineMedium.copyWith.$chain((v) => call(headlineMedium: v));
  @override
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get headlineSmall =>
      $value.headlineSmall.copyWith.$chain((v) => call(headlineSmall: v));
  @override
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get titleLarge =>
      $value.titleLarge.copyWith.$chain((v) => call(titleLarge: v));
  @override
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get titleMedium =>
      $value.titleMedium.copyWith.$chain((v) => call(titleMedium: v));
  @override
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get titleSmall =>
      $value.titleSmall.copyWith.$chain((v) => call(titleSmall: v));
  @override
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get bodyLarge =>
      $value.bodyLarge.copyWith.$chain((v) => call(bodyLarge: v));
  @override
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get bodyMedium =>
      $value.bodyMedium.copyWith.$chain((v) => call(bodyMedium: v));
  @override
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get bodySmall =>
      $value.bodySmall.copyWith.$chain((v) => call(bodySmall: v));
  @override
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get labelLarge =>
      $value.labelLarge.copyWith.$chain((v) => call(labelLarge: v));
  @override
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get labelMedium =>
      $value.labelMedium.copyWith.$chain((v) => call(labelMedium: v));
  @override
  J1TextStyleCopyWith<$R, J1TextStyle, J1TextStyle> get labelSmall =>
      $value.labelSmall.copyWith.$chain((v) => call(labelSmall: v));
  @override
  $R call({
    J1TextStyle? displayLarge,
    J1TextStyle? displayMedium,
    J1TextStyle? displaySmall,
    J1TextStyle? headlineLarge,
    J1TextStyle? headlineMedium,
    J1TextStyle? headlineSmall,
    J1TextStyle? titleLarge,
    J1TextStyle? titleMedium,
    J1TextStyle? titleSmall,
    J1TextStyle? bodyLarge,
    J1TextStyle? bodyMedium,
    J1TextStyle? bodySmall,
    J1TextStyle? labelLarge,
    J1TextStyle? labelMedium,
    J1TextStyle? labelSmall,
  }) => $apply(
    FieldCopyWithData({
      if (displayLarge != null) #displayLarge: displayLarge,
      if (displayMedium != null) #displayMedium: displayMedium,
      if (displaySmall != null) #displaySmall: displaySmall,
      if (headlineLarge != null) #headlineLarge: headlineLarge,
      if (headlineMedium != null) #headlineMedium: headlineMedium,
      if (headlineSmall != null) #headlineSmall: headlineSmall,
      if (titleLarge != null) #titleLarge: titleLarge,
      if (titleMedium != null) #titleMedium: titleMedium,
      if (titleSmall != null) #titleSmall: titleSmall,
      if (bodyLarge != null) #bodyLarge: bodyLarge,
      if (bodyMedium != null) #bodyMedium: bodyMedium,
      if (bodySmall != null) #bodySmall: bodySmall,
      if (labelLarge != null) #labelLarge: labelLarge,
      if (labelMedium != null) #labelMedium: labelMedium,
      if (labelSmall != null) #labelSmall: labelSmall,
    }),
  );
  @override
  J1TextTheme $make(CopyWithData data) => J1TextTheme(
    displayLarge: data.get(#displayLarge, or: $value.displayLarge),
    displayMedium: data.get(#displayMedium, or: $value.displayMedium),
    displaySmall: data.get(#displaySmall, or: $value.displaySmall),
    headlineLarge: data.get(#headlineLarge, or: $value.headlineLarge),
    headlineMedium: data.get(#headlineMedium, or: $value.headlineMedium),
    headlineSmall: data.get(#headlineSmall, or: $value.headlineSmall),
    titleLarge: data.get(#titleLarge, or: $value.titleLarge),
    titleMedium: data.get(#titleMedium, or: $value.titleMedium),
    titleSmall: data.get(#titleSmall, or: $value.titleSmall),
    bodyLarge: data.get(#bodyLarge, or: $value.bodyLarge),
    bodyMedium: data.get(#bodyMedium, or: $value.bodyMedium),
    bodySmall: data.get(#bodySmall, or: $value.bodySmall),
    labelLarge: data.get(#labelLarge, or: $value.labelLarge),
    labelMedium: data.get(#labelMedium, or: $value.labelMedium),
    labelSmall: data.get(#labelSmall, or: $value.labelSmall),
  );

  @override
  J1TextThemeCopyWith<$R2, J1TextTheme, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _J1TextThemeCopyWithImpl($value, $cast, t);
}
