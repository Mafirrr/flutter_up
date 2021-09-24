import 'package:flutter/material.dart';
import 'package:login/pages/regi_page.dart';
import 'package:login/widgets/btn_widget.dart';
import '../color.dart';

void main() => runApp(MaterialApp(
      debugShowCheckedModeBanner: false,
      home: OtpPage(),
    ));

class OtpPage extends StatefulWidget {
  @override
  _OtpPageState createState() => _OtpPageState();
}

class _OtpPageState extends State<OtpPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:greenColors,
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
            SizedBox(height: 30,),
            Container(
              width: 500,
              height: 500,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20.0),
                      topRight: Radius.circular(20.0)),
                  color: Colors.white),
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Text(
                    'Masukkan Kode OTP',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                        ),
                      ),
                      SizedBox(width: 15,),
                      Container(
                        width: 55,
                        height: 55,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Text(
                    'Masukkan 6 digit angka yang tertera di SMS anda',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: black,
                      fontSize: 26,
                    ),
                  ),
                  SizedBox(height: 20,),
                  Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => OtpPage()));
                          },
                          child: Text(
                            'Kirim ulang kode ?',
                            style: TextStyle(color: greenColors, fontSize: 24, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ],
                    ),
                  SizedBox(height: 170,),
                  Container(
                    width: 400,
                    height: 50,
                    child: TextButton(
                      style: TextButton.styleFrom(
                        backgroundColor: greenColors,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                      ),
                      onPressed: () {},
                      child: Text(
                        'Konfirmasi',
                        style: TextStyle(
                          color: white,
                          fontWeight: 
                          FontWeight.bold,
                          fontSize: 23
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}