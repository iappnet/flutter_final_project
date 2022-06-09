// ignore_for_file: prefer_const_constructors

import 'package:flutter_final_project/home.dart';
import 'package:flutter_final_project/mycart.dart';
import 'package:flutter_final_project/profile.dart';
import 'package:flutter/material.dart';

class StartPage extends StatefulWidget {
  StartPage({
    Key? key,
  }) : super(key: key);

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  int selectedPage = 0;
  final _pageOptions = [Home(), Profile()];

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
        title: Text("Golden Store"),
        actions: <Widget>[
          selectedPage == 1
              ? IconButton(
                  onPressed: () {},
                  icon: Container(),
                )
              : IconButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return MyCart();
                    }));
                  },
                  icon: Icon(Icons.shopping_bag))
        ],
      ),
      body: _pageOptions[selectedPage],
      bottomNavigationBar: Container(
          child: Material(
        color: Color(0xFFBB85F8),
        elevation: 0.0,
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(30.0)),
        child: BottomNavigationBar(
          backgroundColor: Colors.transparent,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.home, size: 50), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person, size: 50), label: 'Profile'),
          ],
          elevation: 0.0,
          selectedItemColor: Colors.white,
          unselectedItemColor: Color(0xFF5F5C5C),
          currentIndex: selectedPage,
          onTap: (index) {
            setState(() {
              selectedPage = index;
            });
          },
        ),
      )),
    );
  }
}
