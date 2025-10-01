
/*Create a program which calculates the area of a shape the user enters.
Requirements:
 Create an abstract class Shape with an abstract method double area().
 
 Create concrete classes:
 
A shape and field the team will choose
 Circle (field: radius).
 
 Rectangle (fields: length, width).
 
 Triangle (fields: base, height).
 Each must override the area() method.
 
 
 
 In main(): creatively come up with a console experience in order for users to test it. */

//import 'dart:io';           //So dart can read user input, and also so a developer can interact with the console
                                 // !!!NOTE: Not needed here, because we looped, and did not need to engage the console

abstract class Shape {           //abstract class does not expect fields... and can't be instantiated DIRECTLY (meaning
  double area();                 //you can't create objects from it -- SO USE VOID NAME();
                                          //BUT SOMETIMES YOU CAN...CREATE A FIEIELD BUT NOT AN OBJECT directly.
}                                  //abstract  method doesn't have a body (ie, no implementation), its a method w/o a bod
                                     //so the child class...that extends it must PROVIDE the implementation.

                                    //good: enforce consistency, polymorph n shared structure.
class Circle extends Shape {
  double radius;
  Circle(this.radius);

  @override
  double area() {
    return 3.14 * radius * radius;
  }
}

class Rectangle extends Shape {
  int length;
  int width;
  Rectangle(this.length, this.width);
  @override
  double area() {
    return 3.14 * length * width;
    }
}

class Triangle extends Shape {
int base;
int height;
Triangle(this.base, this.height);

@override
double area() {
  return 3.14 * base * height;

}
}

//square , octagon, oval

void main() {                                                       //Hard coding
  //Circle circle = Circle(5.5);
  //print('Circle area: ${circle.area()}');

  //print ("Choose a shape: circle, rectangle, triangle");

  List <Shape> shapes = [
    Circle(5),
    Rectangle(4,6),
    Triangle(3,7),
  ];

for (Shape shape in shapes){
  print("The area is: ${shape.area()}");
}

}