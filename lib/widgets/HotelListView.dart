import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Hotels.dart';
import 'package:tourapp/widgets/HotelDetails.dart';

class HotelListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final hotel = Provider.of<Hotels>(context).hotel;
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: hotel[index],
        child: HotelDetails(),
      ),
      itemCount: hotel.length,
    );
  }
}
