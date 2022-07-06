import 'package:geolocator/geolocator.dart';

class GeoLocation {
  static Future<Position> getLocation() async {
    Position position = await Geolocator.getCurrentPosition(
      desiredAccuracy: LocationAccuracy.high,
    );
    return position;
  }
}
