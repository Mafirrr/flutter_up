import 'package:flutter/material.dart';
import '../color.dart';

class Riwayat extends StatelessWidget {
  //nambah makanan

  List<ImageTemp> imageCard = [
    ImageTemp(
        title: "ORDER UP FOOD",
        imageData: "assets/images/order.png",
        tgl: "21 april 2021",
        place: "Jl. Erlangga No.162a, Katang, Sukorejo",
        price: "IDR 66.999",
        fin: "Finish",
        rating: "5.0"),
    ImageTemp(
        title: "ORDER UP FOOD",
        imageData: "assets/images/order.png",
        tgl: "21 april 2021",
        place: "Jl. Erlangga No.162a, Katang, Sukorejo",
        price: "IDR 66.999",
        fin: "cancel",
        rating: "5.0"),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            color: lightGreenColors,
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 10,
                    ),
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
                        child: Icon(
                          Icons.arrow_back,
                          color: white,
                        )),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.only(top: 15, right: 10, left: 20),
                        padding: EdgeInsets.all(10),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Riwayat pesanan",
                                style: TextStyle(
                                  fontSize: 22,
                                  fontWeight: FontWeight.w700,
                                  color: white,
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                            ]),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Container(
                  color: Colors.grey[100],
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 15, vertical: 30),
                        child: Column(
                          children: List.generate(imageCard.length, (index) {
                            return ImageCard(
                              imageData: imageCard[index].imageData,
                              title: imageCard[index].title,
                              tgl: imageCard[index].tgl,
                              place: imageCard[index].place,
                              price: imageCard[index].price,
                              fin: imageCard[index].fin,
                              rating: imageCard[index].rating,
                            );
                          }),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: lightGreenColors,
            padding: EdgeInsets.symmetric(vertical: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Item(title: "Terdekat", icon: Icons.location_on),
                Item(title: "Promo", icon: Icons.point_of_sale),
                Item(title: "Riwayat", icon: Icons.history)
              ],
            ),
          )
        ],
      ),
    );
  }
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
          size: 35,
          color: white,
        ),
        Text(
          title,
          style: TextStyle(
              color: white,
              fontWeight: FontWeight.w700,
              fontSize: 12),
        ),
      ],
    );
  }
}

class FoodCardWidget extends StatelessWidget {
  var list;

  FoodCardWidget({this.list});

  final double height = 250;

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
                      image: DecorationImage(
                        image: AssetImage(list.foto),
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
                    child: Padding(
                      padding: EdgeInsets.all(12),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              list.nama,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 1,
                              style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w700,
                                color: black,
                              ),
                            ),
                            Text(
                              list.des,
                              overflow: TextOverflow.ellipsis,
                              maxLines: 2,
                              style: TextStyle(
                                fontSize: 10,
                                color: Colors.grey,
                              ),
                            ),
                            Expanded(
                                child: SizedBox(
                              child: Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(list.harga,
                                      style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                          fontSize: 12))),
                            )),
                          ]),
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

  FoodCard(
      {required this.nama,
      required this.foto,
      required this.harga,
      required this.des});
}

class ImageCard extends StatelessWidget {
  const ImageCard(
      {required this.title,
      required this.imageData,
      required this.tgl,
      required this.price,
      required this.place,
      required this.rating,
      required this.fin});
  final String imageData;
  final String title;
  final String tgl;
  final String place;
  final String price;
  final String fin;
  final String rating;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(imageData,
                  height: 50, width: 50, fit: BoxFit.cover),
            ),
            SizedBox(
              width: 20,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                      fontSize: 18,
                      color: black,
                      fontWeight: FontWeight.w700),
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          tgl,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey,
                            fontSize: 12,
                          ),
                        ),
                        Text(price,
                            textAlign: TextAlign.right,
                            style: TextStyle(
                                fontWeight: FontWeight.w700, fontSize: 12)),
                        Text(
                          fin,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: 145,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.star,
                          color: Colors.orange,
                        ),
                        Text(
                          rating,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.right,
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: black,
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
        Padding(
            padding: EdgeInsets.symmetric(vertical: 15),
            child: Divider(
              thickness: 1.5,
            )),
      ],
    );
  }
}

class ImageTemp {
  const ImageTemp({
    required this.title,
    required this.imageData,
    required this.tgl,
    required this.place,
    required this.price,
    required this.fin,
    required this.rating,
  });

  final String imageData;
  final String title;
  final String tgl;
  final String place;
  final String fin;
  final String price;
  final String rating;
}