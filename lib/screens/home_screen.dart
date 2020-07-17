import 'package:fiverr_clone/screens/PageViews/main_home_screen.dart';
import 'package:fiverr_clone/screens/PageViews/profile_screen.dart';
import 'package:fiverr_clone/screens/PageViews/search_list.dart';
import 'package:fiverr_clone/screens/category_screen.dart';
import 'package:fiverr_clone/screens/notifications.dart';
import 'package:fiverr_clone/screens/search_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController;
  int _page = 0;

  @override
  void initState() {
    super.initState();
    pageController = PageController();
  }

  void onPageChanged(int page) {
    setState(() {
      _page = page;
    });
  }

  void navigationTapped(int page) {
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    double _labelFontSize = 10;
    return Scaffold(
      body: PageView(
        children: <Widget>[
          Container(child: MainHomeScreen()),
          Center(
              child: Text('call log screen....',
                  style: TextStyle(color: Colors.black))),
          Container(child: CategoryPage()),
          Center(
              child: Text('call log screen....',
                  style: TextStyle(color: Colors.black))),
          Container(child: ProfileScreen())
        ],
        controller: pageController,
        onPageChanged: onPageChanged,
        physics: NeverScrollableScrollPhysics(),
      ),
      backgroundColor: Colors.white,
      bottomNavigationBar: Container(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 10.0),
          child: CupertinoTabBar(
            backgroundColor: Colors.white,
            items: <BottomNavigationBarItem>[
              buildBottomNavigationBarItems(_labelFontSize, 0, Icons.chat),
              buildBottomNavigationBarItems(
                _labelFontSize,
                1,
                Icons.call,
              ),
              buildBottomNavigationBarItems(
                _labelFontSize,
                2,
                Icons.contact_phone,
              ),
              buildBottomNavigationBarItems(
                _labelFontSize,
                3,
                Icons.notifications,
              ),
              buildBottomNavigationBarItems(
                _labelFontSize,
                4,
                Icons.ondemand_video,
              ),
            ],
            onTap: navigationTapped,
            currentIndex: _page,
          ),
        ),
      ),
    );
  }

  BottomNavigationBarItem buildBottomNavigationBarItems(
      double _labelFontSize, int page, IconData icon) {
    return BottomNavigationBarItem(
      icon: Icon(icon, color: (_page == page) ? Colors.black : Colors.grey),
    );
  }
}
