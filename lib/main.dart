import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class Hotel {
  String name;
  int rating;
  String description;
  int price;
  String image;

  Hotel(
      {@required this.name,
      @required this.rating,
      this.description,
      @required this.price,
      @required this.image});
}

class MyApp extends StatelessWidget {
  List<Hotel> hotels = [
    Hotel(
        name: 'Califonia',
        rating: 4,
        description: 'Wifi included',
        price: 300,
        image:
            'https://images.pexels.com/photos/271639/pexels-photo-271639.jpeg'),
    Hotel(
        name: 'China',
        rating: 5,
        description: 'Wifi included',
        price: 360,
        image:
            'https://images.pexels.com/photos/271639/pexels-photo-271639.jpeg'),
    Hotel(
        name: 'Canada',
        rating: 3,
        description: 'Wifi included',
        price: 320,
        image:
            'https://images.pexels.com/photos/271639/pexels-photo-271639.jpeg'),
    Hotel(
        name: 'Mexico',
        rating: 3,
        description: 'Wifi included',
        price: 100,
        image:
            'https://images.pexels.com/photos/271639/pexels-photo-271639.jpeg'),
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
        body: GridView.builder(
          itemCount: hotels.length,
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemBuilder: (contect, index) => Container(
            child: GridTile(
              child: Image.network(hotels[index].image),
            ),
            color: Colors.grey,
          ),
        ),
      ),
    );
  }
}
