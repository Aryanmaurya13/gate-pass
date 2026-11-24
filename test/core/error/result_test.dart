import 'package:flutter_test/flutter_test.dart';
import 'package:gatepass/core/error/failure.dart';
import 'package:gatepass/core/error/result.dart';

String describe(Result<int> result) {
  return switch (result) {
    Success(:final value) => 'value: $value',
    Err(:final failure) => 'error: ${failure.message}',
  };
}

void main() {
  test('Success goes to the success branch', () {
    expect(describe(const Success(42)), 'value: 42');
  });

  test('Err goes to the error branch with its message', () {
    expect(
      describe(const Err(ValidationFailure('bad input'))),
      'error: bad input',
    );
  });
}
