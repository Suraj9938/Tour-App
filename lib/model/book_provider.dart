import 'package:flutter/cupertino.dart';

class BookItem {
  final String bookedId;
  final String image;
  final String hotelName;
  final String price;
  final String location;

  BookItem({
    @required this.bookedId,
    @required this.image,
    @required this.hotelName,
    @required this.price,
    @required this.location,
  });
}

class Book with ChangeNotifier {
  Map<String, BookItem> _items = {};

  Map<String, BookItem> get items {
    return {..._items};
  }

  // total no of booking
  int get itemCount {
    return _items == null ? 0 : _items.length;
  }

  void addToBook(String id, String image, String hotelName, String price,
      String location) {
    if (_items.containsKey(id)) {
      _items.update(
          id,
          (existingBook) => BookItem(
            bookedId: existingBook.bookedId,
                hotelName: existingBook.hotelName,
                price: existingBook.price,
                image: existingBook.image,
                location: existingBook.location,
              ));
    } else {
      _items.putIfAbsent(
          id,
          () => BookItem(
                bookedId: id,
                hotelName: hotelName,
                price: price,
                image: image,
                location: location,
              ));
    }
    print("i am from book provider. i had added thisid in:");
    print(id);
    notifyListeners();
  }

  //remove item from list
  void removeItemsFromList(String bookedId) {
    if(_items.containsKey(bookedId)){
      print("i have this bookedId");
    }else{
      print("i dont have this bookedId ");
    }
    _items.remove(bookedId);
    notifyListeners();
  }
}
