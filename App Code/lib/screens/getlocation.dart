import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:flutter_sms/flutter_sms.dart';

List<String> recipents = [
  "01718940963",
  "01882544514"
];

class GetLocation extends StatefulWidget {
  Location createState() => Location();
}

class Location extends State<GetLocation> {
  var locationMessage = "";
  void getCurrentLocation() async {
    var position = await Geolocator().getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
    var lastPosition = await Geolocator().getLastKnownPosition();
    print(lastPosition);
    var lat = position.latitude;
    var long = position.longitude;
    print("$lat , $long");

    setState(() {
      locationMessage = "Latitude : $lat , Longitude : $long";
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Savior: GetLocation & Message'),
        ),
        body: Center(
            child: Column(mainAxisAlignment: MainAxisAlignment.center, crossAxisAlignment: CrossAxisAlignment.center, children: [
              Icon(
                Icons.location_on,
                size: 46.0,
                color: Colors.blue,
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                "Get User Location",
                style: TextStyle(fontSize: 26.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text("Position : $locationMessage"),
              FlatButton(
                onPressed: () {
                  getCurrentLocation();
                },

                color: Colors.blue[800],
                child: Text("Get Current Location", style: TextStyle(color: Colors.white,)),
              ),
              Container(
                margin: EdgeInsets.all(15),
                child: FlatButton(
                  child: Text(
                    'Message',
                    style: TextStyle(fontSize: 15.0),
                  ),
                  color: Colors.blueAccent,
                  textColor: Colors.white,
                  onPressed: () {
                    _sendSMS("Please Help me! My Current Location: $locationMessage", recipents);
                  },
                ),
              ),
            ])));
  }
}
void _sendSMS(String message, List<String> recipents) async {
  String _result = await sendSMS(message: message, recipients: recipents).catchError((onError) {
    print(onError);
  });
  print(_result);
}

