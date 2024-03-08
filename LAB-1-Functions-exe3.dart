void main() {
  final String input = 'Mobile Application';
  final String reversed = reverseString(input);
  print(reversed);
}

String reverseString(String input) {
  final List<String> characters = input.split('');
  final List<String> reversedCharacters = characters.reversed.toList();
  final String reversed = reversedCharacters.join('');
  return reversed;
}