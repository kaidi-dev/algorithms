library algorithms;

// Binary search algorithm O(log n)
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
  List<num> numbersList = [
    -12,
    -1,
    0.5,
    2.75,
    7,
    32,
    89,
    90.034,
    90.5,
    112,
  ];

  int keywordIndex = binarySearch(numbersList, 0.5);
  keywordIndex == -1
      ? print('لا يوجد هذا العنصر')
      : print('تم إيجاد هذا العنصر في الموقع $keywordIndex');
}
