import 'package:flutter/material.dart';
import 'package:flutter22_app/Homepage.dart';
import 'package:flutter22_app/Registerpage.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:shared_preferences/shared_preferences.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 final emailController = TextEditingController();
 final passwordController = TextEditingController();

 SharedPreferences logindata;
 bool newuser;

 Future<void> _showMyDialog() async {
   return showDialog<void>(
     context: context,
     barrierDismissible: false, // user must tap button!
     builder: (BuildContext context) {
       return AlertDialog(
         title: Text('Incorrect'),
         content: SingleChildScrollView(
           child: ListBody(
             children: <Widget>[
               Text('User name.'),
               Text('Password'),
            Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQOhGcyldbMX-UFsQ1WmwbP_e5A5Fmc8RaSnw&usqp=CAU"),
             ],
           ),
         ),
         actions: <Widget>[
           TextButton(
             child: Text('OK'),
             onPressed: () {
               Navigator.of(context).pop();
             },
           ),
         ],
       );
     },
   );
 }
  @override
  void initState() {
    // TODO: implement initState
    check_if_already_login();
  }
 void check_if_already_login() async {
   logindata = await SharedPreferences.getInstance();
   newuser = (logindata.getBool('login') ?? true);
   print(newuser);
   if (newuser == false) {
     Navigator.pushReplacement(
         context, new MaterialPageRoute(builder: (context) => Homepage()));
   }
 }
 @override
 void dispose() {
   // Clean up the controller when the widget is disposed.
  emailController.dispose();
   passwordController.dispose();
   super.dispose();
 }
  Widget build(BuildContext context) {

    return Scaffold(
      bottomSheet: Text("Terms & Conditions",style: TextStyle(fontSize: 20)),

      body:

      Container(
            decoration: BoxDecoration(
          gradient: LinearGradient(
          begin: Alignment.topRight,
          end: Alignment.bottomLeft,
          stops: [0.7,0.7,0.7,1],
         colors: [
         Colors.black45, Colors.black45,Colors.grey,
         Colors.white,
         ]),),
        child: ListView(
           children: <Widget>[
             Image.asset(
               'assets/Images/water1.png',
               fit: BoxFit.contain,
               height: 100,
             ),
             Container(
               child: Text("LOGIN",style:TextStyle(fontWeight: FontWeight.bold,fontSize: 40),),
               padding: const EdgeInsets.all(20),
             ),

             ListTile(
              leading: const Icon(Icons.attach_email),
               title:  TextField(
              controller: emailController,
              decoration: InputDecoration(
              hintText:"Enter your email",
           ),
          ),
        ),
          ListTile(
            leading: const Icon(Icons.visibility_outlined),
           title:  TextField(
           controller: passwordController,
           obscureText: true,
           decoration: InputDecoration(
           hintText:"Enter your password",
         ),
        ),
        ),
             Container(
               child : Text("Forgot Password ?",textAlign: TextAlign.right),

             ),
             Column(children: <Widget>[
               RaisedButton(
                   child: Text(
                       'LOGIN',
                       style: TextStyle()),
                 onPressed: () {
                   setState(() {
                       if (emailController.text == "text22@gmail.com" &&
                          passwordController.text == "arj22")
                         {
                          print("successfully");
                          logindata.setBool('login', false);
                          logindata.setString('email', "text22@gmail.com");
                          logindata.setString('password', "arj22");
                          Navigator.push(
                               context,
                           MaterialPageRoute(builder: (context) => Homepage()),
                    );
                 }
                 else {
                     _showMyDialog();
                     }
                    print("Incorrect");
               });
                 })
              ],
             ),
       ],
      ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Registerpage()),
           );
         },
          child: Icon(Icons.add),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
