import 'package:flutter/material.dart';
import 'package:interactivitydemo/screen1.dart';
import 'package:interactivitydemo/screen3.dart';
 
void main() => runApp(MyApp());
 
//root class
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Screen1(),
      routes: <String, WidgetBuilder> {
        'screen1': (BuildContext context) => Screen1(),
        'screen3': (BuildContext context) => Screen3(),
      },
    );
  }
}

