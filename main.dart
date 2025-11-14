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
