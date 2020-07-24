// Copyright 2020 Ammar Yasser. All rights reserved.
// Use of this source code is governed by a BSD 2-Clause "Simplified" license
// that can be found in the LICENSE file.

library algorithms;

class RomanNumerals {
  static Map<String, int> romanSymbols = {
    'I': 1,
    'V': 5,
    'X': 10,
    'L': 50,
    'C': 100,
    'D': 500,
    'M': 1000
  };

  static List<int> arabianRomanNumbers = [
    1000,
    900,
    500,
    400,
    100,
    90,
    50,
    40,
    10,
    9,
    5,
    4,
    1
  ];

  static List<String> romanNumbers = [
    "M",
    "CM",
    "D",
    "CD",
    "C",
    "XC",
    "L",
    "XL",
    "X",
    "IX",
    "V",
    "IV",
    "I"
  ];

// time complexity: always O(n)
// space complexity: always O(n)

  int romanToInt(String romanNumber) {
    String prev = ' ';
    int sum = 0;
    int newPrev = 0;
    for (int i = romanNumber.length - 1; i >= 0; i--) {
      String currentChar = romanNumber[i];
      if (prev != ' ') {
        newPrev = romanSymbols[prev] > newPrev ? romanSymbols[prev] : newPrev;
      }
      int currentNum = romanSymbols[currentChar];
      if (currentNum >= newPrev) {
        sum += currentNum;
      } else {
        sum -= currentNum;
      }
      prev = currentChar;
    }
    return sum;
  }

// time complexity: always O(n)
// space complexity: always O(n)

  String intToRoman(int x) {
    if (x < 0) {
      return "";
    } else if (num == 0) {
      return "nulla";
    }
    final builder = StringBuffer();
    for (int a = 0; a < arabianRomanNumbers.length; a++) {
      // equals 1 only when arabianRomanNumbers[a] = num
      final times = (x / arabianRomanNumbers[a]).truncate();
      // executes n times where n is the number of times you have to add
      // the current roman number value to reach num.
      builder.write(romanNumbers[a] * times);
      // subtract previous roman number value from num
      x -= times * arabianRomanNumbers[a];
    }
    return builder.toString();
  }
}

void main() {
  RomanNumerals romanNumerals = RomanNumerals();
  int decimalNumber = romanNumerals.romanToInt("VII");
  String romanNumber = romanNumerals.intToRoman(700);
  print("VII = $decimalNumber");
  print("7000 = $romanNumber");
}
