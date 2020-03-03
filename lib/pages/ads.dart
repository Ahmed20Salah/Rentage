import 'package:flutter/material.dart';
import 'package:rentage/widget/ads_widget.dart';
import 'package:rentage/widget/appbar.dart';
import 'package:rentage/widget/bottom_bar.dart';

class Ads extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          CustomAppBar('الاعلانات'),
          _ads(context),
          CustomBottomBar(null)
        ],
      ),
    );
  }

  Widget _ads(context) {
    return Container(
      color: Color(0xfff8f8f8),
      height: MediaQuery.of(context).size.height - 124.0,
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        itemCount: 5,
        itemBuilder: (context, index) {
          return AdsWidget();
        },
      ),
    );
  }
}
