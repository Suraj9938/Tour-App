import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Hotel_Info.dart';
import 'package:tourapp/widgets/Room1.dart';

class Room extends StatefulWidget {
  @override
  _RoomState createState() => _RoomState();
}

class _RoomState extends State<Room> {
  bool _delivery = false;

  @override
  Widget build(BuildContext context) {
    final loadedRoom = Provider.of<HotelInfo>(context);
    return Column(
      children: <Widget>[
        Center(
          child: Text(
            loadedRoom.hotelName,
          ),
        ),
        Divider(
          height: 5,
          thickness: 2,
        ),
        Room1(
          Text: "asdasd",
          leadingIcon: Icon(Icons.home, size: 50, color: Colors.white,),
          trailingIcon: Icon(Icons.hotel),
        ),
        Text(
          loadedRoom.hotelName,
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
        if (_delivery)
          Container(
            height: 50,
//            child: Text(
//              widget.roomInfo,
//              style: TextStyle(
//                fontSize: 15,
//                letterSpacing: 1,
//                height: 1.5,
//                fontWeight: FontWeight.bold,
//                color: Colors.blueGrey,
//              ),
//            ),
          ),
      ],
    );
  }
}
