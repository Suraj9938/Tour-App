import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Hotels.dart';
import 'package:tourapp/widgets/Room.dart';
import 'package:tourapp/widgets/Room1.dart';

class RoomListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final room = Provider
        .of<Hotels>(context)
        .hotel;
    return Container(

      child: ListView.builder(
        itemBuilder: (ctx, index) =>
            ChangeNotifierProvider.value(
              value: room[index],
              child: Room(),
            ),
        itemCount: room.length,
      ),
    );
  }
}

    /*return DraggableScrollableSheet(
      builder: (context, scrollController) {
        return Container(
          //color: Colors.black12,
          child: ListView.builder(
            controller: scrollController,
            scrollDirection: Axis.horizontal,
            itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
              value: room[index],
              //child: Room(),
            ),
            itemCount: room.length,
          ),
        );
      },
    );*/

