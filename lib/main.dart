import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    Firestore.instance.collection("users").document().setData(
      {
        "name": "The Xakib",
      },
    );
    return MaterialApp(
      home: Scaffold(
        body: Container(),
      ),
    );
  }
}
