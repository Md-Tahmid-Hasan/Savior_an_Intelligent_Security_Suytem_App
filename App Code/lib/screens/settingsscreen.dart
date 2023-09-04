import 'package:flutter/material.dart';
import 'contact.dart';
import 'help.dart';
import 'privacy.dart';

class SettingsScreen extends StatelessWidget {
  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Savior: Settings'),
      ),
      body: Center(
          child: Column(children: <Widget>[
        Container(
          margin: EdgeInsets.all(25),
          child: OutlineButton(
            child: Text(
              "Change Email",
              style: TextStyle(fontSize: 20.0),
            ),
            highlightedBorderColor: Colors.red,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
            onPressed: () {},
          ),
        ),
            Container(
              margin: EdgeInsets.all(15),
              child: FlatButton(
                child: Text(
                  'Help Center',
                  style: TextStyle(fontSize: 15.0),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Help()),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: FlatButton(
                child: Text(
                  'Contact Us',
                  style: TextStyle(fontSize: 15.0),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Contact()),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: FlatButton(
                child: Text(
                  'Privacy Policy',
                  style: TextStyle(fontSize: 15.0),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Privacy()),
                  );
                },
              ),
            ),
      ])),
    );
  }
}
