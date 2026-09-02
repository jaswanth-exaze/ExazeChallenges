// Minimum Steps to Make Anagram
// hard
// Completed
// 15 pts
// Manual Review
// Python 3
// Attempts used: 0/3
// You already cleared this challenge.

// Given two strings of equal length, find the minimum number of character replacements needed to make them anagrams.Only replacements allowed, not insert/delete.

// Notes: Same length strings Lowercase only

// Sample Input
// abcde
// edcba

// Expected Output
// 0

int minimumStepstoMakeAnagram(String input1, String input2) {
  if (input1.length != input2.length) {
    return -1;
  } else {
    List<int> atozlist = List.filled(26, 0);
    for (int i = 0; i < input1.length; i++) {
      int alphabetindex = input1[i].codeUnits.single - 96; // for input1 eg for a 97-96=1
      atozlist[alphabetindex - 1] += 1;
      alphabetindex = input2[i].codeUnits.single - 96; // for input2
      atozlist[alphabetindex - 1] -= 1;
    }
   
    return atozlist.where((e) => e > 0).length;
  }
}
