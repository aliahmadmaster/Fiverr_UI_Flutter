import 'dart:ui';
import 'package:fiverr_clone/screens/home_screen.dart';
import 'package:fiverr_clone/screens/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:responsive_container/responsive_container.dart';

class SigninScreen extends StatefulWidget {
  @override
  _SigninScreenState createState() => _SigninScreenState();
}

class _SigninScreenState extends State<SigninScreen> {
  Align emailButton(
    BuildContext context,
    String text,
    Color colour,
  ) {
    return Align(
      child: SizedBox(
        height: 50.0,
        width: double.infinity,
        child: FlatButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => LoginScreen(),
              ),
            );
          },
          color: colour,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5.0),
          ),
          child: Text(
            text,
            style: Theme.of(context).primaryTextTheme.button,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: ResponsiveContainer(
                  heightPercent: 15.0, //value percent of screen total height
                  widthPercent: 100.0,
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20.0),
                    child: Column(
                      children: <Widget>[
                        Center(
                          child: Icon(
                            Icons.arrow_upward,
                            color: Color(0xFF808080),
                            size: 20.0,
                          ),
                        ),
                        Center(
                          child: Text(
                            'Go back',
                            style: TextStyle(
                              color: Color(0xFF808080),
                              fontSize: 15.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: Container(
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: Image.asset(
                      'images/logo.jpeg',
                      width: 80.0,
                      height: 80.0,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 30.0, left: 10.0),
                child: Text(
                  'Join GigLife',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20.0,
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 10.0, top: 10.0, right: 10.0),
                child: Text(
                  'Join our growing freelance community to offer your professional services, connect with customers, and get paid on GigLife\' strusted platform.',
                  textAlign: TextAlign.justify,
                  style: TextStyle(
                    height: 1.2,
                    letterSpacing: 1.2,
                    fontFamily: 'OpenSans',
                  ),
                ),
              ),
              Padding(
                  padding: const EdgeInsets.only(
                    top: 30.0,
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: facebookButton(
                      context, 'CONTINUE WITH FACEBOOK', Colors.blue)),
              Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    left: 10.0,
                    right: 10.0,
                  ),
                  child: googleButton(
                      context, 'CONTINUE WITH GOOGLE', Colors.redAccent)),
              Padding(
                  padding: const EdgeInsets.only(
                    top: 10.0,
                    left: 10.0,
                    right: 10.0,
                  ),
                  child:
                      emailButton(context, 'SIGN UP WITH EMAIL', Colors.green)),
              Center(
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 20.0,
                    left: 20.0,
                  ),
                  child: Center(
                    child: Row(
                      children: <Widget>[
                        Text(
                          'By joining, you agree to Gig Life\'s',
                        ),
                        Text(
                          ' Terms of Service',
                          style: TextStyle(
                            color: Colors.green,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60.0, bottom: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(
                        left: 10.0,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.pop(context);
                        },
                        child: Text(
                          'SIGN IN',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                        right: 10.0,
                      ),
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => HomeScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'SKIP',
                          style: TextStyle(
                              color: Colors.green,
                              fontSize: 16,
                              fontWeight: FontWeight.w500),
                          textAlign: TextAlign.left,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Align facebookButton(
  BuildContext context,
  String text,
  Color colour,
) {
  return Align(
    child: SizedBox(
      height: 50.0,
      width: double.infinity,
      child: FlatButton(
        onPressed: () {},
        color: colour,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(
          text,
          style: Theme.of(context).primaryTextTheme.button,
        ),
      ),
    ),
  );
}

Align googleButton(
  BuildContext context,
  String text,
  Color colour,
) {
  return Align(
    child: SizedBox(
      height: 50.0,
      width: double.infinity,
      child: FlatButton(
        onPressed: () {},
        color: colour,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        child: Text(
          text,
          style: Theme.of(context).primaryTextTheme.button,
        ),
      ),
    ),
  );
}
