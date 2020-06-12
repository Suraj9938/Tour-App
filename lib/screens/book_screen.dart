import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/book_provider.dart' show Book;
import 'package:tourapp/widgets/app_drawer.dart';
import 'package:tourapp/widgets/book_item.dart';

class BookScreen extends StatelessWidget {

  static const routeName = 'book_screen';

  @override
  Widget build(BuildContext context) {
    final book = Provider.of<Book>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Booked Hotels",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              itemCount: book.itemCount,
              itemBuilder: (context, index){
                return BookItem(
                  bookedId: book.items.values.toList()[index].bookedId,
                  hotelName: book.items.values.toList()[index].hotelName,
                  price: book.items.values.toList()[index].price,
                  image: book.items.values.toList()[index].image,
                  location: book.items.values.toList()[index].location,
                );
              }),
          ),
        ],
      ),
    );
  }
}
