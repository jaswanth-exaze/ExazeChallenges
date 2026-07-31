import 'package:challenges/src/compress_repeated_character.dart';
import 'package:test/test.dart';

void main() {
  group('compressedString', () {
    test('returns empty string for empty input', () {
      expect(compressedString(""), "");
    });

    test('compresses repeated characters', () {
      expect(compressedString("aaabbcc"), "a3b2c2");
      expect(compressedString("aaabbcdddd"), "a3b2c1d4");
    });

    test('single character', () {
      expect(compressedString("a"), "a1");
      expect(compressedString("Z"), "Z1");
    });

    test('all unique characters', () {
      expect(compressedString("abc"), "a1b1c1");
      expect(compressedString("xyz"), "x1y1z1");
    });

    test('all same characters', () {
      expect(compressedString("aaaaa"), "a5");
      expect(compressedString("bbbbbbbb"), "b8");
    });

    test('handles whitespace', () {
      expect(compressedString("   "), " 3");
      expect(compressedString("aa  bb"), "a2 2b2");
    });
  });
}
