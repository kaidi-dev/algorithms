library algorithms;

Map<String, int> arabicCharacterValue = {
  'أ': 1,
  'ا': 1,
  'ب': 2,
  'ت': 3,
  'ث': 4,
  'ج': 5,
  'ح': 6,
  'خ': 7,
  'د': 8,
  'ذ': 9,
  'ر': 10,
  'ز': 11,
  'س': 12,
  'ش': 13,
  'ص': 14,
  'ض': 15,
  'ط': 16,
  'ظ': 17,
  'ع': 18,
  'غ': 19,
  'ف': 20,
  'ق': 21,
  'ك': 22,
  'ل': 23,
  'م': 24,
  'ن': 25,
  'ه': 26,
  'و': 27,
  'ي': 28
};

// bubble sort algorithm O(n^2)
void bubbleSort(List<String> list) {
  bool swapped;
  do {
    swapped = false;
    for (int i = 0; i < list.length - 1; i++) {
      String f1 = list[i].substring(0, 1);
      String f2 = list[i + 1].substring(0, 1);
      if (arabicCharacterValue[f1] > arabicCharacterValue[f2]) {
        String temp = list[i];
        list[i] = list[i + 1];
        list[i + 1] = temp;
        swapped = true;
      }
    }
  } while (swapped);
  print(list);
}

void main() {
  List<String> list = [
    'شجرة',
    'كرسي',
    'حصان',
    'أرنب',
    'موز',
    'حديقة',
    'نجم',
    'بطة',
    'نار',
    'طين'
  ];
  bubbleSort(list);
}
