// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

import 'sqrt.dart' show sqrt;

// time complexity: always О(n)
// space complexity: always O(1)

bool isPrime(int x) {
  bool isPrime = true;
  for (int i = 2; i < sqrt(x); i++) {
    if (x % i == 0) {
      isPrime = false;
      break;
    }
  }
  return isPrime;
}

void main() {
  int number = 17;
  bool b = isPrime(17);
  b ? print('الرقم $number أولي') : print('الرقم $number غير أولي');
}
