import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Hotel_Info.dart';

class Room3 extends StatefulWidget {
  final Icon leadingIcon;
  final IconButton trailingIcon;
  final String Text;

  Room3({
    this.leadingIcon,
    this.trailingIcon,
    @required this.Text,
  });

  @override
  _Room3State createState() => _Room3State();
}

class _Room3State extends State<Room3> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: widget.leadingIcon,
      title: Padding(
        padding: EdgeInsets.only(left: 2),
        child: Text(
          widget.Text,
          style: TextStyle(
            fontFamily: "font2",
            fontSize: 28,
            color: Colors.white,
          ),
        ),
      ),
      trailing: widget.trailingIcon,
    );
  }
}
