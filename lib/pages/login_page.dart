import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login/pages/home.dart';
import 'package:login/pages/lupa_password.dart';
import 'package:login/pages/profil.dart';
import 'package:login/pages/regi_page.dart';
import 'package:login/widgets/btn_widget.dart';
import 'package:login/widgets/herder_container.dart';
import 'package:http/http.dart' as http;

import '../color.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  TextEditingController nomor = TextEditingController();
  TextEditingController password = TextEditingController();
  
  Future login()async{
     var url = "http://192.168.1.19/login/register.php";
    var response = await http.post(
      Uri.parse("http://192.168.1.19/login/register.php"), 
      body: {
      "username": nomor.text,
      "password": password.text,
    });

    var data = json.decode(response.body);
    if (data == "Success"){
      Fluttertoast.showToast(
        msg: "Login Succeessful",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: white,
        fontSize: 16.0,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreenColors,
      body: Container(
        padding: EdgeInsets.only(bottom: 30),
        child: Column(
          children: <Widget>[
            HeaderContainer("Selamat Datang"),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(
                      controller: nomor,
                      hint: "Nomor",
                      icon: Icons.call,
                    ),
                    _textInput(
                      controller: password,
                      hint: "Password",
                      icon: Icons.lock,
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 20),
                      alignment: Alignment.center,
                      child: RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "Dengan masuk, Anda menyetujui ",
                              style: TextStyle(color: Colors.black)),
                          TextSpan(
                              text: "syarat dan ketentuan",
                              style: TextStyle(color: white)),
                        ]),
                      ),
                    ),
                    SizedBox(height: 25),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => PassPage()));
                          },
                          child: Text(
                            'Lupa Password ?',
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 15,),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 10, bottom: 0),
                        child: ButtonWidget(
                          onClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => BelajarNavBar()));
                          },
                          btnText: "Login",
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 10, bottom: 0),
                        child: ButtonWidget(
                          onClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegPage()));
                          },
                          btnText: "Continue with Google",
                        ),
                      ),
                    ),
                    SizedBox(height: 8.0),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Belum punya akun ? ',
                          style: TextStyle(color: Colors.black),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => RegPage()));
                          },
                          child: Text(
                            'Daftar',
                            style: TextStyle(color: white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget _textInput({controller, hint, icon}) {
    return Container(
      margin: EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(30)),
        color: Colors.white,
      ),
      padding: EdgeInsets.only(left: 10),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          hintText: hint,
          prefixIcon: Icon(icon),
        ),
      ),
    );
  }
}
