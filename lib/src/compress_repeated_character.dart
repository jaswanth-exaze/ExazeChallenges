// Compress Repeated Characters
// medium
// Pending Review
// 10 pts
// Manual Review
// Python 3
// Attempts used: 1/3
// Your latest submission is awaiting review.

// Given a string, compress consecutive repeated characters using the character followed by its count.

// Notes: Input contains lowercase letters only. Consecutive groups must be compressed even when the count is 1.

// Sample Input

// aaabbcdddd
// Expected Output

// a3b2c1d4

String compressedString(String input) {
  if (input.isNotEmpty) {
    List<String> resultStack = [];
    int count = 0;

    for (int i = 0; i < input.length; i++) {
      if (resultStack.isEmpty) {
        resultStack.add(input[i]);
        count++;
      } else {
        if (resultStack.last != input[i]) {
          resultStack.add(count.toString());
          resultStack.add(input[i]);
          count = 1;
        } else {
          count++;
        }
      }
    }
    resultStack.add(count.toString());
    return resultStack.join("");
  }
  return "";
}
