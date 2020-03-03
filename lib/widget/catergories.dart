import 'package:flutter/material.dart';

class CategoriesView extends StatelessWidget {
  final List<String> _images = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
    'assets/1.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(right: 15.0, left: 15.0),
      height: MediaQuery.of(context).size.height - 325.0,
      child: GridView.builder(
        itemCount: 4,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio: 1,
          crossAxisCount: 2,
          crossAxisSpacing: 15.0,
        ),
        itemBuilder: (context, index) {
          return Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(bottom: 15.0),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                  _images[index],
                ),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: Text(
              _images[index],
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            ),
          );
        },
      ),
    );
  }
}
