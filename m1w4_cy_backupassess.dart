            // PART TWO

/*1. You are to build a simple console app in Dart to manage books in a library.

Requirements:
Create a Book class with the following: 

Fields: title (String), author (String), year (int), isBorrowed (bool, default false).
A constructor to initialize a book.
A method borrowBook() that sets isBorrowed to true, but should throw an exception if the book is already borrowed.
A method returnBook() that sets isBorrowed to false.

Create a Library class with: 
A List<Book> to hold books.
A method addBook(Book book) to add a new book.
A method searchByTitle(String keyword) that returns a list of books containing the keyword in their title (case insensitive).
A method listAvailableBooks() that returns all books not borrowed.

In main(): 
Add at least 5 books to the library.
Let the user interact via console input with a menu:
1. List available books
2. Search book by title
3. Borrow a book
4. Return a book
5. Exit*/


/*

void main() {

  Library myLibrary = Library();

  myLibrary.addBook(Book(title: "Half of a Yellow Sun", author: "Chimamanda", year: 2006));
  myLibrary.addBook(Book(title: "Things Fall Apart", author: "Chinua Achebe", year: 1958));
  myLibrary.addBook(Book(title: "Everything Good Will Come", author: "Sefi Attah", year: 2005));
  myLibrary.addBook(Book(title: "Pilgrim's Progress", author: "John Bunyan", year: 1678));
  myLibrary.addBook(Book(title: "So long A Letter", author: "Mariama Ba", year: 1979));
  myLibrary.addBook(Book(title: "Americanna", author: "Chimamanda", year: 2013));
  myLibrary.addBook(Book(title: "Arrow of God", author: "Chinua Achebe", year: 1958));
  myLibrary.addBook(Book(title: "Infinite Riches", author: "Ben Okri", year: 2005));
  myLibrary.addBook(Book(title: "A Grain of Wheat", author: "Ngugi wa Thiongo", year: 1967));
  myLibrary.addBook(Book(title: "A Tale of Two Cities", author: "Charles Dickens", year: 1859));

  var foundBooks = myLibrary.searchByTitle("A");                      //Here, this shows a case insensitive response to "A".
  for (var book in foundBooks) {
    print(book.title);
  }

            //MENU
            
void listAvailableBooks(Library library) {
  var availableBooks = library.listAvailableBooks();
  if (availableBooks.isEmpty) {
    print("No books are currently available.");
  } else {
    print("Available books:");
    for (var book in availableBooks) {
      print("- ${book}");
    }
  }
}

void searchBookByTitle(Library library, String keyword) {
  var foundBooks = library.searchByTitle(keyword);
  if (foundBooks.isEmpty) {
    print("No books found with the keyword '$keyword'.");
  } else {
    print("Books matching '$keyword':");
    for (var book in foundBooks) {
      print("- ${book}");
    }
  }
}

void borrowBook(Library library, String title) {
  var result = library.borrowBookByTitle(title);
  print(result);
}

void returnBook(Library library, String title) {
  var result = library.returnBookByTitle(title);
  print(result);
}


}

//import 'dart:io';

class Book {
  String title;
  String author;
  int year;
  bool isBorrowed;

  Book({
    required this.title,
    required this.author,
    required this.year,
    this.isBorrowed = false,
  });

bool borrowBook() { 
                                                                                      /*   void borrowBook(){        
                                                                                      if (is borrowed) {
                                                                                          throw Exception (isBorrowed)                        }
                                                                                              isBorrowed = true;   } */
     if (isBorrowed = false) {
      throw Exception("This book '$title' is unavailable, it has been borrowed.");
      }
    return true;
  }

  void returnBook() {
    if(isBorrowed == true){
      isBorrowed = false;
    }    
  }
}

class Library {
  List<Book> books = [];

void addBook(Book book){
    books.add(book);
  }

  List<Book> searchByTitle(String keyword) {
    List<Book> booksToBeReturned = [];
    for (var book in books){
      if(book.title.toLowerCase().contains(keyword.toLowerCase())){   //toLowerCase ...helps to make more case insensitive
         booksToBeReturned.add(book);
      }           
    }
    return booksToBeReturned;
  }
}         */




/*
3. 3.
Create an abstract class Vehicle with: 
 
 Fields: brand (String) and speed (int). 
 
 An abstract method move() that must be implemented by subclasses. 

 Create an abstract class Vehicle with: 
 
 Fields: brand (String) and speed (int). 
 
 An abstract method move() that must be implemented by subclasses. 
 
 
 
 Create two mixins: 
 
 Electric → adds a method chargeBattery(). 
 
 FuelPowered → adds a method refuel(). 
 
 
 
 Create concrete classes: 
 Car that extends Vehicle and mixes in FuelPowered. 
 Bike that extends Vehicle (no mixins). 
 ElectricScooter that extends Vehicle and mixes in Electric.

In main(): create a list of different vehicles
 
*/