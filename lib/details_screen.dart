import 'package:flutter/material.dart';
import 'package:flutter_hotel_booking/main.dart';

class DetailsScreen extends StatefulWidget {
  static const routeName = '/details_screen';

  @override
  _DetailsScreenState createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  @override
  Widget build(BuildContext context) {
    final hotel = ModalRoute.of(context).settings.arguments as Hotel;
    return Scaffold(
      appBar: AppBar(
        title: Text('Details'),
      ),
      body: Text(hotel.name),
    );
  }
}
