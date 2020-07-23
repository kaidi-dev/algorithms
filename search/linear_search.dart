// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

// time complexity:
//  Worst  |  Average  | Best
//  О(n) |    О(n)   |   O(n)

// space complexity:
//  Worst |  Average |  Best
//  None  |  None    |  None

int linearSearch(List array, String keyword) {
  for (int i = 0; i < array.length; i++)
    if (array[i] == keyword) {
      return i;
    }
  return -1;
}

void main() {
  List<String> names = ['عمار', 'ياسر', 'إبراهيم'];

  int keywordIndex = linearSearch(names, 'محمد');
  keywordIndex == -1
      ? print('هذه الكلمة غير موجودة')
      : print('تم العثور على الكلمة في الموقع $keywordIndex');
}
