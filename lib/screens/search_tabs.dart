import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchTab extends StatefulWidget {
  @override
  _SearchTabState createState() => _SearchTabState();
}

class _SearchTabState extends State<SearchTab> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,

      child: Scaffold(
        appBar: AppBar(
          title: new Column(
            children: <Widget>[
              new TextField(
                keyboardType: TextInputType.text,
                decoration: new InputDecoration.collapsed(hintText: "search.."),
              )
            ],
          ),
          //appBar: AppBar(
          backgroundColor: Colors.white,

          actions: <Widget>[],
          leading: IconButton(
              icon: Icon(Icons.arrow_back),
              color: Colors.black,
              onPressed: () {}),
          bottom: TabBar(
            labelColor: Colors.green,
            indicatorColor: Colors.green,
            tabs: <Widget>[
              Tab(
                text: 'GIGS',
              ),
              Tab(
                text: 'USER',
              ),
            ],
          ),
        ),
        //title: Text("Search"),
      ),
      //backgroundColor: Colors.teal,
    );
  }
}
