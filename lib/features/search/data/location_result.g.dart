// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'location_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LocationResult _$LocationResultFromJson(Map<String, dynamic> json) =>
    _LocationResult(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      latitude: (json['latitude'] as num).toDouble(),
      longitude: (json['longitude'] as num).toDouble(),
      elevation: (json['elevation'] as num).toDouble(),
      timezone: json['timezone'] as String?,
      country: json['country'] as String?,
      admin1: json['admin1'] as String?,
      admin2: json['admin2'] as String?,
      admin3: json['admin3'] as String?,
      countryCode: json['country_code'] as String,
    );

Map<String, dynamic> _$LocationResultToJson(_LocationResult instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'latitude': instance.latitude,
      'longitude': instance.longitude,
      'elevation': instance.elevation,
      'timezone': instance.timezone,
      'country': instance.country,
      'admin1': instance.admin1,
      'admin2': instance.admin2,
      'admin3': instance.admin3,
      'country_code': instance.countryCode,
    };
