import 'package:flutter/material.dart';
//import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class AboutDoctor extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return AboutDoctor_Session();
  }

}

class AboutDoctor_Session extends State<AboutDoctor>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
     appBar: AppBar(

     ),
     body: ListView(
       children: [
         Container(
           padding: const EdgeInsets.all(20),
           child: Image.asset("assets/Images/FemaleDoct.png"),
         ),
       Container(
          child: Column(
              children: [
            FractionalTranslation(
            translation: Offset(0.3, -0.1),), Container(child:
             ListTile(
               tileColor: Color(0XFFBBDEFB),
               leading: Image.asset("assets/Images/Doct3.png",height: MediaQuery.of(context).size.height*0.2,width:MediaQuery.of(context).size.width*0.2 ,),
               trailing: Icon(Icons.call),
               title: Text("Dr. Stella Kane",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
              subtitle: Text("Heart Surgeon-Flower Hospital"),
            ),

           ),
            ListTile(
             trailing: Icon(Icons.mail),
           ),
           ListTile(
            leading:Text("About Doctor",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
           ),
           ListTile(
             subtitle: Text("Dr.Stella is a Top most Heart surgeon in Flower Hospital. She has done over 100 successful surgeries within past 3 years."
            "She has achieved several awards for her wonderful contribution in her own field.",
             style: TextStyle(color: Colors.black,letterSpacing: 1.0),),
           ),
           ListTile(
             leading:Text("UpComing Schedules",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),
           )
           ),
            Container(
             child: Card(
             elevation: 20,
              child:Container(child:
               ListTile(
                 leading: Image.network("https://img.favpng.com/18/11/3/dyersburg-calendar-v7e-6l5-icon-png-favpng-fvgYGKfcSZcx3buZDnzer3uhw.jpg"),
                title: Text("Consultation",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                 subtitle: Text("Monday 9am - 12pm"),
              ),
              height: MediaQuery.of(context).size.height*0.1,
              width: MediaQuery.of(context).size.width,

               decoration: BoxDecoration(
               color: Color(0XFFFFEBE3),
              borderRadius: BorderRadius.circular(15)
            ),
           ),
          )
          ),
           Container(
            child: Card(child:
             Container(child:
               ListTile(
                leading: Image.network("https://img.favpng.com/18/11/3/dyersburg-calendar-v7e-6l5-icon-png-favpng-fvgYGKfcSZcx3buZDnzer3uhw.jpg"),
                 title: Text("Consultation",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                  subtitle: Text("Tuesday 9am - 12pm"),
               ),
                 height: MediaQuery.of(context).size.height*0.1,
                 width:MediaQuery.of(context).size.width,

                decoration: BoxDecoration(
                color: Color(0XFFFCE4EC),
                borderRadius: BorderRadius.circular(15)
                ),
               ),
              )
            ),
             Container(
               child: Card(child:
                 Container(child:
                    ListTile(
                     leading: Image.network("https://img.favpng.com/18/11/3/dyersburg-calendar-v7e-6l5-icon-png-favpng-fvgYGKfcSZcx3buZDnzer3uhw.jpg"),
                     title: Text("Consultation",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
                       subtitle: Text("Wednesday 9am - 12pm"),
                   ),
                   height: MediaQuery.of(context).size.height*0.1,
                   width:MediaQuery.of(context).size.width,

                   decoration: BoxDecoration(

                  borderRadius: BorderRadius.circular(15),
                  color: Color(0XFFFFEBE3),
                 ),

               ),
             )
            ),
         ]),
        ),
      ]),
   );
  }

}


