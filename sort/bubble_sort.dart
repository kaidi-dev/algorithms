// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

// time complexity:
//  Worst  |  Average  | Best
//  О(n^2) |  О(n^2)   | O(n)

// space complexity:
//  Worst |  Average |  Best
//  O(1)  |  O(1)    |  None

// stability: stable

void bubbleSort(List<num> list) {
  bool swapped;
  do {
    swapped = false;
    for (int i = 0; i < list.length - 1; i++) {
      if (list[i] > list[i + 1]) {
        num temp = list[i];
        list[i] = list[i + 1];
        list[i + 1] = temp;
        swapped = true;
      }
    }
  } while (swapped);
  print(list);
}

void main() {
  List<num> numbers = [0, 3, 2, 4, 7, 2, 1, 6, 5];
  bubbleSort(numbers);
}
