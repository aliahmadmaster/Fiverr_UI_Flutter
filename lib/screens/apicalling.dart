//import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Apis {
  dynamic users;
  void getData() async {
    http.Response response =
        await http.get('https://giglife.in/wp-json/wp/v2/users');
    if (response.statusCode == 200) {
      String data = response.body;
      print(data);
    } else {
      print(response.statusCode);
    }
  }
}
