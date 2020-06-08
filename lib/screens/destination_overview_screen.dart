import 'package:flutter/material.dart';
import 'package:tourapp/widgets/Destination_ListView.dart';
import 'package:tourapp/widgets/Destination_SingleChildScrollView.dart';
import 'package:tourapp/widgets/Tour_Details.dart';
import 'package:tourapp/widgets/Trek_ListView.dart';
import 'package:tourapp/widgets/app_drawer.dart';

class DestinationOverViewScreen extends StatefulWidget {
  static const routeName = 'destinations_overview_screen';
  @override
  _DestinationOverViewScreenState createState() =>
      _DestinationOverViewScreenState();
}

class _DestinationOverViewScreenState extends State<DestinationOverViewScreen> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Tour App",
          style: TextStyle(
            fontFamily: "font2",
            fontSize: 25,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: DestinationSingleChildScroll(),
    );
  }
}
