import 'package:clock/home_page.dart';
import 'package:flutter/material.dart';

void main() => runApp(Clock());

class Clock extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Clock',
      theme: new ThemeData(
        primarySwatch: Colors.blueGrey,
        textTheme: TextTheme(bodyText1: TextStyle(color: Colors.white))
      ),
      home: new HomePage(),
    );
  }

}