import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentage/pages/home.dart';
import 'package:rentage/pages/message.dart';

class CustomBottomBar extends StatelessWidget {
  final int active;
  CustomBottomBar(this.active);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 40.0,
      width: MediaQuery.of(context).size.width,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          InkWell(
            child: Icon(
              Icons.person,
              size: 30.0,
            ),
          ),
          InkWell(
            child: Icon(
              Icons.message,
              size: 30.0,
              color: active == 2 ? Color(0xfff1d90f) : Colors.black87,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Message(),
                ),
              );
            },
          ),
          InkWell(
            child: Icon(
              Icons.person,
              size: 30.0,
            ),
          ),
          InkWell(
            child: Icon(
              Icons.search,
              size: 30.0,
            ),
          ),
          InkWell(
            child: Icon(
              Icons.home,
              size: 30.0,
              color: active == 5 ? Color(0xfff1d90f) : Colors.black87,
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Home(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
