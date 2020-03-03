import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  final String title;
  CustomAppBar(this.title);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 84.0,
      child: Column(
        children: <Widget>[
          Container(
            height: 24.0,
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            height: 60.0,
            color: Color(0xfff1d90f),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                InkWell(
                  child: Icon(Icons.arrow_back_ios),
                ),
                Text(
                  title,
                  style: TextStyle(fontSize: 22),
                ),
                Container(
                  child: Stack(
                    children: <Widget>[
                      Icon(Icons.notifications_none),
                      Positioned(
                        child: Container(
                          alignment: Alignment.center,
                          width: 10.0,
                          height: 10.0,
                          decoration: BoxDecoration(
                              color: Color(0xff2d2d2d), shape: BoxShape.circle),
                          child: Text(
                            '4',
                            style: TextStyle(color: Colors.white, fontSize: 8),
                          ),
                        ),
                        top: 5.0,
                        right: 1,
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
