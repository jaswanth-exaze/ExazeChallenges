// Given a stream of response times, find whether any window of K consecutive requests has an average above the threshold.

// Notes: K will be between 1 and the number of response times. Response times are positive integers.

// Sample Input

// times: 100 200 900 1000 300
// k: 3
// threshold: 600
// Expected Output
// true

bool slidingWindowAlert(List<int> times, int k, int threshold) {
  if (times.isNotEmpty && k <= times.length) {
    for (int i = 0; i <= times.length - k; i++) {
      int sumOfKelements = times.getRange(i, k + i).reduce((a, b) => a + b);
      if (sumOfKelements / k >= threshold) {
        return true;
      }
    }
  }
  return false;
}
