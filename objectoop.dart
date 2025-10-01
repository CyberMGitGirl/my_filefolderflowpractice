void main() {
  var person1 = Person();
  person1.name = "Kudirat";
  person1.walk();


}

class Person {
  String name = "Anthony";
  int age = 21;
  String gender = "male";

  void walk(){
    print("$name is walking");
  }

  void eat(){
    print("$name is eating");
  }

  void dancing(){
    print("$name is dancing");
  }

}
