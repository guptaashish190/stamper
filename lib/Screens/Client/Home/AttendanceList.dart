import 'package:flutter/material.dart';
import 'package:flutter_app/Constants/Colors.dart';
import 'package:flutter_app/Screens/Client/Home/AttendanceCard.dart';
import 'package:flutter_app/Types/Attendance.dart';

class AttendanceList extends StatelessWidget {
  Future<List<Attendance>> getListData() {
    return Future<List<Attendance>>.delayed(Duration(seconds: 2), () {
      return <Attendance>[
        new Attendance(
            stampin: '9:00AM 17th Dec 2020',
            stampout: '5:00PM 17th Dec 2020',
            stampinLocation: 'DSIDC Complex, kalyan puri, Delhi',
            stampoutLocation: 'DSIDC Complex, kalyan puri, Delhi',
            title: null),
        new Attendance(
            stampin: '9:00AM 17th Dec 2020',
            stampout: '5:00PM 17th Dec 2020',
            stampinLocation: 'DSIDC Complex, kalyan puri, Delhi',
            stampoutLocation: 'DSIDC Complex, kalyan puri, Delhi',
            title: null),
        new Attendance(
            stampin: '9:00AM 17th Dec 2020',
            stampout: '5:00PM 17th Dec 2020',
            stampinLocation: 'DSIDC Complex, kalyan puri, Delhi',
            stampoutLocation: 'DSIDC Complex, kalyan puri, Delhi',
            title: null),
        new Attendance(
            stampin: '9:00AM 17th Dec 2020',
            stampout: '5:00PM 17th Dec 2020',
            stampinLocation: 'DSIDC Complex, kalyan puri, Delhi',
            stampoutLocation: 'DSIDC Complex, kalyan puri, Delhi',
            title: null),
      ];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        child: FutureBuilder(
      future: getListData(),
      builder:
          (BuildContext context, AsyncSnapshot<List<Attendance>> snapshot) {
        if (snapshot.hasData) {
          return Container(
            child: Expanded(
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                itemCount: snapshot.data.length,
                itemBuilder: (BuildContext context, int i) {
                  return AttendanceCard(data: snapshot.data[i]);
                },
              ),
            ),
          );
        }
        if (snapshot.hasError) {
          return Icon(
            Icons.error_outline,
            color: Colors.red,
            size: 60,
          );
        }
        return Center(child: CircularProgressIndicator());
      },
    ));
  }
}
