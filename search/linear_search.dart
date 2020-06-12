library algorithms;

// linear search algorithm O(n)
int linearSearch(List array, String keyword) {
  for (int i = 0; i < array.length; i++)
    if (array[i] == keyword) {
      return i;
    }
  return -1;
}

void main() {
  List<String> names = [
    'عمار',
    'ياسر',
    'إبراهيم',
    'عبد الفتاح',
    'السيد',
    'سعد',
    'أحمد',
    'محمد',
    'حسن'
  ];

  int keywordIndex = linearSearch(names, 'محمد');
  keywordIndex == -1
      ? print('هذه الكلمة غير موجودة')
      : print('تم العثور على الكلمة في الموقع $keywordIndex');
}
