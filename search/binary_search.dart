// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

// time complexity:
//  Worst    |  Average    | Best
//  О(log n) |  О(log n)   | О(log n)

// space complexity:
//  Worst |  Average |  Best
//  O(1)  |  O(1)    |  O(1)

num binarySearch(List<num> numbersArray, num keyNumber) {
  int low = 0;
  int high = numbersArray.length - 1;
  int midPoint = (low + high) ~/ 2;

  while (high >= low) {
    if (numbersArray[midPoint] == keyNumber)
      return midPoint;
    else if (numbersArray[midPoint] < keyNumber) {
      midPoint++;
      low++;
    } else {
      midPoint--;
      high--;
    }
  }
  return -1;
}

void main() {
  List<num> numbersList = [-12, -1, 0.5, 2.75, 7, 32, 90.034];
  int keywordIndex = binarySearch(numbersList, 1);
  keywordIndex == -1
      ? print('لا يوجد هذا العنصر')
      : print('تم إيجاد هذا العنصر في الموقع $keywordIndex');
}
