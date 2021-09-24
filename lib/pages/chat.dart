import 'package:flutter/material.dart';
import '../color.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
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
        backgroundColor: lightGreenColors,
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
            backgroundColor: lightGreenColors,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Home'),
            backgroundColor: lightGreenColors,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Profil'),
            backgroundColor: lightGreenColors,
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
                    ]
        ),
          borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),),
      child: ListView(
        padding: EdgeInsets.only(top: 10),
        physics: BouncingScrollPhysics(),
        children: [
          _itemChats(
              avatar: 'assets/image/1.jpg', name: 'Kevino', chat: 'Halo'),
          _itemChats(
              avatar: 'assets/image/2.jpg', name: 'Reno', chat: 'ini adalah contoh ui chat di flutter'),
          _itemChats(
              avatar: 'assets/image/3.jpg', name: 'Einsten', chat: 'Up Indonesia'),
          _itemChats(
              avatar: 'assets/image/4.jpg', name: 'John', chat: 'Oke...'),
          _itemChats(
              avatar: 'assets/image/5.jpg', name: 'Rose', chat: 'Terimakasih'),
          _itemChats(
              avatar: 'assets/image/3.jpg', name: 'Jhony', chat: 'Salam kenal'),
          _itemChats(
              avatar: 'assets/image/2.jpg', name: 'Albert', chat: 'Apa kabar ?'),
          _itemChats(
              avatar: 'assets/image/4.jpg', name: 'Rose', chat: 'Baik'),
          _itemChats(
              avatar: 'assets/image/1.jpg', name: 'Jhony', chat: 'Hi...'),
          _itemChats(
              avatar: 'assets/image/5.jpg', name: 'Albert', chat: 'Apa kabar ?'),
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
          size: 40,
          color: Colors.white,
        ),
        Text(
          title,
          style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.w700,
              fontSize: 12),
        ),
      ],
    );
  }
}

Widget _itemChats({String avatar = '', name = '', chat = ''}) {
  return Container(
    margin: EdgeInsets.symmetric(
      vertical: 15,
    ),
    child: Row(
      children: [
        Avatar(
          margin: EdgeInsets.only(
            right: 20,
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
                ],
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                '$chat',
                style: TextStyle(
                  color: Colors.black54,
                  fontWeight: FontWeight.bold,
                ),
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


