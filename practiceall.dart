void main() {
  var oak = Tree();
  var mango = Tree();
  var orange = Tree();

  oak.producesFruit();
  
}

class Tree {
  String root = "root";
  int leaves = 200;
  String branches = "branches";

  void producesWood(){
    print("It produces wood.");
  }

  void producesShade(){
    print("It supplies shade.");
  }

  void producesFruit(){
    print("Produces over $leaves leaves");
  }

}