import 'package:flutter/material.dart';

import 'verifyPin/pin_put.dart';

class VerifyDevice extends StatefulWidget {
  @override
  _VerifyDeviceState createState() => _VerifyDeviceState();
}

class _VerifyDeviceState extends State<VerifyDevice> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: GestureDetector(
          onTap: () {/* Write listener code here */},
          child: Icon(
            Icons.arrow_back,
            // add custom icons also
          ),
        ),
        title: Text("Verification code"),
      ),
      body: Column(
        children: <Widget>[
          Container(
            height: 60,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Text(
                'We texted the code to ***********. It may take a few minutes to arrive.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                ),
              ),
            ),
          ),
          Container(
            height: 80,
            // color: Colors.green,
            child: Padding(
              padding: const EdgeInsets.only(
                left: 30.0,
                right: 30.0,
              ),
              child: PinPut(
                onSubmit: null,
                fieldsCount: 6,
                // onSubmit: (String pin) => _showSnackBar(pin, context),
              ),
            ),
          ),
          Expanded(
            child: Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text('Didn\'t get a code?'),
                    GestureDetector(
                      child: Text(
                        '  RESEND',
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
