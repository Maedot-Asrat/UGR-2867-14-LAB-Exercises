import 'dart:io';
import 'package:http/http.dart' as http;

Future<void> downloadFile(String url, String savePath) async {
  var response = await http.get(Uri.parse(url));
  if (response.statusCode == 200) {
    File file = File(savePath);
    await file.writeAsBytes(response.bodyBytes);
    print('File downloaded successfully!');
  } else {
    print('Failed to download file. Error: ${response.statusCode}');
  }
}

Future<void> main() async {
  String url = 'https://example.com/file.txt';
  String savePath = 'path/to/save/file.txt';

  await downloadFile(url, savePath);
}