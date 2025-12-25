import 'dart:io';

void main() {
  // 1. Create List of integers and demonstrate add, remove, insert
  List<int> numbers = [1, 2, 3, 4, 5];
  numbers.add(6); // add six at the end
  numbers.remove(2); // remove 2 at index 1
  numbers.insert(1, 22); // insert 22 ar index 1 i.e at place of 2
  print('Integer List : $numbers'); // [1,22,3,4,5,6]

  //2. Create Set and show unique elements
  Set<dynamic> uniqueElements = {
    1,
    2,
    2,
    3,
    4,
    4,
    5,
    'Shafqat Ullah',
    'Muhammad Hamza',
    'Muhammad Hamza',
  };
  print('Dynamic Set: $uniqueElements'); // Set Always contains unique elements.

  //3. Create Map with key-value pairs
  Map<String, dynamic> pak_players = {
    'Batsamen': ['Fakher Zaman', 'Saim Ayub', 'Baber Azam', 'Muhammad Rizwan'],
    'AllRounders': ['Salman Ali Agha', 'Faheem Ashraf', 'Muhammad Nawaz'],
    'Bowlers': [
      'Shaheen Shah Afridi',
      'Abbas Afridi',
      'Naseem Shah',
      'Ibrar Ahmed',
    ],
    'Captain': 'Shaheen Shah Afridi',
    'Wicket Keeper': 'Muhammad Rizwan',
  };
  print('Map of Pakistan Team Players $pak_players');
  // 4. Use list.map() to transform data
  List<int> Square = numbers.map((e) => (e * e)).toList();
  print(
    Square,
  ); // map transforms the element, where filter the  elements, and reduce Combine into a single value.

  //5. Use list.where() for filtering
  List<int> evenNumbers = numbers.where((e) => e % 2 == 0).toList();
  print(evenNumbers);

  // 6. Implement list.reduce() for sum
  int sumSquare = Square.reduce((a, b) => a + b);
  print(sumSquare);

  //7. Create List<Map<String, dynamic>> for students
  List<Map<String, dynamic>> students = [];

  // 8. Add 5 student records
  students.addAll([
    {'name': 'Shafqat Ullah', 'marks': 70},
    {'name': 'Muhammad Hamza', 'marks': 67},
    {'name': 'Furqan Khan', 'marks': 75},
    {'name': 'Shoaib Khan', 'marks': 80},
    {'name': 'Ayaz Khan', 'marks': 75},
  ]);

  // 9. Sort by marks descending
  students.sort((a, b) => b['marks'].compareTo(a['marks']));

  // 10. Filter students with marks > 75
  List<Map<String, dynamic>> topStudents = students
      .where((s) => s['marks'] > 75)
      .toList();
  print('Top Students : $topStudents');

  // 10. . Search student by name
  print('Enter Name to Search');
  String searchName = stdin.readLineSync()!;
  Map<String, dynamic> foundStundent = students.firstWhere(
    (e) => e['name'] == searchName,
  );
  if (foundStundent.isEmpty) {
    print('Students is not found');
  } else {
    print(foundStundent);
  }
   // 12. Print formatted output
  print('Formatted Student Output');
  for (var student in students) {
    print('Name: ${student['name']}, Marks: ${student['marks']}');
  }
}

// Complete Output
/* PS E:\FLUTTER\NeuroApp_Week1_Tasks\dart_collections> dart run dart_collections.dart
Integer List : [1, 22, 3, 4, 5, 6]
Dynamic Set: {1, 2, 3, 4, 5, Shafqat Ullah, Muhammad Hamza}
Map of Pakistan Team Players {Batsamen: [Fakher Zaman, Saim Ayub, Baber Azam, Muhammad Rizwan], AllRounders: [Salman Ali Agha, Faheem Ashraf, Muhammad Nawaz], Bowlers: [Shaheen Shah Afridi, Abbas Afridi, Naseem Shah, Ibrar Ahmed], Captain: Shaheen Shah Afridi, Wicket Keeper: Muhammad Rizwan}
[1, 484, 9, 16, 25, 36]
[22, 4, 6]
571
Top Students : [{name: Shoaib Khan, marks: 80}]
Enter Name to Search
Shafqat Ullah
{name: Shafqat Ullah, marks: 70}
Formatted Student Output        
Name: Shoaib Khan, Marks: 80    
Name: Furqan Khan, Marks: 75    
Name: Ayaz Khan, Marks: 75      
Name: Shafqat Ullah, Marks: 70  
Name: Muhammad Hamza, Marks: 67 */