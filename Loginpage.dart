import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';

class Loginpage extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
   return Login_Session();
  }

}

class Login_Session extends State<Loginpage>{
  final phoneController = TextEditingController();
  final passwordController = TextEditingController();
  var phone;
  var password;

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
                Text('Phone Number.'),
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
  Widget build(BuildContext context) {
    // TODO: implement build
     return Scaffold(
       body: Column(
         children: <Widget>[
           ClipPath(
             clipper: WaveClipperTwo(flip: true),
             child: Container(
               child: Image.network(
                 "https://png.pngtree.com/thumb_back/fh260/background/20190903/pngtree-colorful-bright-smoke-texture-background-image_312909.jpg",
                 height: 300,
                 width: 500,
               ),
               height: 230,
               color: Colors.black54,
             ),
           ),
           Text(
             "Let's Get Started",
             style: TextStyle(
               color: Colors.redAccent,
               fontSize: 30,
                 fontWeight: FontWeight.bold,
             ),
           ),
           TextField(
             controller: phoneController,
             decoration: InputDecoration(
                 contentPadding: EdgeInsets.all(8),
                 border: InputBorder.none,
                 hintText: "Phone Number"),
           ),
           TextField(
             controller: passwordController,
             obscureText: true,
             decoration: InputDecoration(
               contentPadding: EdgeInsets.all(8),
               border: InputBorder.none,
               hintText: "Password",
             ),
           ),
           MaterialButton(
            minWidth: 350,
             shape: RoundedRectangleBorder(
                 borderRadius: BorderRadius.circular(20),
                 side: BorderSide(color: Colors.cyanAccent)),
             textColor: Colors.white,
             color: Colors.cyan,
             padding: const EdgeInsets.all(8.0),
             child: new Text(
               "Login",
            ),
            // icon:Icon(Icons.all_inclusive_sharp),
             onPressed: () {},
           ),
           FlatButton(
             onPressed: () {},
             child: Text(
               'Forgot Password?',
               style: TextStyle(color: Colors.red),
             ),
           ),
           // MaterialButton(
           //   minWidth: 350,
           //   shape: RoundedRectangleBorder(
           //       borderRadius: BorderRadius.circular(20),
           //       side: BorderSide(color: Colors.lightBlueAccent)),
           //   textColor: Colors.white,
           //   color: Colors.lightBlueAccent,
           //   padding: const EdgeInsets.all(8.0),
           //   child: new Text(
           //     "Sign Up",
           //   ),
           //   onPressed: () {},
           // ),
           // SizedBox(
           //   height: 20,
           // ),
           // Text('or'),
           // SizedBox(
           //   height: 20,
           // ),
           FloatingActionButton(
             child: Text(
               'f',
               style: TextStyle(
                   color: Colors.white,
                   fontSize: 22,
                   fontWeight: FontWeight.bold),
             ),
             backgroundColor: Colors.blueAccent,
             onPressed: () {},
           ),
           SizedBox(
             height: 158,
           ),
           // Positioned(
           //   bottom: 0,
           //   child: ClipPath(
           //     clipper: WaveClipperTwo(flip: true, reverse: false),
           //     child: Container(
           //       alignment: Alignment.bottomCenter,
           //       height: 50,
           //       width: MediaQuery.of(context).size.width,
           //       color: Colors.white,
           //     ),
           //   ),
           // ),
         ],
       ),
     );
  }
}





class WaveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(
        0, size.height); //start path with this if you are making at bottom

    var firstStart = Offset(size.width / 5, size.height);
    //fist point of quadratic bezier curve
    var firstEnd = Offset(size.width / 2.25, size.height - 50.0);
    //second point of quadratic bezier curve
    path.quadraticBezierTo(
        firstStart.dx, firstStart.dy, firstEnd.dx, firstEnd.dy);

    var secondStart = Offset(
        size.width - (size.width / 3.24), size.height - 105);
    //third point of quadratic bezier curve
    var secondEnd = Offset(size.width, size.height - 10);
    //fourth point of quadratic bezier curve
    path.quadraticBezierTo(
        secondStart.dx, secondStart.dy, secondEnd.dx, secondEnd.dy);

    path.lineTo(
        size.width, 0); //end with this path if you are making wave at bottom
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}