import 'package:flutter/material.dart';

class AttendanceInfoDialog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Dialog(
      insetAnimationDuration: Duration(seconds: 1),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
        ),
        child: Text('hsi'),
      ),
    );
  }
}
