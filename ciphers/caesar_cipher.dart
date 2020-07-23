// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

// time complexity:
//  Worst  |  Average  | Best
//  О(n)   |  О(n)     | O(n)

// space complexity:
//  Worst |  Average |  Best
//  O(1)  |  O(1)    |  O(1)

const firstUpperCharCode = 65;
const firstLowerCharCode = 97;

StringBuffer encryptToCaesar(String m, int s) {
  StringBuffer result = StringBuffer();
  for (int i = 0; i < m.length; i++) {
    bool isUpperCase = m[i].toUpperCase() == m[i];
    int firstCharCode = isUpperCase ? firstUpperCharCode : firstLowerCharCode;
    int charCode = (m[i].codeUnitAt(0) + s - firstCharCode) % 26 + firstCharCode;
    String ch = String.fromCharCode(charCode);
    result.write(ch);
  }
  return result;
}

void main() {
  print(encryptToCaesar("Ammar", 3));
}
