// import 'package:fiverr_clone_example/MessageInbox/messageinbox-card.dart';
// import 'package:fiverr_clone_example/MessageInbox/messageinbox-list.dart';
// import 'package:fiverr_clone_example/MessageInbox/messageinbox.dart';
import 'package:fiverr_clone/screens/MessageInbox/messageinbox-card.dart';
import 'package:fiverr_clone/screens/MessageInbox/messageinbox-list.dart';
import 'package:fiverr_clone/screens/MessageInbox/messageinbox.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessageInboxPage extends StatefulWidget {
  @override
  _MessageInboxPageState createState() => _MessageInboxPageState();
}

class _MessageInboxPageState extends State<MessageInboxPage> {
  final List<MessageInbox> msge = MessageInboxList.getMessageInbox();

  Widget buildMessageList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: msge.length > 0
              ? ListView.builder(
                  primary: false,
                  shrinkWrap: true,
                  itemCount: msge.length,
                  itemBuilder: (BuildContext context, int index) {
                    return SizedBox(
                      height: 90,
                      child: MessageInboxCard(ms: msge[index]),
                    );
                  },
                )
              : Center(
                  child: Text('No Items'),
                ),
        ),
//        Divider(),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Text(
              "Inbox",
              style: TextStyle(
                fontWeight: FontWeight.w400,
              ),
            )),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 20.0),
            child: GestureDetector(
              onTap: () {},
              child: Icon(
                Icons.filter_list,
                size: 26.0,
              ),
            ),
          ),
        ],
      ),
      body: buildMessageList(),
    );
  }
}
