import 'package:flutter_final_project/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Center(
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
              child: CircleAvatar(
            foregroundImage: NetworkImage(
                'https://www.gravatar.com/avatar/205e460b479e2e5b48aec07710c08d50.jpg'),
            maxRadius: 120,
          )),
          SizedBox(
            height: 60,
          ),
          Text(
            "Mickael",
            style: TextStyle(
                fontSize: 25.0,
                color: Colors.blueGrey,
                letterSpacing: 2.0,
                fontWeight: FontWeight.w400),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {},
                child: Container(
                  constraints: BoxConstraints(
                    maxWidth: 100.0,
                    maxHeight: 40.0,
                  ),
                  color: Color(0xFFBB85F8),
                  alignment: Alignment.center,
                  child: Text(
                    "Settings",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w300),
                  ),
                  // ),
                ),
              ),
              SizedBox(
                height: 7,
              ),
              RaisedButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                child: Container(
                  color: Color(0xFFBB85F8),
                  constraints: BoxConstraints(
                    maxWidth: 100.0,
                    maxHeight: 50.0,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Your Order",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.0,
                        letterSpacing: 2.0,
                        fontWeight: FontWeight.w300),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    )));
  }
}
