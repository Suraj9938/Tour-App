import 'package:flutter/material.dart';
import 'package:tourapp/widgets/Destination_ListView.dart';
import 'package:tourapp/widgets/Tour_Details.dart';
import 'package:tourapp/widgets/Trek_ListView.dart';

class DestinationSingleChildScroll extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          TourDetails(),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Destinations",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    fontFamily: "font1",
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 180,
            //decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.all(Radius.circular(20))),
            child: DestinationListView(),
          ),
          Padding(
            padding: EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Trekking Spots",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 26,
                    fontFamily: "font1",
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 180,
            child: TrekListView(),
          ),
        ],
      ),
    );
  }
}
