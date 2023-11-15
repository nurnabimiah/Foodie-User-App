


import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CarouselSliderWidet extends StatelessWidget {
  CarouselSliderWidet({Key? key}) : super(key: key);

  List<String> imageList = [
    'assets/images/carousel_slider_image.png',
    'assets/images/carousel_slider_image.png',
    'assets/images/carousel_slider_image.png',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150.h,
      width: double.infinity,
      child: CarouselSlider(
        options: CarouselOptions(
            autoPlay: true,
            // aspectRatio: 16/9,
            enlargeCenterPage: true,
            viewportFraction: 0.9,
            autoPlayInterval: Duration(seconds: 7)
        ),
        items: imageList.map((item) {
          return Builder(
            builder: (BuildContext context) {
              return Image.asset(item,fit: BoxFit.fitWidth,height: 150.h,);
            },
          );
        }).toList(),

      ),
    );
  }
}
