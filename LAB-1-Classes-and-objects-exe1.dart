class Person {
  String name;
  int age;
  String address;

  Person(this.name, this.age, this.address);
}

void main() {
 
  final person1 = Person('Abebe Kebede', 53, 'Nigeria st');


  print('Person 1 - Name: ${person1.name}, Age: ${person1.age}, Address: ${person1.address}');


  person1.age = 35;
  person1.address = 'Angola St';


  print('Person 1 (Modified) - Name: ${person1.name}, Age: ${person1.age}, Address: ${person1.address}');


  final person2 = Person('Maedot Asrat', 21, 'Tewodros');


  print('Person 2 - Name: ${person2.name}, Age: ${person2.age}, Address: ${person2.address}');
}