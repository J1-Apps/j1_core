import "package:flutter_test/flutter_test.dart";
import "package:j1_core_base/j1_result/j1_result.dart";

void main() {
  group("J1Result", () {
    test("map", () {
      final result = Success(1);
      final mapped = result.map(
        mapSuccess: (value) => value * 2,
        mapError: (error) => Exception("exception"),
      );
      expect(mapped, Success(2));

      final failure = Failure<int, Exception>(Exception("error"));
      final mappedFailure = failure.map(
        mapSuccess: (value) => value * 2,
        mapError: (error) => Exception("exception"),
      );

      final unwrapped = mappedFailure as Failure;
      expect(unwrapped.error, isA<Exception>());
      expect(unwrapped.error.toString(), "Exception: exception");
    });

    test("map success", () {
      final result = Success(1);
      final mapped = result.mapSuccess((value) => value * 2);
      expect(mapped, Success(2));

      final failure = Failure<int, Exception>(Exception("error"));
      final mappedFailure = failure.mapSuccess((value) => value * 2);
      final unwrapped = mappedFailure as Failure;
      expect(unwrapped.error, isA<Exception>());
      expect(unwrapped.error.toString(), "Exception: error");
    });

    test("map error", () {
      final result = Failure(Exception("error"));
      final mapped = result.mapError((error) => Exception("exception"));

      final failure = mapped as Failure;
      expect(failure.error, isA<Exception>());
      expect(failure.error.toString(), "Exception: exception");

      final success = Success(1);
      final mappedSuccess = success.mapError((error) => Exception("exception"));
      expect(mappedSuccess, Success(1));
    });

    test("none", () {
      final none = None();
      expect(none, isA<None>());
      expect(none.toString(), "None");
      expect(none == None(), isTrue);
      expect(none.hashCode, 0);
    });
  });
}
