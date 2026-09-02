int longestSequence(List<int> input) {
  if (input.length <= 1) return input.length;
  if (input.toSet().length == 1) return 1;
  int maxLength = 0;
  for (int i = 0; i < input.length; i++) {
    int currValue = input[i];
    int length = 1;
    if (!input.contains(currValue - 1)) {
      while (input.contains(currValue + 1)) {
        length++;
        currValue++;
      }
    }
    if (length > maxLength) {
      maxLength = length;
    }
  }
  return maxLength;
}
