import '../lib/src/CountErrorLogs.dart';

import 'package:test/test.dart';

void main() {
  test("it should resturn 0 for empty inpus", () {
    expect(countErrorLogs([]), equals(0));
  });
  test(
    "it should resturn 1 for input list contains only one log that start with ERROR",
    () {
      expect(countErrorLogs(["ERROR Database timeout"]), equals(1));
    },
  );
  test(
    "it should resturn 0 for input list contains only one log that not start with ERROR",
    () {
      expect(countErrorLogs(["WARN Slow response"]), equals(0));
    },
  );
  test(
    "it should resturn count of total Errors logs for input list contains only one log that start with ERROR",
    () {
      expect(
        countErrorLogs([
          "INFO User login",
          "ERROR Database timeout",
          "WARN Slow response",
          "ERROR Payment failed",
        ]),
        equals(2),
      );
    },
  );
  test(
    "it should resturn count of total logs for input list contains all logs that start with ERROR",
    () {
      expect(
        countErrorLogs([
          "ERROR User login",
          "ERROR Database timeout",
          "ERROR Slow response",
          "ERROR Payment failed",
        ]),
        equals(4),
      );
    },
  );
  test(
    "it should handle lower case and Capital ERROR Logs as well",
    () {
      expect(
        countErrorLogs([
          "INFO User login",
          "Error Database timeout",
          "WARN Slow response",
          "error Payment failed",
        ]),
        equals(2),
      );
    },
  );
}
