import 'package:flutter/material.dart';

class HelloFlutter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('WebHozz Flutter'),
      ),
      body: Center(
        child: new Text(
          'Hello World',
          style: TextStyle(
            fontSize: 30.0,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
