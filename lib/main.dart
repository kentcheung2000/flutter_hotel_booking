import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking/details_screen.dart';

void main() => runApp(MyApp());

class Hotel {
  final String name;
  final int rating;
  final String description;
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
  final List<Hotel> hotels = [
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
            'https://images.pexels.com/photos/338504/pexels-photo-338504.jpeg'),
    Hotel(
        name: 'Canada',
        rating: 3,
        description: 'Wifi included',
        price: 320,
        image:
            'https://images.pexels.com/photos/1458457/pexels-photo-1458457.jpeg'),
    Hotel(
        name: 'Mexico',
        rating: 3,
        description: 'Wifi included',
        price: 100,
        image:
            'https://images.pexels.com/photos/1306699/pexels-photo-1306699.jpeg'),
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
        body: Container(
          color: Colors.blueAccent,
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 50),
          child: GridView.builder(
            itemCount: hotels.length,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.of(context).pushNamed(DetailsScreen.routeName, arguments: hotels[index]);
              },
              child: Container(
                child: GridTile(
                  child: Image.network(hotels[index].image, fit: BoxFit.cover),
                ),
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
      routes: {
        MyApp.routeName: (context) => MyApp(),
        DetailsScreen.routeName: (context) => DetailsScreen(),
      }
    );
  }
}
