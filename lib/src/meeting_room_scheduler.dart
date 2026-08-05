int meetingRoomScheduler(List<List<int>> input) {
  if (input.length < 2) {
    if (input.length == 1 && input[0][0] == input[0][1]) {
      return 0;
    }
    return input.length;
  }
  input.sort((a, b) => a[0].compareTo(b[0])); // sorted by start time

  List<int> endTimesList = [];

  for (var i in input) {
    if (endTimesList.isEmpty) {
      endTimesList.add(i[1]);
    } else {
      int startTime = i[0];
      int endTime = i[1];
      bool shouldAdd = false;
      for (int j = 0; j < endTimesList.length; j++) {
        if (endTimesList[j] <= startTime) {
          endTimesList[j] = endTime;
          shouldAdd = true;
          break;
        }
      }
      if (!shouldAdd) {
        endTimesList.add(endTime);
      }
    }
  }

  return endTimesList.length;
}
