import 'package:flutter/cupertino.dart';

class DestinationInfo with ChangeNotifier{
  final String id;
  final String destinationName;
  final String price;
  final String destinationImage;
  final String description;
  bool isBookMark;

  DestinationInfo({
    @required this.id,
    @required this.destinationName,
    @required this.price,
    @required this.destinationImage,
    @required this.description,
    this.isBookMark = false,
  });
}