import 'package:flutter/cupertino.dart';

class DestinationInfo with ChangeNotifier{
  final String id;
  final String destinationName;
  final String price;
  final String destinationImage;
  final String description;
  bool isFavourite;

  DestinationInfo({
    @required this.id,
    @required this.destinationName,
    @required this.price,
    @required this.destinationImage,
    @required this.description,
    this.isFavourite = false,
  });

  void toogleisFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }
}