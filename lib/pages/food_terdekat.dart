import 'package:flutter/material.dart';
import 'package:login/pages/food_promo.dart';
import 'package:login/pages/riwayat_pesanan.dart';
import '../color.dart';

class Resto extends StatelessWidget {

  //nambah makanan

  List<FoodCard> foodCards = [
    FoodCard(foto: 'assets/images/kfc1.png', nama: 'Fried Chicken', des: 'Ayam + Kentang + Es teh', harga: 'Rp.150.000'),
    FoodCard(foto: 'assets/images/image5.png', nama: 'Burger', des: 'Burger King', harga: 'Rp.150.000'),
    FoodCard(foto: 'assets/images/image2.png', nama: 'Juice',des: 'Lemon', harga: 'Rp.150.000')
  ];
  List<ImageTemp> imageCard = [
    ImageTemp(imageData: "assets/images/melsastore2.png", title: "Pisang Gimabal", cat: "snack", place: "9,2 km", rating: "4.8", price: "Rp. 12.000", people: 8),
    ImageTemp(imageData: "assets/images/melsastore1.png", title: "Nasgor gim", cat: "fast food", place: "15,4 km", rating: "4.8", price: "Rp. 25.000", people: 8),
  ];
  final pages = [
    Promo(),
    Riwayat()
  ];

  int selectedIndex = 0;

  void onTap(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: <BottomNavigationBarItem> [
        BottomNavigationBarItem(icon: Icon(Icons.location_on), title: Text('Terdekat')),
        BottomNavigationBarItem(icon: Icon(Icons.point_of_sale), title: Text('Promo')),
        BottomNavigationBarItem(icon: Icon(Icons.history), title: Text('Riwayat')),
      ],
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      fixedColor: white,
      iconSize: 40,
      backgroundColor: greenColors,
      onTap: onTap,),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 30, 10 ,0),
            color: lightGreenColors,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(width: 10,),
                    Container(
                        padding: EdgeInsets.all(2),
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black12,
                              spreadRadius: 1,
                              blurRadius: 1,
                            )
                          ],
                          color: lightGreenColors,
                          borderRadius: BorderRadius.circular(20),
                          border: Border.all(width: 4, color: white),
                        ),
                        child: Icon(Icons.arrow_back, color: white,)
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 15, right: 10, left: 20),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          color: Colors.grey[100],
                          borderRadius: BorderRadius.circular(20),
                        ),
                          child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Lokasi saat ini",
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: black,),
                            ),
                            SizedBox(height: 10,),
                            Text(
                              "Jl. Erlangga No.162a Katang Kec. Ngasem, Kediri",
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                                fontSize: 12,
                              ),
                            ),
                          ]
                      ),),
                    )
                  ],
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(15, 25, 15, 30),
                  height: 50,
                  decoration: BoxDecoration(
                      color: Colors.grey[100],
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: TextField(
                      decoration: InputDecoration(
                          border: InputBorder.none,
                          hintText: "Mau makan apa hari ini?",
                          icon: Icon(Icons.search),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(child:
          Container(
            child: SingleChildScrollView(
              physics: BouncingScrollPhysics(),
              child: Container(
                color: Colors.grey[100],
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Resto tedekat", style: TextStyle(fontSize: 18,  color: black, fontWeight: FontWeight.w700),),
                    ),
                    Container(
                      height: 250,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: foodCards.length,
                          itemBuilder: (context, index){
                            return Padding(
                                padding: EdgeInsets.only(left: 15, right: (index == foodCards.length - 1)? 15 : 0 ),
                                child: FoodCardWidget(list: foodCards[index]));
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: Text("Rekomendasi buat kamu", style: TextStyle(fontSize: 18,  color: black, fontWeight: FontWeight.w700),),
                    ),
                    Container(
                      height: 250,
                      child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: foodCards.length,
                          itemBuilder: (context, index){
                            return Padding(
                                padding: EdgeInsets.only(left: 15, right: (index == foodCards.length - 1)? 15 : 0 ),
                                child: FoodCardWidget(list: foodCards[index]));
                          }),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 30),
                      child: Column(
                        children: List.generate(imageCard.length, (index) {
                          return ImageCard(imageData: imageCard[index].imageData, title: imageCard[index].title, cat: imageCard[index].cat, place: imageCard[index].place, rating: imageCard[index].rating, price: imageCard[index].price, people: imageCard[index].people,);
                        }),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          ),
        ],
      ),
    );
  }

  void setState(Null Function() param0) {}
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
        Icon(icon, size: 35, color: white,),
        Text(title, style: TextStyle(color: white, fontWeight: FontWeight.w700, fontSize: 12 ),),
      ],
    );
  }
}

class FoodCardWidget extends StatelessWidget {
  var list;

  FoodCardWidget({this.list});

  final double height= 250;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
            child: SizedBox(
              height: height,
              width: 150,
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: Container(
                      height: height * 0.6,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(
                            list.foto),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.white,
                      height: height * 0.4,
                      width: double.infinity,
                      child: Padding(padding: EdgeInsets.all(12),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                list.nama,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 1,
                                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w700, color: black,),
                              ),

                              Text(
                                list.des,
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                                style: TextStyle(fontSize: 10, color: Colors.grey,),
                              ),
                              Expanded(child: SizedBox(child: Align(alignment: Alignment.centerLeft,child:
                              Text(list.harga, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12))),
                              )),
                            ]
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
        ),
      ],
    );
  }
}


class FoodCard {
  String foto;
  String nama;
  String des;
  String harga;

  FoodCard({required this.nama, required this.foto, required this.harga, required this.des});
}

class ImageCard extends StatelessWidget {
  const ImageCard({required this.title,required this.imageData, required this.cat,required this.price,required this.place,required this.rating, required this.people});
  final String imageData;
  final String title;
  final String cat;
  final int people;
  final String place;
  final String price;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(imageData, height : 100, width: 100,fit: BoxFit.cover),
            ),
            SizedBox(width: 20,),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(fontSize: 18,  color: black, fontWeight: FontWeight.w700),),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          cat,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          place,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(width: 20,),
                    Row(
                      children: [
                        Icon(Icons.star , color: Colors.orange,),
                        Text(
                          rating,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: black,
                            fontSize: 12,
                          ),
                        ),
                        Text(
                          ' (${people})',
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(price, style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12)),
              ],
            ),
          ],
        ),
        Padding(padding: EdgeInsets.symmetric(vertical: 15),child: Divider(thickness: 1.5,)),
      ],
    );
  }
}

class ImageTemp {
  const ImageTemp({required this.title,required this.imageData, required this.cat,required this.price,required this.place,required this.rating, required this.people});

  final String imageData;
  final String title;
  final String cat;
  final int people;
  final String place;
  final String price;
  final String rating;
}