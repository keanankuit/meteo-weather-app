import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geolocator/geolocator.dart';
import 'package:my_newest_app/core/location/location_service.dart';
import 'package:my_newest_app/features/weather/logic/weather_state.dart';
import 'package:my_newest_app/features/weather/data/weather_api.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherApi weatherApi;
  final LocationService service;

  WeatherCubit(this.weatherApi, this.service)
    : super(const WeatherState(isLoading: false));

  Future<void> loadWeatherForCurrentLocation() async {
    emit(const WeatherState(isLoading: true));

    try {
      Position position = await service.getCurrentPosition();

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
      emit(WeatherState(isLoading: false, errorMessage: error.toString()));
    }
  }

  Future<void> loadWeather({
    required double longitude,
    required double latitude,
    String? currentLocation = 'Current Location',
  }) async {
    emit(const WeatherState(isLoading: true));
    try {
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
      emit(WeatherState(isLoading: false, errorMessage: error.toString()));
    }
  }
}
