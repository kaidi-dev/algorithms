// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

// time complexity: always О(1)
// space complexity: always None

num abs(num number) {
  if (number == 0) return number;
  return number > 0 ? number : -number;
}

void main() {
  print(abs(-3.14));
}
