import 'package:flutter/material.dart';

class Bookpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return Bookpage_Session();
  }
}

class Bookpage_Session extends State<Bookpage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return
      Scaffold(
        appBar:AppBar(
          title: Text("Book your class"),

        ),
        body: ListView(
          children: <Widget>[
            Image.network("https://cdn.dribbble.com/users/1364029/screenshots/6551636/yoga.gif"),
            Image.network("https://thumbs.gfycat.com/AcademicEagerJuliabutterfly-small.gif"),
           Image.network("https://www.greetingseveryday.com/wp-content/uploads/2017/06/International-Yoga-Day-2017-3D-GIF-For-Whatsapp.gif"),
          ],
        ),
      );
  }

}