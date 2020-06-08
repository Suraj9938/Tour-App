import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Destinations.dart';
import 'package:tourapp/model/Hotels.dart';
import 'package:tourapp/model/TrekSpot.dart';
import 'package:tourapp/model/book_provider.dart';
import 'package:tourapp/screens/Favourite_OverViewScreen.dart';
import 'package:tourapp/screens/book_screen.dart';
import 'package:tourapp/screens/destination_details_screen.dart';
import 'package:tourapp/screens/destination_overview_screen.dart';
import 'package:tourapp/screens/location_screen.dart';
import 'package:tourapp/screens/room_screen.dart';
import 'package:tourapp/screens/trek_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: Destinations()),
        ChangeNotifierProvider.value(value: TrekSpot()),
        ChangeNotifierProvider.value(value: Hotels()),
        ChangeNotifierProvider.value(value: Book()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: "Tour App",
          theme: ThemeData(
              primaryColor: Colors.blue,
              accentColor: Colors.blueAccent,
              fontFamily: "font1"),
        initialRoute: DestinationOverViewScreen.routeName,
        routes: {
            DestinationOverViewScreen.routeName : (ctx) => DestinationOverViewScreen(),
            DestinationDetailsScreen.routeName : (ctx) => DestinationDetailsScreen(),
            RoomScreen.routeName : (ctx) => RoomScreen(),
            LocationScreen.routeName : (ctx) => LocationScreen(),
            BookScreen.routeName : (ctx) => BookScreen(),
            TrekScreen.routeName : (ctx) => TrekScreen(),
            FavoriteOverviewScreen.routeName : (ctx) => FavoriteOverviewScreen(),
        },
        ),
    );
  }
}
