void main() {

//Q 1: Store your age in a variable and display it
    int age = 20;
    print("This is my age: $age years old.");

//Q 2: Make the computer tell you if number 17 is bigger than 15.

    int gNum = 17;                            /*also works with just: if (17>15){
                                                                        }              */
    if (gNum > 15){
        print("True");
    }
//Q 3: Create a message that says Helo, followed by your name
    print("Helo, CY!");

//Q 4: Count how many letters are in the word programmming

    String word = "Programming";
    print(word.length);

//Q 5: Take the number 47 and check if it is an even number

    //use bool too

                                           //print(evenNum % 2 == 0

//Q 6: Make a list of your 3 favorite colors
    
    List <String> myColorList = ["red", "purple", "white"]; //it prints a list
    print(myColorList);

//Q 7: Print 1-7

    for (int i = 1; i <= 7; i++) {            //Output: a vertical iteming
        print(i);
    }

//Q 8: Turn/convert this phrase to lower case

    String phraseInCaps = "HELLO WORLD";
    print(phraseInCaps.toLowerCase());

//Q 9: Determine between 17 and 25, which is larger.   
                                                       /*More efficient
                                                            int a = 25, b = 17;
                                                            print(a > b ? a : b);  
                                                                                    |Output: 25

                                                                         */

    int first = 25;
    int second = 17;
    
    if (first < second){
        print ("Number 17 is greater than 25.");
    }else if(first > second){
        print("Number 25 is obviously greater!!");
    }else{
        print ("Code runs");
    }

// Q 10: Count 10 down to 1
    for (int i = 10; i >= 1; i--){
        print(i);
    }








}