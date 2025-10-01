void main(){
  Person().walk();
  Duck().walk();
}

class Person with Actions {
  String name = "Antoni";
}

class Duck with Actions {
  String name = "Alex";
}

mixin Actions {
  void walk() {
    print("I can walk");
  }

  void swim() {
    print("I can swim!!");
  }
}