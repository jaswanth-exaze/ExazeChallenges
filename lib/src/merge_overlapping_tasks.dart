List<List<int>> mergeOverlappingTasks(List<List<int>> input) {
  if (input.length <= 1) {
    return input;
  }
  input.sort((a, b) => a[0].compareTo(b[0])); // sorted by start time
  print(input);
  List<List<int>> result = [];
  for (var i in input) {
    if (result.isEmpty) {
      result.add(i);
    } else {
      int start = i[0];
      int end = i[1];
      bool shouldAdd = false;
      for (var j in result) {
        if ((start <= j[1] && start >= j[0] && end <= j[1])) {
          shouldAdd = true;
          break;
        } else if (start <= j[1] && end >= j[1]) {
          shouldAdd = true;
          j[1] = end;
          break;
        }
      }
      if (!shouldAdd) {
        result.add(i);
      }
    }
  }

  return result;
}
