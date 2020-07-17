// import 'package:flutter/material.dart';

// class ForgetPasswordScreen extends StatefulWidget {
//   @override
//   _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
// }

// class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
//   bool _enabled = false;
//   @override
//   Widget build(BuildContext context) {
//     yourCallback() {
//       print('no error');
//     }

//     return Scaffold(
//       appBar: AppBar(
//         title: Text('ForgetPassword'),
//       ),
//       body: Column(
//         children: <Widget>[
//           TextFormField(
//             autovalidate: true,
//             validator: (txt) {
//               if (txt != null) {
//                 setState(() {
//                   _enabled = true;
//                 });
//               } else {
//                 setState(() {
//                   _enabled = false;
//                 });
//               }
//               return txt;
//             },
//             keyboardType: TextInputType.emailAddress,
//             decoration: InputDecoration(
//               labelText: "Email",
//               hintText: "example@example.com",
//             ),
//           ),
//           Padding(
//             padding: const EdgeInsets.all(8.0),
//             child: RaisedButyourCallbackton(
//               onPressed: _enabled == true ? yourCallback : null,
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:fiverr_clone/screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Practice App',
      home: new ForgetPasswordScreen(),
      theme: new ThemeData(
        primarySwatch: Colors.red,
        brightness: Brightness.light,
        accentColor: Colors.blue,
      ),
    );
  }
}

class ForgetPasswordScreen extends StatefulWidget {
  @override
  _ForgetPasswordScreenState createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  TextEditingController emailController = new TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool _btnEnabled = false;
  String myText = "hello";
  void _doSomething() {
    setState(() {
      if (emailController.text.length < 0) {
        _btnEnabled = false;
      } else {
        _btnEnabled = true;
      }
    });
  }

  _bodyWidget() {
    return new Container(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            onChanged: () =>
                setState(() => _btnEnabled = _formKey.currentState.validate()),
            child: ListView(
              children: <Widget>[
                TextFormField(
                  controller: emailController,
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                    labelText: "Email",
                    hintText: 'example@example.com',
                  ),
                  validator: (value) => value.length < 1
                      ? 'Number must be at least 6 digits'
                      : // return an error message
                      null,
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Text(
                    'Your confirm link will be sent to your email address',
                    style: TextStyle(fontWeight: FontWeight.w400, fontSize: 16),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                SizedBox(
                  height: 55,
                  child: InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => WelcomeScreen(),
                        ),
                      );
                    },
                    child: RaisedButton(
                        color: Colors.green,
                        onPressed: _btnEnabled ? () => _doSomething : null,
                        child: Text(
                          'SEND',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(
          color: Colors.black, //change your color here
        ),
        title: new Text(
          'Forget Password',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: _bodyWidget(),
    );
  }
}
