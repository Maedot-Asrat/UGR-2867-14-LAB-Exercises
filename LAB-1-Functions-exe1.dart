void main() {
  final int firstNum = 10;
  final int secondNum = 20;

  final int sum = calculateSum(firstNum, secondNum);

  print('The sum of $firstNum and $secondNum is $sum');
}

int calculateSum(int a, int b) {
  return a + b;
}