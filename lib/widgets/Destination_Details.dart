import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Destination_Info.dart';
import 'package:tourapp/screens/destination_details_screen.dart';
import 'package:tourapp/screens/destination_overview_screen.dart';

class DestinationDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedDestinations = Provider.of<DestinationInfo>(context);
    return Container(
      height: 160,
      width: 250,
      margin: EdgeInsets.only(top: 12),
      padding: EdgeInsets.only(left: 17, top: 7),
      alignment: Alignment.topLeft,
      child: Stack(
        children: <Widget>[
          Container(
            width: 270,
            height: 130,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed(
                      DestinationDetailsScreen.routeName,
                      arguments: loadedDestinations.id);
                  //Navigator.pushNamed(context, DestinationDetailsScreen.routeName, arguments: loadedDestinations.id);
                },
                child: Image.asset(
                  loadedDestinations.destinationImage,
                  fit: BoxFit.fill,
                  width: 270,
                  height: 170,
                ),
              ),
            ),
          ),
          Container(
            width: 270,
            height: 50,
            margin: EdgeInsets.only(top: 80),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              child: GridTileBar(
                backgroundColor: Colors.black45,
                title: Text(
                  loadedDestinations.destinationName,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "font1",
                    fontSize: 32,
                    color: Colors.white,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    loadedDestinations.isFavourite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    loadedDestinations.toogleisFavourite();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
//    return Stack(
//      alignment: Alignment.topLeft,
//      children: <Widget>[
//        Container(
//          margin: EdgeInsets.all(10),
//          child: ClipRRect(
//            borderRadius: BorderRadius.circular(10),
//            child: Image.asset(
//              destinationImage,
//              fit: BoxFit.fill,
//              width: 240,
//              height: 170,
//            ),
//          ),
//        ),
//        GridTileBar(
//          backgroundColor: Colors.black45,
//          title: Text(
//            destinationName,
//            textAlign: TextAlign.center,
//            style: TextStyle(
//              fontFamily: "font1",
//              fontSize: 32,
//              color: Colors.black,
//            ),
//          ),
//          trailing: IconButton(
//            icon: Icon(
//              Icons.favorite_border,
//              color: Colors.black,
//            ),
//            padding: EdgeInsets.all(0),
//            onPressed: () {},
//          ),
//        ),
//      ],
//    );
  }
}
