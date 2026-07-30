import 'package:challenges/src/rolling_Median_Challenge.dart';
import 'package:test/test.dart';

void main() {
  test('should return empty list for empty input list', () {
    // List<int> input = [];
    // final result = rollingMedium(input);
    expect(rollingMedium([]), "");
  });
  test('should return single value if list contains only one value', () {
    List<int> input = [5];
    final result = rollingMedium(input);
    expect(result, "5");
  });
  test('should return  of two values with always fisrt value same and othe value is average of two values ,if list contains only two values', () {
    List<int> input = [5,7];
    final result = rollingMedium(input);
    expect(result, "5 6");
  });
  test('should return Correct rooling medium even if more than 2 values', () {
    List<int> input = [5,15,1,3];
    final result = rollingMedium(input);
    expect(result, "5 10 5 4");
  });
}
