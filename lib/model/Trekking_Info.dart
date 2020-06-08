import 'package:flutter/cupertino.dart';

class TrekkingInfo with ChangeNotifier{
  final String id;
  final String TrekkingSpot;
  final String TrekSpotImage;
  final String desc;
  bool isFavourite;

  TrekkingInfo({
    @required this.id,
    @required this.TrekkingSpot,
    @required this.TrekSpotImage,
    @required this.desc,
    this.isFavourite = false,
  });

  void toogleisFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}