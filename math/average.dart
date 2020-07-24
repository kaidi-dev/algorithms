// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

// time complexity: always О(n)
// space complexity: always O(1)

void average(List<num> numbers) {
  num sum = 0;
  for (num x in numbers) sum += x;
  num avg = sum / numbers.length;
  print(avg);
}

void main() {
  average([1, 2, 3, 4, 5, 6, 7]);
}
