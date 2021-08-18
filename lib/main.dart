import 'package:flutter/material.dart';
import 'package:interactivitydemo/screen1.dart';
 
void main() => runApp(MyApp());
 
//root class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Screen1()
    );
  }
}