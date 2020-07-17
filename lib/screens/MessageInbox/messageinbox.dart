import 'package:flutter/material.dart';

class MessageInbox {
  final String name;
  final String description;
  final String date;
  final Icon starIcon;
  final String imageUrl;

  MessageInbox({
    this.name,
    this.description,
    this.date,
    this.imageUrl,
    this.starIcon,
  });
}
