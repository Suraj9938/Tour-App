import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Destination_Info.dart';
import 'package:tourapp/model/Destinations.dart';
import 'package:tourapp/widgets/Location.dart';

class LocationScreen extends StatelessWidget {
  static const routeName = 'location_screen';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    print("my location id");
    print(id);
    final selectedLocations = Provider.of<Destinations>(context).findById(id);
    print(selectedLocations.destinationImage);
    return Container(
      child: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          Container(
            margin: EdgeInsets.all(0),
            padding: EdgeInsets.all(0),
            width: double.infinity,
            child: Image.asset(
              selectedLocations.destinationImage,
              width: double.infinity,
              height: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          DraggableScrollableSheet(
            initialChildSize: 0.45,
            minChildSize: 0.45,
            maxChildSize: 0.75,
            builder: (context, scrollController) {
              return Container(
                color: Colors.black45,
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Location(
                    id: selectedLocations.id,
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
//                  child: Expanded(
//                    child: ListView.builder(
//                      controller: scrollController,
//                      itemBuilder: (ctx, index) => ChangeNotifierProvider.value(
//                        value: location[index],
//                        child: Location(),
//                      ),
//                      itemCount: location.length,
//                    ),
//                  ),

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
