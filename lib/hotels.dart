import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking/main.dart';
import 'package:provider/provider.dart';
import 'package:flutter_hotel_booking/dark_provider.dart';

import 'details_screen.dart';
import 'drawer_screen.dart';

class HotelsPage extends StatelessWidget {
  static const routeName = '/hotels';

  final List<Hotel> hotels = [
    Hotel(
        name: 'Califonia',
        rating: 4,
        description: [
          'Wifi included',
          'Exclusive pool',
          'No smoking',
          'Wifi included',
          'Exclusive pool',
          'No smoking',
          'Wifi included',
          'Exclusive pool',
          'No smoking'
        ],
        price: 300,
        image:
        'https://images.pexels.com/photos/271639/pexels-photo-271639.jpeg'),
    Hotel(
        name: 'China',
        rating: 5,
        description: [
          'Wifi included',
          'Exclusive pool',
          'No smoking',
          'Wifi included',
          'Exclusive pool',
          'No smoking',
          'Wifi included',
          'Exclusive pool',
          'No smoking'
        ],
        price: 360,
        image:
        'https://images.pexels.com/photos/338504/pexels-photo-338504.jpeg'),
    Hotel(
        name: 'Canada',
        rating: 3,
        description: [
          'Wifi included',
          'Exclusive pool',
          'No smoking',
          'Wifi included',
          'Exclusive pool',
          'No smoking',
          'Wifi included',
          'Exclusive pool',
          'No smoking'
        ],
        price: 320,
        image:
        'https://images.pexels.com/photos/1458457/pexels-photo-1458457.jpeg'),
    Hotel(
        name: 'Mexico',
        rating: 3,
        description: [
          'Wifi included',
          'Exclusive pool',
          'No smoking',
          'Wifi included',
          'Exclusive pool',
          'No smoking',
          'Wifi included',
          'Exclusive pool',
          'No smoking'
        ],
        price: 100,
        image:
        'https://images.pexels.com/photos/1306699/pexels-photo-1306699.jpeg'),
  ];

  @override
  Widget build(BuildContext context) {
    final DarkProvider darkProvider = Provider.of<DarkProvider>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Hotels',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
          ),
        ),
      ),
      drawer: DrawerScreen(),
      body: Container(
        color: darkProvider.darkMode ? Theme.of(context).primaryColorDark : Colors.black26,
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          itemCount: hotels.length,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) => GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(DetailsScreen.routeName,
                  arguments: hotels[index]);
            },
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Container(
                child: GridTile(
                  footer: Container(
                    color: Colors.black87,
                    height: 40,
                    child: Center(
                      child: Text(
                        hotels[index].name,
                        style: TextStyle(
                          color: Theme.of(context).accentColor,
                        ),
                      ),
                    ),
                  ),
                  child:
                  Image.network(hotels[index].image, fit: BoxFit.cover),
                ),
                color: Colors.grey,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
