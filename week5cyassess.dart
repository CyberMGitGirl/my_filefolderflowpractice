import 'dart:io';                                      //For console input
void main(){


    List<String> tasks = [];
    List<bool> done = [];

  while (true) {

    print("\nWELCOME TO CY's LIST MANAGER");
    print("\n(1) Add Task");
    print("(2) View tasks");
    print("(3) Mark Tasks as Done");
    print("(4) Delete Task");
    print("(5) Exit");

    stdout.write("\n\nChoose an Option: ");              //what you interact with for input
    var choice = stdin.readLineSync();              //String? means either string, or null...if user inputs nothing
                                                     //and presses enter.
    if (choice == "1") {
      stdout.write("\nInput A Task: ");
      String? task = stdin.readLineSync();
      if (task != null && task != "") {
        tasks.add(task);
        done.add(false);
        print("\nYour task has been successfully added !");
      } else {
        print("\nNo task was entered !!");
      }

    } 
    
    else if (choice == "2") {
      if (tasks.length == 0) {
        print("\nNo tasks to show.");
      }else {
        print("\nThis is Your Task List:");

        for (int i = 0; i < tasks.length; i++) {
          String status = done[i] ? "[Task Done]" : "[Task in Transit]";
          print("${i +1 }. $status ${tasks[i]}");
        }
      }
    }
  

  else if (choice == "3") {

    if (tasks.length == 0) {
      print("\nNo tasks To Mark");
    }else {
  
      stdout.write("\nSelect Tasks to Mark as Done: ");
      int? num = int.tryParse(stdin.readLineSync() ?? "");
      if(num != null && num > 0 && num <= tasks.length) {
        done[num - 1] = true;
        print("\nTask successfully marked as done!! Congratulations !!!");
      }else {
      print("\nThis is an invalid task number.");
  }
}
  }

else if (choice == "4") {
  if(tasks.length == 0) {
    print("\nNo Tasks To Delete.");
  } else {
  stdout.write("\nSelect the Task Number to Delete: ");
  int? num = int.tryParse(stdin.readLineSync() ?? "");
  if (num != null && num > 0 && num <= tasks.length) {
    List<String> newTasks = [];                              //rma
    List<bool> newDone = [];

    for (int i = 0; i < tasks.length; i++) {
      if(i != num -1) {
        newTasks.add(tasks[i]);
        newDone.add(done[i]);
      }
    }                                                        
    tasks = newTasks;
    done = newDone;
    print("\nTask has been deleted.");
  } else {
    print("\nThis is an invalid number!");

  }
 
}
}

else if (choice == "5") {
  print("\nThe List Manager is closing...");
  break;

}else {
  print("\nThis is an invalid choice, please try again.");
  print("Pick a Number from 1-5.");
}
  }
  }