import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:login/pages/home.dart';
import 'package:login/pages/login_page.dart';
import 'package:login/pages/profil.dart';
import 'package:login/widgets/btn_widget.dart';
import 'package:login/widgets/herder_container.dart';
import '../color.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class RegPage extends StatefulWidget {
  @override
  _RegPageState createState() => _RegPageState();
}

class _RegPageState extends State<RegPage> {

  TextEditingController nomor = TextEditingController();
  TextEditingController password = TextEditingController();

  Future register()async{
    var url = "http://192.168.1.19/login/register.php";
    var response = await http.post(
      Uri.parse("http://192.168.1.19/login/register.php"), 
      body: {
      "username": nomor.text,
      "password": password.text,
    });

    var data = json.decode(response.body);
    if(data == "Error"){
      Fluttertoast.showToast(
        msg: "This user already exit",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: white,
        fontSize: 16.0,
      );
    }else{
       Fluttertoast.showToast(
        msg: "Registration success",
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.CENTER,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
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
            Container(
              height: 200,
              width: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                  color: white),
            ),
            Expanded(
              flex: 1,
              child: Container(
                margin: EdgeInsets.only(left: 20, right: 20, top: 20),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    _textInput(hint: "Nomor", icon: Icons.phone, controller: nomor,),
                    _textInput(hint: "Nama", icon: Icons.person),
                    _textInput(hint: "Password", icon: Icons.lock, controller: password),
                    _textInput(hint: "Email", icon: Icons.email),
                    _textInput(hint: "Tanggal lahir", icon: Icons.date_range),
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
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.only(top: 60),
                        child: ButtonWidget(
                          onClick: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => LoginPage()));
                          },
                          btnText: "Daftar",
                        ),
                      ),
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
        borderRadius: BorderRadius.all(Radius.circular(20)),
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