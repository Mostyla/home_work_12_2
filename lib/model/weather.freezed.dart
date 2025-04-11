// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'weather.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Weather {

 double get longitude; double get latitude; List<WeatherDescription> get weatherData;
/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherCopyWith<Weather> get copyWith => _$WeatherCopyWithImpl<Weather>(this as Weather, _$identity);

  /// Serializes this Weather to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Weather&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&const DeepCollectionEquality().equals(other.weatherData, weatherData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,longitude,latitude,const DeepCollectionEquality().hash(weatherData));

@override
String toString() {
  return 'Weather(longitude: $longitude, latitude: $latitude, weatherData: $weatherData)';
}


}

/// @nodoc
abstract mixin class $WeatherCopyWith<$Res>  {
  factory $WeatherCopyWith(Weather value, $Res Function(Weather) _then) = _$WeatherCopyWithImpl;
@useResult
$Res call({
 double longitude, double latitude, List<WeatherDescription> weatherData
});




}
/// @nodoc
class _$WeatherCopyWithImpl<$Res>
    implements $WeatherCopyWith<$Res> {
  _$WeatherCopyWithImpl(this._self, this._then);

  final Weather _self;
  final $Res Function(Weather) _then;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? longitude = null,Object? latitude = null,Object? weatherData = null,}) {
  return _then(_self.copyWith(
longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,weatherData: null == weatherData ? _self.weatherData : weatherData // ignore: cast_nullable_to_non_nullable
as List<WeatherDescription>,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _Weather implements Weather {
  const _Weather({required this.longitude, required this.latitude, required final  List<WeatherDescription> weatherData}): _weatherData = weatherData;
  factory _Weather.fromJson(Map<String, dynamic> json) => _$WeatherFromJson(json);

@override final  double longitude;
@override final  double latitude;
 final  List<WeatherDescription> _weatherData;
@override List<WeatherDescription> get weatherData {
  if (_weatherData is EqualUnmodifiableListView) return _weatherData;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_weatherData);
}


/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherCopyWith<_Weather> get copyWith => __$WeatherCopyWithImpl<_Weather>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Weather&&(identical(other.longitude, longitude) || other.longitude == longitude)&&(identical(other.latitude, latitude) || other.latitude == latitude)&&const DeepCollectionEquality().equals(other._weatherData, _weatherData));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,longitude,latitude,const DeepCollectionEquality().hash(_weatherData));

@override
String toString() {
  return 'Weather(longitude: $longitude, latitude: $latitude, weatherData: $weatherData)';
}


}

/// @nodoc
abstract mixin class _$WeatherCopyWith<$Res> implements $WeatherCopyWith<$Res> {
  factory _$WeatherCopyWith(_Weather value, $Res Function(_Weather) _then) = __$WeatherCopyWithImpl;
@override @useResult
$Res call({
 double longitude, double latitude, List<WeatherDescription> weatherData
});




}
/// @nodoc
class __$WeatherCopyWithImpl<$Res>
    implements _$WeatherCopyWith<$Res> {
  __$WeatherCopyWithImpl(this._self, this._then);

  final _Weather _self;
  final $Res Function(_Weather) _then;

/// Create a copy of Weather
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? longitude = null,Object? latitude = null,Object? weatherData = null,}) {
  return _then(_Weather(
longitude: null == longitude ? _self.longitude : longitude // ignore: cast_nullable_to_non_nullable
as double,latitude: null == latitude ? _self.latitude : latitude // ignore: cast_nullable_to_non_nullable
as double,weatherData: null == weatherData ? _self._weatherData : weatherData // ignore: cast_nullable_to_non_nullable
as List<WeatherDescription>,
  ));
}


}


/// @nodoc
mixin _$WeatherDescription {

 String get description;
/// Create a copy of WeatherDescription
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$WeatherDescriptionCopyWith<WeatherDescription> get copyWith => _$WeatherDescriptionCopyWithImpl<WeatherDescription>(this as WeatherDescription, _$identity);

  /// Serializes this WeatherDescription to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is WeatherDescription&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'WeatherDescription(description: $description)';
}


}

/// @nodoc
abstract mixin class $WeatherDescriptionCopyWith<$Res>  {
  factory $WeatherDescriptionCopyWith(WeatherDescription value, $Res Function(WeatherDescription) _then) = _$WeatherDescriptionCopyWithImpl;
@useResult
$Res call({
 String description
});




}
/// @nodoc
class _$WeatherDescriptionCopyWithImpl<$Res>
    implements $WeatherDescriptionCopyWith<$Res> {
  _$WeatherDescriptionCopyWithImpl(this._self, this._then);

  final WeatherDescription _self;
  final $Res Function(WeatherDescription) _then;

/// Create a copy of WeatherDescription
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? description = null,}) {
  return _then(_self.copyWith(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
@JsonSerializable()

class _WeatherDescription implements WeatherDescription {
  const _WeatherDescription({required this.description});
  factory _WeatherDescription.fromJson(Map<String, dynamic> json) => _$WeatherDescriptionFromJson(json);

@override final  String description;

/// Create a copy of WeatherDescription
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$WeatherDescriptionCopyWith<_WeatherDescription> get copyWith => __$WeatherDescriptionCopyWithImpl<_WeatherDescription>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$WeatherDescriptionToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _WeatherDescription&&(identical(other.description, description) || other.description == description));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,description);

@override
String toString() {
  return 'WeatherDescription(description: $description)';
}


}

/// @nodoc
abstract mixin class _$WeatherDescriptionCopyWith<$Res> implements $WeatherDescriptionCopyWith<$Res> {
  factory _$WeatherDescriptionCopyWith(_WeatherDescription value, $Res Function(_WeatherDescription) _then) = __$WeatherDescriptionCopyWithImpl;
@override @useResult
$Res call({
 String description
});




}
/// @nodoc
class __$WeatherDescriptionCopyWithImpl<$Res>
    implements _$WeatherDescriptionCopyWith<$Res> {
  __$WeatherDescriptionCopyWithImpl(this._self, this._then);

  final _WeatherDescription _self;
  final $Res Function(_WeatherDescription) _then;

/// Create a copy of WeatherDescription
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? description = null,}) {
  return _then(_WeatherDescription(
description: null == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
