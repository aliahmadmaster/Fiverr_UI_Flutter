// import 'package:fiverr_clone_example/MessageInbox/messageinbox.dart';
//import 'package:flutter/cupertino.dart';

import 'messageinbox.dart';

class MessageInboxList {
  static List<MessageInbox> getMessageInbox() {
    return [
      MessageInbox(
        name: 'someOne1',
        description: 'my descriptions',
        date: '1989-11-9',
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BMjIwMjE1Nzc4NV5BMl5BanBnXkFtZTgwNDg4OTA1NzM@._V1_SX300.jpg',
      ),
      MessageInbox(
        name: 'someOne2',
        description: 'my descriptions--------------',
        date: '1989-11-9',
        imageUrl:
            'https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/avat-01-512.png',
      ),
      MessageInbox(
        name: 'someOne3',
        description: 'my descriptions',
        date: '1989-11-9',
        imageUrl:
            'https://m.media-amazon.com/images/M/MV5BMjIwMjE1Nzc4NV5BMl5BanBnXkFtZTgwNDg4OTA1NzM@._V1_SX300.jpg',
      ),
    ];
  }
}
