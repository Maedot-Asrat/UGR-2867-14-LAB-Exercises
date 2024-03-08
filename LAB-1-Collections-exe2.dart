import 'dart:math';

void main() {
  List<int> numbers = generateRandomNumbers(20);
  print('Prev Numbers: $numbers');

  Set<int> uniqueNumbers = Set<int>.from(numbers);
  print('Unique Numbers: $uniqueNumbers');
}

List<int> generateRandomNumbers(int count) {
  Random random = Random();
  List<int> numbers = [];

  for (int i = 0; i < count; i++) {
    int randomNumber = random.nextInt(100);
    numbers.add(randomNumber);
  }

  return numbers;
}