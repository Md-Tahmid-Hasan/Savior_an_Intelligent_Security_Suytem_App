import 'package:flutter/material.dart';

class Help extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings: Help Center'),
      ),
      body: Center(
        child: Text(
          'Visit Our Website: www.savior.com', style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),
        ),
      ),
    );
  }
}
