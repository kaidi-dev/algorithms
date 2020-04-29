library algorithms;

import 'sqrt.dart' show sqrt;

// prime algorithm O(n)
bool isPrime(int x) {
  bool isPrime = true;
  for (int i = 2; i < sqrt(x); i++) {
    if (x % i == 0) {
      isPrime = false;
      break;
    }
  }
  return isPrime;
}

void main() {
  int number = 17;
  bool b = isPrime(17);
  b ? print('الرقم $number أولي') : print('الرقم $number غير أولي');
}
