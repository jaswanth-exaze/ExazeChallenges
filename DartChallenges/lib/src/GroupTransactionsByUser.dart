// Group Transactions By User
// medium
// Pending Review
// 10 pts
// Manual Review
// Python 3
// Attempts used: 1/3
// Your latest submission is awaiting review.

// Given transaction records, calculate total transaction amount per user.

// Notes: Each line is in User:Amount format. Preserve the order in which users first appear.

// Sample Input

// Amit:100
// Priya:250
// Amit:50
// Sara:300
// Priya:100

// Expected Output
// Amit:150
// Priya:350
// Sara:300

void main() {
  Map<String, int> result = groupTransactions([
    "Amit: 100",
    "Priya: 250",
    "Amit: 50",
    "Sara: 300",
    "Priya: 100",
  ]);
  result.forEach((K, V) {
    print("$K:$V");
  });
}

Map<String, int> groupTransactions(List<String> input) {
  Map<String, int> result = {};

  for (var records in input) {
    List<String> record = records.split(":");
    if (result.containsKey(record[0])) {
      result[record[0]] = result[record[0]]! + int.parse(record[1]);
    } else {
      result[record[0]] = int.parse(record[1]);
    }
  }
  return result;
}
