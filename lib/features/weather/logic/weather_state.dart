import 'package:my_newest_app/features/weather/data/current_weather.dart';

class WeatherState {
  final bool isLoading;
  final CurrentWeather? weather;
  final String? currentLocation;
  final String? errorMessage;

  const WeatherState({
    this.isLoading = false,
    this.weather,
    this.currentLocation,
    this.errorMessage,
  });
}
