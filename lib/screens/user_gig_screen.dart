import 'package:fiverr_clone/screens/widget/card_listview_horizontal.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class UserGigsScreen extends StatefulWidget {
  @override
  _UserGigsScreenState createState() => _UserGigsScreenState();
}

class _UserGigsScreenState extends State<UserGigsScreen>
    with SingleTickerProviderStateMixin {
  TabController _tabController;
  int biggnerPrice;
  int intermediate = 100;
  int expert = 150;

  final List<Widget> myTabs = [
    Tab(text: '\$150'),
    Tab(text: '\$100'),
    Tab(text: '\$50'),
  ];

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Material(
        child: ListView(
          children: <Widget>[
            Container(
              alignment: Alignment.bottomCenter,
              width: double.infinity,
              height: 240,
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.asset(
                    'images/service.png',
                    width: double.infinity,
                    fit: BoxFit.fill,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 10.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.keyboard_backspace,
                          color: Colors.white,
                          size: 27,
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 10),
                          child: Container(
                            width: 80.0,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: <Widget>[
                                Icon(
                                  Icons.share,
                                  color: Colors.white,
                                  size: 27,
                                ),
                                SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.favorite_border,
                                  color: Colors.white,
                                  size: 27,
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: CircleAvatar(
                //TODO
                //change to network image
                backgroundImage: AssetImage(
                  'images/seller.jpg',
                ),
                radius: 20,
              ),
              title: Text('Name: Person '),
              subtitle: Text('Top Rated Seller'),
              trailing: Transform.rotate(
                angle: 270 * pi / 180,
                child: Icon(
                  Icons.arrow_back_ios,
                  size: 17,
                ),
              ),
            ),
            Divider(
              height: 0,
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 12.0, horizontal: 0),
              child: ListTile(
                title: Text(
                  'Gig Tile',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                subtitle: Text(
                  'Gig Details MultiLine',
                ),
              ),
            ),
            Divider(),
            TabBar(
              labelStyle: TextStyle(fontSize: 20),
              indicatorColor: Colors.green,
              controller: _tabController,
              labelColor: Colors.green,
              unselectedLabelColor: Colors.grey[500],
              tabs: myTabs,
            ),
            // code ko refactor karna he tab bar k

            Center(
              child: [
                buildTabMethod(context,
                    packageName: 'Premium Package',
                    featuresMoney: '150',
                    pakageOfferDetails:
                        'Large Applications having 8 to 10 screens with full functionalities like database and apis',
                    featuresGiven: 'Delivery Days',
                    featuresProperty: '5 Days'),
                buildTabMethod(context,
                    packageName: 'Standard Package',
                    featuresMoney: '100',
                    pakageOfferDetails:
                        'Large Applications having 5 to 6 screens with full functionalities ',
                    featuresGiven: 'Revisions',
                    featuresProperty: '3'),
                buildTabMethod(context,
                    packageName: 'Initial Package',
                    featuresMoney: '50',
                    pakageOfferDetails:
                        'Small applications within one or two pages',
                    featuresGiven: 'Revisions',
                    featuresProperty: '2'),
              ][_tabController.index],
            ),

            ///end of tabbar work
            ///

            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: ListTile(
                contentPadding: EdgeInsets.zero,
                title: Text('Frequently Asked Questions '),
                trailing: Transform.rotate(
                  angle: 270 * pi / 180,
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 17,
                  ),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: ListTile(
                //TODO two variables assign //  one for total reviews and // second for star 7.9
                title: Text('785 Reviews  4.9'),
                contentPadding: EdgeInsets.zero,
                trailing: Transform.rotate(
                  angle: 270 * pi / 180,
                  child: Icon(
                    Icons.arrow_back_ios,
                    size: 17,
                  ),
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Text(
                'People also viewed',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GlobalCardHorizontal(
                      width: 180,
                      image: 'images/seller.jpeg',
                      title: 'title 1',
                      subtitle: 'subtitle 1',
                    ),
                    SizedBox(width: 8),
                    GlobalCardHorizontal(
                      width: 180,
                      image: 'images/seller.jpeg',
                      title: 'title 1',
                      subtitle: 'subtitle 1',
                    ),
                    SizedBox(width: 8),
                    GlobalCardHorizontal(
                      width: 180,
                      image: 'images/seller.jpeg',
                      title: 'title 1',
                      subtitle: 'subtitle 1',
                    ),
                    SizedBox(width: 8),
                    GlobalCardHorizontal(
                      width: 180,
                      image: 'images/seller.jpeg',
                      title: 'title 1',
                      subtitle: 'subtitle 1',
                    ),
                    SizedBox(width: 8),
                    GlobalCardHorizontal(
                      width: 180,
                      image: 'images/seller.jpeg',
                      title: 'title 1',
                      subtitle: 'subtitle 1',
                    ),
                    SizedBox(width: 8),
                    GlobalCardHorizontal(
                      width: 180,
                      image: 'images/seller.jpeg',
                      title: 'title 1',
                      subtitle: 'subtitle 1',
                    ),
                  ],
                ),
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 12, right: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Recently Viewed Gigs',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: null,
                    child: Text(
                      'Manage',
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w600),
                    ),
                  ),
                ],
              ),
            ),
            Divider(),
            Padding(
              padding: EdgeInsets.only(left: 12),
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 10.0),
                height: 200,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    GlobalCardHorizontal(
                      width: 180,
                      image: 'images/seller.jpeg',
                      title: 'title 1',
                      subtitle: 'subtitle 1',
                    ),
                    SizedBox(width: 8),
                    GlobalCardHorizontal(
                      width: 180,
                      image: 'images/seller.jpeg',
                      title: 'title 1',
                      subtitle: 'subtitle 1',
                    ),
                    SizedBox(width: 8),
                    GlobalCardHorizontal(
                      width: 180,
                      image: 'images/seller.jpeg',
                      title: 'title 1',
                      subtitle: 'subtitle 1',
                    ),
                    SizedBox(width: 8),
                    GlobalCardHorizontal(
                      width: 180,
                      image: 'images/seller.jpeg',
                      title: 'title 1',
                      subtitle: 'subtitle 1',
                    ),
                    SizedBox(width: 8),
                    GlobalCardHorizontal(
                      width: 180,
                      image: 'images/seller.jpeg',
                      title: 'title 1',
                      subtitle: 'subtitle 1',
                    ),
                    SizedBox(width: 8),
                    GlobalCardHorizontal(
                      width: 180,
                      image: 'images/seller.jpeg',
                      title: 'title 1',
                      subtitle: 'subtitle 1',
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding buildTabMethod(
    BuildContext context, {
    String featuresMoney,
    String packageName,
    String pakageOfferDetails,
    String featuresGiven,
    String featuresProperty,
  }) {
    return Padding(
      padding: const EdgeInsets.only(left: 12, right: 12),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //TODO
          Padding(
            padding: const EdgeInsets.only(top: 12),
            child: Text(
              packageName,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 17),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 12,
              bottom: 12,
            ),
            child: Text(pakageOfferDetails),
          ),
          ...List.generate(
            6,
            (index) => ListTile(
              //TODO
              leading: Text(featuresGiven),
              trailing: Text(featuresProperty),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, right: 15),
            child: withDollarButton(
              context,
              'CONTINUE (\$$featuresMoney)',
              Colors.green,
            ),
          )
        ],
      ),
    );
  }
}

Align withDollarButton(
  BuildContext context,
  String text,
  Color colour,
) {
  return Align(
    child: SizedBox(
      height: 50.0,
      width: double.infinity,
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
