// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

// time complexity:
//  Worst  |  Average    | Best
//  О(n^2) |  О(n log n) | О(n log n)

// space complexity:
//  Worst    | Average  |  Best
//  O(log n) | O(log n) |  None

// stability: not stable

List<num> quickSort(List<num> list) {
  if (list.length < 2) return list;
  num pivot = list[0];
  List<num> less = <num>[];
  List<num> greater = <num>[];
  list.removeAt(0);
  for (num i in list) {
    if (i <= pivot)
      less.add(i);
    else
      greater.add(i);
  }
  return quickSort(less) + [pivot] + quickSort(greater);
}

void main() {
  List<num> numbers = [1, 9.6, 3, 0.3, 12, 31, 55];
  print(quickSort(numbers));
}
