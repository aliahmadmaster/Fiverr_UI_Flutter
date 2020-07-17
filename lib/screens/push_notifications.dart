import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PushNotifications extends StatefulWidget {
  @override
  _PushNotificationsState createState() => _PushNotificationsState();
}

class _PushNotificationsState extends State<PushNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Push Notifications',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          onPressed: null,
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          ListTile(
            isThreeLine: false,
            title: Text('Order Update'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Divider(),
          ),
          ListTile(
            title: Text('Order Message'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Divider(),
          ),
          ListTile(
            title: Text('Inbox Message'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Divider(),
          ),
          ListTile(
            title: Text('Buyer Request'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Divider(),
          ),
          ListTile(
            title: Text('My Gigs'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Divider(),
          ),
          ListTile(
            title: Text('My Account'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0, right: 8.0),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
