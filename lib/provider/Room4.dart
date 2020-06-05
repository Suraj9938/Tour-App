import 'package:flutter/material.dart';

class Room4 extends StatefulWidget {
  final Icon leadingIcon;
  final IconButton trailingIcon;
  final String Text;

  Room4({
    this.leadingIcon,
    this.trailingIcon,
    @required this.Text,
  });

  @override
  _Room4State createState() => _Room4State();
}

class _Room4State extends State<Room4> {
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
