// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, unnecessary_cast, override_on_non_overriding_member
// ignore_for_file: strict_raw_type, inference_failure_on_untyped_parameter

part of 'j1_result.dart';

class J1ResultMapper extends ClassMapperBase<J1Result> {
  J1ResultMapper._();

  static J1ResultMapper? _instance;
  static J1ResultMapper ensureInitialized() {
    if (_instance == null) {
      MapperBase.addType<Object>();
      MapperBase.addType<Exception>();
      MapperContainer.globals.use(_instance = J1ResultMapper._());
      SuccessMapper.ensureInitialized();
      FailureMapper.ensureInitialized();
    }
    return _instance!;
  }

  @override
  final String id = 'J1Result';
  @override
  Function get typeFactory =>
      <T extends Object, E extends Exception>(f) => f<J1Result<T, E>>();

  @override
  final MappableFields<J1Result> fields = const {};

  static J1Result<T, E> _instantiate<T extends Object, E extends Exception>(DecodingData data) {
    throw MapperException.missingSubclass('J1Result', 'type', '${data.value['type']}');
  }

  @override
  final Function instantiate = _instantiate;

  static J1Result<T, E> fromMap<T extends Object, E extends Exception>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<J1Result<T, E>>(map);
  }

  static J1Result<T, E> fromJson<T extends Object, E extends Exception>(String json) {
    return ensureInitialized().decodeJson<J1Result<T, E>>(json);
  }
}

mixin J1ResultMappable<T extends Object, E extends Exception> {
  String toJson();
  Map<String, dynamic> toMap();
  J1ResultCopyWith<J1Result<T, E>, J1Result<T, E>, J1Result<T, E>, T, E> get copyWith;
}

abstract class J1ResultCopyWith<$R, $In extends J1Result<T, E>, $Out, T extends Object, E extends Exception>
    implements ClassCopyWith<$R, $In, $Out> {
  $R call();
  J1ResultCopyWith<$R2, $In, $Out2, T, E> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class SuccessMapper extends SubClassMapperBase<Success> {
  SuccessMapper._();

  static SuccessMapper? _instance;
  static SuccessMapper ensureInitialized() {
    if (_instance == null) {
      MapperBase.addType<Object>();
      MapperBase.addType<Exception>();
      MapperContainer.globals.use(_instance = SuccessMapper._());
      J1ResultMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Success';
  @override
  Function get typeFactory =>
      <T extends Object, E extends Exception>(f) => f<Success<T, E>>();

  static Object _$value(Success v) => v.value;
  static dynamic _arg$value<T extends Object, E extends Exception>(f) => f<T>();
  static const Field<Success, Object> _f$value = Field('value', _$value, arg: _arg$value);

  @override
  final MappableFields<Success> fields = const {
    #value: _f$value,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = "success";
  @override
  late final ClassMapperBase superMapper = J1ResultMapper.ensureInitialized();

  static Success<T, E> _instantiate<T extends Object, E extends Exception>(DecodingData data) {
    return Success(data.dec(_f$value));
  }

  @override
  final Function instantiate = _instantiate;

  static Success<T, E> fromMap<T extends Object, E extends Exception>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Success<T, E>>(map);
  }

  static Success<T, E> fromJson<T extends Object, E extends Exception>(String json) {
    return ensureInitialized().decodeJson<Success<T, E>>(json);
  }
}

mixin SuccessMappable<T extends Object, E extends Exception> {
  String toJson() {
    return SuccessMapper.ensureInitialized().encodeJson<Success<T, E>>(this as Success<T, E>);
  }

  Map<String, dynamic> toMap() {
    return SuccessMapper.ensureInitialized().encodeMap<Success<T, E>>(this as Success<T, E>);
  }

  SuccessCopyWith<Success<T, E>, Success<T, E>, Success<T, E>, T, E> get copyWith =>
      _SuccessCopyWithImpl<Success<T, E>, Success<T, E>, T, E>(this as Success<T, E>, $identity, $identity);
  @override
  String toString() {
    return SuccessMapper.ensureInitialized().stringifyValue(this as Success<T, E>);
  }

  @override
  bool operator ==(Object other) {
    return SuccessMapper.ensureInitialized().equalsValue(this as Success<T, E>, other);
  }

  @override
  int get hashCode {
    return SuccessMapper.ensureInitialized().hashValue(this as Success<T, E>);
  }
}

extension SuccessValueCopy<$R, $Out, T extends Object, E extends Exception> on ObjectCopyWith<$R, Success<T, E>, $Out> {
  SuccessCopyWith<$R, Success<T, E>, $Out, T, E> get $asSuccess =>
      $base.as((v, t, t2) => _SuccessCopyWithImpl<$R, $Out, T, E>(v, t, t2));
}

abstract class SuccessCopyWith<$R, $In extends Success<T, E>, $Out, T extends Object, E extends Exception>
    implements J1ResultCopyWith<$R, $In, $Out, T, E> {
  @override
  $R call({T? value});
  SuccessCopyWith<$R2, $In, $Out2, T, E> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _SuccessCopyWithImpl<$R, $Out, T extends Object, E extends Exception>
    extends ClassCopyWithBase<$R, Success<T, E>, $Out>
    implements SuccessCopyWith<$R, Success<T, E>, $Out, T, E> {
  _SuccessCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Success> $mapper = SuccessMapper.ensureInitialized();
  @override
  $R call({T? value}) => $apply(FieldCopyWithData({if (value != null) #value: value}));
  @override
  Success<T, E> $make(CopyWithData data) => Success(data.get(#value, or: $value.value));

  @override
  SuccessCopyWith<$R2, Success<T, E>, $Out2, T, E> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _SuccessCopyWithImpl<$R2, $Out2, T, E>($value, $cast, t);
}

class FailureMapper extends SubClassMapperBase<Failure> {
  FailureMapper._();

  static FailureMapper? _instance;
  static FailureMapper ensureInitialized() {
    if (_instance == null) {
      MapperBase.addType<Object>();
      MapperBase.addType<Exception>();
      MapperContainer.globals.use(_instance = FailureMapper._());
      J1ResultMapper.ensureInitialized().addSubMapper(_instance!);
    }
    return _instance!;
  }

  @override
  final String id = 'Failure';
  @override
  Function get typeFactory =>
      <T extends Object, E extends Exception>(f) => f<Failure<T, E>>();

  static Exception _$error(Failure v) => v.error;
  static dynamic _arg$error<T extends Object, E extends Exception>(f) => f<E>();
  static const Field<Failure, Exception> _f$error = Field('error', _$error, arg: _arg$error);

  @override
  final MappableFields<Failure> fields = const {
    #error: _f$error,
  };

  @override
  final String discriminatorKey = 'type';
  @override
  final dynamic discriminatorValue = "failure";
  @override
  late final ClassMapperBase superMapper = J1ResultMapper.ensureInitialized();

  static Failure<T, E> _instantiate<T extends Object, E extends Exception>(DecodingData data) {
    return Failure(data.dec(_f$error));
  }

  @override
  final Function instantiate = _instantiate;

  static Failure<T, E> fromMap<T extends Object, E extends Exception>(Map<String, dynamic> map) {
    return ensureInitialized().decodeMap<Failure<T, E>>(map);
  }

  static Failure<T, E> fromJson<T extends Object, E extends Exception>(String json) {
    return ensureInitialized().decodeJson<Failure<T, E>>(json);
  }
}

mixin FailureMappable<T extends Object, E extends Exception> {
  String toJson() {
    return FailureMapper.ensureInitialized().encodeJson<Failure<T, E>>(this as Failure<T, E>);
  }

  Map<String, dynamic> toMap() {
    return FailureMapper.ensureInitialized().encodeMap<Failure<T, E>>(this as Failure<T, E>);
  }

  FailureCopyWith<Failure<T, E>, Failure<T, E>, Failure<T, E>, T, E> get copyWith =>
      _FailureCopyWithImpl<Failure<T, E>, Failure<T, E>, T, E>(this as Failure<T, E>, $identity, $identity);
  @override
  String toString() {
    return FailureMapper.ensureInitialized().stringifyValue(this as Failure<T, E>);
  }

  @override
  bool operator ==(Object other) {
    return FailureMapper.ensureInitialized().equalsValue(this as Failure<T, E>, other);
  }

  @override
  int get hashCode {
    return FailureMapper.ensureInitialized().hashValue(this as Failure<T, E>);
  }
}

extension FailureValueCopy<$R, $Out, T extends Object, E extends Exception> on ObjectCopyWith<$R, Failure<T, E>, $Out> {
  FailureCopyWith<$R, Failure<T, E>, $Out, T, E> get $asFailure =>
      $base.as((v, t, t2) => _FailureCopyWithImpl<$R, $Out, T, E>(v, t, t2));
}

abstract class FailureCopyWith<$R, $In extends Failure<T, E>, $Out, T extends Object, E extends Exception>
    implements J1ResultCopyWith<$R, $In, $Out, T, E> {
  @override
  $R call({E? error});
  FailureCopyWith<$R2, $In, $Out2, T, E> $chain<$R2, $Out2>(Then<$Out2, $R2> t);
}

class _FailureCopyWithImpl<$R, $Out, T extends Object, E extends Exception>
    extends ClassCopyWithBase<$R, Failure<T, E>, $Out>
    implements FailureCopyWith<$R, Failure<T, E>, $Out, T, E> {
  _FailureCopyWithImpl(super.value, super.then, super.then2);

  @override
  late final ClassMapperBase<Failure> $mapper = FailureMapper.ensureInitialized();
  @override
  $R call({E? error}) => $apply(FieldCopyWithData({if (error != null) #error: error}));
  @override
  Failure<T, E> $make(CopyWithData data) => Failure(data.get(#error, or: $value.error));

  @override
  FailureCopyWith<$R2, Failure<T, E>, $Out2, T, E> $chain<$R2, $Out2>(Then<$Out2, $R2> t) =>
      _FailureCopyWithImpl<$R2, $Out2, T, E>($value, $cast, t);
}
