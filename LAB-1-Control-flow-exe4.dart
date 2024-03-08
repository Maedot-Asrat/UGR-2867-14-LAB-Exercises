import 'dart:io';

void main() {
  stdout.write('Enter the first number: ');
  final String firstNumberInput = stdin.readLineSync()!;
  final double firstNumber = double.parse(firstNumberInput);

  stdout.write('Enter the second number: ');
  final String secondNumberInput = stdin.readLineSync()!;
  final double secondNumber = double.parse(secondNumberInput);

  stdout.write('Enter the operation (+, -, *, /): ');
  final String operator = stdin.readLineSync()!;

  double result;

  switch (operator) {
    case '+':
      result = firstNumber + secondNumber;
      break;
    case '-':
      result = firstNumber - secondNumber;
      break;
    case '*':
      result = firstNumber * secondNumber;
      break;
    case '/':
      if (secondNumber != 0) {
        result = firstNumber / secondNumber;
      } else {
        print('Error: Division by zero is not allowed');
        return;
      }
      break;
    default:
      print('Error: You entered an invalid operator');
      return;
  }

  print('Result: $result');
}