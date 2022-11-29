import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:weather/features/data/weather_api_models.dart';

part 'weather_state.freezed.dart';

@freezed
abstract class WeatherState  with _$WeatherState {
  const WeatherState._();

  const factory WeatherState.data({required List<Period> periods}) = _WeatherStateData;
  const factory WeatherState.noLocation() = _WeatherStateNoLocation;
  const factory WeatherState.loading() = _WeatherStateLoading;
  const factory WeatherState.error({required String message}) = _WeatherStateError;
}