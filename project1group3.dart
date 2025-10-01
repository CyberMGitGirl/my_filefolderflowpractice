import 'dart:io';

abstract class Shape {
  double area();
}

class Circle extends Shape {
  double radius;
  Circle(this.radius);
  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  double length;
  double width;
  Rectangle(this.length, this.width);
  @override
  double area() {
    return length * width;
  }
}

class Triangle extends Shape {
  double base;
  double height;
  Triangle(this.base, this.height);
  @override
  double area() {
    return 1 / 2 * base * height;
  }
}

class Square extends Shape {
  double length;
  Square(this.length);
  @override
  double area() {
    return length * length;
  }
}

void main() {
  Circle circle = Circle(5.5);
  Rectangle rectangle = Rectangle(30, 20);
  Triangle triangle = Triangle(20, 5);
  Square square = Square(20);

  while (true) {
    print('Welcome to the World of Shapes!!!\nWhat Shape Are You?');
    print('1. Rectangle');
    print('2.Circle');
    print('3.Triangle');
    print('4. Square');
    print('5. No shape at all');
    stdout.write('Pick an option: ');
    String? option = stdin.readLineSync();
    if (option == '1') {
      print('Rectangle successfully chosen');
      print(
        'The formula for the area of the Rectangle is L x W: ${rectangle.area()}\n',
      );
    } else if (option == '2') {
      print('Circle successfully chosen');
      print(
        'The formula for the area of the Circle is πr2 : ${circle.area()}\n',
      );
    } else if (option == '3') {
      print('Triangle successfully chosen');
      print(
        'The formula for the area of the Triangle is 0.5 x W x L: ${triangle.area()}\n',
      );
    } else if (option == '4') {
      print('Square successfully chosen');
      print(
        'The formula for the area of the Square is L x L: ${square.area()}\n',
      );
    } else if (option == '5') {
      print('End the game!');
      break;
    } else {
      print('Invalid option\nChoose from 1 - 5\n');
    }
  }
}
 