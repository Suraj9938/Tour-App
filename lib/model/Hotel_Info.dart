import 'package:flutter/cupertino.dart';
import 'package:tourapp/widgets/book_item.dart';

class HotelInfo with ChangeNotifier{
  final String id;
  final String hotelImage;
  final String hotelName;
  final String location;
  final String price;
  final String hotelDescription;
  bool isFavourite;
  bool isBookMark;

  HotelInfo({
    @required this.id,
    @required this.hotelImage,
    @required this.hotelName,
    @required this.location,
    @required this.price,
    @required this.hotelDescription,
    this.isFavourite = false,
    this.isBookMark = false,
  });

  void toogleisFavourite() {
    isFavourite = !isFavourite;
    notifyListeners();
  }

  void toogleisBookMark() {
    isBookMark = !isBookMark;
    notifyListeners();
  }
}

