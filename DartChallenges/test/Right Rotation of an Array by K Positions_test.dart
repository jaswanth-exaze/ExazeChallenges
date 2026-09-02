import '../lib/src/Right Rotation of an Array by K Positions.dart';
import 'package:test/test.dart';

void main() {
  test("it should return [] empty list for empty input list", () {
    expect(arrayRotation([], 1), []);
  });
  test("it should return same list for k vale is 0", () {
    expect(arrayRotation([1, 2, 3, 4, 5], 0), [1, 2, 3, 4, 5]);
    expect(arrayRotation([1, 2, 3, 4, 5, 6], 0), [1, 2, 3, 4, 5, 6]);
  });
  test("it should return same list for k vale is length of input list", () {
    expect(arrayRotation([1, 2, 3, 4, 5], 5), [1, 2, 3, 4, 5]);
    expect(arrayRotation([1, 2, 3, 4, 5, 6], 6), [1, 2, 3, 4, 5, 6]);
  });
  test(
    "it should return same list for value of k is multipule of length of list",
    () {
      expect(arrayRotation([1, 2, 3, 4, 5], 10), [1, 2, 3, 4, 5]);
      expect(arrayRotation([1, 2, 3, 4, 5], 15), [1, 2, 3, 4, 5]);
      expect(arrayRotation([1, 2, 3, 4, 5], 50), [1, 2, 3, 4, 5]);
      expect(arrayRotation([1, 2, 3, 4, 5], 500), [1, 2, 3, 4, 5]);
      expect(arrayRotation([1, 2, 3, 4, 5, 6, 7], 14), [1, 2, 3, 4, 5, 6, 7]);
    },
  );
  test(" rotate it to the right by k steps. right rotation by 1 step means every element moves one position to the right, and the last element wraps around to the front.", () {
    expect(arrayRotation([1, 2, 3, 4, 5], 1), [5, 1, 2, 3, 4]);
    expect(arrayRotation([1, 2, 3, 4, 5], 2), [4, 5, 1, 2, 3]);
    expect(arrayRotation([1, 2, 3, 4, 5], 3), [3, 4, 5, 1, 2]);
    expect(arrayRotation([1, 2, 3, 4, 5], 4), [2, 3, 4, 5, 1]);
    expect(arrayRotation([1, 2, 3, 4, 5], 5), [1, 2, 3, 4, 5]);
  });
}
