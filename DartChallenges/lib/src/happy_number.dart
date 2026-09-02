// You are given a positive integer input. Starting with input, 
//repeatedly replace the number with the sum of the squares of its digits.
// If this process eventually reaches 1, the number is a happy number.
// If it loops forever and never reaches 1, it is not.
// Return Yes if input is a happy number, No if it is not.
// Example:
// Input: 19
// Output: Yes
// Explanation:
// 19 → 1² + 9² = 82 → 8² + 2² = 68 → 6² + 8² = 100 → 1² + 0² + 0² = 1

// Sample Input
// 19

// Expected Output
// yes

bool happyNumber(int input) {
  if (input == 0) return false;
  Set<int> seen = {};

  while (input != 1 && !seen.contains(input)) {
    seen.add(input);
    int squaresum = 0;

    while (input > 0) {
      int rem = input % 10;
      squaresum = squaresum + (rem * rem);
      input = input ~/ 10;
    }
    input = squaresum;
  }
  if (input == 1) {
    return true;
  }
  return false;
}
