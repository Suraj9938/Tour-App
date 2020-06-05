import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Hotel_Info.dart';

class Room1 extends StatefulWidget {
  final String title;

  Room1({
    this.title,
  });

  @override
  _Room1State createState() => _Room1State();
}

class _Room1State extends State<Room1> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Center(
        child: Text(
          widget.title,
          style: TextStyle(
            fontFamily: "font2",
            fontSize: 36,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
