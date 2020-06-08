import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/book_provider.dart';

class BookItem extends StatelessWidget {
  final String id;
  final String image;
  final String hotelName;
  final String price;
  final String times;
  final String location;

  BookItem({
    this.id,
    this.image,
    this.hotelName,
    this.price,
    this.times,
    this.location,
  });

  @override
  Widget build(BuildContext context) {
    final _getHotels = Provider.of<Book>(context);
    print(image);
    print(hotelName);
    print(location);
    print(price);

    return _getHotels.items.length == 0
        ? Container(
            child: Center(
              child: Text(
                "Please book a hotel",
                style: TextStyle(
                  fontSize: 28,
                ),
              ),
            ),
          )
        : Dismissible(
            background: Card(
              margin: EdgeInsets.all(10),
              child: Container(
                color: Colors.red,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(right: 10),
                      child: Container(
                        alignment: Alignment.centerRight,
                        child: Icon(
                          Icons.delete_forever,
                          color: Colors.white,
                          size: 30,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            key: ValueKey(DateTime.now()),
            direction: DismissDirection.endToStart,
            confirmDismiss: (direction) {
              return showDialog(
                  context: context,
                  builder: (ctx) {
                    return AlertDialog(
                      title: Text(
                        "Are you sure?",
                        style: TextStyle(
                          fontFamily: "font1",
                          fontSize: 24,
                        ),
                      ),
                      content: Text(
                        "Do you want to cancel the booking?",
                        style: TextStyle(
                          fontFamily: "font1",
                          fontSize: 22,
                        ),
                      ),
                      actions: <Widget>[
                        FlatButton(
                          child: Text(
                            "Yes",
                            style: TextStyle(
                              fontFamily: "font2",
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context, true);
                          },
                        ),
                        FlatButton(
                          child: Text(
                            "No",
                            style: TextStyle(
                              fontFamily: "font2",
                              fontSize: 20,
                            ),
                          ),
                          onPressed: () {
                            Navigator.pop(context, false);
                          },
                        ),
                      ],
                    );
                  });
            },
            onDismissed: (direction) {
              _getHotels.removeItemsFromList(id);
            },
            child: Card(
              shadowColor: Colors.white,
              margin: EdgeInsets.all(0),
              child: Container(
                padding: EdgeInsets.all(0),
                margin: EdgeInsets.all(0),
                child: Column(
                  children: <Widget>[
                    Card(
                      margin: EdgeInsets.all(15),
                      child: Padding(
                        padding: EdgeInsets.all(0),
                        child: ListTile(
                          leading: ClipRRect(
                            borderRadius: BorderRadius.circular(28),
                            child: CircleAvatar(
                              radius: 28,
                              child: Image.asset(image),
                            ),
                          ),
                          title: Text(
                            hotelName,
                            style: TextStyle(
                              fontFamily: "font2",
                              color: Colors.blue,
                              fontSize: 20,
                            ),
                          ),
                          subtitle: Padding(
                            padding: EdgeInsets.only(left: 5),
                            child: Text(
                              location,
                              style: TextStyle(
                                fontFamily: "font1",
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          trailing: Text(
                            price,
                            style: TextStyle(
                              fontFamily: "font2",
                              color: Colors.green[200],
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
  }
}
