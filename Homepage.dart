import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter22_app/BMIpage.dart';
import 'package:flutter22_app/Bookpage.dart';
import 'package:flutter22_app/Doctorpage.dart';

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
      body:Container(
        child: Column(
          children: [
            ListTile(
              title: Text('Hello,',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text('How Can We take care yourself?',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.blueGrey,
                ),
              ),
            ),

            Container(
              child: Column(
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap:(){
                        Navigator.push(
                           context,
                           MaterialPageRoute(builder: (context) => Doctorpage()),
                       );
                      },
                        child: Card(
                         child: Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.account_circle,
                                  color: Colors.white,
                                  size: 40,),
                              ),
                              ListTile(

                                title: Text("Find Doctor",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),),
                                subtitle: Text("210 Doctors",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white60,
                                  ),),
                                contentPadding: const EdgeInsets.only(
                                    top: 20, left: 15),
                              )
                            ],
                          ),
                          width: 150,
                          height: 150,
                        ),
                        color: Colors.blue,
                      ),
                   ),
                      Card(
                        child: Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.account_balance,
                                  color: Colors.white,
                                  size: 40,),
                              ),
                              ListTile(
                                title: Text("Find Hospital",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),),
                                subtitle: Text("30 Hospital",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white60,
                                  ),),
                                contentPadding: const EdgeInsets.only(
                                    top: 20, left: 15),
                              )
                            ],
                          ),
                          width: 150,
                          height: 150,
                        ),
                        color: Colors.black54,
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Card(
                        child: Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.add_to_photos,
                                  color: Colors.white,
                                  size: 40,),
                              ),
                              ListTile(
                                title: Text("Appointment",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),),
                                subtitle: Text("50 Available",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white60,
                                  ),),
                                contentPadding: const EdgeInsets.only(
                                    top: 20, left: 15),
                              )
                            ],
                          ),
                          width: 150,
                          height: 150,
                        ),
                        color: Colors.black54,
                      ),
                      Card(
                        child: Container(
                          child: Column(
                            children: [
                              ListTile(
                                leading: Icon(Icons.calendar_today,
                                  color: Colors.white,
                                  size: 40,),
                              ),
                              ListTile(
                                title: Text("DrugList",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),),
                                subtitle: Text("22 Services",
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white60,
                                  ),),
                                contentPadding: const EdgeInsets.only(
                                    top: 20, left: 15),
                              )
                            ],
                          ),
                          width: 150,
                          height: 150,
                        ),
                        color: Colors.black54,
                      ),
                    ],
                  ),
                ],
              ),
              padding: const EdgeInsets.all(27),
            ),
          ],
        ),
        padding: const EdgeInsets.all(10),
        color: Color.fromARGB(100, 255, 244, 214),
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
