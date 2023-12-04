import 'package:flutter/material.dart';
import 'package:language_learning_app/screens/homePage.dart';

void main() {
  runApp(TokuApp());
}

class TokuApp extends StatelessWidget {
   TokuApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

