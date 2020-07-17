import 'package:fiverr_clone/screens/setting.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  double heightsFactor = 0.37;
  bool onlineStatus = false;
  bool sellerMode = false;
  var textHolder = 'Switch is OFF';
  void sellerSwitch(bool value) {
    if (sellerMode == false) {
      setState(() {
        sellerMode = true;
        textHolder = 'Switch is ON';
      });
      print('Switch is ON');
      // Put your code here which you want to execute on Switch ON event.

    } else {
      setState(() {
        sellerMode = false;
        textHolder = 'Switch is OFF';
      });
      print('Switch is OFF');
      // Put your code here which you want to execute on Switch OFF event.
    }
  }

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
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SettingsScreen(),
                  ),
                );
              },
              child: Icon(
                Icons.settings,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.topLeft,
            heightFactor: heightsFactor,
            child: Container(
              color: Color(0xFF1BB56D),
              width: double.infinity,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 28, left: 20),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        'https://filmfare.wwmindia.com/content/2019/dec/shahrukhkhannextproject41575356103.jpg',
                      ),
                      radius: 37.0,
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Name: Shahrukh Khan',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 17,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    subtitle: Text(
                      'My personal balance: Rs0',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w400),
                    ),
                  )
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            alignment: Alignment.bottomCenter,
            heightFactor: 1 - heightsFactor,
            child: Container(
              color: Colors.white,
              child: ListView(
                children: <Widget>[
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 65, bottom: 15),
                    child: Text(
                      'My Fiverr',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings_cell),
                    title: Text(
                      'Saved gigs',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings_cell),
                    title: Text(
                      'My Interest',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 15),
                    child: Text(
                      'Buying',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings_cell),
                    title: Text(
                      'Manage orders',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings_cell),
                    title: Text(
                      'Post a request',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings_cell),
                    title: Text(
                      'Manage Request',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  Divider(
                    color: Colors.grey,
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20, top: 20, bottom: 15),
                    child: Text(
                      'General',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                  ),
                  ListTile(
                    leading: Icon(
                      Icons.settings_cell,
                    ),
                    title: Text(
                      'Online status',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    trailing: Switch(
                      value: onlineStatus,
                      onChanged: statusSwitch,
                      activeColor: Color(0xFF1DBB71),
                      activeTrackColor: Color(0xFFBCECD6),
                      inactiveThumbColor: Color(0xFFECECEC),
                      inactiveTrackColor: Color(0xFFB2B2B2),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings_cell),
                    title: Text(
                      'Invite Friends',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                  ListTile(
                    leading: Icon(Icons.settings_cell),
                    title: Text(
                      'Support',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
          ),
          FractionallySizedBox(
            heightFactor: 0.12,
            widthFactor: 0.93,
            alignment: Alignment.center,
            child: Container(
              transform: Matrix4.translationValues(0, -58, 0),
              child: Card(
                color: Colors.white,
                elevation: 6,
                child: ListTile(
                  leading: Icon(Icons.search),
                  title: Text(
                    'Seller mode',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                  trailing: Switch(
                    value: sellerMode,
                    onChanged: sellerSwitch,
                    activeColor: Color(0xFF1DBB71),
                    activeTrackColor: Color(0xFFBCECD6),
                    inactiveThumbColor: Color(0xFFECECEC),
                    inactiveTrackColor: Color(0xFFB2B2B2),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
