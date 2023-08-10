// Package imports:
import 'package:geolocator/geolocator.dart';

class MyLocationHelper {
  MyLocationHelper._();
  //
  static Future<Position> getCurrentLocation() async {
    return Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.low,
      forceAndroidLocationManager: true,
    );
  }
}
