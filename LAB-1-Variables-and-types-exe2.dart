import 'dart:io';
const double speedOfLight = 299792458; // meters per second

void main() {
  stdout.write('Enter some distance in meters: ');
  final String userInput = stdin.readLineSync()!;
  final double distance = double.parse(userInput);

  
  final double timeInSec = distance / speedOfLight;

  print('Time taken= ${timeInSec.toStringAsFixed(9)} seconds');
}
