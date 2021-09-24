import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarNavBar(),
    );
  }
}

class BelajarNavBar extends StatefulWidget {
  @override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  int _selectedNavbar = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("belajarFlutter.com"),
      ),
      body: Center(
        child: Text("Tab Index yang aktif : $_selectedNavbar",
            style: TextStyle(fontSize: 16)),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text('Beranda'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment),
            title: Text('Pesanan'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mail),
            title: Text('Inbox'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text('Akun'),
          ),
        ],
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:login/color.dart';
// import 'package:login/pages/chat.dart';
// import 'package:login/pages/food_terdekat.dart';
// import '../color.dart';

// class Home extends StatefulWidget {
//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   int _selectedFilter = 2;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//   }

//   List<Menu> menu = [
//     Menu(icon: Icons.motorcycle, title: "Up Bike"),
//     Menu(icon: Icons.local_taxi, title: "Up Car"),
//     Menu(icon: Icons.restaurant, title: "Up Food"),
//     Menu(icon: Icons.store, title: "Up Bike")
//   ];
//   final pages = [
//     Chat(),
//     Profil()
//   ];

//   int selectedIndex = 0;

//   void onTap(int index) {
//     setState(() {
//       selectedIndex = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     double width = MediaQuery.of(context).size.width;
//     double height = MediaQuery.of(context).size.height;
//     return Scaffold(
//       bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem> [
//         BottomNavigationBarItem(icon: Icon(Icons.chat), title: Text('Chat')),
//         BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Home')),
//         BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profil')),
//       ],
//       currentIndex: 0,
//       type: BottomNavigationBarType.fixed,
//       fixedColor: white,
//       iconSize: 40,
//       backgroundColor: greenColors,
//       onTap: onTap,),
//       body: Column(
//         children: [
//           Container(
//             height: height - 70,
//             child: Stack(children: [
//               Container(
//                 color: lightGreenColors,
//               ),
//               ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Container(
//                     color: white,
//                   )),
//               Container(
//                 height: height * 0.4,
//                 decoration: BoxDecoration(
//                   gradient: LinearGradient(
//                       begin: AlignmentDirectional.topEnd,
//                       colors: [
//                         lightGreenColors,
//                         white,
//                       ]),
//                 ),
//               ),
//               SafeArea(
//                 child: ClipRRect(
//                   borderRadius: BorderRadius.circular(20),
//                   child: Container(
//                     child: SingleChildScrollView(
//                       physics: BouncingScrollPhysics(),
//                       clipBehavior: Clip.antiAlias,
//                       child: Column(children: [
//                         Container(
//                           alignment: Alignment.center,
//                           margin: EdgeInsets.fromLTRB(15, 25, 15, 30),
//                           height: 50,
//                           decoration: BoxDecoration(
//                               color: Colors.grey[100],
//                               borderRadius: BorderRadius.circular(20)),
//                           child: Padding(
//                             padding: EdgeInsets.symmetric(horizontal: 10),
//                             child: TextField(
//                               decoration: InputDecoration(
//                                   border: InputBorder.none,
//                                   hintText: "Mau makan apa hari ini?",
//                                   icon: Icon(Icons.search),
//                                   suffixIcon: Icon(Icons.menu)),
//                             ),
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.symmetric(
//                               horizontal: 20, vertical: 0),
//                           child: ClipRRect(
//                             borderRadius: BorderRadius.circular(20),
//                             child: Column(
//                               children: [
//                                 Container(
//                                   color: greenColors,
//                                   padding: EdgeInsets.all(15),
//                                   width: width,
//                                   child: Row(
//                                     children: [
//                                       Text(
//                                         "Saldo",
//                                         style: TextStyle(
//                                             color: white,
//                                             fontWeight: FontWeight.w700,
//                                             fontSize: 20),
//                                       ),
//                                       Expanded(child: Container()),
//                                       Text(
//                                         "IDR 100.000",
//                                         style: TextStyle(
//                                             color: white,
//                                             fontWeight: FontWeight.w700,
//                                             fontSize: 20),
//                                       ),
//                                     ],
//                                   ),
//                                 ),
//                                 Container(
//                                   color: lightGreenColors,
//                                   padding: EdgeInsets.all(15),
//                                   width: width,
//                                   child: Row(
//                                     mainAxisAlignment:
//                                         MainAxisAlignment.spaceEvenly,
//                                     children: [
//                                       Item(
//                                           title: "Top Up",
//                                           icon: Icons.wallet_membership),
//                                       Item(
//                                           title: "Promo",
//                                           icon: Icons.point_of_sale),
//                                       Item(title: "Detail", icon: Icons.task)
//                                     ],
//                                   ),
//                                 )
//                               ],
//                             ),
//                           ),
//                         ),
//                         Container(
//                           alignment: Alignment.center,
//                           margin: EdgeInsets.symmetric(
//                               horizontal: 20, vertical: 15),
//                           padding: EdgeInsets.all(10),
//                           decoration: BoxDecoration(
//                               color: Colors.grey[100],
//                               boxShadow: [
//                                 BoxShadow(
//                                   color: Colors.black12,
//                                   spreadRadius: 1,
//                                   blurRadius: 1,
//                                 )
//                               ],
//                               borderRadius: BorderRadius.circular(10)),
//                           child: Row(
//                             children: [
//                               Icon(
//                                 Icons.history,
//                               ),
//                               SizedBox(
//                                 width: 10,
//                               ),
//                               Text(
//                                 'Riwayat pesanan',
//                                 style: TextStyle(
//                                     fontSize: 12, fontWeight: FontWeight.w700),
//                               ),
//                               Expanded(child: Container()),
//                               Container(
//                                   decoration: BoxDecoration(
//                                     color: lightGreenColors,
//                                     borderRadius: BorderRadius.circular(20),
//                                   ),
//                                   child: Icon(
//                                     Icons.arrow_forward,
//                                     color: white,
//                                   ))
//                             ],
//                           ),
//                         ),
//                         Container(
//                           height: 150,
//                           child: ListView.builder(
//                               physics: BouncingScrollPhysics(),
//                               itemCount: 4,
//                               scrollDirection: Axis.horizontal,
//                               itemBuilder: (context, index) {
//                                 return Padding(
//                                   padding: const EdgeInsets.only(left: 20),
//                                   child: ClipRRect(
//                                     borderRadius: BorderRadius.circular(15.0),
//                                     child: Image.asset("assets/images/poster.png",
//                                         fit: BoxFit.cover),
//                                   ),
//                                 );
//                               }),
//                         ),
//                         Padding(
//                           padding: EdgeInsets.all(15),
//                           child: Column(
//                             children: List.generate(4, (index) {
//                               return CardWidget();
//                             }),
//                           ),
//                         ),
//                       ]),
//                     ),
//                   ),
//                 ),
//               ),
//               Align(
//                 alignment: Alignment.bottomCenter,
//                 child: Container(
//                   height: 125,
//                   margin: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
//                   decoration: BoxDecoration(
//                     color: Colors.grey[100],
//                     borderRadius: BorderRadius.circular(20),
//                     boxShadow: [
//                       BoxShadow(
//                         color: Colors.black12,
//                         spreadRadius: 1,
//                         blurRadius: 1,
//                       )
//                     ],
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Container(
//                         margin: EdgeInsets.only(bottom: 15),
//                         decoration: BoxDecoration(
//                           color: Colors.grey,
//                           borderRadius: BorderRadius.circular(4),
//                         ),
//                         width: width * 0.22,
//                         height: 8,
//                       ),
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//                         children: List.generate(menu.length, (index) {
//                           return GestureDetector(
//                             onTap: () {
//                             Navigator.push(
//                                 context,
//                                 MaterialPageRoute(
//                                     builder: (context) => Resto()));
//                           },
//                             child: Column(
//                               mainAxisAlignment: MainAxisAlignment.center,
//                               crossAxisAlignment: CrossAxisAlignment.center,
//                               children: [
//                                 Container(
//                                     padding: EdgeInsets.all(6),
//                                     decoration: BoxDecoration(
//                                       border: Border.all(
//                                           width: 4,
//                                           color: lightGreenColors),
//                                       color: (index == _selectedFilter)
//                                           ? Colors.red[900]
//                                           : lightGreenColors,
//                                       borderRadius: BorderRadius.circular(30),
//                                     ),
//                                     child: Icon(
//                                       menu[index].icon,
//                                       size: 40,
//                                       color: Colors.grey[100],
//                                     )),
//                                 Text(
//                                   menu[index].title,
//                                   style: TextStyle(
//                                       color: black,
//                                       fontWeight: FontWeight.w700,
//                                       fontSize: 12),
//                                 ),
//                               ],
//                             ),
//                           );
//                           ;
//                         }),
//                       ),
//                     ],
//                   ),
//                 ),
//               )
//             ]),
//           ),
//         ],
//       ),
//     );
//   }
// }

// class Profil {
// }

// class Chat extends StatelessWidget {
//   int _curentIndex = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: greenColors,
//       body: SafeArea(
//           child: Column(
//         children: [
//           _body(),
//         ],
//       )),
//     );
//   }
// }

// Widget _body() {
//   return Expanded(
//     child: Container(
//       padding: EdgeInsets.symmetric(horizontal: 20),
//       margin: EdgeInsetsDirectional.only(bottom: 5.0),
//       decoration: BoxDecoration(
//         gradient: LinearGradient(
//           begin: Alignment.bottomCenter,
//           end: Alignment.topCenter, 
//           stops: [
//                       0.7,
//                       2.0,
//                     ],
//                     colors: [
//                       white,
//                       leafColors,
//                     ]
//         ),
//           borderRadius: BorderRadius.only(
//               bottomLeft: Radius.circular(30), bottomRight: Radius.circular(30)),),
//       child: ListView(
//         padding: EdgeInsets.only(top: 10),
//         physics: BouncingScrollPhysics(),
//         children: [
//           _itemChats(
//               avatar: 'assets/image/1.jpg', name: 'Kevino', chat: 'Halo'),
//           _itemChats(
//               avatar: 'assets/image/2.jpg', name: 'Reno', chat: 'ini adalah contoh ui chat di flutter'),
//           _itemChats(
//               avatar: 'assets/image/3.jpg', name: 'Einsten', chat: 'Up Indonesia'),
//           _itemChats(
//               avatar: 'assets/image/4.jpg', name: 'John', chat: 'Oke...'),
//           _itemChats(
//               avatar: 'assets/image/5.jpg', name: 'Rose', chat: 'Terimakasih'),
//           _itemChats(
//               avatar: 'assets/image/3.jpg', name: 'Jhony', chat: 'Salam kenal'),
//           _itemChats(
//               avatar: 'assets/image/2.jpg', name: 'Albert', chat: 'Apa kabar ?'),
//           _itemChats(
//               avatar: 'assets/image/4.jpg', name: 'Rose', chat: 'Baik'),
//           _itemChats(
//               avatar: 'assets/image/1.jpg', name: 'Jhony', chat: 'Hi...'),
//           _itemChats(
//               avatar: 'assets/image/5.jpg', name: 'Albert', chat: 'Apa kabar ?'),
//         ],
//       ),
//     ),
//   );
// }

// Widget _itemChats({String avatar = '', name = '', chat = ''}) {
//   return Container(
//     margin: EdgeInsets.symmetric(
//       vertical: 15,
//     ),
//     child: Row(
//       children: [
//         Avatar(
//           margin: EdgeInsets.only(
//             right: 20,
//           ),
//           size: 57,
//           image: avatar,
//         ),
//         Expanded(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   Text(
//                     '$name',
//                     style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                 ],
//               ),
//               SizedBox(
//                 height: 10,
//               ),
//               Text(
//                 '$chat',
//                 style: TextStyle(
//                   color: Colors.black54,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ],
//     ),
//   );
// }

// class Avatar extends StatelessWidget {
//   final double size;
//   final image;
//   final EdgeInsets margin;
//   Avatar({this.image, this.size = 57, this.margin = const EdgeInsets.all(0)});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: margin,
//       child: Container(
//         width: size,
//         height: size,
//         decoration: new BoxDecoration(
//           shape: BoxShape.circle,
//           image: new DecorationImage(
//             image: AssetImage(image),
//           ),
//         ),
//       ),
//     );
//   }
// }
// class Item extends StatelessWidget {
//   String title;
//   IconData icon;

//   Item({required this.title, required this.icon});

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         Icon(
//           icon,
//           size: 40,
//           color: white,
//         ),
//         Text(
//           title,
//           style: TextStyle(
//               color: white,
//               fontWeight: FontWeight.w700,
//               fontSize: 12),
//         ),
//       ],
//     );
//   }
// }

// class CardWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     Size size = MediaQuery.of(context).size;
//     return Padding(
//       padding: EdgeInsets.only(bottom: 15),
//       child: ClipRRect(
//           borderRadius: BorderRadius.circular(20),
//           clipBehavior: Clip.antiAlias,
//           child: GestureDetector(
//             child: Container(
//               height: 350.0,
//               child: Stack(
//                 clipBehavior: Clip.antiAlias,
//                 overflow: Overflow.clip,
//                 children: [
//                   Align(
//                     alignment: Alignment.topCenter,
//                     child: Container(
//                       height: 350 / 2,
//                       decoration: BoxDecoration(
//                         image: DecorationImage(
//                           image: AssetImage("assets/images/motor.png"),
//                           fit: BoxFit.cover,
//                         ),
//                       ),
//                     ),
//                   ),
//                   Align(
//                     alignment: Alignment.bottomCenter,
//                     child: Container(
//                       color: Colors.grey[100],
//                       height: 175.0,
//                       width: double.infinity,
//                       child: Padding(
//                         padding: EdgeInsets.all(15),
//                         child: Column(
//                             crossAxisAlignment: CrossAxisAlignment.start,
//                             children: [
//                               Text(
//                                 "Lobortis",
//                                 overflow: TextOverflow.ellipsis,
//                                 style: TextStyle(
//                                   fontSize: 20,
//                                   fontWeight: FontWeight.w700,
//                                   color: black,
//                                 ),
//                               ),
//                               SizedBox(
//                                 height: 10,
//                               ),
//                               Text(
//                                 "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.",
//                                 maxLines: 3,
//                                 overflow: TextOverflow.ellipsis,
//                                 style: TextStyle(
//                                   fontWeight: FontWeight.normal,
//                                   color: Colors.grey,
//                                   fontSize: 15,
//                                 ),
//                               ),
//                             ]),
//                       ),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           )),
//     );
//   }
// }

// class Menu {
//   String title;
//   IconData icon;

//   Menu({required this.title, required this.icon});
// }