import 'package:dio/dio.dart';
import 'package:my_newest_app/features/weather/data/current_weather.dart';

class WeatherApi {
  final Dio dio;

  WeatherApi(this.dio);

  Future<CurrentWeather> getCurrentWeather() async {
    final response = await dio.get(
      'https://api.open-meteo.com/v1/forecast',
      queryParameters: {
        'latitude': -34.36,
        'longitude': 19.14,
        'current': 'temperature_2m,weather_code,dew_point_2m,cloud_cover,wind_direction_10m,wind_speed_10m,rain',
        'timezone': 'auto',
      },
    );

    return CurrentWeather.fromJson(response.data['current']);
  }
}


