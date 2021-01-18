import 'package:flutter/material.dart';
import 'package:flutter22_app/Bookpage.dart';

class Bmipage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return BmipageSession();
  }

}

class BmipageSession extends State<Bmipage>{

  final weightController = TextEditingController();
  final heightController = TextEditingController();
  final resultController = TextEditingController();
  double result;
  var status;


  void getData(){
    double height = double.parse(heightController.text)/100;
    double weight = double.parse(weightController.text);
    double square = height*height;
    result = weight/square;
    setState(() {
      print(result);
      if(result<18.5)
        status="underweight";
      else if(result<=24.9)
        status="Normal";
      else if(result<=30)
        status="overweight";
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return
      Scaffold(
        appBar: AppBar(
          title: Text("BMI"),
          backgroundColor: Colors.deepOrange,
        ),
        body:

        ListView(
          children: <Widget>[
            Container(
                child: Text("BMI",style:TextStyle(fontWeight: FontWeight.bold,fontSize:60),textAlign: TextAlign.center),
            ),

            ListTile(
              tileColor: Colors.pinkAccent,
              leading: const Icon(Icons.assessment_sharp),
              title:  TextField(
                controller: heightController,
                decoration: InputDecoration(
                  hintText:"Enter a height",
                ),
              ),
            ),
            ListTile(
              tileColor: Colors.pinkAccent,
              leading: const Icon(Icons.view_headline_sharp),
              title:  TextField(
                controller: weightController,
                decoration: InputDecoration(
                  hintText:"Enter a weight",
                ),
              ),
            ),
            Column(
              children: <Widget>[
                RaisedButton(
                  onPressed: getData,
                  child: Text("Calculate BMI",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25),),
                ),
              ],
            ),
         Container(
           child:  Text("Your BMI Is  " + result.toString(),style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),textAlign: TextAlign.center),
             padding: const EdgeInsets.all(10),
         ),
           Container(
             child:  Text("Your BMI Status Is: " + status.toString(),style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20),textAlign: TextAlign.center),
             padding: const EdgeInsets.all(10),
           ),
           
            RaisedButton(
              child: Text("Go to BookSession"),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bookpage()),
                );
              },
            ),
          //RaisedButton(
                  //  child: Text('Show Snackbar'),
                //  onPressed: () {
                  // Scaffold.of(context).showSnackBar(SnackBar(
                   //  content: Text('Show Snackbar'),
                     // duration: Duration(seconds: 3),
                 // ));
                //   },),


          ],

        ),
      );
  }

}