import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TourDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Carousel(
        autoplayDuration: Duration(seconds: 2),
        animationDuration: Duration(seconds: 1),
        autoplay: true,
        boxFit: BoxFit.fill,
        images: [
          Image.asset(
            "assets/images/tour/tour1.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/tour/tour2.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/tour/tour3.png",
            fit: BoxFit.cover,
          ),
          Image.asset(
            "assets/images/tour/tour4.png",
            fit: BoxFit.cover,
          ),
        ],
      ),
    );
  }
}
