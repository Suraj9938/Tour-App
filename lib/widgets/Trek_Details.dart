import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Trekking_Info.dart';
import 'package:tourapp/screens/trek_screen.dart';

class TrekDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedTrek = Provider.of<TrekkingInfo>(context);
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
                      TrekScreen.routeName,
                      arguments: loadedTrek.id);
                },
                child: Image.asset(
                  loadedTrek.TrekSpotImage,
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
                  loadedTrek.TrekkingSpot,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontFamily: "font1",
                    fontSize: 28,
                    color: Colors.white,
                  ),
                ),
                trailing: IconButton(
                  icon: Icon(
                    loadedTrek.isFavourite
                        ? Icons.favorite
                        : Icons.favorite_border,
                    color: Colors.white,
                  ),
                  padding: EdgeInsets.all(0),
                  onPressed: () {
                    loadedTrek.toogleisFavourite();
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
