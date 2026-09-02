import '../lib/src/missing_number.dart';
import 'package:test/test.dart';

void main() {
  test("it should return EMPTY STRING if input has no missing letters ", () {
    expect(missingLetter(""), "EMPTY STRING");
  });
  test(
    "it should return NO missing letters if input has no missing letters ",
    () {
      expect(missingLetter("abcdefg"), "NO missing letters");
      expect(missingLetter("xyz"), "NO missing letters");
      expect(missingLetter("jklmnopq"), "NO missing letters");
    },
  );
  test(
    "Given a string of consecutive lowercase letters with exactly one letter missing, find and print the missing letter.",
    () {
      expect(missingLetter("abcdfg"), "e");
      expect(missingLetter("xz"), "y");
      expect(missingLetter("jklmnpq"), "o");

    },
  );
}
