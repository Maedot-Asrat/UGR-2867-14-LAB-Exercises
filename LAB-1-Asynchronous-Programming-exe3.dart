import 'dart:async';

Future<List<String>> fetchDataFromDatabase() async {

  await Future.delayed(Duration(seconds: 1));

  
  List<String> data = ['Abebe', 'Kebede', 'Alemu', 'Belay'];

  return data;
}

Future<void> main() async {
 
  List<String> loadedData = await fetchDataFromDatabase();

  
  print('Loaded Data: $loadedData');
}