import 'package:geolocator/geolocator.dart';

class LocationService {
  Future<Position> getCurrentPosition() async {
    // First check whether the phone's location feature is switched on.
    final isLocationEnabled = await Geolocator.isLocationServiceEnabled();

    if (!isLocationEnabled) {
      throw Exception('Location services are disabled');
    }

    // Then check whether our app has permission to read the location.
    var permission = await Geolocator.checkPermission();

    if (permission == LocationPermission.denied) {
      // Ask once if the user has not made a final decision yet.
      permission = await Geolocator.requestPermission();
    }

    if (permission == LocationPermission.denied) {
      throw Exception('Location permission denied');
    }

    if (permission == LocationPermission.deniedForever) {
      throw Exception('Location permission permanently denied');
    }

    // If all checks passed, ask the phone for the current GPS position.
    return Geolocator.getCurrentPosition();
  }
}
