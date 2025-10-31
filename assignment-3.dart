import 'dart:math';
import 'dart:typed_data';

void main() {
  // Q-1
  List names = ['Talha', 'Shakeeb', 'Abdul', 'Ali', 'Ahmed'];
  print('All Names: ${names}');

  //Q-2
  List days = [
    'Monday',
    'Tuesday',
    'Wednesday',
    'Thursday',
    'Friday',
    'Saturday',
    'Sunday',
  ];
  print(days.last);

  //Q-3
  List student = ['Talha', 'Flutter-B9', '095', 'A+', '86.27'];
  print(
    'Name: ${student[0]} \nClass: ${student[1]} \nRoll No: ${student[2]} \nGrade: ${student[3]} \nPercentage: ${student[4]}',
  );

  //Q-4
  List number = [12, 8, 30, 4, 53, 61, 7, 82, 93, 10];
  number.sort();
  print('Smallest: ${number.first}');
  print('Greatest: ${number.last}');

  //Q-5
  List intList = [22, 12, 33, 24, 30];
  var maxValue = intList.reduce((a, b) => a > b ? a : b);
  print('Max Value: $maxValue');

  // Q-6
  List oldList = ['Apple', 'Mango', 'Watermelon'];

  List newList = List.from(oldList.reversed);
  print('New List: $newList');
  print('Old List: $oldList');

  // Q-8
  List<String> usersEligibility = [
    'John',
    'Alice',
    'eligible',
    'Mike',
    'Sarah',
    'Tom',
  ];
  usersEligibility.removeWhere((user) => user != 'Mike');

  print(usersEligibility);

  List<String> usersEligibility1 = [
    'John',
    'Alice',
    'eligible',
    'Mike',
    'Sarah',
    'Tom',
  ];

  usersEligibility1.retainWhere((user) => user == 'Mike');

  print(usersEligibility1);
}
