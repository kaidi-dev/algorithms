// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

// time complexity: always О(n)
// space complexity: always O(1)

int factorial(int x) {
  int result = 1;
  if (x > 1) {
    for (int i = 2; i <= x; i++) {
      result *= i;
    }
  }
  return result;
}

void main() {
  int result = factorial(7);
  print('قيمة مضروب العدد 7 هو $result');
}
