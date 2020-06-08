import 'package:flutter/cupertino.dart';

class BookItem {
  final String id;
  final String image;
  final String hotelName;
  final String price;
  final String location;

  BookItem({
    @required this.id,
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
                id: existingBook.id,
                hotelName: existingBook.hotelName,
                price: existingBook.price,
                image: existingBook.image,
                location: existingBook.location,
              ));
    } else {
      _items.putIfAbsent(
          id,
          () => BookItem(
                id: DateTime.now().toString(),
                hotelName: hotelName,
                price: price,
                image: image,
                location: location,
              ));
    }
    notifyListeners();
  }

  //remove item from list
  void removeItemsFromList(String id) {
    _items.remove(id);
    notifyListeners();
  }
}
