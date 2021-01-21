import 'package:flutter/material.dart';

class FindDoctorpage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FindDoctor_Session();
  }

}

class FindDoctor_Session extends State<FindDoctorpage>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

     return Scaffold(
       appBar: AppBar(
         title: Text('Search For Doctor'),
         actions: <Widget>[
           IconButton(icon: Icon(Icons.search),
               onPressed: () {
                 showSearch(context: context);
               })
         ],
       ),
       body: Column(
              children:[
               Text('Find your desired Doctor',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
               Text("Categories",style:TextStyle(fontSize: 30),),
                Row(
                  children: [
                   Container(
                     padding: const EdgeInsets.all(5),
                     child:  ListView(
                       scrollDirection: Axis.horizontal,
                       children:<Widget>[
                         Container(
                           child: Card(
                               elevation: 3,
                               color: Colors.white,
                               child: Column(
                                 children: [
                                   FractionalTranslation(
                                     translation: Offset(0.5, -0.3),
                                     child: Align(
                                       child: Container(
                                         height: 50,
                                         width: 50,
                                         child: Image.asset("assets/Images/teeth.png"),
                                         decoration: BoxDecoration(
                                             color: Colors.blue,
                                             borderRadius: BorderRadius.circular(10)
                                         ),
                                         padding: const EdgeInsets.only(left: 0),
                                       ),
                                     ),
                                   ),

                                   Container(
                                     child: Text("Dental \n Surgeon",style: TextStyle(color: Colors.purple),),
                                     padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
                                     margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
                                   ),
                                 ],
                               ),
                           ),
                           padding: const EdgeInsets.only(left: 10),
                         ),
                         // margin: const EdgeInsets.all(20),
                         Container(
                           child: Card(
                             elevation: 3,
                             color: Colors.white,
                             child: Column(
                                 children: [
                                 FractionalTranslation(
                                 translation: Offset(0.5, -0.3),
                                  child: Align(
                                   child: Container(
                                    height: 50,
                                     width: 50,
                                    child: Image.asset("assets/Images/heart.png"),
                                    decoration: BoxDecoration(
                                     color: Colors.blue,
                                     borderRadius: BorderRadius.circular(10)
                                 ),
                                 padding: const EdgeInsets.only(left: 0),
                               ),
                             ),
                           ),
                              Container(
                                child: Text("Heart \n Sugeon",style: TextStyle(color: Colors.purple),),
                                padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
                                 margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
                              ),
                            ],
                           )
                          ),
                         padding: const EdgeInsets.only(left: 10),
                        ),
                           // color: Colors.blueAccent,
                           // height: 100,
                           // width: 70,
                          // margin: const EdgeInsets.all(20),
                         Container(
                           child: Card(
                             elevation: 3,
                             color: Colors.white,
                             child: Column(
                               children: [
                                 FractionalTranslation(
                                   translation: Offset(0.5, -0.3),
                                   child: Align(
                                     child: Container(
                                       height: 50,
                                       width: 50,
                                       child: Image.asset("assets/Images/eye.png"),
                                       decoration: BoxDecoration(
                                           color: Colors.blue,
                                           borderRadius: BorderRadius.circular(10)
                                       ),
                                       padding: const EdgeInsets.only(left: 0),
                                     ),
                                   ),
                                 ),

                                 Container(
                                   child: Text("Eye \n Speciality",style: TextStyle(color: Colors.purple),),
                                    padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
                                    margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
                           // color: Colors.black54,
                           //  height: 100,
                           // width: 70,
                           // margin: const EdgeInsets.all(20),
                                 ),
                               ],
                             ),
                           ),
                           padding: const EdgeInsets.only(left: 10),
                         ),

                          Container(
                            child: Card(
                              elevation: 3,
                              color: Colors.white,
                               child: Column(
                                 children: [
                                  FractionalTranslation(
                                     translation: Offset(0.5, -0.3),
                                     child: Align(
                                      child: Container(
                                       height: 50,
                                        width: 50,
                                       child: Image.asset("assets/Images/cardiology.png"),
                                       decoration: BoxDecoration(
                                       color: Colors.blue,
                                       borderRadius: BorderRadius.circular(10)
                                      ),
                                     padding: const EdgeInsets.only(left: 0),
                                  ),
                                ),
                               ),
                                Container(
                                 child: Text("Cardiology \n Sugeon",style: TextStyle(color: Colors.purple),),
                                 padding: const EdgeInsets.only(top: 0, right: 20, left: 10),
                                 margin: const EdgeInsets.only(top: 0, right: 0, left: 0),
                         //   // color: Colors.black54,
                         //   //  height: 100,
                          //  width: 60,
                            // margin: const EdgeInsets.all(20),
                              ),
                                 ],
                             ),
                           ),
                         padding: const EdgeInsets.only(left: 10),
                         ),
                       ],
                     ),
                    width: 400,
                     height: 100,
                   ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(20),
                  child:  Text("Top Doctors",textAlign:TextAlign.left,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
                ),

               // Text("Top Doctors",textAlign:TextAlign.left,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
                ListTile(
                   tileColor: Colors.black54,
                   leading: Icon(Icons.person),
                    title: Text("Dr.Stella Kane",),
                   subtitle: Text("Heart Surgeon - Flower Hospital"),
                  contentPadding: const EdgeInsets.all(10),
                 ),
                ListTile(
                  tileColor: Colors.orangeAccent,
                  leading: Icon(Icons.person),
                  title: Text("Dr.Joseph Cart"),
                  subtitle: Text("Dental Surgeon - Flower Hospital"),
                  contentPadding: const EdgeInsets.all(10),
                ),
                ListTile(
                  tileColor: Colors.black54,
                  leading: Icon(Icons.person),
                  title: Text("Dr.Samatha"),
                  subtitle: Text("Cardiology Surgeon - Flower Hospital"),
                  contentPadding: const EdgeInsets.all(10),
                ),
           ],
        ),
     );
  }
}