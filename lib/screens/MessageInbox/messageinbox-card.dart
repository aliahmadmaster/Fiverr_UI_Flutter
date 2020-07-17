// import 'package:fiverr_clone_example/MessageInbox/messageinbox.dart';
import 'package:fiverr_clone/screens/MessageInbox/messageinbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageInboxCard extends StatelessWidget {
  final MessageInbox ms;

  MessageInboxCard({
    this.ms,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      color: Colors.transparent,
      elevation: 0.0,
      child: ListTile(
        leading: CircleAvatar(
          radius: 30.0,
          backgroundImage: NetworkImage(ms.imageUrl),
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(ms.name),
            Text(
              ms.description,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              ms.date,
              style: TextStyle(color: Colors.grey),
            ),
            Icon(Icons.star_border),
          ],
        ),
      ),
    );
  }
}
