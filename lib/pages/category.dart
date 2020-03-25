import 'package:flutter/material.dart';
import 'package:rentage/widget/appbar.dart';
import 'package:rentage/widget/bottom_bar.dart';

class CategoryScreen extends StatelessWidget {
final  String title;
CategoryScreen(this.title);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          CustomAppBar(title),
          Container(
            height: MediaQuery.of(context).size.height - 124.0,
            child: ListView.builder(
                padding: EdgeInsets.all(0.0),
                itemCount: 5,
                itemBuilder: (context, index) {
                  return Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
                    height: 140,
                    child: Row(
                      children: <Widget>[
                        Container(
                          margin: EdgeInsets.symmetric(vertical: 4),
                          width: 110.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                              image: AssetImage('assets/games.png'),
                            ),
                          ),
                        ),
                        SizedBox(width: 10.0,),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Container(
                              height: 30.0,
                              width: MediaQuery.of(context).size.width - 160.0,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text('Asus'),
                                  Container(
                                    width: 80.0,
                                    child: ListView.builder(
                                      scrollDirection: Axis.horizontal,
                                      itemCount: 5,
                                      itemBuilder: (context, index) {
                                        return Icon(
                                          Icons.star,
                                          size: 15.0,
                                          color: index <= 3
                                              ? Colors.yellow
                                              : Colors.grey,
                                        );
                                      },
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              'السعر: 200ريال',
                              style: TextStyle(fontSize: 12),
                            ),
                            Container(
                                width: 160.0,
                                child: Text(
                                  'لاب توب ألعاب - Intel Core I7 - رام 16 جيجا - HDD 1 تيرا + SSD 256 جيجا - 15.6 بوص FHD - مُعالج رسومات',
                                  style: TextStyle(fontSize: 10.0),
                                  maxLines: 3,
                                  softWrap: true,
                                )),
                            Container(
                              width: MediaQuery.of(context).size.width -160.0,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  Icon(Icons.location_on , size: 12,),
                                  Text('الرياض' , style: TextStyle(fontSize: 10),)
                                ],
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  );
                }),
          )
        ],
      ),
      bottomNavigationBar: CustomBottomBar(null),
    );
  }
}
