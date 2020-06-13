import 'package:clock/home_page_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
          backgroundColor: Theme.of(context).primaryColor,
          appBar: AppBar(
            title: Text('Clock'),
            leading: Container(
              child: Icon(Icons.alarm, color: Colors.white70),
              padding: EdgeInsets.only(right: 5),
            ),
          ),
          body: new HomePageBody()
      ),
    );
  }

}