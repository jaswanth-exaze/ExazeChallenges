String removeDuplicatesKeepOrder(String input) {
  if (input.isNotEmpty) {
    List<String> seenStack = [];
    for (int i = 0; i < input.length; i++) {
      if (!seenStack.contains(input[i])) {
        seenStack.add(input[i]);
      }
    }
    return seenStack.join("");
  }
  return "";
}
