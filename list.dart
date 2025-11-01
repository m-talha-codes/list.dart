import 'dart:collection';
import 'dart:io';

void main() {
  // List myList = [1, 2, 3, 4, 5];
  // print(myList);
  // myList.add(6);
  // print(myList);
  // myList.addAll([7, 8, 9, 10]);
  // print(myList);
  // myList.setAll(1, [22]);
  // print(myList);
  // myList.remove(1);
  // print(myList);

  List<String> emailList = [
    'abc@gmail.com',
    'abd@gmail.com',
    'abe@gmail.com',
    'abc@gmail.com',
  ];

  stdout.write('Enter your email:');
  String email = stdin.readLineSync()!;
  print(email);
  // if (emailList.contains(email)) {
  //   print('email already exist');
  // } else {
  //   emailList.add(email);
  //   print('Email does not exist. It has been added. $emailList');
  // }

  
}
