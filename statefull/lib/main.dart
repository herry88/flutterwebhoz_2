import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
    title: 'Flutter StateFull',
    home: MyApp(),
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _jumlahData = 0;

  void _hitungJumlah() {
    setState(() {
      _jumlahData++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text('belajarflutter'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            new Text(
              'Data Berubah Content : $_jumlahData',
              style: TextStyle(fontSize: 20.0),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _hitungJumlah();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
