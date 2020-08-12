class Calculator {
  int number1;
  int number2;

  Calculator(this.number1, this.number2);

  int sum(int number1, int number2) {
    return number1 + number2;
  }

  int del(int number1, int number2) {
    return number1 + number2;
  }

  int multi(int number1, int number2) {
    return number1 * number2;
  }

  double divide(int number1, int number2) {
    if (number2 == 0) {
      print("payda 0 olamaz");
      return null;
    } else {
      return number1 / number2;
    }
  }
}
