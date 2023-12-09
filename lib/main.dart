import 'package:flutter/material.dart';
import 'dicepage.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dice Game') ,centerTitle: true,
          backgroundColor: Colors.redAccent,
        ),
        body: DicePage(),
      ),
    );
  }
}

