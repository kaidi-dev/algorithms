// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

// time complexity: always О(n)
// space complexity: always O(1)

num pow(num number, int pow) {
  if (pow < 0) throw UnsupportedError("argument pow must be a positive value");
  num result = 1;
  for (int i = 0; i < pow; i++) {
    result *= number;
  }
  return result;
}

void main() {
  print(pow(2, 2));
}
