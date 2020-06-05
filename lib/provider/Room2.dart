import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Hotel_Info.dart';

class Room2 extends StatefulWidget {
  final Icon leadingIcon;
  final IconButton trailingIcon;
  final String Text;

  Room2({
    this.leadingIcon,
    this.trailingIcon,
    @required this.Text,
  });

  @override
  _Room2State createState() => _Room2State();
}

class _Room2State extends State<Room2> {
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
