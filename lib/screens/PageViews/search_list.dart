import 'package:fiverr_clone/screens/widget/custom_tile.dart';
import 'package:flutter/material.dart';

class SearchListScreen extends StatefulWidget {
  @override
  _SearchListScreenState createState() => _SearchListScreenState();
}

class _SearchListScreenState extends State<SearchListScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        child: ListView.builder(
            padding: EdgeInsets.all(10),
            itemCount: 2,
            itemBuilder: (context, index) {
              return CustomTile(
                mini: false,
                onPress: () {},
                title: Text(
                  "Syed Ali Ahmad",
                  style: TextStyle(
                      color: Colors.white, fontFamily: "Arial", fontSize: 19),
                ),
                subtitle: Text(
                  "Assalam Alaikum",
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                  ),
                ),
                leading: Container(
                  constraints: BoxConstraints(maxHeight: 60, maxWidth: 60),
                  child: Stack(
                    children: <Widget>[
                      CircleAvatar(
                        maxRadius: 30,
                        backgroundColor: Colors.grey,
                        backgroundImage: NetworkImage(
                            "https://yt3.ggpht.com/a/AGF-l7_zT8BuWwHTymaQaBptCy7WrsOD72gYGp-puw=s900-c-k-c0xffffffff-no-rj-mo"),
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          height: 13,
                          width: 13,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.lightBlue,
                              border:
                                  Border.all(color: Colors.black, width: 2)),
                        ),
                      )
                    ],
                  ),
                ),
              );
            }),
      ),
    );
  }
}
