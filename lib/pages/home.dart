import 'package:flutter/material.dart';
import 'package:rentage/widget/appbar.dart';
import 'package:rentage/widget/bottom_bar.dart';
import 'package:rentage/widget/catergories.dart';
import 'package:rentage/widget/slider.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,

        children: <Widget>[
          CustomAppBar('الرئيسيه'),
          CustomSlider(),
          CategoriesView(),
          CustomBottomBar(5)
        ],
      ),
    );
  }
}
