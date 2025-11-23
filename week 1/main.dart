import 'dart:ffi';

void main(List<String> args) {
  print("Hello Dart");
  /**
   * 
   * How to declare variable in dart
  */
  String name = "Devid";
  int age = 21;
  double bloodPresure = 213.32;
  num number = 32.4;
  bool isOlder = false;
  final dogName = "Petter";
  const carName = "Sama";
  isOddNumber();
  print ("developer name is $name");
  print(
    "developer input number 12 , so 12 is ${isEvenNumber(12) ? 'even number' : 'odd number'}",
  );
  print(
    "developer input number 13 , so 13 is ${checkNumberWithNullSafety(value: 13) ? 'even number' : 'odd number'}",
  );
  print(
    "developer input number 7 , so 7 is ${checkNumberWithNullSafety(value: 6) ? 'even number' : 'odd number'}",
  );
  print("developer input number 12 , so 12 is ${checkNumber(value: 12).name}");
}

enum numberType { oddNumber, evenNumber }

/**
 * 
 * Non Return Type Function
*/

void isOddNumber() {
  print("isOddNumber");
}

/**
 * 
 *  Return Type Function
*/

bool isEvenNumber(num value) {
  // Non name paramater
  final isEven = value % 2 == 0;
  return isEven;
}

/**
 * 
 *  Return Type Function
*/

bool checkNumberWithNullSafety({num? value}) {
  // name paramater
  if (value == null) {
    throw Exception("value expect not null");
  }
  final isEven = value % 2 == 0;
  return isEven;
}

numberType checkNumber({required num value}) {
  // name paramater
  final isEven = value % 2 == 0;
  return isEven
      ? numberType.evenNumber
      : numberType.oddNumber; // ternary operator
}
