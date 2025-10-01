import 'dart:io';

void main(){
  try{
    stdout.write("Enter a number: ");
    String? input = stdin.readLineSync();

    int number = int.parse(input!);
    print("You entered: $number");

  }on FormatException catch (e) {
    print("Invalid input. Please enter only numbers.");
    print("Enter details: $e");
  }catch (e) {
    print("Something went wrong: $e");

  }finally {
    print("Program finished. Goodbye!");
  }

}