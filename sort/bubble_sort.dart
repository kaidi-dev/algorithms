library algorithms;

// Bubble sort algorithm O(n^2)
void bubbleSort(List<int> list) {
  bool swapped;
  do {
    swapped = false;
    for (int i = 0; i < list.length - 1; i++) {
      if (list[i] > list[i + 1]) {
        int temp = list[i];
        list[i] = list[i + 1];
        list[i + 1] = temp;
        swapped = true;
      }
    }
  } while (swapped);
  print(list);
}

void main() {
  List<int> numbers = [0, 3, 2, 4, 7, 2, 1, 6, 5];
  bubbleSort(numbers);
}
