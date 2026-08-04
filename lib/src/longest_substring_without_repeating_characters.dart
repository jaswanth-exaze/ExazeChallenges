
int longestSubstringWithoutRepeating(String input) {
  int maxlength = 0;
  if (input.isNotEmpty || input.length != input.split("").toSet().length) {
    int left = 0;
    Set<String> seen = {};

    for (int right = 0; right < input.length; right++) {
      while (seen.contains(input[right])) {
        seen.remove(input[left]);
        left++;
      }
      seen.add(input[right]);
      if (maxlength < right - left + 1) {
        maxlength = right - left + 1;
      }
    }
  }
  return maxlength;
}
