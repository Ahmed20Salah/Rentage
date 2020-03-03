import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:rentage/widget/appbar.dart';
import 'package:rentage/widget/bottom_bar.dart';
import 'package:rentage/widget/message_widget.dart';

class Description extends StatefulWidget {
  @override
  _DescriptionState createState() => _DescriptionState();
}

class _DescriptionState extends State<Description> {
  var _images = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/pc.jpg',
  ];

  var _selected = 'assets/1.jpg';
  var starts = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomAppBar('Asus'),
          Container(
            height: MediaQuery.of(context).size.height - 130.0,
            child: ListView(
              padding: EdgeInsets.all(0),
              children: <Widget>[
                _price(context),
                _projectPic(),
                __slider(),
                _title(),
                _description(),
                _data()
              ],
            ),
          ),
          CustomBottomBar(null)
        ],
      ),
    );
  }

  Widget _price(context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.0 , vertical: 5),
        color: Color(0xfff8f8f8),
        height: 70.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'السعر',
                    style: TextStyle(fontSize: 16.0 , fontWeight: FontWeight.bold),
                  ),
                  Text('150ريال',  style: TextStyle(fontSize: 14.0),),
                ],
              ),
            ),
            Container(
                width: 70.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(CupertinoIcons.location, size: 28,),
                    SizedBox(width: 3,),
                    Text(
                      'الرياض',
                      style: TextStyle(fontSize: 14.0),
                    )
                  ],
                ))
          ],
        ));
  }

  Widget _projectPic() {
    return Container(
      height: 200.0,
      width: MediaQuery.of(context).size.width - 100.0,
      decoration: BoxDecoration(
        color: Colors.red,
        image:
            DecorationImage(image: AssetImage('$_selected'), fit: BoxFit.cover),
      ),
    );
  }

  Widget __slider() {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20.0),
      height: 80.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _images.length,
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              setState(() {
                _selected = _images[index];
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 8.0),
              width: 80.0,
              height: 80.0,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('${_images[index]}'), fit: BoxFit.cover),
                borderRadius: BorderRadius.circular(5),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _rate() {
    return Container(
      height: 30.0,
      width: 120.0,
      child: ListView.builder(
        itemCount: 5,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Icon(
            Icons.star,
            color: index < starts ? Colors.yellow : Colors.grey,
            size: 18,
          );
        },
      ),
    );
  }

  Widget _title() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            child: Text(
              'Asus',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          _rate()
        ],
      ),
    );
  }

  Widget _description() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: Text(
        'لاب توب ألعاب - Intel Core I7 - رام 16 جيجا - HDD 1 تيرا + SSD 256 جيجا - 15.6 بوص FHD - مُعالج رسومات',
      ),
    );
  }

  Widget _data(){
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      height: 75,
      child: Column(
        children: <Widget>[
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('الكميه المتوفره: 5 قطعه' , style: TextStyle(fontSize:15.0),),
                Text('مبلغ التامين: 10ريال', style: TextStyle(fontSize:15.0),),
              ],
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text('طريقه التسليم: من التاجر' , style: TextStyle(fontSize:15.0),),
                Text('محمد علي', style: TextStyle(fontSize:15.0),),
                IconButton(icon: Icon(Icons.chat), onPressed: null)
              ],
            ),
          ),
        ],
      ),
    );
  }
}
