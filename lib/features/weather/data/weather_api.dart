import 'package:dio/dio.dart';
import 'package:my_newest_app/features/weather/data/current_weather.dart';

class WeatherApi {
  final Dio dio;

  WeatherApi(this.dio);

  // Open-Meteo sometimes returns temporary server errors like 502.
  // Retrying makes the app more forgiving without hiding real failures.
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
        // Retry only temporary server/gateway problems.
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
    // The API endpoint stays the same; latitude and longitude decide the place.
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

    // Open-Meteo wraps current weather under the "current" JSON key.
    return CurrentWeather.fromJson(response.data['current']);
  }
}
