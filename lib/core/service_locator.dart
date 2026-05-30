import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:my_newest_app/core/theme/theme_cubit.dart';
import 'package:my_newest_app/features/search/data/geocoding_api.dart';
import 'package:my_newest_app/features/search/logic/search_cubit.dart';
import 'package:my_newest_app/features/weather/logic/weather_cubit.dart';
import 'package:my_newest_app/features/weather/data/weather_api.dart';
import 'package:shared_preferences/shared_preferences.dart';

final sl = GetIt.instance;

void setupServiceLocator(SharedPreferences preferences) {
  sl.registerLazySingleton<SharedPreferences>(() => preferences);

  sl.registerLazySingleton<Dio>(() => Dio());

  sl.registerLazySingleton<WeatherApi>(() => WeatherApi(sl<Dio>()));
  sl.registerFactory<WeatherCubit>(() => WeatherCubit(sl<WeatherApi>()));

  sl.registerLazySingleton<GeocodingApi>(() => GeocodingApi(sl<Dio>()));
  sl.registerFactory<SearchCubit>(() => SearchCubit(sl<GeocodingApi>()));
  
  sl.registerFactory<ThemeCubit>(
  () => ThemeCubit(sl<SharedPreferences>()),
);
}
