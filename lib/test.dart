import 'package:fiverr_clone/screens/search_screen.dart';
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
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.mail,
              color: Colors.black,
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
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                HorizontalListView(
                  url: 'images/seller.jpeg',
                  title: 'heading 1',
                  subtitle: '',
                ),
                HorizontalListView(
                  url: 'images/seller.jpeg',
                  title: 'heading 1',
                  subtitle: '',
                ),
                HorizontalListView(
                  url: 'images/seller.jpeg',
                  title: 'heading 1',
                  subtitle: '',
                ),
                HorizontalListView(
                  url: 'images/seller.jpeg',
                  title: 'heading 1',
                  subtitle: '',
                ),
              ],
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
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                HorizontalListView(
                  url: 'images/seller.jpeg',
                  title: 'heading 1',
                  subtitle: 'subheading 1',
                ),
                HorizontalListView(
                  url: 'images/seller.jpeg',
                  title: 'heading 1',
                  subtitle: 'subheading 1',
                ),
                HorizontalListView(
                  url: 'images/seller.jpeg',
                  title: 'heading 1',
                  subtitle: 'subheading 1',
                ),
                HorizontalListView(
                  url: 'images/seller.jpeg',
                  title: 'heading 1',
                  subtitle: 'subheading 1',
                ),
              ],
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
          Container(
            margin: EdgeInsets.symmetric(vertical: 10.0),
            height: 200,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                HorizontalListView(
                  url: 'images/seller.jpeg',
                  title: 'heading 1',
                  subtitle: 'subheading 1',
                ),
                HorizontalListView(
                  url: 'images/seller.jpeg',
                  title: 'heading 1',
                  subtitle: 'subheading 1',
                ),
                HorizontalListView(
                  url: 'images/seller.jpeg',
                  title: 'heading 1',
                  subtitle: 'subheading 1',
                ),
                HorizontalListView(
                  url: 'images/seller.jpeg',
                  title: 'heading 1',
                  subtitle: 'subheading 1',
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}

class HorizontalListView extends StatelessWidget {
  final String url;
  final String title;
  final String subtitle;
  HorizontalListView({this.url, this.title, this.subtitle});
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      child: Card(
        child: Wrap(
          children: <Widget>[
            Image.asset(
              url,
              fit: BoxFit.fill,
            ),
            ListTile(
              title: Text(title),
              subtitle: Text(subtitle),
            )
          ],
        ),
      ),
    );
  }
}
