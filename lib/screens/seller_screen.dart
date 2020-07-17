import 'package:fiverr_clone/screens/widget/icon_content.dart';
import 'package:flutter/material.dart';

class SellerScreen extends StatefulWidget {
  @override
  _SellerScreenState createState() => _SellerScreenState();
}

class _SellerScreenState extends State<SellerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: CardContant(
                  iconChoose: Icons.keyboard_backspace,
                  iconLabel: 'Go back',
                  iconSize: 25,
                  iconRotation: 270,
                  iconColor: Color(0xFFA8A8A8),
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(left: 20, top: 65),
                  child: Text(
                    'Work your way',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 21, top: 20, bottom: 25),
                  child: Text(
                    'You bring the skill. We\'ll make earning easy.',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Text('A gig is bought'),
                        Text('every'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '5 Sec',
                          style:
                              TextStyle(color: Color(0xFF1DBF73), fontSize: 18),
                        )
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('Projecs '),
                        Text('completed'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          '50M+',
                          style:
                              TextStyle(color: Color(0xFF1DBF73), fontSize: 18),
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        Text('Price range'),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Rs5 - Rs10K",
                          style:
                              TextStyle(color: Color(0xFF1DBF73), fontSize: 18),
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 60,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.assessment,
                      size: 38,
                    ),
                    title: Text(
                      'Create a gig',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      'offer your services to a global audience and start earning more.',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail_outline,
                      size: 38,
                    ),
                    title: Text(
                      'Deliver Your work',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      'Use your builten tool to communicate with your customers and deliver their orders.',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.mail,
                      size: 38,
                    ),
                    title: Text(
                      'Get paid',
                      style:
                          TextStyle(fontSize: 19, fontWeight: FontWeight.w700),
                    ),
                    subtitle: Text(
                      'Receive your payment once the order is complete. It\'s that simple.',
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: buildLoginButton(context),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

Align buildLoginButton(BuildContext context) {
  return Align(
    alignment: Alignment.center,
    child: SizedBox(
      height: 50.0,
      width: double.infinity,
      child: FlatButton(
        onPressed: () {},
        color: Color(0xFF1DBF73),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(
          "CONTINUE",
          style: TextStyle(fontSize: 18, color: Colors.white),
        ),
      ),
    ),
  );
}
