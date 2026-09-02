import '../lib/src/CharacterFrequencySort.dart';

import 'package:test/test.dart';

void main() {
  test("it should return empty string for empty input", () {
    expect(characterFrequencySort(""), "");
  });
  test("it should return same string for all uniqe characters in input", () {
    expect(characterFrequencySort("tre"), "tre");
  });
  test(
    "Sort characters in a string based on frequency (highest first). If frequencies are equal, keep original order.Return a string where characters are grouped by frequency.",
    () {
      expect(characterFrequencySort("tree"), "eetr");
      expect(characterFrequencySort("jaswanth"), "aajswnth");
      expect(characterFrequencySort("exaze"), "eexaz");
      expect(characterFrequencySort("xeaxze"), "xxeeaz");
      expect(characterFrequencySort("xeaxze"), "xxeeaz");
      expect(characterFrequencySort("xeaexze"), "eeexxaz");
    },
  );
}
