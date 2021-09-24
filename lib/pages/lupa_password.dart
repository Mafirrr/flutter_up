import 'package:flutter/material.dart';
import 'package:login/pages/otp.dart';
import 'package:login/pages/regi_page.dart';
import 'package:login/widgets/btn_widget.dart';
import '../color.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PassPage(),
    ));

class PassPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGreenColors,
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(height: 10),
                  Image.asset(
                    "assets/images/UP_USER 2.png",
                    width: 80,
                    height: 80,
                  ),
                  SizedBox(height: 10),
                  Text(
                    'UP Indonesia',
                    style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                  color: Colors.white),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    alignment: Alignment.centerLeft,
                    child: Column(
                      children: [
                        SizedBox(height: 36),
                        Text(
                          'Masukkan email anda',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.green,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          'untuk mereset password anda',
                          textAlign: TextAlign.left,
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                          ),
                          prefixIcon: Icon(
                            Icons.email,
                            color: Colors.black,
                            size: 30,
                          ),
                          hintText: "masukkan email",
                          hintStyle: TextStyle(color: Colors.grey),
                          labelText: "Email"),
                    ),
                  ),
                  SizedBox(
                    height: 245,
                  ),
                  Expanded(
                    child: Container(
                      margin: EdgeInsets.only(top: 10, bottom: 8),
                      child: ButtonWidget(
                        onClick: () {
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => OtpPage()));
                        },
                        btnText: "Konfirmasi",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
