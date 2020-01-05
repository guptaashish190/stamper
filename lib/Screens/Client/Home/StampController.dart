import 'package:flutter/material.dart';
import 'package:flutter_app/Constants/Colors.dart';

class StampController extends StatefulWidget {
  @override
  _StampControllerState createState() => _StampControllerState();
}

class _StampControllerState extends State<StampController> {
  bool stamped = false;

  void toggleStamped() {
    setState(() {
      stamped = !stamped;
    });
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: toggleStamped,
      child: AnimatedContainer(
          duration: Duration(milliseconds: 300),
          margin: EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: brighter,
              boxShadow: <BoxShadow>[
                BoxShadow(
                  color: darker,
                  spreadRadius: 0.1,
                  blurRadius: 4,
                )
              ]),
          padding: EdgeInsets.all(15.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                child: Icon(Icons.my_location,
                    color: stamped ? Colors.red[300] : Colors.white54),
              ),
              SizedBox(width: 20),
              Text(stamped ? 'STAMP OUT' : 'STAMP IN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white54,
                    fontSize: 20.0,
                    fontWeight: FontWeight.w700,
                  )),
            ],
          )),
    );
  }
}
