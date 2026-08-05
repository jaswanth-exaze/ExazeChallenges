import 'package:challenges/src/longest_consecutive_sequence.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

void main() {
  test("it should return 0 for empty list input", () {
    expect(longestSequence([]), 0);
  });
  test("it should return 1 for single list input", () {
    expect(longestSequence([1]), 1);
    expect(longestSequence([5]), 1);
    expect(longestSequence([10]), 1);
    expect(longestSequence([10000]), 1);
  });

  test("it should return 1 of list for all same values in input list", () {
    expect(longestSequence([1, 1, 1, 1, 1]), 1);
    expect(longestSequence([5, 5, 5, 5, 5, 5, 5]), 1);
  });
  test(
    "it sould return  length of the longest sequence of consecutive numbers.",
    () {
      expect(longestSequence([100, 4, 200, 1, 3, 2]), 4);
      expect(longestSequence([1, 2, 2, 3]), 3);
    },
  );
  test("it should return length for all consecutive values in input list", () {
    expect(longestSequence([1, 2, 3, 4, 5]), 5);
    expect(longestSequence([0, 1, 2, 3, 4, 5, 6, 7, 8, 9]), 10);
  });
  test("it should return 1 for all disconsecutive values in input list", () {
    expect(longestSequence([1, 3, 7, 9, 5]), 1);
    expect(longestSequence([10, 20, 30, 40]), 1);
  });
  test("it should handle  negatative numbes", () {
    expect(longestSequence([-4, -3, -2, -1]), 4);
    expect(longestSequence([-2, -1, 0, 1, 2]), 5);
  });
}
