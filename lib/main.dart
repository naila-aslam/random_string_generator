library random_string_generator;

import 'dart:math';

/// A utility class for generating random strings.
class RandomStringGenerator {
  static final Random _random = Random();

  /// Generates a random string of the specified length.
  ///
  /// [length] must be greater than 0.
  /// The string will consist of uppercase, lowercase letters, and digits.
  static String generate({required int length}) {
    if (length <= 0) {
      throw ArgumentError('Length must be greater than 0');
    }

    const characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789';
    return List.generate(length, (index) => characters[_random.nextInt(characters.length)]).join();
  }
}
