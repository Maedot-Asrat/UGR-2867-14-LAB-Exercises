import 'dart:io';

void main() {
  String filePath = 'path/to/file.txt';

  try {
    File file = File(filePath);
    if (file.existsSync()) {
      String contents = file.readAsStringSync();
      print('File contents:\n$contents');
    } else {
      print('Error: File not found at path: $filePath');
    }
  } catch (e) {
    if (e is FileSystemException) {
      print('Error: Failed to read file. ${e.message}');
    } else {
      print('An error occurred: $e');
    }
  }
}