import 'dart:io';

void main() {
  while (true) {
    print("\n  WELCOME TO THE AMAZING TRIANGLE GAME ");
    print("1. Calculate Triangle Area");
    print("2. Exit");

    stdout.write("Pick an option: ");
    String? option = stdin.readLineSync();

    if (option == "1") {
      double base = promptForPositive("Enter the base of the triangle: ");
      double height = promptForPositive("Enter the height of the triangle: ");

      Triangle triangle = Triangle(base, height);
      double area = triangle.area();

      String formula = "0.5 × $base × $height = $area";

      print("\nThe area of the triangle is: $formula\n");
    } else if (option == "2") {
      print("Exiting the game. Goodbye!");
      break;
    } else {
      print("Invalid option. Please choose 1 or 2.\n");
    }
  }
}

                                        // Reusable input function for positive numbers
double promptForPositive(String label) {
  while (true) {
    stdout.write(label);
    final input = stdin.readLineSync();
    final value = double.tryParse(input ?? '');
    if (value != null && value > 0) return value;
    print("Please enter a valid positive number.");
  }
}

abstract class Shape {
  double area();
}

class Triangle extends Shape {
  double base;
  double height;

  Triangle(this.base, this.height);

  @override
  double area() {
    return 0.5 * base * height;
  }
}


            // ALTERNATIVE COMPLICATED

/* import 'dart:io';

void main() {
  while (true) {
    print("Welcome to the Triangle Game!!!\n");
    print("1. Start Triangle Area Calculation");
    print("2. Exit!");

    stdout.write("Pick an option: ");
    String? option = stdin.readLineSync();

    if (option == "1") {
      stdout.write("Enter the base of the triangle: ");
      String? baseInput = stdin.readLineSync();
      stdout.write("Enter the height of the triangle: ");
      String? heightInput = stdin.readLineSync();

      double? base = double.tryParse(baseInput ?? '');
      double? height = double.tryParse(heightInput ?? '');

      if (base == null || height == null || base <= 0 || height <= 0) {
        print("Invalid input. Please enter positive numbers only.\n");
        continue;
      }

      Triangle triangle = Triangle(base, height);
      print(
        '\nThe area of the triangle with base = $base and height = $height is: ${triangle.area()}\n',
      );
    } else if (option == "2") {
      print("Exiting the game. Goodbye!");
      break;
    } else {
      print("Invalid option. Please choose 1 or 2.\n");
    }
  }
}

abstract class Shape {
  double area();
}

class Triangle extends Shape {
  double base;
  double height;

  Triangle(this.base, this.height);

  @override
  double area() {
    return 0.5 * base * height;
  }
}  */
