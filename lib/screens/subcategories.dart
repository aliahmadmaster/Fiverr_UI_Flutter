import 'package:fiverr_clone/screens/SubCategory/subcategory-list.dart';
import 'package:fiverr_clone/screens/SubCategory/subcategory.dart';
import 'package:fiverr_clone/screens/SubCategory/subcategory-card.dart';
import 'package:fiverr_clone/screens/search_tabs.dart';
import 'package:fiverr_clone/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

class SubCategoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _SubCategoryPageState();
  }
}

class _SubCategoryPageState extends State<SubCategoryPage> {
  final List<SubCategory> movies = SubCategoryList.getSubCategory();

  Widget _buildSubCategoriesList() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: new Container(
              height: 150.0,
              color: Colors.transparent,
              child: new Container(
                decoration: new BoxDecoration(
                  image: DecorationImage(
                    image: new NetworkImage(
                      'https://www.pixelstalk.net/wp-content/uploads/2016/07/Wallpapers-HD-1080P-3D-Download.jpg',
                    ),
                    fit: BoxFit.cover,
                  ),
                  color: Colors.green,
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(5.0),
                    topRight: const Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0),
                  ),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              child: Text(
                'Choose Subcategory',
                style: TextStyle(
                  color: Colors.grey[500],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                border: Border(
                  right: BorderSide(color: Colors.grey[400], width: 0.5),
                  left: BorderSide(color: Colors.grey[400], width: 0.5),
                  top: BorderSide(color: Colors.grey[400], width: 0.5),
                  bottom: BorderSide(color: Colors.grey[400], width: 0.5),
                ),
                borderRadius: new BorderRadius.only(
                  topLeft: const Radius.circular(5.0),
                  topRight: const Radius.circular(5.0),
                  bottomRight: Radius.circular(5.0),
                  bottomLeft: Radius.circular(5.0),
                ),
              ),
              child: movies.length > 0
                  ? ListView.builder(
                      primary: false,
                      shrinkWrap: true,
                      itemCount: movies.length,
                      itemBuilder: (BuildContext context, int index) {
                        return SubCategoryCard(movie: movies[index]);
                      },
                    )
                  : Center(
                      child: Text('No Items'),
                    ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Sub Category",
          style: TextStyle(color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () {
            /* Write listener code here */
            Navigator.pop(context, WelcomeScreen());
          },
          child: Icon(
            Icons.arrow_back, // add custom icons also
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SearchTab(),
                  ),
                );
              },
              child: Icon(
                Icons.search,
                size: 26.0,
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: _buildSubCategoriesList(),
    );
  }
}
