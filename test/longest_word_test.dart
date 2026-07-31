import 'package:challenges/src/longest_word.dart';
import 'package:test/test.dart';

void main() {
  test("it should return empty string for empty input", () {
    expect(longestWord(""), "");
  });
  test(
    "it should return empty string for single and multipule spaces input",
    () {
      expect(longestWord(" "), "");
      expect(longestWord("          "), "");
    },
  );
  test("it should return longest word from input", () {
    expect(longestWord("Jaswanth kumar uppu"), "Jaswanth");
    expect(longestWord("one two three"), "three");
    expect(longestWord("seven two one three"), "seven");
  });
  test("it should return longest word from input even it cointains whitespaces", () {
    expect(longestWord("Jaswanth          kumar uppu"), "Jaswanth");
    expect(longestWord("     one two three"), "three");
    expect(longestWord("        seven two          one three         "), "seven");
  });
}
