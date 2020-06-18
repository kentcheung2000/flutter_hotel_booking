import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking/main.dart';
import 'package:flutter_hotel_booking/setting_screen.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Hotel App'),
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Hotels'),
            leading: Icon(Icons.hotel),
            onTap: () {
              Navigator.of(context).pushNamed(MyApp.routeName);
            },
          ),
          SizedBox(
            height: 15,
          ),
          ListTile(
            title: Text('Settings'),
            leading: Icon(Icons.settings),
            onTap: () {
              Navigator.of(context).pushNamed(SettingsScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
}
