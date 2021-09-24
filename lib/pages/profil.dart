import 'package:flutter/material.dart';
import '../color.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Profil',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _curentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: greenColors,
      body: SafeArea(
          child: Column(
        children: [
          _body(),
        ],
      )),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.green,
        currentIndex: _curentIndex,
        type: BottomNavigationBarType.fixed,
        iconSize: 30,
        selectedFontSize: 18,
        unselectedFontSize: 16,
        selectedItemColor: Colors.white,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat),
            title: Text('Chat'),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: Colors.green,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profil'),
            backgroundColor: Colors.green,
          ),
        ],
        onTap: (index) {
          setState(() {
            _curentIndex = index;
          });
        },
      ),
    );
  }
}

Widget _body() {
  return Expanded(
    child: Container(
      padding: EdgeInsets.symmetric(horizontal: 20),
      margin: EdgeInsetsDirectional.only(bottom: 5.0),
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.bottomCenter,
            end: Alignment.topCenter,
            stops: [
              0.7,
              2.0,
            ],
            colors: [
              white,
              leafColors,
            ]),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),
      ),
      child: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(50),
              child: Image.asset('assets/images/Ellipse.png')),
          SizedBox(
            height: 20,
          ),
          _itemProfil(avatar: 'assets/images/1.png', name: 'Edit Profil'),
          _itemProfil(avatar: 'assets/images/2.png', name: 'Ganti Password'),
          _itemProfil(avatar: 'assets/images/3.png', name: 'Share App'),
          _itemProfil(avatar: 'assets/images/4.png', name: 'Rate App'),
          _itemProfil(avatar: 'assets/images/5.png', name: 'Privacy'),
          _itemProfil(avatar: 'assets/images/6.png', name: 'About Us'),
          _itemProfil(avatar: 'assets/images/7.png', name: 'Log Out'),
        ],
      ),
    ),
  );
}

class Item extends StatelessWidget {
  String title;
  IconData icon;

  Item({required this.title, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(
          icon,
          size: 20,
          color: Colors.white,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.white, fontWeight: FontWeight.w700, fontSize: 12),
        ),
      ],
    );
  }
}

Widget _itemProfil({String avatar = '', name = ''}) {
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: 3,
    ),
    child: Row(
      children: [
        Avatar(
          margin: EdgeInsets.only(
            right: 10,
          ),
          size: 57,
          image: avatar,
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '$name',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    color: Colors.green,
                  ),
                ],
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class Avatar extends StatelessWidget {
  final double size;
  final image;
  final EdgeInsets margin;
  Avatar({this.image, this.size = 57, this.margin = const EdgeInsets.all(0)});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin,
      child: Container(
        width: size,
        height: size,
        decoration: new BoxDecoration(
          shape: BoxShape.circle,
          image: new DecorationImage(
            image: AssetImage(image),
          ),
        ),
      ),
    );
  }
}
