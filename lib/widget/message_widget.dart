import 'package:flutter/material.dart';

class MessageWidget extends StatelessWidget {
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
              crossAxisAlignment: CrossAxisAlignment.end,
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
                    Text('احمدصلاح'),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25.0),
                  child: Text('hey' , overflow: TextOverflow.fade,),
                )
              ],
            ),
          ),
          Container(
            width: 100.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text('10:10 AM'),
                SizedBox(
                  height: 4,
                ),
                Text('01/03/2020')
              ],
            ),
          ),
        ],
      ),
    );
  }
}
