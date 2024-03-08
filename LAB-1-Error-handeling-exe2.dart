double divideNumbers(double a, double b) {
  try {
    return a / b;
  } catch (e) {
    if (e is IntegerDivisionByZeroException) {
      print('Error: Division by zero is not allowed.');
    } else {
      print('An error occurred: $e');
    }
    return double.nan;
  }
}

void main() {
  double num1 = 10;
  double num2 = 0;

  double result = divideNumbers(num1, num2);
  print('Result: $result');
}