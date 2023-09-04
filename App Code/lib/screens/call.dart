import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';

class Call extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Savior: Call'),
          ),
          body: Center(
              child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(15),
              child: FlatButton(
                child: Text(
                  'Call',
                  style: TextStyle(fontSize: 15.0),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () async {
                  await FlutterPhoneDirectCaller.callNumber("01882544514");
                },
              ),
            ),
          ]))),
    );
  }
}
