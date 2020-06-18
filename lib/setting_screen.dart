import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking/drawer_screen.dart';

class SettingsScreen extends StatefulWidget {
  static const routeName = '/settings_screen';

  @override
  _SettingsScreenState createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      drawer: DrawerScreen(),
      body: Container(
        child: Center(
          child: Text('This is our settings'),
        ),
      ),
    );
  }
}
