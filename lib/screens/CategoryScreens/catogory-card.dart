import 'package:fiverr_clone/screens/CategoryScreens/category.dart';
import 'package:fiverr_clone/screens/subcategories.dart';
import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  final Category movie;

  CategoryCard({this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        ListTile(
          leading: CircleAvatar(
            backgroundImage: NetworkImage(movie.imageUrl),
          ),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => SubCategoryPage(),
              ),
            );
          },
          title: Text(movie.title),
          subtitle: Text(movie.genre),
        ),
        Divider(),
      ],
    );
  }
}
