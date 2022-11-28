// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'weather_api_models.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Period _$$_PeriodFromJson(Map<String, dynamic> json) => _$_Period(
      name: json['name'] as String,
      isDaytime: json['isDaytime'] as bool,
      temperature: json['temperature'] as int,
      windSpeed: json['windSpeed'] as String,
      shortForecast: json['shortForecast'] as String,
    );

Map<String, dynamic> _$$_PeriodToJson(_$_Period instance) => <String, dynamic>{
      'name': instance.name,
      'isDaytime': instance.isDaytime,
      'temperature': instance.temperature,
      'windSpeed': instance.windSpeed,
      'shortForecast': instance.shortForecast,
    };
