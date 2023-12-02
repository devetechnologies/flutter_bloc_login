import 'package:flutter_test/flutter_test.dart';

import 'package:authentication_login/authentication_login.dart';

void main() {
  test('adds one to input values', () {
    final calculator =
        SignUpWithEmailAndPasswordFailure.fromCode('user-disabled');
    expect(calculator.toString(), 'Hello');
    // expect(calculator.addOne(-7), -6);
    //expect(calculator.addOne(0), 1);
  });
}
