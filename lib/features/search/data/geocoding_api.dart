import 'package:dio/dio.dart';
import 'package:my_newest_app/features/search/data/location_result.dart';

class GeocodingApi {
  GeocodingApi(this.dio);

  final Dio dio;

  // Search Open-Meteo's geocoding API for places matching the typed name.
  Future<List<LocationResult>> searchLocations(String name) async {
    final response = await dio.get(
      'https://geocoding-api.open-meteo.com/v1/search',
      queryParameters: {
        'name': name,
        'count': 10,
        'language': 'en',
        'format': 'json',
      },
    );

    // If the API returns no "results" key, treat it as an empty list.
    final results = response.data['results'] as List<dynamic>? ?? [];

    // Convert every JSON object into a typed LocationResult model.
    return results.map((json) => LocationResult.fromJson(json)).toList();
  }
}
