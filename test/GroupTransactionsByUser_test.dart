import 'package:challenges/src/GroupTransactionsByUser.dart';
import 'package:test/test.dart';

void main() {
  group('groupTransactions', () {
    test('returns empty map for empty input', () {
      expect(groupTransactions([]), {});
    });

    test('works with a single transaction', () {
      expect(groupTransactions(["Amit: 100"]), {"Amit": 100});
    });

    test('works when all transactions belong to one person', () {
      expect(groupTransactions(["Amit: 100", "Amit: 200", "Amit: 300"]), {
        "Amit": 600,
      });
    });

    test('groups duplicate names', () {
      expect(
        groupTransactions([
          "Amit: 100",
          "Priya: 250",
          "Amit: 50",
          "Sara: 300",
          "Priya: 100",
        ]),
        {"Amit": 150, "Priya": 350, "Sara": 300},
      );
    });

    test('works with zero amounts', () {
      expect(groupTransactions(["Amit: 0", "Priya: 0", "Amit: 0"]), {
        "Amit": 0,
        "Priya": 0,
      });
    });

    test('works with negative amounts', () {
      expect(groupTransactions(["Amit: 100", "Amit: -20", "Priya: -50"]), {
        "Amit": 80,
        "Priya": -50,
      });
    });

    test('handles large values', () {
      expect(groupTransactions(["Amit: 1000000", "Amit: 2000000"]), {
        "Amit": 3000000,
      });
    });
  });
}
