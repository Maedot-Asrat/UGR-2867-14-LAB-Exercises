import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  String userInput = stdin.readLineSync() ?? '';

  try {
    int number = int.parse(userInput);
    print('The converted number is: $number');
  } catch (e) {
    if (e is FormatException) {
      print('Invalid input. Please enter a valid number.');
    } else {
      print('An error occurred: $e');
    }
  }
}