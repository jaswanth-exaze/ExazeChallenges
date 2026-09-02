import '../lib/src/SlidingWindowAlert.dart';
import 'package:test/test.dart';

void main() {
  test("it should return flase for empty and 0 inputs", () {
    expect(slidingWindowAlert([], 0, 0), false);
  });

  test("it should false for k greated than length of times list", () {
    expect(slidingWindowAlert([], 1, 0), false);
  });
  test("it should return true  if all condition is true and all single list contains single value ", () {
    expect(slidingWindowAlert([100], 1, 90), isTrue);
  });
  test("it should return false  threshold < avg of list  .", () {
    expect(slidingWindowAlert([100], 1, 101), isFalse);
  });
  test("it should return true if give k length window is greater than threshold value", () {
    expect(slidingWindowAlert([100, 200 ,900, 1000, 300], 3, 600), true);
  });
  
}
