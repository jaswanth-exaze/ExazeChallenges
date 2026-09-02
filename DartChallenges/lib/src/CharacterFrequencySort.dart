// Character Frequency Sort
// medium
// Completed
// 10 pts
// Manual Review
// Python 3
// Attempts used: 0/3
// You already cleared this challenge.

// Sort characters in a string based on frequency (highest first).
// If frequencies are equal, keep original order.Return a string where characters are grouped by frequency.

// Notes: Lowercase letters only Maintain stable ordering for equal frequency

// Sample Input
// tree

// Expected Output
// eetr

String characterFrequencySort(String input) {
  if (input.isEmpty) return "";
  Set<String> inputSet = input.split("").toSet();
  if (input.length == inputSet.length) {
    return input;
  } else {
    Map<String, int> frequencyMap = {};

    for (int i = 0; i < input.length; i++) {
      String char = input[i];
      frequencyMap[char] = (frequencyMap[char] ?? 0) + 1;
    }

    List<String> uniqeChars = frequencyMap.keys.toList();

    uniqeChars.sort((a, b) => frequencyMap[b]!.compareTo(frequencyMap[a]!));

    String result = "";
    for (var char in uniqeChars) {
      result += char * frequencyMap[char]!;
    }

    return result;
  }
}
