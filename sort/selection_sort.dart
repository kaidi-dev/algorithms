// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

// time complexity: always O(n^2)
// space complexity: always O(n)

// stability: unstable in common implementations but it can be modified to be stable

void unstableSelectionSort(List<num> list) {
  for (int i = list.length - 1; i > 0; i--) {
    num largest = 0;
    for (int j = 1; j <= i; j++) {
      if (list[j] > list[largest]) largest = j;
    }
    num temp = list[i];
    list[i] = list[largest];
    list[largest] = temp;
  }
  print(list);
}

void stableSelectionSort(List<num> list) {
  for (int i = list.length - 1; i > 0; i--) {
    num largest = 0;
    for (int j = 1; j <= i; j++) {
      if (list[j] > list[largest]) largest = j;
    }
    num largestNum = list[largest];
    while (largest < i) {
      list[largest] = list[largest + 1];
      largest++;
    }
    list[i] = largestNum;
  }
  print(list);
}

void main() {
  List<num> numbers = [5, 7, 567, 23, 45, 1, 2, 0, -7, 2.4];
  unstableSelectionSort(numbers);
  stableSelectionSort(numbers);
}
