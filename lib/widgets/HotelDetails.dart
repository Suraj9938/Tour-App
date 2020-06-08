import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Hotel_Info.dart';
import 'package:tourapp/screens/room_screen.dart';

class HotelDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final loadedHotels = Provider.of<HotelInfo>(context);
    return Container(
      height: 245,
      width: double.infinity,
      margin: EdgeInsets.only(top: 12, right: 12),
      padding: EdgeInsets.only(left: 17, top: 7),
      alignment: Alignment.topLeft,
      child: Stack(
        children: <Widget>[
          Container(
            width: double.infinity,
            height: 210,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: InkWell(
                onTap: () {
                  Navigator.pushNamed(context, RoomScreen.routeName,
                      arguments: loadedHotels.id);
                },
                child: Image.asset(
                  loadedHotels.hotelImage,
                  fit: BoxFit.fill,
                  width: 220,
                  height: 170,
                ),
              ),
            ),
          ),
          Container(
            width: double.infinity,
            height: 80,
            margin: EdgeInsets.only(top: 130),
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(15),
                bottomRight: Radius.circular(15),
              ),
              child: GridTileBar(
                backgroundColor: Colors.black54,
                title: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          loadedHotels.hotelName,
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: "font2",
                            fontSize: 32,
                            color: Colors.orange,
                          ),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Icon(
                              Icons.star,
                              color: Colors.lime,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.lime,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.lime,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.lime,
                            ),
                            Icon(
                              Icons.star,
                              color: Colors.lime,
                            ),
                            SizedBox(
                              width: 3,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                trailing: Container(
                  padding: EdgeInsets.only(right: 10, bottom: 8),
                  child: IconButton(
                    icon: Icon(
                      loadedHotels.isBookMark
                          ? Icons.bookmark
                          : Icons.bookmark_border,
                      color: Colors.white,
                      size: 45,
                    ),
                    padding: EdgeInsets.all(0),
                    onPressed: () {
                      loadedHotels.toogleisBookMark();
                    },
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
    ;
  }
}
