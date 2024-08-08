import 'package:flutter_test/flutter_test.dart';


import '../main.dart';

void main() {
  test('RandomStringGenerator.generate should return a string of the specified length', () {
    final randomString = RandomStringGenerator.generate(length: 10);
    expect(randomString.length, 10);
  });

  test('RandomStringGenerator.generate should throw an error for length 0', () {
    expect(() => RandomStringGenerator.generate(length: 0), throwsA(isA<ArgumentError>()));
  });

  test('RandomStringGenerator.generate should throw an error for negative length', () {
    expect(() => RandomStringGenerator.generate(length: -5), throwsA(isA<ArgumentError>()));
  });
}
