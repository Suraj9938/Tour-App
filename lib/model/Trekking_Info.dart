import 'package:flutter/cupertino.dart';

class TrekkingInfo with ChangeNotifier{
  final String id;
  final String TrekkingSpot;
  final String TrekSpotImage;
  final String desc;
  bool isBookMark;

  TrekkingInfo({
    @required this.id,
    @required this.TrekkingSpot,
    @required this.TrekSpotImage,
    @required this.desc,
    this.isBookMark = false,
  });
}