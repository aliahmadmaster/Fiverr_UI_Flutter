import 'package:fiverr_clone/screens/category_screen.dart';
import 'package:fiverr_clone/screens/offer_services_screen.dart';
//import 'package:fiverr_clone/screens/category_page_backend/movie.dart';
import 'package:fiverr_clone/screens/search_screen.dart';
import 'package:fiverr_clone/screens/search_tabs.dart';
import 'package:fiverr_clone/screens/user_gig_screen.dart';
import 'package:fiverr_clone/screens/widget/card_listview_horizontal.dart';
//import 'package:fiverr_clone/screens/widget/reusable_card.dart';
import 'package:flutter/material.dart';

class MainHomeScreen extends StatefulWidget {
  @override
  _MainHomeScreenState createState() => _MainHomeScreenState();
}

class _MainHomeScreenState extends State<MainHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        backgroundColor: Colors.white,
        title: Text(
          'Home',
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => CategoryPage(),
                  ),
                );
              },
              child: Icon(
                Icons.dashboard,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(4.0),
        child: ListView(children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => SearchScreen(),
                ),
              );
            },
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchTab(),
                  ),
                );
              },
              child: Container(
                height: 60,
                child: Card(
                  elevation: 4,
                  child: Row(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Icon(Icons.search),
                      ),
                      SizedBox(
                        width: 12,
                      ),
                      Text('What are you looking for?')
                    ],
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 8),
                  child: Text(
                    'Popular Services',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 4),
                  child: Text('SEE ALL',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF1DBF73),
                      )),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
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
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OfferServicesScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 10),
                  GlobalCardHorizontal(
                    width: 180,
                    image: 'images/seller.jpeg',
                    title: 'title 1',
                    subtitle: 'subtitle 1',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OfferServicesScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 10),
                  GlobalCardHorizontal(
                    width: 180,
                    image: 'images/seller.jpeg',
                    title: 'title 1',
                    subtitle: 'subtitle 1',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OfferServicesScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 10),
                  GlobalCardHorizontal(
                    width: 180,
                    image: 'images/seller.jpeg',
                    title: 'title 1',
                    subtitle: 'subtitle 1',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => OfferServicesScreen(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Recently Viewed & More',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 4),
                child: Text('SEE ALL',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xFF1DBF73))),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              margin: EdgeInsets.symmetric(vertical: 10.0),
              height: 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GlobalCardHorizontal(
                    width: 280,
                    image: 'images/seller.jpeg',
                    title: 'title 1',
                    subtitle: 'subtitle 1',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserGigsScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 10),
                  GlobalCardHorizontal(
                    width: 280,
                    image: 'images/seller.jpeg',
                    title: 'title 1',
                    subtitle: 'subtitle 1',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserGigsScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 10),
                  GlobalCardHorizontal(
                    width: 280,
                    image: 'images/seller.jpeg',
                    title: 'title 1',
                    subtitle: 'subtitle 1',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserGigsScreen(),
                        ),
                      );
                    },
                  ),
                  SizedBox(width: 10),
                  GlobalCardHorizontal(
                    width: 280,
                    image: 'images/seller.jpeg',
                    title: 'title 1',
                    subtitle: 'subtitle 1',
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => UserGigsScreen(),
                        ),
                      );
                    },
                  )
                ],
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 8),
                child: Text(
                  'Inspired By Your Browsing History',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
              margin: EdgeInsets.symmetric(vertical: 10.0),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  GlobalCardHorizontal(
                    width: 280,
                    image: 'images/service.png',
                    title: 'title 1',
                    subtitle: 'subtitle 1',
                  ),
                  SizedBox(width: 12),
                  GlobalCardHorizontal(
                    width: 280,
                    image: 'images/service.png',
                    title: 'title 1',
                    subtitle: 'subtitle 1',
                  ),
                  SizedBox(width: 12),
                  GlobalCardHorizontal(
                    width: 280,
                    image: 'images/service.png',
                    title: 'title 1',
                    subtitle: 'subtitle 1',
                  ),
                  SizedBox(width: 12),
                  GlobalCardHorizontal(
                    width: 280,
                    image: 'images/service.png',
                    title: 'title 1',
                    subtitle: 'subtitle 1',
                  ),
                  SizedBox(width: 12),
                  GlobalCardHorizontal(
                    width: 280,
                    image: 'images/service.png',
                    title: 'title 1',
                    subtitle: 'subtitle 1',
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
