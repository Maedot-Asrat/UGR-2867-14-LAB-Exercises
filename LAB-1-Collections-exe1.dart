void main() {
  List<String> hobbies = ['Reading', 'Swimming', 'Dancing'];

  print('Original Hobbies List: $hobbies');

  
  hobbies.add('Painting');
  print('After Adding a Hobby: $hobbies');

  
  hobbies.remove('Running');
  print('After Removing a Hobby: $hobbies');

 
  hobbies.sort();
  print('Sorted Hobbies List: $hobbies');


  bool isEmpty = hobbies.isEmpty;
  print('Is Hobbies List Empty? $isEmpty');
}