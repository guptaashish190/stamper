import 'package:flutter/material.dart';
import 'package:flutter_app/Constants/Colors.dart';
import 'package:flutter_app/Screens/Client/Home/AttendanceList.dart';
import 'package:flutter_app/Screens/Client/Home/StampController.dart';

class ClientHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        drawer: Drawer(
          child: Container(),
        ),
        backgroundColor: background,
        appBar: AppBar(
          backgroundColor: appBar,
          title: Text('Home', style: TextStyle(color: mainText)),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 24.0, 8.0, 0.0),
          child: Column(
            children: <Widget>[
              StampController(),
              SizedBox(height: 30),
              AttendanceList(),
            ],
          ),
        ));
  }
}
