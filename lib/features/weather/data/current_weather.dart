import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:my_newest_app/features/weather/data/weather_code.dart';

part 'current_weather.freezed.dart';
part 'current_weather.g.dart';

@freezed
abstract class CurrentWeather with _$CurrentWeather {
  const factory CurrentWeather({
    required String time,
    required int interval,
    @JsonKey(name: 'temperature_2m') required double temperature,
    @JsonKey(
      name: 'weather_code',
      fromJson: WeatherCode.fromJson,
      toJson: WeatherCode.toJson,
    )
    required WeatherCode weatherCode,
    @JsonKey(name: 'dew_point_2m') required double dewPoint,
    @JsonKey(name: 'cloud_cover') required int cloudCover,
    @JsonKey(name: 'wind_direction_10m') required int windDirection,
    @JsonKey(name: 'wind_speed_10m') required double windSpeed,
    required double rain,
  }) = _CurrentWeather;

  factory CurrentWeather.fromJson(Map<String, dynamic> json) =>
      _$CurrentWeatherFromJson(json);
}
