// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'current_weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CurrentWeather _$CurrentWeatherFromJson(Map<String, dynamic> json) =>
    _CurrentWeather(
      time: json['time'] as String,
      interval: (json['interval'] as num).toInt(),
      temperature: (json['temperature_2m'] as num).toDouble(),
      weatherCode: WeatherCode.fromJson((json['weather_code'] as num).toInt()),
      dewPoint: (json['dew_point_2m'] as num).toDouble(),
      cloudCover: (json['cloud_cover'] as num).toInt(),
      windDirection: (json['wind_direction_10m'] as num).toInt(),
      windSpeed: (json['wind_speed_10m'] as num).toDouble(),
      rain: (json['rain'] as num).toDouble(),
    );

Map<String, dynamic> _$CurrentWeatherToJson(_CurrentWeather instance) =>
    <String, dynamic>{
      'time': instance.time,
      'interval': instance.interval,
      'temperature_2m': instance.temperature,
      'weather_code': WeatherCode.toJson(instance.weatherCode),
      'dew_point_2m': instance.dewPoint,
      'cloud_cover': instance.cloudCover,
      'wind_direction_10m': instance.windDirection,
      'wind_speed_10m': instance.windSpeed,
      'rain': instance.rain,
    };
