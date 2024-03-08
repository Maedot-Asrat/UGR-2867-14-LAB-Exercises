class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

class Student extends Person {
  int rollNumber;
  List<int> marks;

  Student(String name, int age, String address, this.rollNumber, this.marks)
      : super(name, age, address);

  int calculateTotalMarks() {
    int totalMarks = 0;
    for (int mark in marks) {
      totalMarks += mark;
    }
    return totalMarks;
  }

  double calculateAverageMarks() {
    int totalMarks = calculateTotalMarks();
    double averageMarks = totalMarks / marks.length;
    return averageMarks;
  }
}

void main() {

  final student1 = Student('Abebe Kebede', 45, 'Nigeria St', 102, [35, 90, 94, 78, 85]);


  print('Student 1 - Name: ${student1.name}, Age: ${student1.age}, Address: ${student1.address}');

  
  print('Student 1 - Roll Number: ${student1.rollNumber}, Marks: ${student1.marks}');


  int totalMarks = student1.calculateTotalMarks();
  print('Student 1 - Total Marks: $totalMarks');

 
  double averageMarks = student1.calculateAverageMarks();
  print('Student 1 - Average Marks: $averageMarks');
}