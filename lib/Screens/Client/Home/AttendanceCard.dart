import 'package:flutter/material.dart';
import 'package:flutter_app/Constants/Colors.dart';
import 'package:flutter_app/Screens/Client/AttendanceInfoDialog.dart';
import 'package:flutter_app/Types/Attendance.dart';

class AttendanceCard extends StatefulWidget {
  final Attendance data;

  const AttendanceCard({Key key, this.data}) : super(key: key);

  @override
  _AttendanceCardState createState() => _AttendanceCardState();
}

class _AttendanceCardState extends State<AttendanceCard> {
  bool showInfo = false;

  // void showInfo(BuildContext context) {
  //   showDialog(
  //       context: context,
  //       builder: (BuildContext context) {
  //         return AttendanceInfoDialog();
  //       });
  // }

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
          Flexible(
            flex: 3,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                // Stamp in row
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: 'STAMP-IN: ',
                        style: TextStyle(
                            fontSize: 16,
                            color: mainText,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: widget.data.stampin,
                        style: TextStyle(
                            fontSize: 16,
                            color: mainText2,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                ),
                // Stamp out row
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RichText(
                    text: TextSpan(children: <TextSpan>[
                      TextSpan(
                        text: 'STAMP-OUT: ',
                        style: TextStyle(
                            fontSize: 16,
                            color: mainText,
                            fontWeight: FontWeight.bold),
                      ),
                      TextSpan(
                        text: widget.data.stampout,
                        style: TextStyle(
                            fontSize: 16,
                            color: mainText2,
                            fontWeight: FontWeight.bold),
                      )
                    ]),
                  ),
                ),
                showInfo
                    ?
                    // In location
                    Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(children: <TextSpan>[
                            TextSpan(
                              text: 'IN-LOCATION: ',
                              style: TextStyle(
                                  fontSize: 16,
                                  color: mainText,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: widget.data.stampinLocation,
                              style: TextStyle(
                                  fontSize: 16,
                                  color: mainText2,
                                  fontWeight: FontWeight.bold),
                            )
                          ]),
                        ),
                      )
                    : Container(),
                // Out Location
                showInfo
                    ? Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: RichText(
                          text: TextSpan(
                            children: <TextSpan>[
                              TextSpan(
                                text: 'OUT-LOCATION: ',
                                style: TextStyle(
                                    fontSize: 16,
                                    color: mainText,
                                    fontWeight: FontWeight.bold),
                              ),
                              TextSpan(
                                text: widget.data.stampoutLocation,
                                style: TextStyle(
                                    fontSize: 16,
                                    color: mainText2,
                                    fontWeight: FontWeight.bold),
                              )
                            ],
                          ),
                        ),
                      )
                    : Container(),
              ],
            ),
          ),
          Flexible(
            flex: 1,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: <Widget>[
                IconButton(
                  color: Colors.white70,
                  icon: Icon(Icons.info),
                  onPressed: () {
                    setState(() {
                      showInfo = !showInfo;
                    });
                  },
                ),
                IconButton(
                  color: Colors.red[300],
                  icon: Icon(Icons.delete),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
