// Missing Letter
// medium
// Completed
// 10 pts
// Manual Review
// Python 3
// Attempts used: 0/3
// You already cleared this challenge.

// Given a string of consecutive lowercase letters with exactly one letter missing, find and print the missing letter.

// Notes: Input will contain lowercase English letters in ascending order. Exactly one letter will be missing.

// Sample Input
// abcdfg

// Expected Output
// e

String missingLetter(String input) {
  if (input.isEmpty) return "EMPTY STRING";
  for (int i = 0; i < input.length - 1; i++) {
    int presentCharAscii = input[i].codeUnits.single;
    int nextCharAscii = input[i + 1].codeUnits.single;

    if (nextCharAscii != presentCharAscii + 1) {
      return String.fromCharCode(presentCharAscii + 1);
    }
  }
  return "NO missing letters";
}
