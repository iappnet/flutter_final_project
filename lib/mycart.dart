// ignore_for_file: prefer_const_constructors

import 'package:flutter_final_project/home.dart';
import 'package:flutter_final_project/profile.dart';
import 'package:flutter_final_project/startpage.dart';
import 'package:flutter/material.dart';

class MyCart extends StatefulWidget {
  const MyCart({
    Key? key,
  }) : super(key: key);
  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  int selectedPage = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFBB85F8),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          ),
        ),
        elevation: 5.0,
        title: Text("your cart"),
      ),
      backgroundColor: Colors.white,
      body: Center(
        child: Text(
          "Your Cart is empty",
          style: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
