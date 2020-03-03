import 'package:flutter/material.dart';

class AdsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      margin: EdgeInsets.symmetric(vertical: 10.0),
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 100.0,
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Asus',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
                Container(
                  child: Text(
                    'السعر: 120 ريال',
                    overflow: TextOverflow.fade,
                    style: TextStyle(fontSize: 20),
                  ),
                )
              ],
            ),
          ),
          Container(width: 100.0, child: Image.asset('assets/pc.jpg')),
        ],
      ),
    );
  }
}
