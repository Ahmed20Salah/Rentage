import 'package:flutter/material.dart';
import 'package:rentage/widget/appbar.dart';
import 'package:rentage/widget/bottom_bar.dart';
import 'package:rentage/widget/message_widget.dart';

class Message extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[CustomAppBar('الرسائل'), _messges(context),CustomBottomBar(2)],
      ),
    );
  }

  Widget _messges(context) {
    return Container(
      color: Color(0xfff8f8f8),
      height: MediaQuery.of(context).size.height - 124.0,
      child: ListView.builder(
        padding: EdgeInsets.all(0),
        itemCount: 5,
        itemBuilder: (context, index) {
          return MessageWidget();
        },
      ),
    );
  }
}
