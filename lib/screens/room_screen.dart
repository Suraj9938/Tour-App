import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Hotels.dart';
import 'package:tourapp/widgets/Room.dart';

class RoomScreen extends StatelessWidget {
  static const routeName = 'room_screen';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final selectedHotels = Provider.of<Hotels>(context).findById(id);
    /*final room = Provider
        .of<Hotels>(context)
        .hotel;*/
    return Scaffold(
      appBar: AppBar(
        title: Text(
          selectedHotels.hotelName,
          style: TextStyle(
            fontFamily: "font2",
            fontSize: 28,
          ),
        ),
      ),
      body: Container(
        //width: MediaQuery.of(context).size.width,
        //height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.topCenter,
          children: <Widget>[
            Column(
              children: <Widget>[
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(0),
                    padding: EdgeInsets.all(0),
                    height: 350,
                    width: double.infinity,
                    child: Image.asset(
                      selectedHotels.hotelImage,
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.45,
              minChildSize: 0.45,
              maxChildSize: 0.85,
              builder: (context, scrollController) {
                return Container(
                  color: Colors.black45,
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Room(
                      id: selectedHotels.id,
                    ),
                  ),
                );
              },
            ),
            /*Flexible(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height,
                color: Colors.white,
                child: DraggableScrollableSheet(
                  initialChildSize: 0.45,
                  minChildSize: 0.45,
                  maxChildSize: 1,
                  builder: (context, scrollController){
                    return SingleChildScrollView(
                      controller: scrollController,
                      child: Container(
                        height: 400,
                        width: 200,
                        color: Colors.yellow,
                      ),
                    );
                  },
                ),
              ),
            ),*/
          ],
        ),
      ),
    );
  }
}
