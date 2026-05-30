import 'package:my_newest_app/features/weather/data/current_weather.dart';

class WeatherState {
  // True while the Cubit is waiting for location/API work to finish.
  final bool isLoading;

  // The latest weather returned by Open-Meteo.
  final CurrentWeather? weather;

  // The location label shown at the top of the screen.
  final String? currentLocation;

  // A human-readable error for the UI when something fails.
  final String? errorMessage;

  const WeatherState({
    this.isLoading = false,
    this.weather,
    this.currentLocation,
    this.errorMessage,
  });
}
