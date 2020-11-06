import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  var a = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.redAccent,
      appBar: new AppBar(
        title: new Text(
          'Hello',
          style: TextStyle(
            fontSize: 20.0,
            fontStyle: FontStyle.italic,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: <Widget>[
          Center(
            child: Container(
              decoration:
                  BoxDecoration(border: Border.all(), color: Colors.white),
              height: 100.0,
              width: 100.0,
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Center(
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(),
                color: Colors.deepOrange,
              ),
              height: 100.0,
              width: 100.0,
              child: Center(
                child: new Text(
                  'hello',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              // color: Colors.redAccent,
            ),
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: Center(
              child: Container(),
            ),
          ),
        ],
      ),
    );
  }
}
