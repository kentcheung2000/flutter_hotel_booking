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
    final device = MediaQuery.of(context).size;
    final hotel = ModalRoute.of(context).settings.arguments as Hotel;
    return Scaffold(
      appBar: AppBar(
        title: Text(hotel.name),
      ),
      body: Container(
        height: device.height,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Flexible(
                flex: 1,
                child: Container(
                  //color: Colors.brown,
                  width: double.infinity,
                  child: Image.network(hotel.image, fit: BoxFit.cover),
                ),
              ),
              Flexible(
                flex: 3,
                child: Container(
                  padding: EdgeInsets.all(10),
                  color: Colors.black26,
                  child: Column(
                    children: <Widget>[
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).accentColor,
                        ),
                        padding: EdgeInsets.all(10),
                        child: Row(
                          children: <Widget>[
                            Text(
                              'Rating: ',
                              style: TextStyle(fontSize: 24),
                            ),
                            hotel.rating >= 1
                                ? Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                  )
                                : Icon(
                                    Icons.star_border,
                                    color: Theme.of(context).primaryColor,
                                  ),
                            hotel.rating >= 2
                                ? Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                  )
                                : Icon(
                                    Icons.star_border,
                                    color: Theme.of(context).primaryColor,
                                  ),
                            hotel.rating >= 3
                                ? Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                  )
                                : Icon(
                                    Icons.star_border,
                                    color: Theme.of(context).primaryColor,
                                  ),
                            hotel.rating >= 4
                                ? Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                  )
                                : Icon(
                                    Icons.star_border,
                                    color: Theme.of(context).primaryColor,
                                  ),
                            hotel.rating >= 5
                                ? Icon(
                                    Icons.star,
                                    color: Theme.of(context).primaryColor,
                                  )
                                : Icon(
                                    Icons.star_border,
                                    color: Theme.of(context).primaryColor,
                                  ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).accentColor,
                        ),
                        child: Text(
                          hotel.price.toString() + ' \$',
                          style: TextStyle(fontSize: 24),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        //height: 300,
                        width: double.infinity,
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Theme.of(context).accentColor,
                        ),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: ScrollPhysics(parent: null),
                          itemBuilder: (context, item) => Padding(
                            padding: const EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              hotel.description[item],
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                          itemCount: hotel.description.length,
                        ),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
