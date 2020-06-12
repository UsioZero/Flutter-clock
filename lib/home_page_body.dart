import 'dart:async';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class HomePageBody extends StatefulWidget{
  
  @override
  _ClockTimeNow createState() {
    return _ClockTimeNow();
  }
}

class _ClockTimeNow extends State<HomePageBody>{
  String _timeFormat;

  @override
  void initState(){
    super.initState();
    _timeFormat = DateFormat('hh:mm:ss').format(DateTime.now());
    Timer.periodic(Duration(seconds: 1), (Timer timer) => timeNow());
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3 / 2,
      child: new Stack(
         children: <Widget>[
           Container(
             child: Text(
               _timeFormat,
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

void timeNow(){
  String formatDate = DateFormat('hh:mm:ss').format(DateTime.now());
  setState(() {
    _timeFormat = formatDate;
  });
}
}