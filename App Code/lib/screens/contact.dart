import 'package:flutter/material.dart';

class Contact extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings: Contact Us'),
      ),
      body: Center(
        child: Text(
          'Call: 01882544514 or 01746520223', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        ),
      ),
    );
  }
}
