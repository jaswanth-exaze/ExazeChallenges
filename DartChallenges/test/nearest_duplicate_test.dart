import '../lib/src/nearest_duplicate.dart';
import 'package:test/test.dart';

void main() {
  group('nearestDuplicate', () {
    test('should return -1 for Empty list', () {
      expect(nearestDuplicate([]), -1);
    });

    test('should return -1 for Single element', () {
      expect(nearestDuplicate([10]), -1);
    });

    test('should return 1 for Two same elements', () {
      expect(nearestDuplicate([5, 5]), 1);
    });

    test('should return -1 for Two different elements', () {
      expect(nearestDuplicate([5, 6]), -1);
    });
    test('should return -1 for No duplicates', () {
      expect(nearestDuplicate([1, 2, 3, 4]), -1);
    });

    test('Multiple duplicates', () {
      expect(nearestDuplicate([1, 2, 3, 2, 1]), 2);
    });

    test('should return 1 for All elements same', () {
      expect(nearestDuplicate([7, 7, 7, 7]), 1);
    });

    test(
      "it should return smallest distance between any two equal numbers",
      () {
        expect(nearestDuplicate([1, 3, 5, 3, 1, 7]), 2);
      },
    );
  });
}
