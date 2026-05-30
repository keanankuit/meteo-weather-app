import 'package:freezed_annotation/freezed_annotation.dart';

part 'location_result.freezed.dart';
part 'location_result.g.dart';

@freezed
abstract class LocationResult with _$LocationResult {
  const factory LocationResult({
    required int id,
    required String name,
    required double latitude,
    required double longitude,
    required double elevation,
    String? timezone,
    String? country,
    String? admin1,
    String? admin2,
    String? admin3,
    @JsonKey(name: 'country_code') required String countryCode,
  }) = _LocationResult;

  factory LocationResult.fromJson(Map<String, dynamic> json) =>
      _$LocationResultFromJson(json);
}
