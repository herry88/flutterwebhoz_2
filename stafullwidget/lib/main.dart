import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: MyHomePage(),
      debugShowCheckedModeBanner: false, //untuk menghilangkan pita debug
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int jumlahData = 0;

  //fungsi hitung naik
  void _hitungData() {
    setState(() {
      jumlahData++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contoh 2'),
      ),
      body: Center(
        child: Column(
          children: [
            // menampung beberapa widget
            Text(
              'Hitung Data : $jumlahData',
              style: TextStyle(
                fontSize: 40.0,
              ),
              textAlign: TextAlign.center,
            ),
            
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          //logic untuk hitung data,
          _hitungData();
        },
        child: Icon(
          Icons.add,
        ),
      ),
    );
  }
}
