import 'dart:io';

void main() {
  Library library = Library();  // Library object

  // ---> Default books <---
  library.addBook(Book('The Alchemist', 'Paulo Coelho', 208, true));
  library.addBook(Book('Git', 'Paulo Coelho', 208, true));
  library.addBook(Book('Harry Potter', 'J.K. Rowling', 400, true));

  while (true) {
    print("\n~~~> Library Menu <~~~\n");
    print("1. List All Books");
    print("2. Borrow Book");
    print("3. List Borrowed Books");
    print("4. Exit");

    stdout.write("\nChoose an option: ");
    String? choice = stdin.readLineSync();

    if (choice == '1') {
      library.listBooks();
    } else if (choice == '2') {
      borrowBookMenu(library);
    } else if (choice == '3') {
      library.listBorrowedBooks();
    } else if (choice == '4') {
      print("Exit program");
      return;
    } else {
      print("Wrong option.. Dobara try karein.");
    }
  }
}

void borrowBookMenu(Library library) {
  
  library.listBooks();
  
  stdout.write("\nEnter book title to borrow: ");
  String title = stdin.readLineSync()!;

  Book? book = library.findBook(title);

  if (book == null) {
    print("Book not found");
    return;
  }

  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;

  stdout.write("Enter member ID: ");
  String id = stdin.readLineSync()!;

  Member member = Member(name, id);

  library.borrowBook(member, book);
}

// -----> CLASSES <-----
class Book {
  String title;
  String author;
  int pages;
  bool isAvailable;

  Book(this.title, this.author, this.pages, this.isAvailable);
}

class Member {
  String name;
  String memberId;

  Member(this.name, this.memberId);
}

class Borrowing {
  Member member;
  Book book;

  Borrowing(this.member, this.book);
}

class Library {
  List<Book> books = [];
  List<Borrowing> borrowedBooks = [];

  void addBook(Book book) => books.add(book); // Add Book in Library

  Book? findBook(String title) {
    for (var book in books) {
      if (book.title.toLowerCase() == title.toLowerCase()) {
        return book;
      }
    }
    return null;
  }

  void borrowBook(Member member, Book book) {
    if (!book.isAvailable) {
      print("\n'${book.title}' is already borrowed");
      return;
    }

    book.isAvailable = false;
    borrowedBooks.add(Borrowing(member, book));
    print("\n'${book.title}' successfully borrowed");
  }

  void listBooks() {
    print("\n-----> All Books in Library <-----\n");
    for (var book in books) {
      print(
        "${book.title} | Author: ${book.author} | Available: ${book.isAvailable}",
      );
    }
  }

  void listBorrowedBooks() {
    print("\n----> Borrowed Books <----\n");

    if (borrowedBooks.isEmpty) {
      print("No books borrowed");
      return;
    }

    for (var b in borrowedBooks) {
      print(
        "Member ID: ${b.member.memberId} | Book: ${b.book.title} | Borrowed by: ${b.member.name}",
      );
    }
  }
}
