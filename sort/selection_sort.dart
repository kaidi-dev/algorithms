library algorithms;

// Selection sort algorithm O(n^2)
void selectionSort(List<num> list) {
  for (int i = list.length - 1; i > 0; i--) {
    num largest = 0;
    for (int j = 1; j <= i; j++) {
      if (list[j] > list[largest]) {
        largest = j;
      }
    }
    num temp = list[i];
    list[i] = list[largest];
    list[largest] = temp;
  }
  print(list);
}

void main() {
  List<num> numbers = [5, 7, 567, 23, 45, 1, 2, 0, -7, 2.4];
  selectionSort(numbers);
}
