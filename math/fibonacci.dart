// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

import 'dart:io' show stdin, stdout;

// fibonacci algorithm O(n)
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
  stdout.write('أدخل موقع الرقم: ');
  int index = int.parse(stdin.readLineSync());
  print('عدد فيبوناتشي في الموقع $index هو ${fibonacci(index)}');
}
