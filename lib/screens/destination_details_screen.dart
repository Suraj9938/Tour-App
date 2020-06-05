import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Destinations.dart';
import 'package:tourapp/widgets/HotelListView.dart';
import 'package:tourapp/widgets/Room_ListView.dart';

class DestinationDetailsScreen extends StatelessWidget {
  static const routeName = 'destinations_details_screen';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final selectedDestinations = Provider.of<Destinations>(context).findById(id);

    return DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Travel Destinations",
              style: TextStyle(
                fontFamily: "font2",
                fontSize: 28,
              ),
            ),

            bottom: TabBar(
              tabs: <Widget>[
                Text(
                  selectedDestinations.destinationName,
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
                Text(
                  "Hotels",
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              HotelListView(),
              HotelListView(),
            ],
          ),
        ),
      );
  }
}
