library;

export "j1_result.dart";

import "package:dart_mappable/dart_mappable.dart";
import "package:flutter/foundation.dart";

part "j1_result.mapper.dart";

typedef Result<T extends Object> = J1Result<T, Exception>;

@MappableClass(discriminatorKey: "type")
sealed class J1Result<T extends Object, E extends Exception> with J1ResultMappable {
  const J1Result();

  J1Result<S, D> map<S extends Object, D extends Exception>({
    required S Function(T) mapSuccess,
    required D Function(E) mapError,
  }) {
    switch (this) {
      case Success(:final value):
        return Success(mapSuccess(value));
      case Failure(:final error):
        return Failure(mapError(error));
    }
  }

  J1Result<S, E> mapSuccess<S extends Object>(S Function(T) mapSuccess) {
    switch (this) {
      case Success(:final value):
        return Success(mapSuccess(value));
      case Failure(:final error):
        return Failure(error);
    }
  }

  J1Result<T, D> mapError<D extends Exception>(D Function(E) mapError) {
    switch (this) {
      case Success(:final value):
        return Success(value);
      case Failure(:final error):
        return Failure(mapError(error));
    }
  }
}

@MappableClass(discriminatorValue: "success")
class Success<T extends Object, E extends Exception> extends J1Result<T, E> with SuccessMappable {
  final T value;

  const Success(this.value);
}

@MappableClass(discriminatorValue: "failure")
class Failure<T extends Object, E extends Exception> extends J1Result<T, E> with FailureMappable {
  final E error;

  const Failure(this.error);
}

@immutable
final class None {
  const None();

  @override
  String toString() => "None";

  @override
  bool operator ==(Object other) {
    return other is None;
  }

  @override
  int get hashCode => 0;
}
