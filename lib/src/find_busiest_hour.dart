String busiestHour(List<String> logins) {
  if (logins.isEmpty) return "";
  if (logins.length == 1) return logins[0].substring(0, 2);
  Map<String, int> hoursCountMap = {};
  for (var i in logins) {
    List<String> timestamp = i.split(":").toList();
    String hour = timestamp[0];
    // String minit = timestamp[1];
    hoursCountMap[hour] = (hoursCountMap[hour] ?? 0) + 1;
  }
  String result = hoursCountMap.keys.reduce(
    (a, b) => hoursCountMap[a]! >= (hoursCountMap[b]!) ? a : b,
  );
  return result;
}
