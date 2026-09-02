// Count Words
// easy
// Completed
// 5 pts
// Manual Review
// Python 3
// Attempts used: 0/3
// You already cleared this challenge.

// Given a sentence, count how many words it contains. Words are separated by one or more spaces. Print only the total word count.

// Notes: Input will be a single sentence. Multiple spaces may appear between words. Output must be a single integer.

// Sample Input

// Exaze Challenges is live
// Expected Output
// 4

int wordCount(String input) {
  input = input.trim();
  if (input.isEmpty) return 0;
  return input.split(" ").where((e) => e != "").toList().length;
}
