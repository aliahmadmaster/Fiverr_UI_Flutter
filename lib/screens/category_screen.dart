import 'package:fiverr_clone/screens/CategoryScreens/category.dart';
import 'package:fiverr_clone/screens/CategoryScreens/category-list.dart';
import 'package:fiverr_clone/screens/CategoryScreens/catogory-card.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategoryPageState();
  }
}

class _CategoryPageState extends State<CategoryPage> {
  final List<Category> movies = CategoryList.getMovies();

  Widget _buildMoviesList() {
    return Container(
      child: movies.length > 0
          ? ListView.builder(
              itemCount: movies.length,
              itemBuilder: (
                BuildContext context,
                int index,
              ) {
                return CategoryCard(movie: movies[index]);
              },
            )
          : Center(child: Text('No Items')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          "Categories",
          style: TextStyle(color: Colors.black),
        ),
        leading: GestureDetector(
          onTap: () {},
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          Padding(
              padding: EdgeInsets.only(right: 20.0),
              child: GestureDetector(
                onTap: () {},
                child: Icon(
                  Icons.search,
                  size: 26.0,
                  color: Colors.black,
                ),
              )),
        ],
      ),
      body: _buildMoviesList(),
    );
  }
}
