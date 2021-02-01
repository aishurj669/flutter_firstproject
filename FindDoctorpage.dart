import 'package:flutter/material.dart';
import 'package:flutter22_app/AboutDoctor.dart';

class FindDoctorpage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return FindDoctor_Session();
  }

}

class FindDoctor_Session extends State<FindDoctorpage>{
  final searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    // TODO: implement build

     return Scaffold(
       resizeToAvoidBottomInset: false,
       appBar: AppBar(
         // title: Text('Search For Doctor'),
         // actions: <Widget>[
         //   IconButton(icon: Icon(Icons.search),
         //       onPressed: () {
         //         showSearch(context: context);
         //       })
         // ],
       ),
       body: Column(
              children:[
                ListTile(
                  title: Text('Find your desired Doctor',style:TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
                ),

               ListTile(
                 leading: TextField(
                   controller: searchController,
                   decoration: InputDecoration(
                      // labelText: "Search",
                       hintText: "Search for doctor",
                       prefixIcon: Icon(Icons.search),
                       border: OutlineInputBorder(
                           borderRadius: BorderRadius.all(Radius.circular(25.0)))),
                 ),
                // trailing: Icon(Icons.search),
               ),

               ListTile(
                 leading:  Text("Categories",style:TextStyle(fontSize: 30), textAlign: TextAlign.right),
               ),
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
                                     translation: Offset(0.4, -0.1),
                                     child: Align(
                                       child: Container(
                                         height: 50,
                                         width: 50,
                                         child: Image.asset("assets/Images/teeth.png"),
                                         decoration: BoxDecoration(
                                             color: Colors.white,
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
                                 translation: Offset(0.4, -0.1),
                                  child: Align(
                                   child: Container(
                                    height: 50,
                                     width: 50,
                                    child: Image.asset("assets/Images/heart.png"),
                                    decoration: BoxDecoration(
                                     color: Colors.white,
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
                                   translation: Offset(0.4, -0.1),
                                   child: Align(
                                     child: Container(
                                       height: 50,
                                       width: 50,
                                       child: Image.asset("assets/Images/eye.png"),
                                       decoration: BoxDecoration(
                                           color: Colors.white,
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
                                     translation: Offset(0.4, -0.1),
                                     child: Align(
                                      child: Container(
                                       height: 50,
                                        width: 50,
                                        child: Image.asset("assets/Images/cardiology.png"),
                                        decoration: BoxDecoration(
                                        color: Colors.white,
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
                  child: ListTile(
                      leading:Text("Top Doctors",style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),textAlign: TextAlign.left,)
                  ),
                  //padding: const EdgeInsets.all(20),
                  //child:  Text("Top Doctors",textAlign:TextAlign.left,style:TextStyle(fontWeight: FontWeight.bold,fontSize: 30)),
                ),

                Container(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      elevation: 20,
                      child:Container(child:
                          ListTile(
                           leading:  CircleAvatar(radius:20,backgroundImage: AssetImage('assets/Images/Doct3.png',)),
                            title: Text("Dr.Stella Kane",style: TextStyle(fontSize: 20),),
                            subtitle: Text("Heart Surgeon - Flower Hospital",style: TextStyle(fontSize: 18)),
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => AboutDoctor()),
                              );
                            },
                        ),

                        height: MediaQuery.of(context).size.height*0.1,
                        width:MediaQuery.of(context).size.width,

                        decoration: BoxDecoration(
                            color: Color(0XFFFFEBE3),
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    )
                ),

                Container(
                  padding: const EdgeInsets.all(10),
                    child: Card(
                      elevation: 20,
                      child:Container(child:
                        ListTile(
                          leading: CircleAvatar(radius:20,backgroundImage: AssetImage('assets/Images/Doct1.png',)),
                          title: Text("Dr.Joseph Cart",style: TextStyle(fontSize: 20),),
                          subtitle: Text("Dental Surgeon - Flower Hospital",style: TextStyle(fontSize: 18)),
                         ),
                         height: MediaQuery.of(context).size.height*0.1,
                         width:MediaQuery.of(context).size.width,
                         decoration: BoxDecoration(
                            color: Color(0XFFE1BEE7),
                            borderRadius: BorderRadius.circular(5.0)
                        ),
                      ),
                    )
                  //  padding: const EdgeInsets.all(10),
                ),

                Container(
                    padding: const EdgeInsets.all(10),
                    child: Card(
                      elevation: 20,
                      child:Container(child:
                       ListTile(
                        leading: CircleAvatar(radius:20,backgroundImage: AssetImage('assets/Images/Doct4.png',)),
                        title: Text("Dr.Samatha",style: TextStyle(fontSize: 20),),
                        subtitle:  Text("Cardiology Surgeon - Flower Hospital",style: TextStyle(fontSize: 18)),
                      ),
                        height: MediaQuery.of(context).size.height*0.1,
                        width:MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Color(0XFFBBDEFB),
                            borderRadius: BorderRadius.circular(5)
                        ),
                      ),
                    )
                  //  padding: const EdgeInsets.all(10),
                ),
           ],
        ),
     );
  }
}