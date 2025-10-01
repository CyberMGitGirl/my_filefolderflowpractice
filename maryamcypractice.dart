import 'dart:io';
import 'dart:math';

//GUESSER GAME

/*void main() {
                                                      //Testing if the Guesser is working
  var numberToBeGuessed = Random().nextInt(100) + 1;

  print(numberToBeGuessed);
} */

void main() {
  int numberToBeGuessed = Random().nextInt(100) + 1;
  print ("Hello there, WELCOME TO THIS WT FELLOWSHIP GAME !!!");
  print ("Guess a number between 1 to 100");

  while (true){
    String? userGuess = stdin.readLineSync();
    if (userGuess == null) {
      print("You did not enter a number, Guess again.");
      continue;
    }

    int userGuessAsNumber = int.tryParse(userGuess) ?? 0;

    if (userGuessAsNumber < numberToBeGuessed) {
      print("Warmer!!!");
    }else if (userGuessAsNumber > numberToBeGuessed){
      print("Colder");
    }else {
      print ("CORRECT");
      break;
    }

  }
}