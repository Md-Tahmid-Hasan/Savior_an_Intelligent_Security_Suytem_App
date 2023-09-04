import 'package:flutter/material.dart';
import 'settingsscreen.dart';
import 'batterypagehome.dart';
import 'getlocation.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
//import 'call.dart';
//import 'message.dart';
import 'livelocationtracking.dart';
import 'package:alan_voice/alan_voice.dart';

class HomeScreen extends StatelessWidget {
  static const routeName = '/home';
  HomeScreen() {
    /// Init Alan Button with project key from Alan Studio
    AlanVoice.addButton("4552c797e07421b67a43d7df3e8e05b82e956eca572e1d8b807a3e2338fdd0dc/stage");

    /// Handle commands from Alan Studio
    AlanVoice.onCommand.add((command) {
      debugPrint("got new command ${command.toString()}");
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('SAVIOR'),
          ),
          body: Center(
            child: SingleChildScrollView(
              reverse: true,
              padding: EdgeInsets.all(32),

              child: Column(children: <Widget>[
           /* Container(
              margin: EdgeInsets.all(15),
              child: FlatButton(
                child: Text(
                  'Message',
                  style: TextStyle(fontSize: 15.0),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Message()),
                  );
                },
              ),
            ),*/
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
                  await FlutterPhoneDirectCaller.callNumber("111");
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: FlatButton(
                child: Text(
                  'Get Location & Send Message',
                  style: TextStyle(fontSize: 15.0),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => GetLocation()),
                  );
                },
              ),
            ),
                Container(
                  margin: EdgeInsets.all(15),
                  child: FlatButton(
                    child: Text(
                      'Live Location Tracking',
                      style: TextStyle(fontSize: 15.0),
                    ),
                    color: Colors.blueAccent,
                    textColor: Colors.white,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => LiveLocationTracking()),
                      );
                    },
                  ),
                ),
            Container(
              margin: EdgeInsets.all(15),
              child: FlatButton(
                child: Text(
                  'Battery',
                  style: TextStyle(fontSize: 15.0),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BatteryPageHome()),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.all(15),
              child: FlatButton(
                child: Text(
                  'Settings',
                  style: TextStyle(fontSize: 15.0),
                ),
                color: Colors.blueAccent,
                textColor: Colors.white,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SettingsScreen()),
                  );
                },
              ),
            ),
            /*FloatingActionButton.extended(
              onPressed: () {},
              icon: Icon(Icons.save),
              label: Text("Notifications"),
            ),*/
            FloatingActionButton(
              child: Icon(Icons.notifications),
              backgroundColor: Colors.blueAccent,
              foregroundColor: Colors.white,
              onPressed: () => {},
            ),
          ]))),),
    );
  }
}
