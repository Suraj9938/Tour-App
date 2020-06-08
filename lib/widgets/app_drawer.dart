import 'package:flutter/material.dart';
import 'package:tourapp/screens/Favourite_OverViewScreen.dart';
import 'package:tourapp/screens/book_screen.dart';
import 'package:tourapp/screens/destination_overview_screen.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          UserAccountsDrawerHeader(
            accountName: Text('Suraj Lal Shrestha', style: TextStyle(fontFamily: "font2", fontSize: 22),),
            accountEmail: Text('surajlalshrestha9@gmail.com', style: TextStyle(fontFamily: "font2", fontSize: 18),),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://images.wallpapersden.com/image/download/sung-jin-woo-anime-art_67920_2560x1440.jpg'),
            ),
          ),
          ListTile(
            leading: Icon(Icons.airplanemode_active),
            title: Text('Travel Location', style: TextStyle(fontFamily: "font2", fontSize: 22, color: Colors.black45),),
            onTap: () {
              Navigator.pushReplacementNamed(context, DestinationOverViewScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('Book Room', style: TextStyle(fontFamily: "font2", fontSize: 22, color: Colors.black45),),
            onTap: () {
              Navigator.pushReplacementNamed(context, BookScreen.routeName);
            },
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.edit),
            title: Text('Show Favourites', style: TextStyle(fontFamily: "font2", fontSize: 22, color: Colors.black45),),
            onTap: () {
              Navigator.pushReplacementNamed(context, FavoriteOverviewScreen.routeName);
            },
          ),
          Divider(),
        ],
      ),
    );
  }
}
