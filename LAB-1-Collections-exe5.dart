class Student {
  String name;
  List<int> marks;

  Student(this.name, this.marks);

  double calculateAverageMark() {
    if (marks.isEmpty) {
      return 0.0;
    }

    int sum = marks.reduce((value, element) => value + element);
    return sum / marks.length;
  }
}

void main() {
  Student student1 = Student('Abebe', [85, 92, 78, 90]);
  double averageMark1 = student1.calculateAverageMark();
  print('${student1.name}\'s Average Mark: $averageMark1');

  Student student2 = Student('Alemu', [95, 88, 93]);
  double averageMark2 = student2.calculateAverageMark();
  print('${student2.name}\'s Average Mark: $averageMark2');

  Student student3 = Student('Belay', []);
  double averageMark3 = student3.calculateAverageMark();
  print('${student3.name}\'s Average Mark: $averageMark3');
}