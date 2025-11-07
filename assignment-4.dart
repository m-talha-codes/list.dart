void main() {
  //Q-1
  List<String> fruits = [
    "apple",
    "banana",
    "apple",
    "orange",
    "banana",
    "mango",
  ];

  List<String> uniqueFruits = fruits.toSet().toList();
  print("Original list: $fruits");
  print('Unique fruits: $uniqueFruits');

  //Q-2
  List<int> numbers = [11, 22, 33, 44, 55, 66];
  int n = 3;

  List<int> firstN = numbers.take(n).toList();
  print("Original list: $numbers");
  print("First $n elements: $firstN");

  //Q-3
  List<String> listOne = ['One', 'Two', 'Three', 'Four', 'Five'];

  List<String> listTwo = listOne.reversed.toList();
  print('Simple list: $listOne');
  print('Reversed list: $listTwo');

  //Q-4

  List<int> intList = [5, 6, 7, 1, 5, 2, 6];
  List<int> uniqueList = intList.toSet().toList();
  print('Original list: $intList');
  print('Unique list: $uniqueList');

  //Q-5
  List<int> number1 = [55, 22, 88, 11, 44];
  List<int> sortedNumbers = List.from(number1)..sort();

  print('Original list: $number1');
  print('Sorted list: $sortedNumbers');

  //Q-6
  List<int> num = [10, -5, 20, -8, 0, 15, -3];
  List<int> positiveNumbers = num.where((n) => n >= 0).toList();

  print('Original list: $num');
  print('Positive numbers: $positiveNumbers');

  //Q-7
  List<int> numb1 = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  List<int> evenNumbers = numb1.where((n) => n % 2 == 0).toList();
  List<int> oddNumbers = numb1.where((n) => n % 2 != 0).toList();

  print('Original list: $numb1');
  print('Even numbers: $evenNumbers');
  print('Odd numbers: $oddNumbers');

  //Q-8
  Map<String, dynamic> person = {'name': 'John', 'age': 20, 'isStudent': true};

  if (person['isStudent'] == true && person['age'] > 18) {
    print('Eligible');
  } else {
    print('Not eligible');
  }

  // List<Map<String, dynamic>> friendList = [
  //   {'name': 'Talha', 'result': 'pass'},
  //   {'name': 'Ahad', 'result': 'fail'},
  //   ];
  //   print(friendList[0]['name']);

    //Q-9
    Map<String, dynamic> product = {
    'name': 'Laptop',
    'price': 75000,
    'quantity': 0
  };

  if (product['quantity'] > 0) {
    print('In stock');
  } else {
    print('Out of stock');
  }
}
 