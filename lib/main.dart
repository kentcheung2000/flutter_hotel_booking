import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Hotel {
  String name;
  int rating;
  String description;
  int price;

  Hotel(
      {@required this.name,
      @required this.rating,
      this.description,
      @required this.price});
}

class MyApp extends StatelessWidget {
  List<Hotel> hotels = [
    Hotel(
        name: 'Califonia', rating: 4, description: 'Wifi included', price: 300),
    Hotel(name: 'China', rating: 5, description: 'Wifi included', price: 360),
    Hotel(name: 'Canada', rating: 3, description: 'Wifi included', price: 320),
    Hotel(name: 'Mexico', rating: 3, description: 'Wifi included', price: 100),
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Hotels',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        body: GridView.count(
          crossAxisCount: 2,
          children: <Widget>[
            Text('Hotels'),
            Text('Hotels'),
            Text('Hotels'),
            Text('Hotels')
          ],
        ),
      ),
    );
  }
}
