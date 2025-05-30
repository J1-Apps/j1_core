// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'j1_theme_state.dart';

class J1ThemeStateMapper extends ClassMapperBase<J1ThemeState> {
  J1ThemeStateMapper._();

  static J1ThemeStateMapper? _instance;
  static J1ThemeStateMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = J1ThemeStateMapper._());
      J1ColorSchemeMapper.ensureInitialized();
      J1TextThemeMapper.ensureInitialized();
      J1PageTransitionMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'J1ThemeState';

  static J1ColorScheme _$colorScheme(J1ThemeState v) => v.colorScheme;
  static const Field<J1ThemeState, J1ColorScheme> _f$colorScheme = Field('colorScheme', _$colorScheme);
  static J1TextTheme _$textTheme(J1ThemeState v) => v.textTheme;
  static const Field<J1ThemeState, J1TextTheme> _f$textTheme = Field('textTheme', _$textTheme);
  static J1PageTransition _$pageTransition(J1ThemeState v) => v.pageTransition;
  static const Field<J1ThemeState, J1PageTransition> _f$pageTransition = Field(
    'pageTransition',
    _$pageTransition,
    opt: true,
    def: J1PageTransition.cupertino,
  );

  @override
  final MappableFields<J1ThemeState> fields = const {
    #colorScheme: _f$colorScheme,
    #textTheme: _f$textTheme,
    #pageTransition: _f$pageTransition,
  };

  static J1ThemeState _instantiate(DecodingData data) {
    return J1ThemeState(
      colorScheme: data.dec(_f$colorScheme),
      textTheme: data.dec(_f$textTheme),
      pageTransition: data.dec(_f$pageTransition),
    );
  }

  @override
  final Function instantiate = _instantiate;

  static J1ThemeState fromMap(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<J1ThemeState>(map);
  }

  static J1ThemeState fromJson(String json) {
    return ensureInitialized().decodeJson<J1ThemeState>(json);
  }
}

mixin J1ThemeStateMappable {
  String toJson() {
    return J1ThemeStateMapper.ensureInitialized().encodeJson<J1ThemeState>(this as J1ThemeState);
  }

  Map<String, dynamic> toMap() {
    return J1ThemeStateMapper.ensureInitialized().encodeMap<J1ThemeState>(this as J1ThemeState);
  }

  J1ThemeStateCopyWith<J1ThemeState, J1ThemeState, J1ThemeState> get copyWith =>
      _J1ThemeStateCopyWithImpl(this as J1ThemeState, $identity, $identity);
  @override
  String toString() {
    return J1ThemeStateMapper.ensureInitialized().stringifyValue(this as J1ThemeState);
  }

  @override
  bool operator ==(Object other) {
    return J1ThemeStateMapper.ensureInitialized().equalsValue(this as J1ThemeState, other);
  }

  @override
  int get hashCode {
    return J1ThemeStateMapper.ensureInitialized().hashValue(this as J1ThemeState);
  }
}

extension J1ThemeStateValueCopy<$R, $Out> on ObjectCopyWith<$R, J1ThemeState, $Out> {
  J1ThemeStateCopyWith<$R, J1ThemeState, $Out> get $asJ1ThemeState =>
      $base.as((v, t, t2) => _J1ThemeStateCopyWithImpl(v, t, t2));
}

abstract class J1ThemeStateCopyWith<$R, $In extends J1ThemeState, $Out> implements ClassCopyWith<$R, $In, $Out> {
  J1ColorSchemeCopyWith<$R, J1ColorScheme, J1ColorScheme> get colorScheme;
  J1TextThemeCopyWith<$R, J1TextTheme, J1TextTheme> get textTheme;
  $R call({J1ColorScheme? colorScheme, J1TextTheme? textTheme, J1PageTransition? pageTransition});
  J1ThemeStateCopyWith<$R2, $In, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _J1ThemeStateCopyWithImpl<$R, $Out> extends ClassCopyWithBase<$R, J1ThemeState, $Out>
    implements J1ThemeStateCopyWith<$R, J1ThemeState, $Out> {
  _J1ThemeStateCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<J1ThemeState> $mapper = J1ThemeStateMapper.ensureInitialized();
  @override
  J1ColorSchemeCopyWith<$R, J1ColorScheme, J1ColorScheme> get colorScheme =>
      $value.colorScheme.copyWith.$chain((v) => call(colorScheme: v));
  @override
  J1TextThemeCopyWith<$R, J1TextTheme, J1TextTheme> get textTheme =>
      $value.textTheme.copyWith.$chain((v) => call(textTheme: v));
  @override
  $R call({J1ColorScheme? colorScheme, J1TextTheme? textTheme, J1PageTransition? pageTransition}) => $apply(
    FieldCopyWithData({
      if (colorScheme != null) #colorScheme: colorScheme,
      if (textTheme != null) #textTheme: textTheme,
      if (pageTransition != null) #pageTransition: pageTransition,
    }),
  );
  @override
  J1ThemeState $make(CopyWithData data) => J1ThemeState(
    colorScheme: data.get(#colorScheme, or: $value.colorScheme),
    textTheme: data.get(#textTheme, or: $value.textTheme),
    pageTransition: data.get(#pageTransition, or: $value.pageTransition),
  );

  @override
  J1ThemeStateCopyWith<$R2, J1ThemeState, $Out2> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _J1ThemeStateCopyWithImpl($value, $cast, t);
}
