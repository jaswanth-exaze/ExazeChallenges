int nearestDuplicate(List<int> input) {

  if (input.isNotEmpty) {

    int minDistance = input.length + 1;

    Map<int, int> map = {};

    for (int i = 0; i < input.length; i++) {
      if (map.containsKey(input[i])) {
        int distance = i - map[input[i]]!; // index difference for duplicates
        if (distance < minDistance) {
          minDistance = distance;
        }
      }
      map[input[i]] = i; //assgining index
    }
    return minDistance==input.length+1?-1:minDistance;
  }
  return -1;
}
