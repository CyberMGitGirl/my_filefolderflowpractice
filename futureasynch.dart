import 'dart:io';
import 'dart:async';
import 'dart:math';

void main() {
  printSummaries();
}

Future <void> printSummaries() async {
  List <int> userId = await fetchUserIds();

  for (var id in userId){
    var userName = getUsername(id);
    var score = await fetchUserScore(id);
    print ("$userName has a $score.");
  }
}

Future <List<int>> fetchUserIds() async {
  await Future.delayed (Duration (seconds:2));
  return [101,102,103];
}

String getUsername(int userId) {
  return "User $userId";
}

Future <int> fetchUserScore (int userId) async {
  await Future.delayed (Duration (milliseconds: 500));
  return Random().nextInt(100);
}