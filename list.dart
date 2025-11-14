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

  // List<String> emailList = [
  //   'abc@gmail.com',
  //   'abd@gmail.com',
  //   'abe@gmail.com',
  //   'abc@gmail.com',
  // ];

  // stdout.write('Enter your email:');
  // String email = stdin.readLineSync()!;
  // print(email);
  // if (emailList.contains(email)) {
  //   print('email already exist');
  // } else {
  //   emailList.add(email);
  //   print('Email does not exist. It has been added. $emailList');
  // }

// int i = 0;
// while(i < 5){
// print(i);
// i++;
// }
// var email = stdin.readLineSync()!;
// var password = stdin.readLineSync()!;
   List<dynamic> userList = [
  {'email': 'abc@gmail.com', 'password': '1234'},
  {'email': 'abd@gmail.com', 'password': '1234'},
  {'email': 'abe@gmail.com', 'password': '1234'},
  {'email': 'abc@gmail.com', 'password': '1234'},
];

var email = stdin.readLineSync()!;
var password = stdin.readLineSync()!;
bool isLogin = false;
while(isLogin == false){
      var email = stdin.readLineSync()!;
      var password = stdin.readLineSync()!;
    if(email == userList['email'] && password == userList['password'] ){
      print('Login successful');
      isLogin = true;
     }else{
      print('Login failed');
     
    }
}

//   print(userList);
// }
