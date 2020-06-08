import 'package:flutter/material.dart';

class RoomListTile extends StatelessWidget {
  final Icon leadingIcon;
  final IconButton trailingIcon;
  final String text;
  RoomListTile({
    this.leadingIcon,
    this.trailingIcon,
    this.text,
  });
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leadingIcon,
      title: Padding(
        padding: EdgeInsets.only(left: 2),
        child: Text(
          text,
          style: TextStyle(
            fontFamily: "font2",
            fontSize: 30,
            color: Colors.white,
          ),
        ),
      ),
      trailing: trailingIcon,
    );
  }
}
