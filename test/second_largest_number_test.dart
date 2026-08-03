import 'package:challenges/src/second_largest_number.dart';
import 'package:test/test.dart';

void main() {
  group('secondLargestNum', () {
    test('it should return null for Empty list', () {
      expect(secondLargestNum([]), null);
    });
    test('it should return null for Single element', () {
      expect(secondLargestNum([5]), null);
    });
    test('it should return low number from Two elements', () {
      expect(secondLargestNum([5, 10]), 5);
    });

    test('it should return null for All elements same', () {
      expect(secondLargestNum([5, 5, 5, 5]), null);
    });

    test('it should return Normal case', () {
      expect(secondLargestNum([1, 2, 3, 4, 5]), 4);
    });

    test('Negative numbers', () {
      expect(secondLargestNum([-5, -2, -8, -1]), -2);
    });

    test('Mixed positive and negative', () {
      expect(secondLargestNum([-10, 20, 5, 15]), 15);
    });

    test(
      'it should return second height if input has Duplicate largest values',
      () {
        expect(secondLargestNum([5, 5, 4, 3]), 4);
      },
    );

    test('All negative duplicates', () {
      expect(secondLargestNum([-2, -2, -2]), null);
    });

    test('Duplicate second largest', () {
      expect(secondLargestNum([10, 8, 8, 5]), 8);
    });
  });
}
