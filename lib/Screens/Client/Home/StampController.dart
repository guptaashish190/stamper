import 'package:flutter/material.dart';
import 'package:flutter_app/Constants/Colors.dart';

class StampController extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(300),
            color: brighter,
            boxShadow: <BoxShadow>[
              BoxShadow(color: darker, spreadRadius: 0.1, blurRadius: 4)
            ]),
        padding: EdgeInsets.all(15.0),
        child: Row(
          children: <Widget>[
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                    borderRadius: BorderRadius.circular(200),
                    child: Image(
                      image: NetworkImage(
                          'https://vengreso.com/wp-content/uploads/2016/03/LinkedIn-Profile-Professional-Picture-Sample-Bernie-Borges.png'),
                    )),
              ),
            ),
            Expanded(
                child: FlatButton(
              onPressed: () {},
              child: Text('STAMP \nIN',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: secondary2,
                    fontSize: 30.0,
                    shadows: <Shadow>[
                      Shadow(blurRadius: 7, color: brighter),
                    ],
                    fontWeight: FontWeight.w700,
                  )),
            ))
          ],
        ));
  }
}
