import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_newest_app/core/location/location_service.dart';
import 'package:my_newest_app/core/theme/theme_cubit.dart';
import 'package:my_newest_app/features/search/data/geocoding_api.dart';
import 'package:my_newest_app/features/search/logic/search_cubit.dart';
import 'package:my_newest_app/features/weather/logic/weather_cubit.dart';
import 'package:my_newest_app/features/weather/data/weather_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

void setupServiceLocator(SharedPreferences preferences) {
  // Register the already-created preferences instance so other classes can use it.
  sl.registerLazySingleton<SharedPreferences>(() => preferences);

  // Dio is the shared HTTP client for weather and geocoding requests.
  sl.registerLazySingleton<Dio>(() => Dio());

  // LocationService wraps phone-location permission and GPS logic.
  sl.registerLazySingleton<LocationService>(() => LocationService());

  // WeatherApi fetches weather data from Open-Meteo.
  sl.registerLazySingleton<WeatherApi>(() => WeatherApi(sl<Dio>()));

  // WeatherCubit is a factory because each weather route gets fresh state.
  sl.registerFactory<WeatherCubit>(
    () => WeatherCubit(sl<WeatherApi>(), sl<LocationService>()),
  );

  // GeocodingApi searches place names and returns coordinates.
  sl.registerLazySingleton<GeocodingApi>(() => GeocodingApi(sl<Dio>()));

  // SearchCubit is a factory because each search screen owns its own state.
  sl.registerFactory<SearchCubit>(() => SearchCubit(sl<GeocodingApi>()));

  // ThemeCubit uses SharedPreferences so dark mode survives app restarts.
  sl.registerFactory<ThemeCubit>(() => ThemeCubit(sl<SharedPreferences>()));
}
