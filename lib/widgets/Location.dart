import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Destinations.dart';
import 'package:tourapp/provider/roomListTile.dart';

class Location extends StatefulWidget {
  final String id;

  Location({this.id});

  @override
  _LocationState createState() => _LocationState();
}

class _LocationState extends State<Location> {
  bool _isPrice = false;
  bool _isDescription = false;

  @override
  Widget build(BuildContext context) {
    //final id = ModalRoute.of(context).settings.arguments as String;
    final loadedLocation =
        Provider.of<Destinations>(context).findById(widget.id);
    return Column(
      children: <Widget>[
        RoomListTile(
          text: loadedLocation.destinationName,
        ),
        Divider(
          height: 15,
          color: Colors.white,
          thickness: 5,
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
                  )
                : Icon(
                    Icons.expand_more,
                    color: Colors.white,
                  ),
            iconSize: 30,
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
            padding: EdgeInsets.only(top: 12, right: 120),
            child: Container(
              height: 60,
              child: Padding(
                padding: EdgeInsets.all(4),
                child: Text(
                  loadedLocation.price,
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
          text: "Description",
        ),
        if (_isDescription)
          Padding(
            padding: EdgeInsets.only(left: 20, right: 30, top: 6),
            child: Container(
              height: 290,
              child: Text(
                loadedLocation.description,
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
            Icons.beenhere,
            size: 30,
            color: Colors.white,
          ),
          trailingIcon: IconButton(
            icon: Icon(
              loadedLocation.isFavourite
                  ? Icons.favorite
                  : Icons.favorite_border,
              color: Colors.white,
              size: 34,
            ),
            onPressed: () {
              loadedLocation.toogleisFavourite();
            },
          ),
          text: "Is Favourite ?",
        ),
        Divider(
          height: 15,
          color: Colors.white,
          thickness: 3,
        ),
//        Location5(
//          leadingIcon: Icon(
//            Icons.book,
//            size: 30,
//            color: Colors.white,
//          ),
//          trailingIcon: IconButton(
//            icon: Icon(
//                    Icons.bookmark,
//                    color: Colors.white,
//                  ),
//          ),
//          Text: "Is BookMark ?",
//        ),

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
