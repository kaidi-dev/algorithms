// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

// time complexity: always О(n)

// space complexity:
//  Worst |  Average |  Best
//  O(n)  |  O(n)    |  O(1)

int fibonacci(int index) {
  int result = 1, f0 = 1, f1 = 1;
  if (index > 1) {
    for (int i = 0; i < index - 1; i++) {
      result = f0 + f1;
      f0 = f1;
      f1 = result;
    }
  }
  return result;
}

void main() {
  int index = 3;
  print('عدد فيبوناتشي في الموقع $index هو ${fibonacci(index)}');
}
