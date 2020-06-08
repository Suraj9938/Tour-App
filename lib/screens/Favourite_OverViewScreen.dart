import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:tourapp/model/Destinations.dart';
import 'package:tourapp/screens/FavouriteScreen.dart';
import 'package:tourapp/widgets/app_drawer.dart';

class FavoriteOverviewScreen extends StatelessWidget {
  static const routeName = 'favourite_overview_screen';

  @override
  Widget build(BuildContext context) {
    final _getLoadedCategory =
        Provider.of<Destinations>(context).favoriteCategory;

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Favourites",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
      drawer: AppDrawer(),
      body: Container(
        child: _getLoadedCategory.length == 0
            ? Container(
                alignment: Alignment.center,
                child: Text(
                  "No Favorite Locations",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.blue[900],
                    fontWeight: FontWeight.bold,
                    fontFamily: "font1",
                    letterSpacing: 2,
                  ),
                ),
              )
            : Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(11),
                height: double.infinity,
                width: double.infinity,
                child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      childAspectRatio: 4 / 4,
                    ),
                    itemCount: _getLoadedCategory.length,
                    itemBuilder: (context, index) {
                      return ChangeNotifierProvider.value(
                        value: _getLoadedCategory[index],
                        child: FavouriteScreen(),
                      );
                    }),
              ),
      ),
    );
  }
}
