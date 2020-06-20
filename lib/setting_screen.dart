import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking/dark_provider.dart';
import 'package:flutter_hotel_booking/drawer_screen.dart';
import 'package:provider/provider.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings_screen';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    final DarkProvider darkProvider = Provider.of<DarkProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: DrawerScreen(),
      body: Container(
        color: darkProvider.darkMode
            ? Theme.of(context).primaryColorDark
            : Theme.of(context).accentColor,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              darkProvider.darkMode
                  ? Text(
                      'Visibility option',
                      style: TextStyle(color: Theme.of(context).accentColor),
                    )
                  : Text('Visibility option'),
              RaisedButton(
                onPressed: () {
                  darkProvider.setDarkMode();
                },
                child: darkProvider.darkMode
                    ? Text('Change to normal mode')
                    : Text('Change to dark mode'),
                color: Theme.of(context).primaryColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
