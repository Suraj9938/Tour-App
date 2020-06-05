import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Destinations.dart';
import 'package:tourapp/widgets/Destination_Details.dart';

class DestinationListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final destinations = Provider.of<Destinations>(context).data;
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
        value: destinations[index],
        child: DestinationDetails(),
      ),
      itemCount: destinations.length,
    );
  }
}
