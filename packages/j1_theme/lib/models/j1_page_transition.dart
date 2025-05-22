import "package:dart_mappable/dart_mappable.dart";

part "j1_page_transition.mapper.dart";

@MappableEnum()
enum J1PageTransition {
  cupertino,
  zoom;

  static const fromValue = J1PageTransitionMapper.fromValue;
}
