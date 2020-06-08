import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Destination_Info.dart';
import 'package:tourapp/screens/destination_details_screen.dart';

class FavouriteScreen extends StatelessWidget {
  //static const routeName = 'favourite_screen';
  @override
  Widget build(BuildContext context) {
    final _getDestination =
        Provider.of<DestinationInfo>(context, listen: false);

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      shadowColor: Colors.blue[900],
      elevation: 1.5,
      margin: EdgeInsets.all(10),
      color: Colors.blue[900],
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        //color: Colors.white,
        margin: EdgeInsets.all(0.5),
        padding: EdgeInsets.all(10),
        child: Column(
          children: <Widget>[
            InkWell(
              onTap: () {
                Navigator.of(context).pushNamed(
                    DestinationDetailsScreen.routeName,
                    arguments: _getDestination.id);
                //Navigator.pushNamed(context, DestinationDetailsScreen.routeName, arguments: loadedDestinations.id);
              },
              child: Image.asset(
                _getDestination.destinationImage,
                fit: BoxFit.fill,
                width: 150,
                height: 100,
                alignment: Alignment.topCenter,
              ),
            ),
            Divider(),
            Expanded(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    _getDestination.destinationName,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  Consumer<DestinationInfo>(
                    builder: (context, value, _) {
                      return IconButton(
                        padding: EdgeInsets.all(0),
                        alignment: Alignment.centerRight,
                        onPressed: () {
                          _getDestination.toogleisFavourite();
                        },
                        icon: Icon(
                          _getDestination.isFavourite
                              ? Icons.favorite
                              : Icons.favorite_border,
                          color: Colors.redAccent,
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
