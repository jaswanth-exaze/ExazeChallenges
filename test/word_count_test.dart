import 'package:challenges/src/word_count.dart';
import 'package:test/test.dart';

void main() {
  test("it should return 0 for empty input", () {
    expect(wordCount(""), 0);
  });
  test("it should return 0 for space "
      " input", () {
    expect(wordCount(""), 0);
  });
  test("it should return 1 if input is one word", () {
    expect(wordCount("jaswanth"), 1);
  });
  test("it should return 1 if input is one word and with whitespaces", () {
    expect(wordCount("    jaswanth   "), 1);
  });
  test("it should return 2 if input is 2 word and with space seperated", () {
    expect(wordCount("    jaswanth kumar  "), 2);
    expect(wordCount("jaswanth kumar"), 2);
  });
  test("it should return 2 if input is 2 word and with more than one space between the words", () {
    expect(wordCount("    jaswanth   kumar  "), 2);
    expect(wordCount("jaswanth           kumar"), 2);
  });
}
