import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Destinations.dart';
import 'package:tourapp/screens/location_screen.dart';
import 'package:tourapp/widgets/HotelListView.dart';

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
              labelColor: Colors.white,
              tabs: <Widget>[
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    selectedDestinations.destinationName,
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  child: Text(
                    "Hotels",
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ),
              ],
            ),
          ),
          body: TabBarView(
            children: <Widget>[
              LocationScreen(),
              HotelListView(),
            ],
          ),
        ),
      );
  }
}
