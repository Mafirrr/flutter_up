import 'package:flutter/material.dart';
import 'package:login/pages/login_page.dart';
import 'package:login/pages/home.dart';
import 'package:login/pages/food_terdekat.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Up Indonesia',
      home: LoginPage(),
    );
  }
}