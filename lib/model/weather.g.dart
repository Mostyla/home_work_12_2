// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_Weather _$WeatherFromJson(Map<String, dynamic> json) => _Weather(
  longitude: (json['longitude'] as num).toDouble(),
  latitude: (json['latitude'] as num).toDouble(),
  weatherData:
      (json['weatherData'] as List<dynamic>)
          .map((e) => WeatherDescription.fromJson(e as Map<String, dynamic>))
          .toList(),
);

Map<String, dynamic> _$WeatherToJson(_Weather instance) => <String, dynamic>{
  'longitude': instance.longitude,
  'latitude': instance.latitude,
  'weatherData': instance.weatherData,
};

_WeatherDescription _$WeatherDescriptionFromJson(Map<String, dynamic> json) =>
    _WeatherDescription(description: json['description'] as String);

Map<String, dynamic> _$WeatherDescriptionToJson(_WeatherDescription instance) =>
    <String, dynamic>{'description': instance.description};
