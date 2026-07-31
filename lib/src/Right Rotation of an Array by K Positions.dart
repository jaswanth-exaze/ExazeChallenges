List<int> arrayRotation(List<int> input, int k) {
  if (input.isNotEmpty) {
    k = k % input.length;
    if (k == 0) {
      return input;
    } else {
      for (int i = 0; i < k; i++) {
        int lastele = input.removeLast();
        input.insert(0, lastele);
      }
      return input;
    }
  }
  return [];
}
