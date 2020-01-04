import 'package:flutter/material.dart';
import 'package:flutter_app/Constants/Colors.dart';
import 'package:flutter_app/Types/Attendance.dart';

class AttendanceCard extends StatelessWidget {
  final Attendance data;

  const AttendanceCard({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            gradient: LinearGradient(colors: <Color>[secondary1, secondary2])),
        child: Row(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'STAMP-IN: ',
                        style: TextStyle(
                            color: mainText, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        data.stampin,
                        style: TextStyle(
                            color: mainText2, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Text(
                        'STAMP-OUT: ',
                        style: TextStyle(
                            color: mainText, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        data.stampout,
                        style: TextStyle(
                            color: mainText2, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  color: Colors.white70,
                  icon: Icon(Icons.info),
                  onPressed: () {},
                ),
                IconButton(
                  color: Colors.red[300],
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
              ],
            )
          ],
        ));
  }
}
