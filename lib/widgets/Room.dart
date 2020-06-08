import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Hotels.dart';
import 'package:tourapp/model/book_provider.dart';
import 'package:tourapp/provider/roomListTile.dart';

class Room extends StatefulWidget {
  final String id;

  Room({this.id});

  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<Room> {
  bool _islocation = false;
  bool _isDescription = false;
  bool _isPrice = false;

  @override
  Widget build(BuildContext context) {
    final book = Provider.of<Book>(context, listen: false);
    final loadedRoom =
        Provider.of<Hotels>(context, listen: false).findById(widget.id);
    return Column(
      children: <Widget>[
        /*Room1(
          title: loadedRoom.hotelName,
        ),*/
        RoomListTile(
          text: loadedRoom.hotelName,
        ),
        Divider(
          height: 15,
          color: Colors.white,
          thickness: 5,
        ),
        RoomListTile(
          leadingIcon: Icon(
            Icons.location_on,
            size: 30,
            color: Colors.white,
          ),
          trailingIcon: IconButton(
            icon: _islocation
                ? Icon(
                    Icons.expand_less,
                    color: Colors.white,
                  )
                : Icon(
                    Icons.expand_more,
                    color: Colors.white,
                  ),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {
              setState(() {
                _islocation = !_islocation;
              });
            },
          ),
          text: "Hotel Location",
        ),
        if (_islocation)
          Padding(
            padding: EdgeInsets.only(top: 12, right: 20),
            child: Container(
              height: 60,
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  loadedRoom.location,
                  style: TextStyle(
                    fontFamily: "font1",
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        /*Room2(
          leadingIcon: Icon(
            Icons.location_on,
            size: 30,
            color: Colors.white,
          ),
          trailingIcon: IconButton(
            icon: _expand
                ? Icon(
                    Icons.expand_less,
                    color: Colors.white,
                  )
                : Icon(
                    Icons.expand_more,
                    color: Colors.white,
                  ),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {
              setState(() {
                _expand = !_expand;
              });
            },
          ),
          Text: "Hotel Location",
        ),*/
        Divider(
          height: 15,
          color: Colors.white,
          thickness: 3,
        ),
        RoomListTile(
          leadingIcon: Icon(
            Icons.description,
            size: 30,
            color: Colors.white,
          ),
          trailingIcon: IconButton(
            icon: _isDescription
                ? Icon(
                    Icons.expand_less,
                    color: Colors.white,
                    size: 34,
                  )
                : Icon(
                    Icons.expand_more,
                    color: Colors.white,
                    size: 34,
                  ),
            color: Colors.white,
            onPressed: () {
              setState(() {
                _isDescription = !_isDescription;
              });
            },
          ),
          text: "Hotel Description",
        ),
        if (_isDescription)
          Padding(
            padding: EdgeInsets.only(left: 20, right: 30, top: 6),
            child: Container(
              height: 520,
              child: Text(
                loadedRoom.hotelDescription,
                style: TextStyle(
                  fontFamily: "font1",
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
          ),
        Divider(
          height: 15,
          color: Colors.white,
          thickness: 3,
        ),
        RoomListTile(
          leadingIcon: Icon(
            Icons.attach_money,
            size: 30,
            color: Colors.white,
          ),
          trailingIcon: IconButton(
            icon: _isPrice
                ? Icon(
                    Icons.expand_less,
                    color: Colors.white,
                    size: 34,
                  )
                : Icon(
                    Icons.expand_more,
                    color: Colors.white,
                    size: 34,
                  ),
            color: Colors.white,
            onPressed: () {
              setState(() {
                _isPrice = !_isPrice;
              });
            },
          ),
          text: "Price",
        ),
        if (_isPrice)
          Padding(
            padding: EdgeInsets.only(right: 140, top: 12),
            child: Container(
              height: 60,
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  loadedRoom.price,
                  style: TextStyle(
                    fontFamily: "font1",
                    fontSize: 25,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
        Divider(
          height: 15,
          color: Colors.white,
          thickness: 3,
        ),
        RoomListTile(
          leadingIcon: Icon(
            Icons.beenhere,
            size: 30,
            color: Colors.white,
          ),
          trailingIcon: IconButton(
            icon: IconButton(
              icon: Icon(
                loadedRoom.isFavourite ? Icons.favorite : Icons.favorite_border,
                color: Colors.white,
                size: 32,
              ),
              padding: EdgeInsets.all(0),
              onPressed: () {
                loadedRoom.toogleisFavourite();
              },
            ),
          ),
          text: "Is Favourite ?",
        ),
        Divider(
          height: 15,
          color: Colors.white,
          thickness: 3,
        ),
        RoomListTile(
          leadingIcon: Icon(
            Icons.book,
            size: 30,
            color: Colors.white,
          ),
          trailingIcon: IconButton(
            icon: Icon(
              loadedRoom.isBookMark ? Icons.bookmark : Icons.bookmark_border,
              color: Colors.white,
              size: 34,
            ),
            padding: EdgeInsets.all(0),
            onPressed: () {
              loadedRoom.toogleisBookMark();
            },
          ),
          text: "Is BookMark ?",
        ),
        Divider(
          height: 15,
          color: Colors.white,
          thickness: 3,
        ),
        Center(
          child: FlatButton(
            padding: EdgeInsets.all(4),
            child: Container(
              width: 160,
              height: 48,
              color: Colors.deepOrange,
              child: Text(
                "Book Hotel",
                style: TextStyle(
                  fontFamily: "font1",
                  fontSize: 32,
                ),
              ),
            ),
            onPressed: () {
              book.addToBook(
                loadedRoom.id,
                loadedRoom.hotelImage,
                loadedRoom.hotelName,
                loadedRoom.price,
                loadedRoom.location,
              );
              Scaffold.of(context).removeCurrentSnackBar();
              Scaffold.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: Theme.of(context).primaryColor,
                  content: Text(
                    "Added to Booked Hotels",
                  ),
                  duration: Duration(seconds: 3),
                  action: SnackBarAction(
                    label: "UNDO",
                    textColor: Colors.white,
                    onPressed: () {},
                  ),
                ),
              );
            },
            splashColor: Colors.lime,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        /*ListTile(
          leading: Icon(
            Icons.directions_bike,
            //color: Colors.blueGrey,
            size: 25,
          ),
          subtitle: Text("asfaf"),
          trailing: IconButton(
            padding: EdgeInsets.all(0),
            icon: Icon(
              _delivery ? Icons.expand_less : Icons.expand_more,
              //color: Colors.blueGrey,
              size: 25,
            ),
            onPressed: () {
              setState(
                () {
                  _delivery = !_delivery;
                },
              );
            },
          ),
        ),*/
      ],
    );
  }
}
