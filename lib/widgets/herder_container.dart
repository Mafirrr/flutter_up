import 'package:flutter/material.dart';
import '../color.dart';

class HeaderContainer extends StatelessWidget {
  var text = "Selamat Datang";

  HeaderContainer(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.4,
     decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.white, Colors.white],
              end: Alignment.bottomCenter,
              begin: Alignment.topCenter),
          borderRadius: BorderRadius.only(bottomLeft: Radius.circular(100))),
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 30,
              right: 95,
              child: Text(
            text,
            style: TextStyle(color: black,fontSize: 28, fontWeight: FontWeight.w600),
          )),
          Center(
            child: Image.asset("assets/images/UP_USER 2.png"),
          ),
        ],
      ),
    );
  }
}