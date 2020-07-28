import 'package:first_flutter_app/models/student.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: HomeScreen());
  }
}

class HomeScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomeScreenState();
  }
}

class _HomeScreenState extends State {
  List<Student> students = [
    Student.withId(1, "Ömer", "Akincir", 55),
    Student.withId(2, "Mert", "Özkan", 100),
    Student.withId(3, "Levent", "Karakuz", 30),
    Student.withId(4, "Cihan", "Taylan", 100),
    Student.withId(5, "Hasan", "Tükenmez", 49),
    Student.withId(6, "Ömer", "Çevik", 99)
  ];

  Student selectedStudent = Student.withId(0, "", "", 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Öğrenci Takip Sistemi"),
        ),
        body: buildBody());
  }

  Widget buildBody() {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: students.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(
                    students[index].firstName + " " + students[index].lastName),
                subtitle: Text("Sınavdan aldığı not : " +
                    students[index].grade.toString() +
                    " " +
                    "[" +
                    students[index].getStatus +
                    "]"),
                leading: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://petapixel.com/assets/uploads/2013/03/01-iTBs0eu.jpg"),
                ),
                trailing: buildStatusIcon(students[index].grade),
                onTap: () {
                  setState(() {
                    this.selectedStudent = students[index];
                  });
                },
                onLongPress: () => print("Uzun Basıldı"),
              );
            },
          ),
        ),
        Text("Seçili öğrenci : " +
            selectedStudent.firstName +
            " " +
            selectedStudent.lastName),
        Row(
          children: <Widget>[
            Flexible(
              fit: FlexFit.tight,
              flex: 4,
              child: RaisedButton(
                color: Colors.greenAccent,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.add),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("Yeni Ögrenci")
                  ],
                ),
                onPressed: () => print("Yeni Öğrenci"),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 4,
              child: RaisedButton(
                color: Colors.black12,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.add),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("Güncelle")
                  ],
                ),
                onPressed: () => print("Güncellendi"),
              ),
            ),
            Flexible(
              fit: FlexFit.tight,
              flex: 2,
              child: RaisedButton(
                color: Colors.redAccent,
                child: Row(
                  children: <Widget>[
                    Icon(Icons.add),
                    SizedBox(
                      width: 5.0,
                    ),
                    Text("Sil")
                  ],
                ),
                onPressed: () => print("Silindi"),
              ),
            ),
          ],
        )
      ],
    );
  }

  Widget buildStatusIcon(int grade) {
    if (grade >= 50) {
      return Icon(Icons.done);
    } else if (grade > 40) {
      return Icon(Icons.album);
    } else {
      return Icon(Icons.clear);
    }
  }
}
