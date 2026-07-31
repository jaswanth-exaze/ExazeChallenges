// Mirror Number
// easy
// Completed
// 5 pts
// Manual Review
// Python 3
// Attempts used: 0/3
// You already cleared this challenge.

// Given a number, determine whether it reads the same forward and backward. Print true if it is a mirror number, otherwise print false.

// Notes: Input will contain digits only. Leading zeroes, if present, should be treated as part of the string.

// Sample Input
// 1221

// Expected Output
// true

bool mirrorNumber(int n) {
  if (n >= 0 && n < 10) return true;
  int temp = n;
  int reversedNum = 0;
  while (n > 0) {
    int lastdigit = n % 10;
    reversedNum = (reversedNum * 10) + lastdigit;
    n = n ~/ 10;
  }
  if (temp == reversedNum) {
    return true;
  } else {
    return false;
  }
}

//conver to string and compare with reversed string
