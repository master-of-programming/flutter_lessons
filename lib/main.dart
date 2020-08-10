import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: "Lobster"),
      title: 'Material App',
      home: Scaffold(
        backgroundColor: Colors.brown[300],
        body: SafeArea(
          child: Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CircleAvatar(
                  radius: 80.0,
                  backgroundColor: Colors.lime,
                  backgroundImage: AssetImage("assets/images/fincan-kahve.jpg"),
                ),
                Text(
                  "Akinci Cafe",
                  style: TextStyle(
                      fontSize: 45, color: Colors.brown, fontFamily: "Lobster"),
                ),
                Text(
                  "Bir Fincan Uzağınızda...",
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.brown,
                  ),
                ),
                Container(
                  width: 100,
                  height: 30,
                  child: Divider(
                    color: Colors.brown[300],
                  ),
                ),
                Card(
                  color: Colors.brown[500],
                  margin: EdgeInsets.symmetric(horizontal: 45.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      size: 30,
                      color: Colors.black,
                    ),
                    title: Text(
                      "siparis@acafe.com",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Card(
                  margin: EdgeInsets.symmetric(horizontal: 45.0),
                  color: Colors.brown[500],
                  child: ListTile(
                    leading: Icon(
                      Icons.phone_android,
                      color: Colors.black,
                      size: 30,
                    ),
                    title: Text(
                      "+90 555 555 555",
                      style: TextStyle(color: Colors.black, fontSize: 20),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
//  child: Row(
//                       children: [
//                         SizedBox(
//                           width: 20,
//                         ),
//                         Icon(Icons.phone_android,
//                             size: 30, color: Colors.black),
//                         SizedBox(
//                           width: 30,
//                         ),
//                         Text(
//                           "+90 555 555 555",
//                           style: TextStyle(color: Colors.black, fontSize: 20),
//                         )
//                       ],
//                     ),
