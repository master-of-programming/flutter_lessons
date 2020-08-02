import 'package:flutter/material.dart';

void main(){
  runApp(Myapp());
}
class Myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AramaAppBar(),
    );
  }
}
class AramaAppBar extends StatefulWidget {
  @override
  _AramaAppBarState createState() => _AramaAppBarState();
}

class _AramaAppBarState extends State<AramaAppBar> {
  Widget appBarBasligi=Text("ApppBar Başlığım");
  var iconum=Icon(Icons.search);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: appBarBasligi,
        actions: <Widget>[
          IconButton(icon: iconum, onPressed: () {
            setState(() {
              if(this.iconum.icon==Icons.search){
                this.iconum=Icon(Icons.close);
                this.appBarBasligi=TextField(
                  style: TextStyle(
                    color: Colors.white
                  ),
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search,color: Colors.white,),
                    hintText: "Ara"
                  ),

                );
              }
              else{
                this.iconum=Icon(Icons.search);
                this.appBarBasligi=Text("Ana Sayfa");
              }
            });
          },)
        ],
      ),
    );
  }
}
