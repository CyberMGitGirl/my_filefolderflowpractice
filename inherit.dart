void main() {
  Teacher teacher = Teacher (age:10, course: "Mathematics", name: "James", gender: "male");

  teacher.introduction();
  teacher.teach();

  var teacher2 = GuidanceAndCounsellingTeacher(age:10, name: "Veronica", course: "Guidance and Counselling");

  teacher2.introduction();
  teacher2.teach();
  teacher2.motivate();

}

class GuidanceAndCounsellingTeacher extends Teacher {
  GuidanceAndCounsellingTeacher({
    required super.age,
    required super.course,
    required super.name,

  });

@override
  void teach(){
    print("Hi, I love teaching $course");
  }

  void motivate(){
    print("As a guidance and counselling teacher, I am here to motivate and help you! \n So keep it up!!");
  }
}

class Teacher {
  String name;
  int age;
  String course;
  String gender;

  Teacher({
    this.name = "Unnamed",
    required this.age,
    required this.course,
    this.gender = "unspecified",
  })
  
void teach(){
  print("I teach $course");
}

void introduction(){
  print("My name is $name \n My name is $age \n I am a $gender");
}

}