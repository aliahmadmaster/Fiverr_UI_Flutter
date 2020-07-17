import 'package:fiverr_clone/screens/forget_password_screen.dart';
import 'package:fiverr_clone/screens/signin_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
        ),
        title: Text(
          'Sign In',
          style: TextStyle(
            color: Colors.black,
          ),
        ),
      ),
      body: ListView(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(top: 35.0, bottom: 35, left: 18),
            child: Container(
              alignment: Alignment.topLeft,
              height: 80,
              child: Image.asset('images/logo.jpeg'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Text(
              'Work your way',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 18, top: 18, bottom: 18),
            child: Text(
              'You bring the skill. We\'ll make earning easy.',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.w400),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 18.0, right: 10),
                    child: buildFacebookLoginButton(
                      context,
                      'FACEBOOK',
                      Color(0xFF3B5999),
                    ),
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(left: 10, right: 18),
                    child: buildGoogleLoginButton(
                      context,
                      'GOOGLE',
                      Color(0xFF186DEE),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Center(
                child: Text(
              'or sign in with email',
              style: TextStyle(fontSize: 16),
            )),
          ),
          SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 10),
            child: buildEmailTextField(),
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 18.0, right: 18.0),
            child: buildPasswordTextField(context),
          ),
          SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: buildLoginButton(context, 'CONTINUE', Colors.green),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SigninScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(left: 18.0, bottom: 15),
                  child: Text(
                    'JOIN',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ForgetPasswordScreen(),
                    ),
                  );
                },
                child: Padding(
                  padding: const EdgeInsets.only(right: 18.0, bottom: 15),
                  child: Text(
                    'FORGOT PASSWORD',
                    textDirection: TextDirection.rtl,
                    style: TextStyle(
                        color: Colors.green,
                        fontSize: 16,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

Align buildFacebookLoginButton(
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

Align buildGoogleLoginButton(
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

Align buildLoginButton(
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

TextFormField buildPasswordTextField(context) {
  return TextFormField(
    onTap: () {},
    obscureText: true,
    keyboardType: TextInputType.visiblePassword,
    decoration: InputDecoration(
      labelText: "Password",
      hintText: "........",
//      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
      suffixIcon: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.remove_red_eye,
        ),
      ),
    ),
  );
}

TextFormField buildEmailTextField() {
  return TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      labelText: "Email",
      hintText: "abcd@abcd.com",
//      border: OutlineInputBorder(borderRadius: BorderRadius.circular(20.0)),
    ),
  );
}
