library algorithms;

// factorial algorithm O(n)
int factorial(int x) {
  int result = 1;
  if (x > 1) {
    for (int i = 2; i <= x; i++) {
      result *= i;
    }
  }
  return result;
}

void main() {
  int result = factorial(7);
  print('قيمة مضروب العدد 7 هو $result');
}
