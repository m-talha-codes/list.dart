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
}