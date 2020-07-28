class Student {
  int id, grade;
  String firstName, lastName, status;

  Student(String firstName, String lastName, int grade) {
    this.firstName = firstName;
    this.lastName = lastName;
    this.grade = grade;
  }
  //named Constructor
  Student.withId(int id, String firstName, String lastName, int grade) {
    this.id = id;
    this.firstName = firstName;
    this.lastName = lastName;
    this.grade = grade;
  }

  String get getStatus {
    String message = "";
    if (this.grade >= 50) {
      message = "Geçti";
    } else if (this.grade > 40) {
      message = "Bütünlemeye Kaldı";
    } else {
      message = "Kaldı";
    }
    this.status = message;
    return this.status;
  }
}
