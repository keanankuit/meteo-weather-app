// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'current_weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CurrentWeather {

 String get time; int get interval;@JsonKey(name: 'temperature_2m') double get temperature;@JsonKey(name: 'weather_code', fromJson: WeatherCode.fromJson, toJson: WeatherCode.toJson) WeatherCode get weatherCode;@JsonKey(name: 'dew_point_2m') double get dewPoint;@JsonKey(name: 'cloud_cover') int get cloudCover;@JsonKey(name: 'wind_direction_10m') int get windDirection;@JsonKey(name: 'wind_speed_10m') double get windSpeed; double get rain;
/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CurrentWeatherCopyWith<CurrentWeather> get copyWith => _$CurrentWeatherCopyWithImpl<CurrentWeather>(this as CurrentWeather, _$identity);

  /// Serializes this CurrentWeather to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CurrentWeather&&(identical(other.time, time) || other.time == time)&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.weatherCode, weatherCode) || other.weatherCode == weatherCode)&&(identical(other.dewPoint, dewPoint) || other.dewPoint == dewPoint)&&(identical(other.cloudCover, cloudCover) || other.cloudCover == cloudCover)&&(identical(other.windDirection, windDirection) || other.windDirection == windDirection)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.rain, rain) || other.rain == rain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,interval,temperature,weatherCode,dewPoint,cloudCover,windDirection,windSpeed,rain);

@override
String toString() {
  return 'CurrentWeather(time: $time, interval: $interval, temperature: $temperature, weatherCode: $weatherCode, dewPoint: $dewPoint, cloudCover: $cloudCover, windDirection: $windDirection, windSpeed: $windSpeed, rain: $rain)';
}


}

/// @nodoc
abstract mixin class $CurrentWeatherCopyWith<$Res>  {
  factory $CurrentWeatherCopyWith(CurrentWeather value, $Res Function(CurrentWeather) _then) = _$CurrentWeatherCopyWithImpl;
@useResult
$Res call({
 String time, int interval,@JsonKey(name: 'temperature_2m') double temperature,@JsonKey(name: 'weather_code', fromJson: WeatherCode.fromJson, toJson: WeatherCode.toJson) WeatherCode weatherCode,@JsonKey(name: 'dew_point_2m') double dewPoint,@JsonKey(name: 'cloud_cover') int cloudCover,@JsonKey(name: 'wind_direction_10m') int windDirection,@JsonKey(name: 'wind_speed_10m') double windSpeed, double rain
});




}
/// @nodoc
class _$CurrentWeatherCopyWithImpl<$Res>
    implements $CurrentWeatherCopyWith<$Res> {
  _$CurrentWeatherCopyWithImpl(this._self, this._then);

  final CurrentWeather _self;
  final $Res Function(CurrentWeather) _then;

/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? time = null,Object? interval = null,Object? temperature = null,Object? weatherCode = null,Object? dewPoint = null,Object? cloudCover = null,Object? windDirection = null,Object? windSpeed = null,Object? rain = null,}) {
  return _then(_self.copyWith(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as int,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,weatherCode: null == weatherCode ? _self.weatherCode : weatherCode // ignore: cast_nullable_to_non_nullable
as WeatherCode,dewPoint: null == dewPoint ? _self.dewPoint : dewPoint // ignore: cast_nullable_to_non_nullable
as double,cloudCover: null == cloudCover ? _self.cloudCover : cloudCover // ignore: cast_nullable_to_non_nullable
as int,windDirection: null == windDirection ? _self.windDirection : windDirection // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,rain: null == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as double,
  ));
}

}


/// Adds pattern-matching-related methods to [CurrentWeather].
extension CurrentWeatherPatterns on CurrentWeather {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CurrentWeather value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CurrentWeather() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CurrentWeather value)  $default,){
final _that = this;
switch (_that) {
case _CurrentWeather():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CurrentWeather value)?  $default,){
final _that = this;
switch (_that) {
case _CurrentWeather() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String time,  int interval, @JsonKey(name: 'temperature_2m')  double temperature, @JsonKey(name: 'weather_code', fromJson: WeatherCode.fromJson, toJson: WeatherCode.toJson)  WeatherCode weatherCode, @JsonKey(name: 'dew_point_2m')  double dewPoint, @JsonKey(name: 'cloud_cover')  int cloudCover, @JsonKey(name: 'wind_direction_10m')  int windDirection, @JsonKey(name: 'wind_speed_10m')  double windSpeed,  double rain)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CurrentWeather() when $default != null:
return $default(_that.time,_that.interval,_that.temperature,_that.weatherCode,_that.dewPoint,_that.cloudCover,_that.windDirection,_that.windSpeed,_that.rain);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String time,  int interval, @JsonKey(name: 'temperature_2m')  double temperature, @JsonKey(name: 'weather_code', fromJson: WeatherCode.fromJson, toJson: WeatherCode.toJson)  WeatherCode weatherCode, @JsonKey(name: 'dew_point_2m')  double dewPoint, @JsonKey(name: 'cloud_cover')  int cloudCover, @JsonKey(name: 'wind_direction_10m')  int windDirection, @JsonKey(name: 'wind_speed_10m')  double windSpeed,  double rain)  $default,) {final _that = this;
switch (_that) {
case _CurrentWeather():
return $default(_that.time,_that.interval,_that.temperature,_that.weatherCode,_that.dewPoint,_that.cloudCover,_that.windDirection,_that.windSpeed,_that.rain);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String time,  int interval, @JsonKey(name: 'temperature_2m')  double temperature, @JsonKey(name: 'weather_code', fromJson: WeatherCode.fromJson, toJson: WeatherCode.toJson)  WeatherCode weatherCode, @JsonKey(name: 'dew_point_2m')  double dewPoint, @JsonKey(name: 'cloud_cover')  int cloudCover, @JsonKey(name: 'wind_direction_10m')  int windDirection, @JsonKey(name: 'wind_speed_10m')  double windSpeed,  double rain)?  $default,) {final _that = this;
switch (_that) {
case _CurrentWeather() when $default != null:
return $default(_that.time,_that.interval,_that.temperature,_that.weatherCode,_that.dewPoint,_that.cloudCover,_that.windDirection,_that.windSpeed,_that.rain);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CurrentWeather implements CurrentWeather {
  const _CurrentWeather({required this.time, required this.interval, @JsonKey(name: 'temperature_2m') required this.temperature, @JsonKey(name: 'weather_code', fromJson: WeatherCode.fromJson, toJson: WeatherCode.toJson) required this.weatherCode, @JsonKey(name: 'dew_point_2m') required this.dewPoint, @JsonKey(name: 'cloud_cover') required this.cloudCover, @JsonKey(name: 'wind_direction_10m') required this.windDirection, @JsonKey(name: 'wind_speed_10m') required this.windSpeed, required this.rain});
  factory _CurrentWeather.fromJson(Map<String, dynamic> json) => _$CurrentWeatherFromJson(json);

@override final  String time;
@override final  int interval;
@override@JsonKey(name: 'temperature_2m') final  double temperature;
@override@JsonKey(name: 'weather_code', fromJson: WeatherCode.fromJson, toJson: WeatherCode.toJson) final  WeatherCode weatherCode;
@override@JsonKey(name: 'dew_point_2m') final  double dewPoint;
@override@JsonKey(name: 'cloud_cover') final  int cloudCover;
@override@JsonKey(name: 'wind_direction_10m') final  int windDirection;
@override@JsonKey(name: 'wind_speed_10m') final  double windSpeed;
@override final  double rain;

/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CurrentWeatherCopyWith<_CurrentWeather> get copyWith => __$CurrentWeatherCopyWithImpl<_CurrentWeather>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CurrentWeatherToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _CurrentWeather&&(identical(other.time, time) || other.time == time)&&(identical(other.interval, interval) || other.interval == interval)&&(identical(other.temperature, temperature) || other.temperature == temperature)&&(identical(other.weatherCode, weatherCode) || other.weatherCode == weatherCode)&&(identical(other.dewPoint, dewPoint) || other.dewPoint == dewPoint)&&(identical(other.cloudCover, cloudCover) || other.cloudCover == cloudCover)&&(identical(other.windDirection, windDirection) || other.windDirection == windDirection)&&(identical(other.windSpeed, windSpeed) || other.windSpeed == windSpeed)&&(identical(other.rain, rain) || other.rain == rain));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,time,interval,temperature,weatherCode,dewPoint,cloudCover,windDirection,windSpeed,rain);

@override
String toString() {
  return 'CurrentWeather(time: $time, interval: $interval, temperature: $temperature, weatherCode: $weatherCode, dewPoint: $dewPoint, cloudCover: $cloudCover, windDirection: $windDirection, windSpeed: $windSpeed, rain: $rain)';
}


}

/// @nodoc
abstract mixin class _$CurrentWeatherCopyWith<$Res> implements $CurrentWeatherCopyWith<$Res> {
  factory _$CurrentWeatherCopyWith(_CurrentWeather value, $Res Function(_CurrentWeather) _then) = __$CurrentWeatherCopyWithImpl;
@override @useResult
$Res call({
 String time, int interval,@JsonKey(name: 'temperature_2m') double temperature,@JsonKey(name: 'weather_code', fromJson: WeatherCode.fromJson, toJson: WeatherCode.toJson) WeatherCode weatherCode,@JsonKey(name: 'dew_point_2m') double dewPoint,@JsonKey(name: 'cloud_cover') int cloudCover,@JsonKey(name: 'wind_direction_10m') int windDirection,@JsonKey(name: 'wind_speed_10m') double windSpeed, double rain
});




}
/// @nodoc
class __$CurrentWeatherCopyWithImpl<$Res>
    implements _$CurrentWeatherCopyWith<$Res> {
  __$CurrentWeatherCopyWithImpl(this._self, this._then);

  final _CurrentWeather _self;
  final $Res Function(_CurrentWeather) _then;

/// Create a copy of CurrentWeather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? time = null,Object? interval = null,Object? temperature = null,Object? weatherCode = null,Object? dewPoint = null,Object? cloudCover = null,Object? windDirection = null,Object? windSpeed = null,Object? rain = null,}) {
  return _then(_CurrentWeather(
time: null == time ? _self.time : time // ignore: cast_nullable_to_non_nullable
as String,interval: null == interval ? _self.interval : interval // ignore: cast_nullable_to_non_nullable
as int,temperature: null == temperature ? _self.temperature : temperature // ignore: cast_nullable_to_non_nullable
as double,weatherCode: null == weatherCode ? _self.weatherCode : weatherCode // ignore: cast_nullable_to_non_nullable
as WeatherCode,dewPoint: null == dewPoint ? _self.dewPoint : dewPoint // ignore: cast_nullable_to_non_nullable
as double,cloudCover: null == cloudCover ? _self.cloudCover : cloudCover // ignore: cast_nullable_to_non_nullable
as int,windDirection: null == windDirection ? _self.windDirection : windDirection // ignore: cast_nullable_to_non_nullable
as int,windSpeed: null == windSpeed ? _self.windSpeed : windSpeed // ignore: cast_nullable_to_non_nullable
as double,rain: null == rain ? _self.rain : rain // ignore: cast_nullable_to_non_nullable
as double,
  ));
}


}

// dart format on
