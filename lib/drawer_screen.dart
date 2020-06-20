import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking/hotels.dart';
import 'package:flutter_hotel_booking/setting_screen.dart';
import 'package:provider/provider.dart';
import 'dark_provider.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final DarkProvider darkProvider = Provider.of<DarkProvider>(context);

    return Drawer(
      child: Container(
        color: darkProvider.darkMode
            ? Theme.of(context).primaryColorDark
            : Theme.of(context).accentColor,
        child: Column(
          children: <Widget>[
            AppBar(
              title: Text('Hotel App'),
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              title: Text(
                'Hotels',
                style: TextStyle(
                  color: darkProvider.darkMode
                      ? Theme.of(context).accentColor
                      : Theme.of(context).primaryColorDark,
                ),
              ),
              leading: Icon(
                Icons.hotel,
                color: darkProvider.darkMode
                    ? Theme.of(context).accentColor
                    : Theme.of(context).primaryColorDark,
              ),
              onTap: () {
                Navigator.of(context).pushNamed(HotelsPage.routeName);
              },
            ),
            SizedBox(
              height: 15,
            ),
            ListTile(
              title: Text(
                'Settings',
                style: TextStyle(
                  color: darkProvider.darkMode
                      ? Theme.of(context).accentColor
                      : Theme.of(context).primaryColorDark,
                ),
              ),
              leading: Icon(
                Icons.settings,
                color: darkProvider.darkMode
                    ? Theme.of(context).accentColor
                    : Theme.of(context).primaryColorDark,
              ),
              onTap: () {
                Navigator.of(context).pushNamed(SettingsScreen.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
