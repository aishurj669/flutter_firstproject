import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter22_app/Homepage.dart';

class Registerpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Register_Session();
  }

}

class Register_Session extends State<Registerpage>{
  final firstnameController = TextEditingController();
  final lastnameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  var email = "aishwaryajoshi955@gmail.com";
  var password = "aishurj22";

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Scaffold(
      appBar: AppBar(
        title: Text(""),
      ),

      body: Container(
            decoration: BoxDecoration(
            gradient: LinearGradient(
            begin: Alignment.topRight,
           end: Alignment.bottomLeft,

          colors: [
          Colors.blue,
          Colors.redAccent,
        ]),),
      child:
        ListView(
        children: <Widget>[
          Image.asset(
            'assets/Images/water1.png',
            fit: BoxFit.contain,
            height: 100,
          ),

        Container(
         child: Text("Register",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
          padding: const EdgeInsets.all(20),
        ),
           ListTile(
             //tileColor: Colors.cyan,
            leading: const Icon(Icons.account_circle),
            title:  TextField(
            controller: firstnameController,
            decoration: InputDecoration(
            hintText:"Enter your FirstName",
           ),

            ),

        ),
           ListTile(
             //tileColor: Colors.cyan,
             leading: const Icon(Icons.account_box_sharp),
             title:  TextField(
             controller: lastnameController,
             decoration: InputDecoration(
             hintText:"Enter your LastName",
            ),
          ),
         ),

         ListTile(
           //tileColor: Colors.cyan,
           leading: const Icon(Icons.attach_email),
           title:  TextField(
         controller: emailController,
         decoration: InputDecoration(
         hintText:"Enter your email",
         ),
        ),
         ),
         ListTile(
          //tileColor: Colors.cyan,
           leading: const Icon(Icons.visibility_outlined),
          title:  TextField(
           controller: passwordController,
           obscureText: true,
          decoration: InputDecoration(
          hintText:"Enter your password",
          ),
         ),
        ),
          Column(
            children: <Widget>[
           RaisedButton(
             child: Text("CREATE ACCOUNT"),
             onPressed: () {
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => Homepage()),
               );
             },
           ),
         ],
       )

      ],
     ),
      ),
    );
  }

}