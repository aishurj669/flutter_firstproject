import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter22_app/Aboutuspage.dart';
import 'package:flutter22_app/BMIpage.dart';
import 'package:flutter22_app/Bookpage.dart';
import 'package:flutter22_app/Doctorpage.dart';
import 'package:flutter22_app/FindDoctorpage.dart';
import 'package:flutter22_app/Loginpage.dart';
import 'package:flutter22_app/Registerpage.dart';
import 'package:flutter22_app/main.dart';

class Homepage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    print('1. createState()');
    // TODO: implement createState
    return Homepagescreen();
  }

}
class Homepagescreen extends State<Homepage>{

  @override
  void initState() {
    print('1. Statement1');
    // TODO: implement initState
    super.initState();
  }

  @override
  void deactivate() {
    print('7. deactivate');
    // TODO: implement deactivate
    super.deactivate();
  }

  @override
  void didChangeDependencies() {
    print('3. didChnageDependencies');
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
  }

  @override
  void didUpdateWidget(covariant Homepage oldWidget) {
    print('5. didUpdateWidget');
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    print('8. dispose');
    // TODO: implement dispose
    super.dispose();
  }
 // double myHeight = 0.0;
//  double myWidth = 0.0;
  @override
  Widget build(BuildContext context) {
    print('4.build');

    // this.myHeight = MediaQuery.of(context).size.height;
   // this.myWidth = MediaQuery.of(context).size.width;
    //MediaQueryData deviceInfo = MediaQuery.of(context);

    //print('size: ${deviceInfo.size}');
   // print('padding: ${deviceInfo.padding}');
    // TODO: implement build
    //return Container( height: 400px, width: 200px );
   // Size screenSize = MediaQuery.of(context).size;
   // Orientation orientation = MediaQuery.of(context).orientation;

    return Scaffold(
      appBar: AppBar(
        title: Text("Health Care"),
      ),
      body: Container(
       width: MediaQuery.of(context).size.width * 1.8,
        height: MediaQuery.of(context).size.height * 1.8,
        child: Column(
          children: [
            ListTile(
              title: Text('Hello,\n',
             // '[MediaQuery width]: ${screenSize.width.toStringAsFixed(2)}\n\n' +
             // '[MediaQuery orientation]: $orientation',
                style: TextStyle(
                  fontSize: 25,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            ListTile(
              title: Text('How Can We take care yourself?',
            //'[MediaQuery width]: ${screenSize.width.toStringAsFixed(2)}\n\n' +
            // '[MediaQuery orientation]: $orientation',
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
                          setState(() {
                            print('6. Statement');
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Doctorpage()),
                            );
                           }
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
                                  //  '[MediaQuery width]: ${screenSize.width.toStringAsFixed(2)}\n\n' +
                                   // '[MediaQuery orientation]: $orientation',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),),
                                subtitle: Text("210 Doctors",
                                    //'[MediaQuery width]: ${screenSize.width.toStringAsFixed(2)}\n\n' +
                                    //'[MediaQuery orientation]: $orientation',
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
                                    //'[MediaQuery width]: ${screenSize.width.toStringAsFixed(2)}\n\n' +
                                   // '[MediaQuery orientation]: $orientation',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),),
                                subtitle: Text("30 Hospital",
                                    //'[MediaQuery width]: ${screenSize.width.toStringAsFixed(2)}\n\n' +
                                    //'[MediaQuery orientation]: $orientation',
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
                                   // '[MediaQuery width]: ${screenSize.width.toStringAsFixed(2)}\n\n' +
                                   // '[MediaQuery orientation]: $orientation',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),),
                                subtitle: Text("50 Available",
                                   // '[MediaQuery width]: ${screenSize.width.toStringAsFixed(2)}\n\n' +
                                    //'[MediaQuery orientation]: $orientation',
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
                                  //  '[MediaQuery width]: ${screenSize.width.toStringAsFixed(2)}\n\n' +
                                   // '[MediaQuery orientation]: $orientation',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),),
                                subtitle: Text("22 Services",
                                   // '[MediaQuery width]: ${screenSize.width.toStringAsFixed(2)}\n\n' +
                                   // '[MediaQuery orientation]: $orientation',
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
               //Color:Colors.blueAccent,
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
              //Color:Colors.blueAccent,
              title: Text("Create Account"),
              leading: const Icon(Icons.create),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Registerpage()),
                );
              },
            ),
            ListTile(
              title: Text("Book your Session"),
              leading: const Icon(Icons.book_online),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Bookpage()),
                );
              },
            ),
            ListTile(
              title: Text("Search your Doctor"),
              leading: const Icon(Icons.search_off_outlined),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) =>FindDoctorpage()),
                );
              },
            ),
            ListTile(
              title: Text("About"),
              leading: const Icon(Icons.account_circle),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Aboutuspage()),
                );
              },
            ),
            ListTile(
              title: Text("Logout"),
              leading: const Icon(Icons.logout),
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Loginpage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}