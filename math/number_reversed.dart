// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

import 'dart:io' show stdout;

// time complexity: always О(n)
// space complexity: always None

void numberReversed(int x) {
  while (x > 0) {
    stdout.write(x % 10);
    x ~/= 10;
  }
}

void main() {
  numberReversed(123);
}
