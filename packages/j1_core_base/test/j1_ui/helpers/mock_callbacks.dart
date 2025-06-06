import "package:mocktail/mocktail.dart";

abstract class _MockVoidCallback {
  void call();
}

class MockVoidCallback extends Mock implements _MockVoidCallback {}

abstract class _MockCallback<T> {
  void call(T value);
}

class MockCallback<T> extends Mock implements _MockCallback<T> {}
