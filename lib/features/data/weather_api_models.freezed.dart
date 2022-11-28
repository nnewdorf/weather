// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_api_models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$GeocodeResponse {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  String get lat => throw _privateConstructorUsedError;
  set lat(String value) => throw _privateConstructorUsedError;
  String get lon => throw _privateConstructorUsedError;
  set lon(String value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $GeocodeResponseCopyWith<GeocodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $GeocodeResponseCopyWith<$Res> {
  factory $GeocodeResponseCopyWith(
          GeocodeResponse value, $Res Function(GeocodeResponse) then) =
      _$GeocodeResponseCopyWithImpl<$Res, GeocodeResponse>;
  @useResult
  $Res call({String name, String lat, String lon});
}

/// @nodoc
class _$GeocodeResponseCopyWithImpl<$Res, $Val extends GeocodeResponse>
    implements $GeocodeResponseCopyWith<$Res> {
  _$GeocodeResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_GeocodeResponseCopyWith<$Res>
    implements $GeocodeResponseCopyWith<$Res> {
  factory _$$_GeocodeResponseCopyWith(
          _$_GeocodeResponse value, $Res Function(_$_GeocodeResponse) then) =
      __$$_GeocodeResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String lat, String lon});
}

/// @nodoc
class __$$_GeocodeResponseCopyWithImpl<$Res>
    extends _$GeocodeResponseCopyWithImpl<$Res, _$_GeocodeResponse>
    implements _$$_GeocodeResponseCopyWith<$Res> {
  __$$_GeocodeResponseCopyWithImpl(
      _$_GeocodeResponse _value, $Res Function(_$_GeocodeResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? lat = null,
    Object? lon = null,
  }) {
    return _then(_$_GeocodeResponse(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      lat: null == lat
          ? _value.lat
          : lat // ignore: cast_nullable_to_non_nullable
              as String,
      lon: null == lon
          ? _value.lon
          : lon // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_GeocodeResponse implements _GeocodeResponse {
  _$_GeocodeResponse({this.name = '', this.lat = '', this.lon = ''});

  @override
  @JsonKey()
  String name;
  @override
  @JsonKey()
  String lat;
  @override
  @JsonKey()
  String lon;

  @override
  String toString() {
    return 'GeocodeResponse(name: $name, lat: $lat, lon: $lon)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_GeocodeResponseCopyWith<_$_GeocodeResponse> get copyWith =>
      __$$_GeocodeResponseCopyWithImpl<_$_GeocodeResponse>(this, _$identity);
}

abstract class _GeocodeResponse implements GeocodeResponse {
  factory _GeocodeResponse({String name, String lat, String lon}) =
      _$_GeocodeResponse;

  @override
  String get name;
  set name(String value);
  @override
  String get lat;
  set lat(String value);
  @override
  String get lon;
  set lon(String value);
  @override
  @JsonKey(ignore: true)
  _$$_GeocodeResponseCopyWith<_$_GeocodeResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ForecastResponse {
  List<Period> get periods => throw _privateConstructorUsedError;
  set periods(List<Period> value) => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ForecastResponseCopyWith<ForecastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ForecastResponseCopyWith<$Res> {
  factory $ForecastResponseCopyWith(
          ForecastResponse value, $Res Function(ForecastResponse) then) =
      _$ForecastResponseCopyWithImpl<$Res, ForecastResponse>;
  @useResult
  $Res call({List<Period> periods});
}

/// @nodoc
class _$ForecastResponseCopyWithImpl<$Res, $Val extends ForecastResponse>
    implements $ForecastResponseCopyWith<$Res> {
  _$ForecastResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periods = null,
  }) {
    return _then(_value.copyWith(
      periods: null == periods
          ? _value.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as List<Period>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ForecastResponseCopyWith<$Res>
    implements $ForecastResponseCopyWith<$Res> {
  factory _$$_ForecastResponseCopyWith(
          _$_ForecastResponse value, $Res Function(_$_ForecastResponse) then) =
      __$$_ForecastResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Period> periods});
}

/// @nodoc
class __$$_ForecastResponseCopyWithImpl<$Res>
    extends _$ForecastResponseCopyWithImpl<$Res, _$_ForecastResponse>
    implements _$$_ForecastResponseCopyWith<$Res> {
  __$$_ForecastResponseCopyWithImpl(
      _$_ForecastResponse _value, $Res Function(_$_ForecastResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periods = null,
  }) {
    return _then(_$_ForecastResponse(
      periods: null == periods
          ? _value.periods
          : periods // ignore: cast_nullable_to_non_nullable
              as List<Period>,
    ));
  }
}

/// @nodoc

class _$_ForecastResponse implements _ForecastResponse {
  _$_ForecastResponse({required this.periods});

  @override
  List<Period> periods;

  @override
  String toString() {
    return 'ForecastResponse(periods: $periods)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ForecastResponseCopyWith<_$_ForecastResponse> get copyWith =>
      __$$_ForecastResponseCopyWithImpl<_$_ForecastResponse>(this, _$identity);
}

abstract class _ForecastResponse implements ForecastResponse {
  factory _ForecastResponse({required List<Period> periods}) =
      _$_ForecastResponse;

  @override
  List<Period> get periods;
  set periods(List<Period> value);
  @override
  @JsonKey(ignore: true)
  _$$_ForecastResponseCopyWith<_$_ForecastResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

Period _$PeriodFromJson(Map<String, dynamic> json) {
  return _Period.fromJson(json);
}

/// @nodoc
mixin _$Period {
  String get name => throw _privateConstructorUsedError;
  set name(String value) => throw _privateConstructorUsedError;
  bool get isDaytime => throw _privateConstructorUsedError;
  set isDaytime(bool value) => throw _privateConstructorUsedError;
  int get temperature => throw _privateConstructorUsedError;
  set temperature(int value) => throw _privateConstructorUsedError;
  String get windSpeed => throw _privateConstructorUsedError;
  set windSpeed(String value) => throw _privateConstructorUsedError;
  String get shortForecast => throw _privateConstructorUsedError;
  set shortForecast(String value) => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PeriodCopyWith<Period> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PeriodCopyWith<$Res> {
  factory $PeriodCopyWith(Period value, $Res Function(Period) then) =
      _$PeriodCopyWithImpl<$Res, Period>;
  @useResult
  $Res call(
      {String name,
      bool isDaytime,
      int temperature,
      String windSpeed,
      String shortForecast});
}

/// @nodoc
class _$PeriodCopyWithImpl<$Res, $Val extends Period>
    implements $PeriodCopyWith<$Res> {
  _$PeriodCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isDaytime = null,
    Object? temperature = null,
    Object? windSpeed = null,
    Object? shortForecast = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDaytime: null == isDaytime
          ? _value.isDaytime
          : isDaytime // ignore: cast_nullable_to_non_nullable
              as bool,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as String,
      shortForecast: null == shortForecast
          ? _value.shortForecast
          : shortForecast // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_PeriodCopyWith<$Res> implements $PeriodCopyWith<$Res> {
  factory _$$_PeriodCopyWith(_$_Period value, $Res Function(_$_Period) then) =
      __$$_PeriodCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      bool isDaytime,
      int temperature,
      String windSpeed,
      String shortForecast});
}

/// @nodoc
class __$$_PeriodCopyWithImpl<$Res>
    extends _$PeriodCopyWithImpl<$Res, _$_Period>
    implements _$$_PeriodCopyWith<$Res> {
  __$$_PeriodCopyWithImpl(_$_Period _value, $Res Function(_$_Period) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? isDaytime = null,
    Object? temperature = null,
    Object? windSpeed = null,
    Object? shortForecast = null,
  }) {
    return _then(_$_Period(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      isDaytime: null == isDaytime
          ? _value.isDaytime
          : isDaytime // ignore: cast_nullable_to_non_nullable
              as bool,
      temperature: null == temperature
          ? _value.temperature
          : temperature // ignore: cast_nullable_to_non_nullable
              as int,
      windSpeed: null == windSpeed
          ? _value.windSpeed
          : windSpeed // ignore: cast_nullable_to_non_nullable
              as String,
      shortForecast: null == shortForecast
          ? _value.shortForecast
          : shortForecast // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Period implements _Period {
  _$_Period(
      {required this.name,
      required this.isDaytime,
      required this.temperature,
      required this.windSpeed,
      required this.shortForecast});

  factory _$_Period.fromJson(Map<String, dynamic> json) =>
      _$$_PeriodFromJson(json);

  @override
  String name;
  @override
  bool isDaytime;
  @override
  int temperature;
  @override
  String windSpeed;
  @override
  String shortForecast;

  @override
  String toString() {
    return 'Period(name: $name, isDaytime: $isDaytime, temperature: $temperature, windSpeed: $windSpeed, shortForecast: $shortForecast)';
  }

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_PeriodCopyWith<_$_Period> get copyWith =>
      __$$_PeriodCopyWithImpl<_$_Period>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PeriodToJson(
      this,
    );
  }
}

abstract class _Period implements Period {
  factory _Period(
      {required String name,
      required bool isDaytime,
      required int temperature,
      required String windSpeed,
      required String shortForecast}) = _$_Period;

  factory _Period.fromJson(Map<String, dynamic> json) = _$_Period.fromJson;

  @override
  String get name;
  set name(String value);
  @override
  bool get isDaytime;
  set isDaytime(bool value);
  @override
  int get temperature;
  set temperature(int value);
  @override
  String get windSpeed;
  set windSpeed(String value);
  @override
  String get shortForecast;
  set shortForecast(String value);
  @override
  @JsonKey(ignore: true)
  _$$_PeriodCopyWith<_$_Period> get copyWith =>
      throw _privateConstructorUsedError;
}
