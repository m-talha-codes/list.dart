import 'dart:io';
void main(){

  //Q-1
  var n = 10;
  int first = 0;
  int second = 1;
  for (int i= 0; i<=n; i++){
    print(first);
    int sum = first + second;
    first = second;
    second = sum;
  }

  //Q-2
  List<int> number = [3, 9, 1, 6, 4, 2, 8, 5, 7];
  int largest = number[0];
  for (int i = 0; i < number.length; i++) {
    if (number[i] > largest) {
      largest = number[i];
    }
  }
  print("Largest: $largest");

  //Q-3
  int num = 6;
  for (int i = 1; i <= 10; i++) {
    print("$num x $i = ${num * i}");
  }

  //Q-5
  int numb = int.parse(stdin.readLineSync()!);
  for (int i = 1; i <= numb; i++) {
    for (int j = 1; j <= i; j++) {
      stdout.write(i);
    }
    print("");
  }
}