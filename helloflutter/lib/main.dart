import 'package:flutter/material.dart';
// import 'helloflutter_1.dart';
import 'screen/pertama.dart';

void main() {
  runApp(HisApp());
}

class HisApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Belajar Flutter',
      home: HelloFlutter(),
    );
  }
}
