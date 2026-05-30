import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_newest_app/features/weather/logic/weather_state.dart';
import 'package:my_newest_app/weather_api.dart';

class WeatherCubit extends Cubit<WeatherState> {
  final WeatherApi weatherApi;

  WeatherCubit(this.weatherApi) : super(const WeatherState(isLoading: false));

  Future<void> loadWeather() async {
    emit(const WeatherState(isLoading: true));
    try {
      final weather = await weatherApi.getCurrentWeather();

      emit(WeatherState(isLoading: false, weather: weather));
    } catch (error) {
      emit(WeatherState(isLoading: false, errorMessage: error.toString()));
    }
  }
}
