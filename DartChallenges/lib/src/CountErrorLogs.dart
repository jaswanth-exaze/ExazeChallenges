// Given application log lines, count how many lines contain the log level ERROR.

// Notes: Each log line begins with a log level such as INFO, WARN, or ERROR.

// Sample Input

// INFO User login
// ERROR Database timeout
// WARN Slow response
// ERROR Payment failed

// Expected Output
// 2

void main() {
  List<String> logs = [
    "INFO User login",
    "ERROR Database timeout",
    "WARN Slow response",
    "ERROR Payment failed",
  ];
  print(countErrorLogs(logs));
}

int countErrorLogs(List<String> logs) {
  if (logs.isNotEmpty) {
    int errorLogsCount = logs
        .where((e) => e.toLowerCase().startsWith("error"))
        .toList()
        .length;
    return errorLogsCount;
  }
  return 0;
}
