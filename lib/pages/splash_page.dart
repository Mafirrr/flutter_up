// import 'dart:async';
// import 'package:flutter/material.dart';

// import '../color.dart';
// import 'login_page.dart';

// class SplashPage extends StatefulWidget {
//   @override
//   _SplashPageState createState() => _SplashPageState();
// }

// class _SplashPageState extends State<SplashPage> {
//   @override
//   void iniState() {
//     super.initState();
//     Timer(const Duration(milliseconds: 400), () {
//       Navigator.push(
//          context, MaterialPageRoute(builder: (context) => LoginPage()));
//     });
//   }
//   @override 
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: BoxDecoration(
//           gradient: LinearGradient(
//             colors: [orangeColors, orangeLightColors],
//             end: Alignment.bottomCenter,
//             begin: Alignment.topCenter
//           ),
//         ),
//         child: Center(child: Image.asset("assets/images/UP_USER 2.png"),),
//       ),
//     );
//   }
// }