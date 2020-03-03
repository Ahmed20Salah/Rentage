import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class CustomSlider extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CustomSliderState();
  }
}

class _CustomSliderState extends State<CustomSlider> {
  final List<String> _images = [
    'assets/1.jpg',
    'assets/2.jpg',
    'assets/3.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    int _current = 0;
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 200.0,
      child: CarouselSlider(
        items: _images.map(
          (item) {
            return Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(item),
                ),
              ),
            );
          },
        ).toList(),
        autoPlay: true,
        viewportFraction: 1.0,
        onPageChanged: (index) {
          setState(() {
            _current = index;
          });
        },
      ),
    );
  }
}
