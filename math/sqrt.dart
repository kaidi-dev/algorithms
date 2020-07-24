// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

// time complexity: always O(n)
// space complexity: always O(n)

int sqrt(int x) {
  if (x == 0 || x == 1) return x;
  int start = 1, end = x, answer = 0;
  while (start <= end) {
    int mid = (start + end) ~/ 2;
    if (mid * mid == x) return mid;
    if (mid * mid < x) {
      start = mid + 1;
      answer = mid;
    } else
      end = mid - 1;
  }
  return answer;
}

void main() {
  int result = sqrt(100);
  print(result);
}
