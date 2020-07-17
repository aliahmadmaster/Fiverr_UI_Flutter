import 'message.dart';

class MessageList {
  static List<Message> getMessage() {
    return [
      Message(
          name: 'someOne',
          description: 'my descriptions',
          date: '1989-11-9',
          buttonText: 'IN PROGRESS',
          price: 25,
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BMjIwMjE1Nzc4NV5BMl5BanBnXkFtZTgwNDg4OTA1NzM@._V1_SX300.jpg',
          onlineDot: 'ON'),
      Message(
          name: 'someOne',
          description: 'my descriptions--------------',
          date: '1989-11-9',
          buttonText: 'IN PROGRESS',
          price: 25,
          imageUrl:
              'https://cdn3.iconfinder.com/data/icons/avatars-round-flat/33/avat-01-512.png',
          onlineDot: 'ON'),
      Message(
          name: 'someOne',
          description: 'my descriptions',
          date: '1989-11-9',
          buttonText: 'IN PROGRESS',
          price: 25,
          imageUrl:
              'https://m.media-amazon.com/images/M/MV5BMjIwMjE1Nzc4NV5BMl5BanBnXkFtZTgwNDg4OTA1NzM@._V1_SX300.jpg',
          onlineDot: 'ON'),
    ];
  }
}
