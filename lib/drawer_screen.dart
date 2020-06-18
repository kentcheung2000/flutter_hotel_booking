import 'package:flutter/material.dart';

class DrawerScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          AppBar(
            title: Text('Hotel App'),
          ),
          ListTile(
            title: Text('Hotels'),
            leading: Icon(Icons.hotel),
          ),
        ],
      ),
    );
  }
}
