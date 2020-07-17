//import 'package:fiverr_clone/screens/home_screen.dart';
//import 'package:fiverr_clone/screens/home_screen.dart';
//import 'package:fiverr_clone/screens/splash_screen.dart';

//import 'package:fiverr_clone/screens/splash_screen.dart';
//import 'dart:js';

//import 'package:fiverr_clone/screens/splash_screen.dart';
import 'package:fiverr_clone/screens/offer_services_screen.dart';
import 'package:fiverr_clone/screens/splash_screen.dart';
import 'package:fiverr_clone/screens/user_gig_screen.dart';
import 'package:fiverr_clone/screens/welcome_screen.dart';
//import 'package:fiverr_clone/screens/splash_screen.dart';
//import 'package:fiverr_clone/screens/user_gig_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      home: WelcomeScreen(),
    );
  }
}
// class New extends StatefulWidget {
//   @override
//   _NewState createState() => _NewState();
// }

// class _NewState extends State<New> {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => SplashScreen(),
//               ),
//             );
//           },
//         ),
//         appBar: AppBar(
//           title: Text('Hello world'),
//         ),
//         body: Container(
//           child: Text('Hello World'),
//         ),
//       ),
//     );
//   }
// }
