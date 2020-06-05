import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Hotel_Info.dart';

class Room1 extends StatefulWidget {
  final Icon leadingIcon;
  final Icon trailingIcon;
  final String Text;

  Room1({
    this.leadingIcon,
    this.trailingIcon,
    @required this.Text,
  });

  @override
  _Room1State createState() => _Room1State();
}

class _Room1State extends State<Room1> {
  @override
  Widget build(BuildContext context) {
    final loadedRoom = Provider.of<HotelInfo>(context);
    return ListTile(
      leading: widget.leadingIcon,
      title: Text(
        widget.Text,
        style: TextStyle(
          fontFamily: "font2",
          fontSize: 20,
          color: Colors.white
        ),
      ),
      trailing: widget.trailingIcon,
    );
  }
}
