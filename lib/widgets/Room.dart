import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Hotels.dart';
import 'package:tourapp/provider/Room1.dart';
import 'package:tourapp/provider/Room2.dart';
import 'package:tourapp/provider/Room3.dart';
import 'package:tourapp/provider/Room4.dart';

class Room extends StatefulWidget {
//  final String roomInfo;
//  Room(this.roomInfo);
  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<Room> {
  bool _expand = false;
  bool _isFav = false;

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final loadedRoom = Provider.of<Hotels>(context).findById(id);
    return Column(
      children: <Widget>[
        Room1(
          title: loadedRoom.hotelName,
        ),
        Divider(
          height: 15,
          color: Colors.white,
          thickness: 4,
        ),
        Room2(
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
        ),
        Divider(
          height: 15,
          color: Colors.white,
          thickness: 3,
        ),
        Room3(
          leadingIcon: Icon(
            Icons.description,
            size: 30,
            color: Colors.white,
          ),
          trailingIcon: IconButton(
            icon: _expand
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
                _expand = !_expand;
              });
            },
          ),
          Text: "Hotel Description",
        ),
        Divider(
          height: 15,
          color: Colors.white,
          thickness: 3,
        ),
        Room4(
          leadingIcon: Icon(
            Icons.description,
            size: 30,
            color: Colors.white,
          ),
          trailingIcon: IconButton(
            icon: _isFav
              ? Icon(
            Icons.favorite,
            color: Colors.white,
          )
              : Icon(
            Icons.favorite_border,
            color: Colors.white,
          ),
            iconSize: 30,
            color: Colors.white,
            onPressed: () {
              setState(() {
                _isFav = !_isFav;
              });
            },),
          Text: "Is Favourite ?",
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
        if (_expand)
          Container(
            height: 50,
            child: Padding(
              padding: EdgeInsets.only(right: 30, top: 2),
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
      ],
    );
  }
}
