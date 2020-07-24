// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

import 'dart:convert' show Encoding;
import 'dart:io' show stdin, stdout;

// number reversed algorithm O(log n)
void numberReversed(int x) {
  while (x > 0) {
    stdout.write(x % 10);
    x ~/= 10;
  }
}

void main() {
  stdout.write('أدخل الرقم: ');
  int num = int.parse(stdin.readLineSync(encoding: Encoding.getByName('utf-8')));
  numberReversed(num);
}
