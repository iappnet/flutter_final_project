// ignore_for_file: prefer_const_constructors

import 'package:flutter_final_project/allitems.dart';
import 'package:flutter_final_project/offers.dart';
import 'package:flutter_final_project/profile.dart';
import 'package:flutter_final_project/allitems.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({
    Key? key,
  }) : super(key: key);
  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final List<String> _listItem1 = [
  //   'assets/images/1.jpeg',
  //   'assets/images/2.jpg',
  //   'assets/images/3.png',
  //   'assets/images/2.jpg',
  //   'assets/images/3.png',
  //   'assets/images/1.jpeg',
  //   'assets/images/2.jpg',
  //   'assets/images/1.jpeg',
  //   'assets/images/3.png',
  // ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white54,
      body: Center(
        child: Container(
          padding: EdgeInsets.all(10.0),
          child: Column(
            children: [
              SizedBox(
                height: 25,
                child: Text(
                  "New Offers",
                  style: TextStyle(
                      color: Colors.green,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 220,
                child: ListView(
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(children: [
                        Offers(
                            imageURL: 'assets/images/offers/3.jpg',
                            itemName: 'pants',
                            price: '99 SR'),
                        Offers(
                            imageURL: 'assets/images/offers/2.jpg',
                            itemName: 'Shoes',
                            price: '199 SR'),
                        Offers(
                            imageURL: 'assets/images/offers/5.jpg',
                            itemName: 'Shoes',
                            price: '159 SR'),
                        // Offers(
                        //     imageURL: 'assets/images/offers/1.jpg',
                        //     itemName: 'Pants',
                        //     price: '89 SR'),
                        Offers(
                            imageURL: 'assets/images/offers/4.jpg',
                            itemName: 'Jacket',
                            price: '199 SR'),
                      ]),
                    )
                  ],
                ),
              ),
              Padding(
                  padding: EdgeInsets.only(left: 7, right: 7),
                  child: Divider(
                    color: Colors.white10,
                    height: 1,
                    thickness: 1,
                  )),
              SizedBox(
                height: 25,
                child: Text(
                  "All Items",
                  style: TextStyle(
                      color: Colors.blueAccent,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                child: GridView.count(
                    crossAxisCount: 2,
                    crossAxisSpacing: 15,
                    mainAxisSpacing: 10,
                    children: [
                      Allitems(
                          imageURL: 'assets/images/allitems/4.jpg',
                          itemName: 'Mens Shoes',
                          price: '430 SR'),
                      Allitems(
                          imageURL: 'assets/images/allitems/2.jpg',
                          itemName: 'Hand Bag',
                          price: '235 SR'),
                      Allitems(
                          imageURL: 'assets/images/allitems/3.png',
                          itemName: 'T-Shirt',
                          price: '187 SR'),
                      Allitems(
                          imageURL: 'assets/images/allitems/1.jpeg',
                          itemName: 'Sport Shose',
                          price: '374 SR'),
                      Allitems(
                          imageURL: 'assets/images/allitems/6.jpg',
                          itemName: 'Jacket',
                          price: '755 SR'),
                      Allitems(
                          imageURL: 'assets/images/allitems/4.jpg',
                          itemName: 'Mens Shoes',
                          price: '430 SR'),
                      Allitems(
                          imageURL: 'assets/images/allitems/5.jpg',
                          itemName: 'Jacket',
                          price: '899 SR'),

                      // _listItem1
                      //     .map((item) => Card(
                      //         shape: RoundedRectangleBorder(
                      //             borderRadius: BorderRadius.circular(30)),
                      //         elevation: 4,
                      //         child: Center(
                      //           child: Column(
                      //             mainAxisAlignment: MainAxisAlignment.end,
                      //             children: <Widget>[
                      //               Container(
                      //                   height: 150,
                      //                   decoration: BoxDecoration(
                      //                     borderRadius: BorderRadius.circular(10),
                      //                   ),
                      //                   child: Image.asset(item)),
                      //               Text(
                      //                 "Hand Bag",
                      //                 style: TextStyle(
                      //                     color: Colors.black,
                      //                     fontSize: 12,
                      //                     fontWeight: FontWeight.bold),
                      //               ),
                      //               SizedBox(
                      //                 height: 1,
                      //               ),
                      //               Text(
                      //                 "300 SR",
                      //                 style: TextStyle(
                      //                     color: Colors.black,
                      //                     fontWeight: FontWeight.bold),
                      //               )
                      //             ],
                      //           ),
                      //         )
                      //         ))
                      //     .toList(),
                    ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
