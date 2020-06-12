import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePageBody extends StatelessWidget{
  DateTime timeNow = DateTime.now();
  String timeFormat = DateFormat('hh:mm:ss').format(DateTime.now());
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: new Stack(
         children: <Widget>[
           Container(
             child: Text(
               timeFormat,
               style: TextStyle(
                 color: Colors.green,
                 height: 1,
                 fontSize: 50
                 ),
            
               ),
             color: Colors.black,
             padding: EdgeInsets.all(20.0),
             margin: EdgeInsets.all(30.0),
             alignment: Alignment.center,
             width: 500,
             height: 130,
           ),
         ],
        alignment: Alignment(0,1)
      ),
    );
  }

}