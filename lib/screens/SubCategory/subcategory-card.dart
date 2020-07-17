import 'package:fiverr_clone/screens/SubCategory/subcategory.dart';
import 'package:fiverr_clone/screens/offer_services_screen.dart';
import 'package:flutter/material.dart';

class SubCategoryCard extends StatelessWidget {
  final SubCategory movie;

  SubCategoryCard({this.movie});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          height: 35,
          child: ListTile(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => OfferServicesScreen(),
                ),
              );
            },
            title: Text(
              movie.title,
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ),
        ),
        Divider(),
      ],
    );
  }
}
