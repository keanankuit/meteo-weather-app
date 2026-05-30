import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_newest_app/core/location/location_service.dart';
import 'package:my_newest_app/features/weather/logic/weather_state.dart';
import 'package:my_newest_app/features/weather/data/weather_api.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherApi weatherApi;
  final LocationService service;

  WeatherCubit(this.weatherApi, this.service)
    : super(const WeatherState(isLoading: false));

  // Used on app startup: ask the phone for coordinates, then fetch weather.
  Future<void> loadWeatherForCurrentLocation() async {
    emit(const WeatherState(isLoading: true));

    try {
      // LocationService handles permission and returns GPS coordinates.
      final position = await service.getCurrentPosition();

      // WeatherApi only needs latitude and longitude.
      final weather = await weatherApi.getCurrentWeather(
        latitude: position.latitude,
        longitude: position.longitude,
      );

      emit(
        WeatherState(
          isLoading: false,
          weather: weather,
          currentLocation: 'Current Location',
        ),
      );
    } catch (error) {
      // Keep failures in state so the screen can show them instead of crashing.
      emit(WeatherState(isLoading: false, errorMessage: error.toString()));
    }
  }

  // Used after the user chooses a location from the search screen.
  Future<void> loadWeather({
    required double longitude,
    required double latitude,
    String? currentLocation = 'Current Location',
  }) async {
    emit(const WeatherState(isLoading: true));
    try {
      // Same weather request, but with coordinates chosen from search.
      final weather = await weatherApi.getCurrentWeather(
        latitude: latitude,
        longitude: longitude,
      );

      emit(
        WeatherState(
          isLoading: false,
          weather: weather,
          currentLocation: currentLocation,
        ),
      );
    } catch (error) {
      // Any API or parsing error becomes visible UI state.
      emit(WeatherState(isLoading: false, errorMessage: error.toString()));
    }
  }
}
