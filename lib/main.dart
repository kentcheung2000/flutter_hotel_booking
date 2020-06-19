import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking/details_screen.dart';
import 'package:flutter_hotel_booking/drawer_screen.dart';
import 'package:flutter_hotel_booking/hotels.dart';
import 'package:flutter_hotel_booking/setting_screen.dart';

void main() => runApp(MyApp());

class Hotel {
  final String name;
  final int rating;
  List<String> description;
  final int price;
  final String image;

  Hotel(
      {@required this.name,
      @required this.rating,
      this.description,
      @required this.price,
      @required this.image});
}

class MyApp extends StatelessWidget {
  static const routeName = '/my_app';



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        primaryColor: Colors.orange,
        accentColor: Colors.white,
      ),
      home: HotelsPage(),
      routes: {
        MyApp.routeName: (context) => MyApp(),
        DetailsScreen.routeName: (context) => DetailsScreen(),
        SettingsScreen.routeName: (context) => SettingsScreen(),
        HotelsPage.routeName: (context) => HotelsPage(),
      },
    );
  }
}
