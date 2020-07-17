import 'package:fiverr_clone/screens/ManageSales/message-card.dart';
import 'package:fiverr_clone/screens/ManageSales/message-list.dart';
import 'package:fiverr_clone/screens/ManageSales/message.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ManageSales extends StatefulWidget {
  @override
  _ManageSalesState createState() => _ManageSalesState();
}

class _ManageSalesState extends State<ManageSales> {
  final List<Message> msgs = MessageList.getMessage();

  Widget buildMessageList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 10.0, left: 10),
          child: Container(
            height: 20,
            child: Text(
              'Due in the next few hours',
              style: TextStyle(
                color: Colors.grey[500],
              ),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: msgs.length > 0
              ? ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: msgs.length,
                  itemBuilder: (BuildContext context, int index) {
                    return MessageCard(msg: msgs[index]);
                  },
                )
              : Center(
                  child: Text('No Items'),
                ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,

      child: Scaffold(
        appBar: AppBar(
          title: Text('Manage sales'),
          //appBar: AppBar(
          backgroundColor: Colors.white,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.info_outline),
                color: Colors.black,
                onPressed: () {}),
          ],

          bottom: TabBar(
            labelColor: Colors.green,
            indicatorColor: Colors.green,
            isScrollable: true,
            tabs: <Widget>[
              Tab(
                text: 'ACTIVE(' + '1' + ')',
              ),
              Tab(
                text: 'NEW(' + '2' + ')',
              ),
              Tab(
                text: 'COMPLETED(' + '3' + ')',
              ),
              Tab(
                text: 'PENDING(' + '4' + ')',
              ),
              Tab(
                text: 'NEWS(' + '5' + ')',
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            Column(
              children: <Widget>[buildMessageList()],
            ),
            Column(
              children: <Widget>[buildMessageList()],
            ),
            Column(
              children: <Widget>[buildMessageList()],
            ),
            Column(
              children: <Widget>[buildMessageList()],
            ),
            Column(
              children: <Widget>[buildMessageList()],
            ),
          ],
        ),
        //title: Text("Search"),
      ),
      //backgroundColor: Colors.teal,
    );
  }
}
