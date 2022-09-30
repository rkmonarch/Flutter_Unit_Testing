import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/home.dart';

void main() {
  group('Home', () {
    test('Empty Email Test', () {
      var result = FormValidator.validateEmail('');
      expect(result, 'Please enter an email!');
    });

    test('Invalid Email Test', () {
      var result = FormValidator.validateEmail('asdfasdfasdf');
      expect(result, 'Please enter a valid email');
    });

    test('Valid Email Test', () {
      var result = FormValidator.validateEmail('email@gmail.com');
      expect(result, "");
    });

    test('Empty Password Test', () {
      var result = FormValidator.validatePassword('');
      expect(result, 'Please enter password.');
    });

    test('Invalid Password Test', () {
      var result = FormValidator.validatePassword('123');
      expect(result, 'Password must contain atleast 8 characters.');
    });

    test('Valid Password Test', () {
      var result = FormValidator.validatePassword('password123');
      expect(result, "");
    });
  });
}
