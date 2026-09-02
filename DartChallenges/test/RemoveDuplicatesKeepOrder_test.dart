import '../lib/src/RemoveDuplicatesKeepOrder.dart';
import 'package:test/test.dart';

void main() {
  test("it should return empty string for empty input", () {
    expect(removeDuplicatesKeepOrder(""), "");
  });
  test(
    "is should return same single charcter if input contains only one character",
    () {
      expect(removeDuplicatesKeepOrder("a"), "a");
    },
  );
  test(
    "is should return same input if input contains all uniqe characters",
    () {
      expect(removeDuplicatesKeepOrder("abcd"), "abcd");
    },
  );
  test(
    "is should return single character  if input contains all same characters",
    () {
      expect(removeDuplicatesKeepOrder("wwwww"), "w");
    },
  );
  test(
    "remove all duplicate characters but keep the first occurrence order intact.Return a string with only the first occurrence of each character.",
    () {
      expect(removeDuplicatesKeepOrder("exazeex"), "exaz");
    },
  );
}
