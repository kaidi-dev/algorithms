// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

/// !!!
/// Dart language has a builtin sort function in the "List" library
/// that uses insertion sort algorithm if the list elements are under 32
/// or uses dual pivot quick sort algorithm which is a more complicated
/// algorithm than the below ordinary single pivot algorithm
/// for Example:
/// List<int> numbers = [3, 1, 2, 4, 5];
/// print(numbers.sort()); // output: [1, 2, 3, 4, 5]

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
