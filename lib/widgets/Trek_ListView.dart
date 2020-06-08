import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/TrekSpot.dart';
import 'package:tourapp/widgets/Trek_Details.dart';

class TrekListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final trekSpot = Provider.of<TrekSpot>(context).trek;
    return Container(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
          value: trekSpot[index],
          child: TrekDetails(),
        ),
        itemCount: trekSpot.length,
      ),
    );
  }
}
