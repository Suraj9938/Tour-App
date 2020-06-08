import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/TrekSpot.dart';
import 'package:tourapp/provider/roomListTile.dart';

class Trek extends StatefulWidget {
  final String id;

  Trek({this.id});
  @override
  _TrekState createState() => _TrekState();
}

class _TrekState extends State<Trek> {
  bool _isDescription = false;

  @override
  Widget build(BuildContext context) {
    //final id = ModalRoute.of(context).settings.arguments as String;
    final loadedTrek = Provider.of<TrekSpot>(context).findById(widget.id);
    return Column(
      children: <Widget>[
        RoomListTile(
          text: loadedTrek.TrekkingSpot,
        ),
        Divider(
          height: 15,
          color: Colors.white,
          thickness: 5,
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
              size: 32,
            )
                : Icon(
              Icons.expand_more,
              color: Colors.white,
              size: 32,
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
              height: 220,
              child: Text(
                loadedTrek.desc,
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
            icon: IconButton(
              icon: Icon(
                loadedTrek.isFavourite ? Icons.favorite : Icons.favorite_border,
                color: Colors.white,
                size: 30,
              ),
              padding: EdgeInsets.all(0),
              onPressed: () {
                loadedTrek.toogleisFavourite();
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
