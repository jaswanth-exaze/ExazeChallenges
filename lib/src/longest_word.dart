// Longest Word
// medium
// Completed
// 10 pts
// Manual Review
// Python 3
// Attempts used: 0/3
// You already cleared this challenge.

// Given a sentence, find the longest word. If more than one word has the same maximum length, print the first one.

// Notes: Words are separated by spaces. If multiple words have the same length, return the first one.

// Sample Input
// Exaze engineers love solving challenges

// Expected Output
// challenges

String longestWord(String input) {
  input = input.trim();
  if (input.isNotEmpty) {
    List<String> wordsList = input.split(" ").where((e) => e != "").toList();
    String longword = wordsList.reduce((a, b) => b.length > a.length ? b : a);
    return longword;
  }
  return "";
}
