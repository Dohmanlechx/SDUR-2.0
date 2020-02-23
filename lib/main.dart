import 'package:flutter/material.dart';

void main() => runApp(SDURApp());

class SDURApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'SDUR',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SDURHomePage(),
    );
  }
}

class SDURHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text("Test SDUR");
  }
}