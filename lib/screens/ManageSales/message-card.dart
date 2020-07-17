import 'package:fiverr_clone/screens/ManageSales/message.dart';
import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class MessageCard extends StatelessWidget {
  final Message msg;

  MessageCard({
    this.msg,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Stack(
          children: [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: NetworkImage(msg.imageUrl),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 35.0, left: 30.0),
              child: Container(
                width: 30,
                height: 30,
                alignment: Alignment.topRight,
                margin: EdgeInsets.only(top: 5),
                child: Container(
                  width: 15,
                  height: 15,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green,
                    border: Border.all(color: Colors.white, width: 1.5),
                  ),
                ),
              ),
            ),
          ],
        ),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(msg.name),
            Text(
              msg.description,
              style: TextStyle(fontSize: 12, color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0),
              child: Container(
                decoration: BoxDecoration(
                  border: Border(
                    right: BorderSide(color: Colors.green, width: 0.5),
                    left: BorderSide(color: Colors.green, width: 0.5),
                    top: BorderSide(color: Colors.green, width: 0.5),
                    bottom: BorderSide(color: Colors.green, width: 0.5),
                  ),
                  borderRadius: new BorderRadius.only(
                    topLeft: const Radius.circular(5.0),
                    topRight: const Radius.circular(5.0),
                    bottomRight: Radius.circular(5.0),
                    bottomLeft: Radius.circular(5.0),
                  ),
                ),
                width: 90,
                height: 20,
                child: FlatButton(
                  child: Text(
                    msg.buttonText,
                    style: TextStyle(fontSize: 9, color: Colors.green),
                  ),
                  onPressed: null,
                ),
              ),
            ),
          ],
        ),
        trailing: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              msg.date,
              style: TextStyle(color: Colors.grey),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20.0, left: 20),
              child: Text(
                '\$${msg.price.toString()}',
                style: TextStyle(color: Colors.green),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
