import 'package:flutter_app/Models/Location.dart';

class Stamp {
  final DateTime stampin;
  final Location stampinLocation;
  final DateTime stampout;
  final Location stampoutLocation;

  Stamp(
      {this.stampin,
      this.stampinLocation,
      this.stampout,
      this.stampoutLocation});

  factory Stamp.fromJson(json) {
    return Stamp(
      stampin: DateTime.parse(json['stampin']),
      stampout: DateTime.parse(json['stampout']),
      stampinLocation: Location.fromJson(json['stampinLocation']),
      stampoutLocation: Location.fromJson(json['stampoutLocation']),
    );
  }

  static Map<String, dynamic> getMap(Stamp st) {
    return {
      'stampin': st.stampin,
      'stampinLocation': Location.getMap(st.stampinLocation),
      'stampout': st.stampout,
      'stampoutLocation': Location.getMap(st.stampoutLocation),
    };
  }
}
