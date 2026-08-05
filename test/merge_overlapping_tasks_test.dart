import 'package:challenges/src/merge_overlapping_tasks.dart';
import 'package:test/scaffolding.dart';
import 'package:test/test.dart';

// void main() {
//   test("it should return empty list for empty input", () {
//     expect(mergeOverlappingTasks([]), []);
//   });
  
//   test("it should return same list for single input", () {
//     expect(mergeOverlappingTasks([[1,3]]), [[1,3]]);
//   });
//   test("it should return same list for single inputs", () {
//     expect(mergeOverlappingTasks([[1,3],[2,4],[6,8],[8,10]]),[[1,4],[6,10]]);
//   });
//   test("it should return same list for single inputs ", () {
//     expect(mergeOverlappingTasks([[6,8],[8,20],[1,3],[2,4],[12,15]]),[[1,4],[6,20]]);
//   });

// }
// import 'package:test/test.dart';

// Import your function here
// import 'package:your_project/merge_overlapping_tasks.dart';
// below are the test case i taken from online to test my logic.
void main() {
  group('mergeOverlappingTasks()', () {
    test('Empty list', () {
      expect(
        mergeOverlappingTasks([]),
        equals([]),
      );
    });

    test('Single interval', () {
      expect(
        mergeOverlappingTasks([
          [1, 5]
        ]),
        equals([
          [1, 5]
        ]),
      );
    });

    test('No overlapping intervals', () {
      expect(
        mergeOverlappingTasks([
          [1, 2],
          [4, 5],
          [7, 8]
        ]),
        equals([
          [1, 2],
          [4, 5],
          [7, 8]
        ]),
      );
    });

    test('Simple overlap', () {
      expect(
        mergeOverlappingTasks([
          [1, 3],
          [2, 6]
        ]),
        equals([
          [1, 6]
        ]),
      );
    });

    test('Multiple consecutive overlaps', () {
      expect(
        mergeOverlappingTasks([
          [1, 3],
          [2, 5],
          [4, 8]
        ]),
        equals([
          [1, 8]
        ]),
      );
    });

    test('Interval completely inside another', () {
      expect(
        mergeOverlappingTasks([
          [1, 10],
          [2, 3],
          [4, 8]
        ]),
        equals([
          [1, 10]
        ]),
      );
    });

    test('Same start time', () {
      expect(
        mergeOverlappingTasks([
          [1, 4],
          [1, 7]
        ]),
        equals([
          [1, 7]
        ]),
      );
    });

    test('Same end time', () {
      expect(
        mergeOverlappingTasks([
          [2, 6],
          [4, 6]
        ]),
        equals([
          [2, 6]
        ]),
      );
    });

    test('Touching intervals', () {
      expect(
        mergeOverlappingTasks([
          [1, 3],
          [3, 5]
        ]),
        equals([
          [1, 5]
        ]),
      );
    });

    test('Unsorted input', () {
      expect(
        mergeOverlappingTasks([
          [8, 10],
          [1, 3],
          [2, 6],
          [15, 18]
        ]),
        equals([
          [1, 6],
          [8, 10],
          [15, 18]
        ]),
      );
    });

    test('Completely unsorted', () {
      expect(
        mergeOverlappingTasks([
          [15, 20],
          [5, 10],
          [1, 4],
          [8, 12]
        ]),
        equals([
          [1, 4],
          [5, 12],
          [15, 20]
        ]),
      );
    });

    test('Negative intervals', () {
      expect(
        mergeOverlappingTasks([
          [-10, -5],
          [-7, -2],
          [1, 3]
        ]),
        equals([
          [-10, -2],
          [1, 3]
        ]),
      );
    });

    test('Negative and positive intervals', () {
      expect(
        mergeOverlappingTasks([
          [-5, 2],
          [1, 7]
        ]),
        equals([
          [-5, 7]
        ]),
      );
    });

    test('Duplicate intervals', () {
      expect(
        mergeOverlappingTasks([
          [1, 5],
          [1, 5],
          [1, 5]
        ]),
        equals([
          [1, 5]
        ]),
      );
    });

    test('Chain overlap', () {
      expect(
        mergeOverlappingTasks([
          [1, 2],
          [2, 3],
          [3, 4],
          [4, 5]
        ]),
        equals([
          [1, 5]
        ]),
      );
    });

    test('Large interval covers everything', () {
      expect(
        mergeOverlappingTasks([
          [1, 100],
          [5, 10],
          [15, 25],
          [30, 40]
        ]),
        equals([
          [1, 100]
        ]),
      );
    });

    test('Alternating merge and non-merge', () {
      expect(
        mergeOverlappingTasks([
          [1, 3],
          [2, 6],
          [8, 10],
          [15, 18],
          [17, 20]
        ]),
        equals([
          [1, 6],
          [8, 10],
          [15, 20]
        ]),
      );
    });

    test('All intervals overlap', () {
      expect(
        mergeOverlappingTasks([
          [1, 4],
          [2, 5],
          [3, 6],
          [4, 8]
        ]),
        equals([
          [1, 8]
        ]),
      );
    });

    test('Intervals already merged', () {
      expect(
        mergeOverlappingTasks([
          [1, 10]
        ]),
        equals([
          [1, 10]
        ]),
      );
    });

    test('Zero-length intervals', () {
      expect(
        mergeOverlappingTasks([
          [2, 2],
          [2, 3],
          [5, 5]
        ]),
        equals([
          [2, 3],
          [5, 5]
        ]),
      );
    });
  });
}