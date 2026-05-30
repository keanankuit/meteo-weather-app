import 'package:dio/dio.dart';
import 'package:my_newest_app/features/weather/data/current_weather.dart';

class WeatherApi {
  final Dio dio;

  WeatherApi(this.dio);

  Future<Response<dynamic>> _getWithRetry(
    String url, {
    required Map<String, dynamic> queryParameters,
  }) async {
    const maxAttempts = 3;

    for (var attempt = 1; attempt <= maxAttempts; attempt++) {
      try {
        return await dio.get(url, queryParameters: queryParameters);
      } on DioException catch (error) {
        final statusCode = error.response?.statusCode;
        final shouldRetry =
            statusCode == 502 || statusCode == 503 || statusCode == 504;

        if (!shouldRetry || attempt == maxAttempts) {
          rethrow;
        }

        await Future.delayed(Duration(milliseconds: 500 * attempt));
      }
    }

    throw Exception('Weather request failed');
  }

  Future<CurrentWeather> getCurrentWeather({
    required double longitude,
    required double latitude,
  }) async {
    final response = await _getWithRetry(
      'https://api.open-meteo.com/v1/forecast',
      queryParameters: {
        'latitude': latitude,
        'longitude': longitude,
        'current':
            'temperature_2m,weather_code,dew_point_2m,cloud_cover,wind_direction_10m,wind_speed_10m,rain',
        'timezone': 'auto',
      },
    );

    return CurrentWeather.fromJson(response.data['current']);
  }
}
