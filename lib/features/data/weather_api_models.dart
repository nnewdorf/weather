import 'package:freezed_annotation/freezed_annotation.dart';

part 'weather_api_models.freezed.dart';
part 'weather_api_models.g.dart';

@unfreezed
class GeocodeResponse with _$GeocodeResponse {
  factory GeocodeResponse({
    @Default('') String name,
    @Default('') String lat,
    @Default('') String lon
  }) = _GeocodeResponse;
}

@unfreezed
class ForecastResponse with _$ForecastResponse {
  factory ForecastResponse({
    required List<Period> periods
  }) = _ForecastResponse;
}

@unfreezed
class Period with _$Period {
  factory Period({
    required String name,
    required bool isDaytime,
    required int temperature,
    required String windSpeed,
    required String shortForecast
  }) = _Period;

  factory Period.fromJson(Map<String, Object?> json)
      => _$PeriodFromJson(json);
}