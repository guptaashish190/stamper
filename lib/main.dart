import 'package:flutter/material.dart';
import 'package:flutter_app/Screens/Client/Home/Home.dart';

void main() => runApp(MainNavigator());

class MainNavigator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(fontFamily: 'OpenSans'),
      initialRoute: '/',
      routes: {'/': (context) => ClientHome()},
    );
  }
}
