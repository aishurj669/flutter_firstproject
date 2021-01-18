import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter22_app/BMIpage.dart';
import 'package:flutter22_app/Bookpage.dart';

class Homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return Homepagescreen();
  }

}
class Homepagescreen extends State<Homepage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text("Health Care"),
      ),
      body: ListView(
        children: <Widget>[
          Container(
            child: Text("Hello", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),),
            Row(
            children: <Widget>[
              Container(
               child: Text("How can we take care yourself ?", style:TextStyle(fontSize: 20),),),

             ],
            ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: new RaisedButton(
                    child: Text("Find Doctor"),
                    padding: const EdgeInsets.all(40),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookpage(),),);
                    },

                  ),
                  padding: const EdgeInsets.all(20),
                ),
                Container(
                    child: new RaisedButton(
                      child: Text("Find Hospital"),
                      padding: const EdgeInsets.all(40),
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookpage(),),);
                      },
                    ),
                ),
              ],
            ),
          ),
          Container(
            child: Row(
              children: <Widget>[
                Container(
                  child: new RaisedButton(
                    child: Text("Appointment"),
                    padding: const EdgeInsets.all(40),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookpage(),),);
                    },

                  ),
                  padding: const EdgeInsets.all(20),
                ),
                Container(
                  child: new RaisedButton(
                    child: Text("Drug List"),
                    padding: const EdgeInsets.all(40),
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>Bookpage(),),);
                    },
                  ),
                ),
              ],
            ),
          ),


          //Image.network("https://thumbs.dreamstime.com/z/characterizing-male-silhouettes-different-stages-body-mass-index-characterizing-male-silhouettes-different-stages-160203321.jpg"),
         // Image.network("https://img.freepik.com/free-vector/nutrition-facts-vector-package-labels-with-calories-ingredient-information_53562-8423.jpg?size=626&ext=jpg"),
        ],

      ),


      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(child: Text("  "),
              decoration: BoxDecoration(
                image: DecorationImage(
                 image: AssetImage("assets/Images/unnamed.png"),
                ),
              ),
            ),

             ListTile(
               title: Text("BMI Calculation"),
               leading: const Icon(Icons.accessibility_new_sharp),
               onTap: (){
                 Navigator.push(
                   context,
                   MaterialPageRoute(builder: (context) => Bmipage()),
                 );
               },
             ),
            ListTile(
              title: Text("Caloris Calculation"),
              leading: const Icon(Icons.anchor),
              onTap: (){

              },
            ),
            ListTile(
              title: Text("About"),
              leading: const Icon(Icons.account_circle),
              onTap: (){

              },
            ),

          ],
        ),
      ),
    );
  }

}