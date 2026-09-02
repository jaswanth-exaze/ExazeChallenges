String normalizeEmployeeName(String input) {
  input = input.trim();
  if (input.isNotEmpty) {
    String result = input
        .split(" ")
        .where((e) => e != "")
        .map((e) => e[0].toUpperCase() + e.substring(1).toLowerCase())
        .join(" ");
    return result;
  }
  return "";
}
