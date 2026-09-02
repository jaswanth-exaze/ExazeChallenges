int? secondLargestNum(List<int> input) {
  if (input.isEmpty) return null;
  if (input.length == 1 || input.toSet().length == 1) return null;

  int highest = input[0];
  int? secondhighest ;
  for (int i in input) {
    if (i > highest) {
      secondhighest = highest;
      highest = i;
    } else if (i < highest && (secondhighest==null || secondhighest < i)) {
      secondhighest = i;
    }
  }

  return secondhighest;
}
