import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Aboutuspage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return Aboutus_Session();
  }

}

class Aboutus_Session extends State<Aboutuspage>
{

   void callaunch() async{
     String tel="tel://123456";
     if (await canLaunch(tel)) {
       await launch(tel);
     } else {
       throw 'Could not launch $tel';
     }
   }

   void msglaunch() async{
     String sms="sms://123456";
     if (await canLaunch(sms)) {
       await launch(sms);
     } else {
       throw 'Could not launch $sms';
     }
   }


   void emaillaunchurl() async{
     final Uri email_launchurl = Uri(
         scheme: 'mailto',
         path: 'smith@example.com',
         queryParameters: {
           'subject': 'Example Subject & Symbols are allowed!'
         });
         var url=email_launchurl.toString();
         if (await canLaunch(url)) {
        await launch(url);
     } else {
     throw 'Could not launch $email_launchurl';
     }
   }

   void launchurl() async{
     String url="http://www.skycliffit.com/";
     if (await canLaunch(url)) {
       await launch(url);
     } else {
       throw 'Could not launch $url';
     }
   }


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('About Us'),
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topRight,
              end: Alignment.bottomLeft,

              colors: [
                Colors.white,
                Colors.blueAccent,
                // : Image.asset("assets/Images/unnamed.png"),
              ]),),
               child: ListView(
                children: [
                  Image.asset('assets/Images/unnamed.png'),
                  Text("\n About Us..\n", style:TextStyle(fontWeight: FontWeight.bold,fontSize: 40)),
                  Text("SkyCliff IT is passionately built to excel in Quality, Value and Time driven Techno Commercial world.", style: TextStyle(fontSize: 20)),
                  Text("We Understand Customer Requirements and Time bound business commitments, thus, perform time critical process to deliver accurate results.\n",style: TextStyle(fontSize: 20)),
                Row(
                 children: [
                  RaisedButton(
                    onPressed:callaunch,
                      child: Icon(Icons.call),
                    //child: Text("Call",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25),textAlign: TextAlign.left),
                    shape: CircleBorder(
                      side: BorderSide(color: Colors.greenAccent),

                    )
                  ),

                  RaisedButton(
                    onPressed:msglaunch,
                    child: Icon(Icons.message),
                   // child: Text("Message",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25),textAlign: TextAlign.left),
                    shape: CircleBorder(
                      side: BorderSide(color: Colors.lightBlue),
                  ),
                  ),
                  RaisedButton(
                    onPressed:emaillaunchurl,
                    child: Icon(Icons.mail),
                    // child: Text("Message",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25),textAlign: TextAlign.left),
                    shape: CircleBorder(
                      side: BorderSide(color: Colors.lightBlue),
                    ),
                  ),
                  RaisedButton(
                    onPressed:launchurl,
                    child: Icon(Icons.read_more_outlined),
                    // child: Text("Message",style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25),textAlign: TextAlign.left),
                    shape: CircleBorder(
                      side: BorderSide(color: Colors.lightBlue),
                    ),
                  ),
                ],
              )
            ],
        ),
        padding: const EdgeInsets.all(10),
      ),
    );
  }

}