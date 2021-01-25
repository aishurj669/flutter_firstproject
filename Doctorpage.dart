import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter22_app/FindDoctorpage.dart';
import 'package:flutter22_app/Loginpage.dart';

class Doctorpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return Doctor_Session();
  }

}

class Doctor_Session extends State<Doctorpage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(
       title: Text(""),
     ),
     body:
     Column(
         children:[
           Container(
             padding: const EdgeInsets.all(30),
             child: Text("Choose The Doctor You Want",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
           ),
           Container(
             padding: const EdgeInsets.all(20),
             child: Text("Lorem ipsum dolor amet, consectetur adipiscing inet deli",style: TextStyle(fontSize: 20),),
           ),

           RaisedButton(
            // padding: const EdgeInsets.all(20),
             child: Text("Get Started"),
             color: Colors.redAccent,
             onPressed: (){
               Navigator.push(
                 context,
                 MaterialPageRoute(builder: (context) => FindDoctorpage()),
               );
             },
           ),
           Container(
            // padding: const EdgeInsets.all(20),
             child: Image.asset("assets/Images/Doct5.png"),
            height: MediaQuery.of(context).size.height*0.6,
            width: MediaQuery.of(context).size.width ,
           )
         ]
       ),
   );
  }

}
