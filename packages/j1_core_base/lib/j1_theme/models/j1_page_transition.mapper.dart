// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'j1_page_transition.dart';

class J1PageTransitionMapper extends EnumMapper<J1PageTransition> {
  J1PageTransitionMapper._();

  static J1PageTransitionMapper? _instance;
  static J1PageTransitionMapper ensureInitialized() {
    if (_instance == null) {
      MapperContainer.globals.use(_instance = J1PageTransitionMapper._());
    }
    return _instance!;
  }

  static J1PageTransition fromValue(dynamic value) {
    ensureInitialized();
    return MapperContainer.globals.fromValue(value);
  }

  @override
  J1PageTransition decode(dynamic value) {
    switch (value) {
      case r'cupertino':
        return J1PageTransition.cupertino;
      case r'zoom':
        return J1PageTransition.zoom;
      default:
        throw MapperException.unknownEnumValue(value);
    }
  }

  @override
  dynamic encode(J1PageTransition self) {
    switch (self) {
      case J1PageTransition.cupertino:
        return r'cupertino';
      case J1PageTransition.zoom:
        return r'zoom';
    }
  }
}

extension J1PageTransitionMapperExtension on J1PageTransition {
  String toValue() {
    J1PageTransitionMapper.ensureInitialized();
    return MapperContainer.globals.toValue<J1PageTransition>(this) as String;
  }
}
