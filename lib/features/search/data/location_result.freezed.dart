// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_result.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LocationResult {

 int get id; String get name; double get latitude; double get longitude; double get elevation; String? get timezone; String? get country; String? get admin1; String? get admin2; String? get admin3;@JsonKey(name: 'country_code') String get countryCode;
/// Create a copy of LocationResult
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LocationResultCopyWith<LocationResult> get copyWith => _$LocationResultCopyWithImpl<LocationResult>(this as LocationResult, _$identity);

  /// Serializes this LocationResult to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LocationResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.elevation, elevation) || other.elevation == elevation)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.country, country) || other.country == country)&&(identical(other.admin1, admin1) || other.admin1 == admin1)&&(identical(other.admin2, admin2) || other.admin2 == admin2)&&(identical(other.admin3, admin3) || other.admin3 == admin3)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,latitude,longitude,elevation,timezone,country,admin1,admin2,admin3,countryCode);

@override
String toString() {
  return 'LocationResult(id: $id, name: $name, latitude: $latitude, longitude: $longitude, elevation: $elevation, timezone: $timezone, country: $country, admin1: $admin1, admin2: $admin2, admin3: $admin3, countryCode: $countryCode)';
}


}

/// @nodoc
abstract mixin class $LocationResultCopyWith<$Res>  {
  factory $LocationResultCopyWith(LocationResult value, $Res Function(LocationResult) _then) = _$LocationResultCopyWithImpl;
@useResult
$Res call({
 int id, String name, double latitude, double longitude, double elevation, String? timezone, String? country, String? admin1, String? admin2, String? admin3,@JsonKey(name: 'country_code') String countryCode
});




}
/// @nodoc
class _$LocationResultCopyWithImpl<$Res>
    implements $LocationResultCopyWith<$Res> {
  _$LocationResultCopyWithImpl(this._self, this._then);

  final LocationResult _self;
  final $Res Function(LocationResult) _then;

/// Create a copy of LocationResult
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? latitude = null,Object? longitude = null,Object? elevation = null,Object? timezone = freezed,Object? country = freezed,Object? admin1 = freezed,Object? admin2 = freezed,Object? admin3 = freezed,Object? countryCode = null,}) {
  return _then(_self.copyWith(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,elevation: null == elevation ? _self.elevation : elevation // ignore: cast_nullable_to_non_nullable
as double,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,admin1: freezed == admin1 ? _self.admin1 : admin1 // ignore: cast_nullable_to_non_nullable
as String?,admin2: freezed == admin2 ? _self.admin2 : admin2 // ignore: cast_nullable_to_non_nullable
as String?,admin3: freezed == admin3 ? _self.admin3 : admin3 // ignore: cast_nullable_to_non_nullable
as String?,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [LocationResult].
extension LocationResultPatterns on LocationResult {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LocationResult value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LocationResult() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LocationResult value)  $default,){
final _that = this;
switch (_that) {
case _LocationResult():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LocationResult value)?  $default,){
final _that = this;
switch (_that) {
case _LocationResult() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  double latitude,  double longitude,  double elevation,  String? timezone,  String? country,  String? admin1,  String? admin2,  String? admin3, @JsonKey(name: 'country_code')  String countryCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LocationResult() when $default != null:
return $default(_that.id,_that.name,_that.latitude,_that.longitude,_that.elevation,_that.timezone,_that.country,_that.admin1,_that.admin2,_that.admin3,_that.countryCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  double latitude,  double longitude,  double elevation,  String? timezone,  String? country,  String? admin1,  String? admin2,  String? admin3, @JsonKey(name: 'country_code')  String countryCode)  $default,) {final _that = this;
switch (_that) {
case _LocationResult():
return $default(_that.id,_that.name,_that.latitude,_that.longitude,_that.elevation,_that.timezone,_that.country,_that.admin1,_that.admin2,_that.admin3,_that.countryCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  double latitude,  double longitude,  double elevation,  String? timezone,  String? country,  String? admin1,  String? admin2,  String? admin3, @JsonKey(name: 'country_code')  String countryCode)?  $default,) {final _that = this;
switch (_that) {
case _LocationResult() when $default != null:
return $default(_that.id,_that.name,_that.latitude,_that.longitude,_that.elevation,_that.timezone,_that.country,_that.admin1,_that.admin2,_that.admin3,_that.countryCode);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _LocationResult implements LocationResult {
  const _LocationResult({required this.id, required this.name, required this.latitude, required this.longitude, required this.elevation, this.timezone, this.country, this.admin1, this.admin2, this.admin3, @JsonKey(name: 'country_code') required this.countryCode});
  factory _LocationResult.fromJson(Map<String, dynamic> json) => _$LocationResultFromJson(json);

@override final  int id;
@override final  String name;
@override final  double latitude;
@override final  double longitude;
@override final  double elevation;
@override final  String? timezone;
@override final  String? country;
@override final  String? admin1;
@override final  String? admin2;
@override final  String? admin3;
@override@JsonKey(name: 'country_code') final  String countryCode;

/// Create a copy of LocationResult
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LocationResultCopyWith<_LocationResult> get copyWith => __$LocationResultCopyWithImpl<_LocationResult>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$LocationResultToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LocationResult&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.elevation, elevation) || other.elevation == elevation)&&(identical(other.timezone, timezone) || other.timezone == timezone)&&(identical(other.country, country) || other.country == country)&&(identical(other.admin1, admin1) || other.admin1 == admin1)&&(identical(other.admin2, admin2) || other.admin2 == admin2)&&(identical(other.admin3, admin3) || other.admin3 == admin3)&&(identical(other.countryCode, countryCode) || other.countryCode == countryCode));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,id,name,latitude,longitude,elevation,timezone,country,admin1,admin2,admin3,countryCode);

@override
String toString() {
  return 'LocationResult(id: $id, name: $name, latitude: $latitude, longitude: $longitude, elevation: $elevation, timezone: $timezone, country: $country, admin1: $admin1, admin2: $admin2, admin3: $admin3, countryCode: $countryCode)';
}


}

/// @nodoc
abstract mixin class _$LocationResultCopyWith<$Res> implements $LocationResultCopyWith<$Res> {
  factory _$LocationResultCopyWith(_LocationResult value, $Res Function(_LocationResult) _then) = __$LocationResultCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, double latitude, double longitude, double elevation, String? timezone, String? country, String? admin1, String? admin2, String? admin3,@JsonKey(name: 'country_code') String countryCode
});




}
/// @nodoc
class __$LocationResultCopyWithImpl<$Res>
    implements _$LocationResultCopyWith<$Res> {
  __$LocationResultCopyWithImpl(this._self, this._then);

  final _LocationResult _self;
  final $Res Function(_LocationResult) _then;

/// Create a copy of LocationResult
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? latitude = null,Object? longitude = null,Object? elevation = null,Object? timezone = freezed,Object? country = freezed,Object? admin1 = freezed,Object? admin2 = freezed,Object? admin3 = freezed,Object? countryCode = null,}) {
  return _then(_LocationResult(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,elevation: null == elevation ? _self.elevation : elevation // ignore: cast_nullable_to_non_nullable
as double,timezone: freezed == timezone ? _self.timezone : timezone // ignore: cast_nullable_to_non_nullable
as String?,country: freezed == country ? _self.country : country // ignore: cast_nullable_to_non_nullable
as String?,admin1: freezed == admin1 ? _self.admin1 : admin1 // ignore: cast_nullable_to_non_nullable
as String?,admin2: freezed == admin2 ? _self.admin2 : admin2 // ignore: cast_nullable_to_non_nullable
as String?,admin3: freezed == admin3 ? _self.admin3 : admin3 // ignore: cast_nullable_to_non_nullable
as String?,countryCode: null == countryCode ? _self.countryCode : countryCode // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
