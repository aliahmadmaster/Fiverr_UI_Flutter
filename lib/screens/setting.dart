import 'package:fiverr_clone/screens/notifications.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SettingsScreen extends StatefulWidget {
  @override
  _SettingsScreenState createState() => new _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  bool onlineStatus = false;
  var status = 'offline';
  void statusSwitch(bool value) {
    if (onlineStatus == false) {
      setState(() {
        onlineStatus = true;
        status = 'online';
      });
      print('Switch is ON');
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        onlineStatus = false;
        status = 'Switch is OFF';
      });
      print('Switch is OFF');
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text(
          'Settings',
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
      body: Container(
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            ListTile(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Notifications(),
                  ),
                );
              },
              title: Text(
                'notifications',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(),
            Padding(
              padding: const EdgeInsets.all(0.0),
            ),
            ListTile(
              title: Text(
                'notifications Sound',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Security',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(),
            ListTile(
              trailing: Text(
                '\$ USD',
                style: TextStyle(color: Colors.green),
              ),
              title: Text(
                'Currency',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Terms of service',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Privacy policy',
                style: TextStyle(color: Colors.black),
              ),
            ),
            Divider(),
            ListTile(
              trailing: Switch(
                value: onlineStatus,
                onChanged: statusSwitch,
                activeColor: Color(0xFF1DBB71),
                activeTrackColor: Color(0xFFBCECD6),
                inactiveThumbColor: Color(0xFFECECEC),
                inactiveTrackColor: Color(0xFFB2B2B2),
              ),
              title: Text(
                'out of office mode',
                style: TextStyle(color: (Colors.black)),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Language',
                style: TextStyle(color: (Colors.black)),
              ),
            ),
            Divider(),
            ListTile(
              title: Text(
                'Logout',
                style: TextStyle(
                  color: (Colors.red),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
