// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

// time complexity:
//  Worst  |  Average  | Best
//  О(n^2) |  О(n^2)   | O(n)

// space complexity:
//  Worst |  Average |  Best
//  O(1)  |  O(1)    |  O(1)

// stability: stable

void insertionSort(List<num> list) {
  for (num i = 1; i < list.length; ++i) {
    num temp = list[i];
    num j = i - 1;
    while (j >= 0 && list[j] > temp) {
      list[j + 1] = list[j];
      j--;
    }
    list[j + 1] = temp;
  }
  print(list);
}

void main() {
  List<num> numbers = [2, 3, 9, 6, 1, 0, -1, 3.14];
  insertionSort(numbers);
}
