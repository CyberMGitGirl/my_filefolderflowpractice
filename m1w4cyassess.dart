/*1 QUESTION ONE - WEEK 4 ASSESSMENT: You are to build a simple console app in Dart to manage books in a library.

  Create a book Class, a library class - include certain methods and add AT LEAST 5 BOOKS, make the console interactive 
  with an input menu

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



           //QUESTION ONE

import 'dart:io';                                               //This is necessary for console interaction/input

void main() {

 var myLibrary = Library();                                     //alternative: Library mylibrary = Library();

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


  /*var foundBooks = myLibrary.searchByTitle("A");                //Here, I tested a case insensitive response to "A".
  for (var book in foundBooks) {                                  //And it printed books "A" and "a", thanks to toLowerCase
    print(book.title);
  } */

  
  bool isRunning = true;

  while (isRunning) {
    print("Hi Visitor, \n Welcome to the Library Menu \n \n SELECT AN OPTION:");
    print("(1) List available books");
    print("(2) Search book by title");
    print("(3) Borrow a book");
    print("(4) Return a book");
    print("(5) Exit");
    stdout.write("Enter your choice here: ");         //what you interact with for input
    String? choice = stdin.readLineSync();            //String? means either string, or null...if user inpus nothing
                                                        //and presses enter.
    if (choice == '1') {
      print("List of available books goes here...");

    } else if (choice == '2') {
      stdout.write("Enter a keyword: ");
      String? keyword = stdin.readLineSync();
      print("You searched for: $keyword");

    } else if (choice == '3') {
      stdout.write("Enter title to borrow: ");
      String? title = stdin.readLineSync();
      print("You want to borrow: $title");

    } else if (choice == '4') {
      stdout.write("Enter title to return: ");
      String? title = stdin.readLineSync();
      print("You want to return: $title");

    } else if (choice == '5') {
      print("Goodbye!");
      isRunning = false;

    } else {
      print("Invalid choice. Please enter a number from 1 to 5.");
    }
  }

                                                  // main for vehicles
  List<Vehicle> vehicles = [
    Car("Cadillac", 110),
    Bike("Orbea", 25),
    ElectricScooter("Okinawa", 30),
    Car("Mercedes-Benz", 140),
    ElectricScooter("Bajaj Chetak", 35),
  ];

  for (var vehicle in vehicles) {
    vehicle.move();

    if (vehicle is Electric) {
      (vehicle as Electric).chargeBattery();                                           //used "as" to resolve
    }

    if (vehicle is FuelPowered) {
      (vehicle as FuelPowered).refuel();
    }

    print("\n");                                                                         // new line spacing
  }
}

                  //Question ONE body:


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
                                                                                      /* Also try: void borrowBook(){        
                                                                                             if (isBorrowed) {
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
         booksToBeReturned.add(book);                                 //It printed books with "A" or "a".
      }           
    }
    return booksToBeReturned;
  }
}


            //QUESTION THREE

/*
3.
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

In main(): create a list of different vehicles */

              //QUESTION TWO


abstract class Vehicle {
  String brand;
  int speed;

  Vehicle(this.brand, this.speed);

  void move();                                                                    // method is here
}

                                                                                  // The Mixin Part

                                                                                  //#1...Electric Mixin
mixin Electric {
  void chargeBattery() {
    print("Start charging the battery!!!");
  }
}
                                                                                  //#2...Fuel Powered Mixin 
mixin FuelPowered {
  void refuel() {
    print("This vehicle is fuel-powered: KINDLY REFUEL !!! ");
  }
}


class Car extends Vehicle with FuelPowered {
  Car(String brand, int speed) : super(brand, speed);

  @override
  void move() {
    print(" Wow, this $brand car is moving at a speed of $speed miles per hour.");
  }
}

class Bike extends Vehicle {
  Bike(String brand, int speed) : super(brand, speed);

  @override
  void move() {
    print("This $brand bike is moving at $speed kilometers per hour.");
  }
}


class ElectricScooter extends Vehicle with Electric {
  ElectricScooter(String brand, int speed) : super(brand, speed);

  @override
  void move() {
    print("Most $brand electric scooters are so fast, look at how it is moving at: $speed meters per hour.");
  }
}



         
