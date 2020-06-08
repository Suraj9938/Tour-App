import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/TrekSpot.dart';
import 'package:tourapp/widgets/Trek.dart';

class TrekScreen extends StatelessWidget {
  static const routeName = 'trek_screen';

  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    final selectedTrek = Provider.of<TrekSpot>(context).findById(id);
    return Scaffold(
      appBar: AppBar(
        title: Text(
          selectedTrek.TrekkingSpot,
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
                      selectedTrek.TrekSpotImage,
                      width: double.infinity,
                      height: 300,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.3,
              minChildSize: 0.3,
              maxChildSize: 0.6,
              builder: (context, scrollController){
                return Container(
                  color: Colors.black45,
                  child: SingleChildScrollView(
                    controller: scrollController,
                    child: Trek(
                      id: selectedTrek.id,
                    ),
                  ),
//                  child: Expanded(
//                    child: ListView.builder(
//                      controller: scrollController,
//                      itemBuilder: (ctx, index) =>
//                          ChangeNotifierProvider.value(
//                            value: trek[index],
//                            child: Trek(
//                              id: selectedTrek.id,
//                            ),
//                          ),
//                      itemCount: trek.length,
//                    ),
//                  ),
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
