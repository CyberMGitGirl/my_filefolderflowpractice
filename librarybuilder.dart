/*

1. Create a book class with the following:

-fields: title String, author string, year int, and isBorrowed (bool, default false)
-a constructor to initialise a book
-a method borrowbook() that sets isBorrowed to true, but should throw an exception if the book is already borrowed.
- a method returnBook() that sets isBorrowed to false.

2. Create  a Library class with:
-A List<Book> to hold books
-a method addBook (Book book) to add a new book.
-A method searchByTitle (String keyword) that returns a list of books containing the keyword in their title (case sensitive).
-A method listAvailableBook () that returns all books not borrowed.

3. In main():
-add at least 5 books to the library
-let the user interact via console input with a menu:

    a) list available books
    b) Search book by title
    c) Borrow a book
    d) Return a book
    e) Exit

*/



import 'dart:io';

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

  void borrowBook() {
    if (isBorrowed) {
      throw Exception("The book '$title' is already borrowed.");
    }
    isBorrowed = true;
  }

  void returnBook() {
    isBorrowed = false;
  }

  @override
  String toString() {
    return '"$title" by $author ($year) ${isBorrowed ? "[Borrowed]" : "[Available]"}';
  }
}

class Library {
  List<Book> books = [];

  void addBook(Book book) {
    books.add(book);
  }

  List<Book> searchByTitle(String keyword) {
    return books.where((book) => book.title.contains(keyword)).toList();
  }

  List<Book> listAvailableBooks() {
    return books.where((book) => !book.isBorrowed).toList();
  }
}

void main() {
  Library library = Library();

  // Add 5 books
  library.addBook(Book(title: '1984', author: 'George Orwell', year: 1949));
  library.addBook(Book(title: 'Half of a Yellow Sun', author: 'Chimamanda', year: 2006));
  library.addBook(Book(title: 'Things Fall Apart', author: 'Chinua Achebe', year: 1980));
  library.addBook(Book(title: 'The Hobbit', author: 'JRR Tolkien', year: 1937));
  library.addBook(Book(title: 'Dune', author: 'Frank Herbert', year: 1965));

  while (true) {
    print('\n Library Menu:');
    print('a) List available books');
    print('b) Search book by title');
    print('c) Borrow a book');
    print('d) Return a book');
    print('e) Exit');
    stdout.write('Choose an option: ');
    String? choice = stdin.readLineSync();

    switch (choice) {
      case 'a':
        var availableBooks = library.listAvailableBooks();
        if (availableBooks.isEmpty) {
          print('No available books.');
        } else {
          print('\nAvailable Books:');
          for (int i = 0; i < availableBooks.length; i++) {
            print('${i + 1}. ${availableBooks[i]}');
          }
        }
        break;

      case 'b':
        stdout.write('Enter keyword to search in title: ');
        String? keyword = stdin.readLineSync();
        if (keyword != null && keyword.isNotEmpty) {
          var results = library.searchByTitle(keyword);
          if (results.isEmpty) {
            print('No books found with keyword "$keyword".');
          } else {
            print('\nSearch Results:');
            for (var book in results) {
              print(book);
            }
          }
        }
        break;

      case 'c':
        print('\nBooks in Library:');
        for (int i = 0; i < library.books.length; i++) {
          print('${i + 1}. ${library.books[i]}');
        }
        stdout.write('Enter book number to borrow: ');
        String? input = stdin.readLineSync();
        int? index = int.tryParse(input ?? '');
        if (index != null && index > 0 && index <= library.books.length) {
          try {
            library.books[index - 1].borrowBook();
            print('You borrowed "${library.books[index - 1].title}".');
          } catch (e) {
            print('Error: ${e.toString()}');
          }
        } else {
          print('Invalid book number.');
        }
        break;

      case 'd':
        print('\nBooks in Library:');
        for (int i = 0; i < library.books.length; i++) {
          print('${i + 1}. ${library.books[i]}');
        }
        stdout.write('Enter book number to return: ');
        String? input = stdin.readLineSync();
        int? index = int.tryParse(input ?? '');
        if (index != null && index > 0 && index <= library.books.length) {
          library.books[index - 1].returnBook();
          print('You returned "${library.books[index - 1].title}".');
        } else {
          print('Invalid book number.');
        }
        break;

      case 'e':
        print('Exiting the library system. Goodbye!');
        return;

      default:
        print('Invalid option. Try again.');
    }
  }
}
