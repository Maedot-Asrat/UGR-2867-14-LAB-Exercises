void main() {
  Map<String, int> studentMarks = {};

 
  studentMarks.putIfAbsent('Abebe', () => 85);
  studentMarks.putIfAbsent('Alemu', () => 92);
  studentMarks.putIfAbsent('Belay', () => 78);

  studentMarks.forEach((name, mark) {
    print('Student: $name, Mark: $mark');
  });

  
  String searchName = 'Alemu';
  bool hasKey = studentMarks.containsKey(searchName);
  print('Does $searchName exist? $hasKey');
}