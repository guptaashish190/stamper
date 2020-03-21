import 'dart:convert';

class Location {
  final latitude;
  final longitude;
  final title;

  Location({this.latitude, this.longitude, this.title});

  factory Location.fromJson(json) {
    return Location(
      latitude: json['latitude'],
      longitude: json['longitude'],
      title: json['title'],
    );
  }

  static Map<String, dynamic> getMap(Location location) {
    return {
      'latitude': location.latitude,
      'longitude': location.longitude,
      'title': location.title
    };
  }
}
