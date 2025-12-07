import 'dart:ffi';
import 'dart:io';

void main() {
  // int abc = 43;
  // int a = 21;
  // int q = 12;
  // int k = 8;
  // int i = a - q; //9
  // bool w = abc > a && !(a < abc); //false
  // bool e = !w || q != k; // True
  // bool o = e && i > 4; //true
  //   print(w);
  //   print(e);
  //   print(o);
  //   print(!(!o || e));

  String? savedEmail;
  String? savedPassword;

  while (true) {
    print("\n--- MENU ---");
    print("1. Sign Up");
    print("2. Login");
    print("3. Exit");
    stdout.write("Choose option: ");
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      // SIGN UP
      stdout.write("Enter email: ");
      savedEmail = stdin.readLineSync();

      stdout.write("Enter password: ");
      savedPassword = stdin.readLineSync();

      print("✅ Sign-up successful! You can now login.");
    } else if (choice == '2') {
      // LOGIN
      if (savedEmail == null || savedPassword == null) {
        print("⚠️ No user found. Please sign up first.");
        continue;
      }

      stdout.write("Enter email: ");
      String? email = stdin.readLineSync();

      stdout.write("Enter password: ");
      String? password = stdin.readLineSync();

      if (email == savedEmail && password == savedPassword) {
        print("✅ Login successful! Welcome $email.");
      } else {
        print("❌ Login failed. Incorrect email or password.");
      }
    } else if (choice == '3') {
      print("👋 Exiting...");
      break;
    } else {
      print("⚠️ Invalid choice. Try again.");
    }
  }
}

//   var obj = Human();
//   print(obj.coding());
// }

// class Human {
//   String name = "Talha";
//   int age = 21;

//   eat() {
//     print("$name is eating");
//   }

//   sleep() {
//     print("$name is sleeping");
//   }

//   coding() {
//     print("$name is coding");
//   }
// }
// ~~ function ki value ko print kr rha hai return kch kr hi rha tw jbhi null arha h
// ~~ class jbhi bhi call hogi uska ek object bnay ga
// ~~ function m hum perameters lyty hai Or call krty wqt arguments pass krty hai
// ~~ class m hum constructor hote hai or call krty wqt counstructor pass krty h
// ...constructor perameters...
// ~~ (this) humry pass object ka reference hai.
// agr (this) pass nhi kry gy tw usko reference nhi mily ga tw assign nhi kry ga
// this uska reference bta dyga OR atribute wo value assign kr dyga
// constructor m default value bna sakte hai
// ...constructor default...
// defult m hum koi bhi perameters nhi ly curly brakets{} m koi kam krskty h
// 1️⃣ Encapsulation
// → Data ko hide ya protect karna
// → Private variables, getters/setters
// 2️⃣ Inheritance
// → Ek class doosri class ki properties/methods hasil karti hai
// → Code reuse hota hai
// 3️⃣ Polymorphism
// → Ek cheez, multiple behaviors
// → Same function different tareeke se kaam kare
// 4️⃣ Abstraction
// → Sirf zaroori cheezein dikhana, details chhupa dena
// → Abstract classes, interfaces
