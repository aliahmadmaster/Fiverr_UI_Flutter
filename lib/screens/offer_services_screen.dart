import 'package:flutter/material.dart';

class OfferServicesScreen extends StatefulWidget {
  @override
  _OfferServicesScreenState createState() => _OfferServicesScreenState();
}

class _OfferServicesScreenState extends State<OfferServicesScreen> {
  ScrollController controller;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Icon(
            Icons.keyboard_backspace,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Icon(
            Icons.search,
            color: Colors.black,
          ),
          SizedBox(width: 12),
          Center(
            child: Text(
              'FILTER',
              style: TextStyle(
                  color: Colors.green,
                  fontSize: 15,
                  fontWeight: FontWeight.w600),
            ),
          ),
          SizedBox(width: 15),
        ],
      ),
      body: ListView(
        padding: EdgeInsets.only(left: 5, right: 5, top: 5, bottom: 5),
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(
              top: 15,
            ),
            child: Text(
              'Create cool, amaizing logos for videos intro & animation videos,... and help bring your business to life',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontWeight: FontWeight.w600, fontSize: 14),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 15),
            child: Text(
              'Shop by',
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: 15),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              deliveryTimeButton(
                context,
                'Deliery Time',
                Colors.green,
              ),
              SizedBox(
                width: 7,
              ),
              sellerExperianceButton(
                context,
                'Seller\'s experience',
                Colors.white,
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 10),
              child: Row(
                children: <Widget>[
                  buildLogoCard(),
                  buildLogoCard(),
                  buildLogoCard(),
                  buildLogoCard(),
                  buildLogoCard(),
                  buildLogoCard(),
                ],
              ),
            ),
          ),
          Divider(
            height: 30,
            thickness: 1.5,
          ),
          buildGigList(),
          buildGigList(),
          buildGigList(),
          buildGigList(),
          buildGigList(),
          buildGigList()
        ],
      ),
    );
  }

  Widget buildLogoCard() {
    return Container(
      height: 140,
      width: 140,
      child: Card(
        elevation: 4,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                alignment: Alignment.topCenter,
                height: 30,
                width: 70,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/toprated.png'),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 20,
              child: Text(
                'Top Rated Sales',
                style: TextStyle(fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}

Widget buildGigList() {
  return Container(
    height: 140,
    width: 140,
    child: Card(
        elevation: 4,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/toprated.png'),
                  ),
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(left: 2, right: 5),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 16,
                                ),
                                Text(
                                  ' 4.8', ////rating
                                  style: TextStyle(
                                      color: Colors.yellow, fontSize: 16),
                                ),
                                Text(
                                  ' (148)',
                                  style: TextStyle(color: Colors.grey[600]),
                                )
                              ],
                            ),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Icon(Icons.favorite_border),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 3),
                      child: Text(
                        'Fully functional Flutter app with beautiful animations and screens',
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: <Widget>[
                          Text(
                            'From ',
                            style: TextStyle(color: Colors.green),
                          ),
                          Text(
                            '\$145',
                            style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.w700,
                                fontSize: 16),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
  );
}

Align sellerExperianceButton(
  BuildContext context,
  String text,
  Color colour,
) {
  return Align(
    child: SizedBox(
      height: 50.0,
      width: 150,
      child: FlatButton(
        onPressed: () {},
        color: colour,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(text, style: TextStyle(color: Colors.black)),
      ),
    ),
  );
}

Align deliveryTimeButton(
  BuildContext context,
  String text,
  Color colour,
) {
  return Align(
    child: SizedBox(
      height: 50.0,
      width: 160,
      child: FlatButton(
        onPressed: () {},
        color: colour,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(
          text,
          style: Theme.of(context).primaryTextTheme.button,
        ),
      ),
    ),
  );
}
