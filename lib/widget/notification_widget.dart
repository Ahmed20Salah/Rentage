import 'package:flutter/material.dart';

class NotificationWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 70.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      height: 20.0,
                      width: 20.0,
                      decoration: BoxDecoration(
                          color: Colors.grey, shape: BoxShape.circle),
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text('احمد صلاح'),
                  ],
                ),
                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      InkWell(
                        child: Container(
                          width: 20.0,
                          height: 20.0,
                          decoration: BoxDecoration(
                              color: Colors.black87, shape: BoxShape.circle),
                          child: Icon(
                            Icons.close,
                            size: 12,
                            color: Color(0xfff1d90f),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 6.0,
                      ),
                      Text('الغاء الحجز'),
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 100.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Text('Asus'),

                SizedBox(
                  height: 4,
                ),
                Text('10:10 صباحا'),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
