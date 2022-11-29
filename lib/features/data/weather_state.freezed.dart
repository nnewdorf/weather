// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'weather_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$WeatherState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Period> periods) data,
    required TResult Function() noLocation,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Period> periods)? data,
    TResult? Function()? noLocation,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Period> periods)? data,
    TResult Function()? noLocation,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateData value) data,
    required TResult Function(_WeatherStateNoLocation value) noLocation,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateError value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherStateData value)? data,
    TResult? Function(_WeatherStateNoLocation value)? noLocation,
    TResult? Function(_WeatherStateLoading value)? loading,
    TResult? Function(_WeatherStateError value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateData value)? data,
    TResult Function(_WeatherStateNoLocation value)? noLocation,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WeatherStateCopyWith<$Res> {
  factory $WeatherStateCopyWith(
          WeatherState value, $Res Function(WeatherState) then) =
      _$WeatherStateCopyWithImpl<$Res, WeatherState>;
}

/// @nodoc
class _$WeatherStateCopyWithImpl<$Res, $Val extends WeatherState>
    implements $WeatherStateCopyWith<$Res> {
  _$WeatherStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_WeatherStateDataCopyWith<$Res> {
  factory _$$_WeatherStateDataCopyWith(
          _$_WeatherStateData value, $Res Function(_$_WeatherStateData) then) =
      __$$_WeatherStateDataCopyWithImpl<$Res>;
  @useResult
  $Res call({List<Period> periods});
}

/// @nodoc
class __$$_WeatherStateDataCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherStateData>
    implements _$$_WeatherStateDataCopyWith<$Res> {
  __$$_WeatherStateDataCopyWithImpl(
      _$_WeatherStateData _value, $Res Function(_$_WeatherStateData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? periods = null,
  }) {
    return _then(_$_WeatherStateData(
      periods: null == periods
          ? _value._periods
          : periods // ignore: cast_nullable_to_non_nullable
              as List<Period>,
    ));
  }
}

/// @nodoc

class _$_WeatherStateData extends _WeatherStateData {
  const _$_WeatherStateData({required final List<Period> periods})
      : _periods = periods,
        super._();

  final List<Period> _periods;
  @override
  List<Period> get periods {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_periods);
  }

  @override
  String toString() {
    return 'WeatherState.data(periods: $periods)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherStateData &&
            const DeepCollectionEquality().equals(other._periods, _periods));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_periods));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherStateDataCopyWith<_$_WeatherStateData> get copyWith =>
      __$$_WeatherStateDataCopyWithImpl<_$_WeatherStateData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Period> periods) data,
    required TResult Function() noLocation,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return data(periods);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Period> periods)? data,
    TResult? Function()? noLocation,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return data?.call(periods);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Period> periods)? data,
    TResult Function()? noLocation,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(periods);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateData value) data,
    required TResult Function(_WeatherStateNoLocation value) noLocation,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateError value) error,
  }) {
    return data(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherStateData value)? data,
    TResult? Function(_WeatherStateNoLocation value)? noLocation,
    TResult? Function(_WeatherStateLoading value)? loading,
    TResult? Function(_WeatherStateError value)? error,
  }) {
    return data?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateData value)? data,
    TResult Function(_WeatherStateNoLocation value)? noLocation,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) {
    if (data != null) {
      return data(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateData extends WeatherState {
  const factory _WeatherStateData({required final List<Period> periods}) =
      _$_WeatherStateData;
  const _WeatherStateData._() : super._();

  List<Period> get periods;
  @JsonKey(ignore: true)
  _$$_WeatherStateDataCopyWith<_$_WeatherStateData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WeatherStateNoLocationCopyWith<$Res> {
  factory _$$_WeatherStateNoLocationCopyWith(_$_WeatherStateNoLocation value,
          $Res Function(_$_WeatherStateNoLocation) then) =
      __$$_WeatherStateNoLocationCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WeatherStateNoLocationCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherStateNoLocation>
    implements _$$_WeatherStateNoLocationCopyWith<$Res> {
  __$$_WeatherStateNoLocationCopyWithImpl(_$_WeatherStateNoLocation _value,
      $Res Function(_$_WeatherStateNoLocation) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WeatherStateNoLocation extends _WeatherStateNoLocation {
  const _$_WeatherStateNoLocation() : super._();

  @override
  String toString() {
    return 'WeatherState.noLocation()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherStateNoLocation);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Period> periods) data,
    required TResult Function() noLocation,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return noLocation();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Period> periods)? data,
    TResult? Function()? noLocation,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return noLocation?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Period> periods)? data,
    TResult Function()? noLocation,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (noLocation != null) {
      return noLocation();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateData value) data,
    required TResult Function(_WeatherStateNoLocation value) noLocation,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateError value) error,
  }) {
    return noLocation(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherStateData value)? data,
    TResult? Function(_WeatherStateNoLocation value)? noLocation,
    TResult? Function(_WeatherStateLoading value)? loading,
    TResult? Function(_WeatherStateError value)? error,
  }) {
    return noLocation?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateData value)? data,
    TResult Function(_WeatherStateNoLocation value)? noLocation,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) {
    if (noLocation != null) {
      return noLocation(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateNoLocation extends WeatherState {
  const factory _WeatherStateNoLocation() = _$_WeatherStateNoLocation;
  const _WeatherStateNoLocation._() : super._();
}

/// @nodoc
abstract class _$$_WeatherStateLoadingCopyWith<$Res> {
  factory _$$_WeatherStateLoadingCopyWith(_$_WeatherStateLoading value,
          $Res Function(_$_WeatherStateLoading) then) =
      __$$_WeatherStateLoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_WeatherStateLoadingCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherStateLoading>
    implements _$$_WeatherStateLoadingCopyWith<$Res> {
  __$$_WeatherStateLoadingCopyWithImpl(_$_WeatherStateLoading _value,
      $Res Function(_$_WeatherStateLoading) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_WeatherStateLoading extends _WeatherStateLoading {
  const _$_WeatherStateLoading() : super._();

  @override
  String toString() {
    return 'WeatherState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_WeatherStateLoading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Period> periods) data,
    required TResult Function() noLocation,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Period> periods)? data,
    TResult? Function()? noLocation,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Period> periods)? data,
    TResult Function()? noLocation,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateData value) data,
    required TResult Function(_WeatherStateNoLocation value) noLocation,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateError value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherStateData value)? data,
    TResult? Function(_WeatherStateNoLocation value)? noLocation,
    TResult? Function(_WeatherStateLoading value)? loading,
    TResult? Function(_WeatherStateError value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateData value)? data,
    TResult Function(_WeatherStateNoLocation value)? noLocation,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateLoading extends WeatherState {
  const factory _WeatherStateLoading() = _$_WeatherStateLoading;
  const _WeatherStateLoading._() : super._();
}

/// @nodoc
abstract class _$$_WeatherStateErrorCopyWith<$Res> {
  factory _$$_WeatherStateErrorCopyWith(_$_WeatherStateError value,
          $Res Function(_$_WeatherStateError) then) =
      __$$_WeatherStateErrorCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$_WeatherStateErrorCopyWithImpl<$Res>
    extends _$WeatherStateCopyWithImpl<$Res, _$_WeatherStateError>
    implements _$$_WeatherStateErrorCopyWith<$Res> {
  __$$_WeatherStateErrorCopyWithImpl(
      _$_WeatherStateError _value, $Res Function(_$_WeatherStateError) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$_WeatherStateError(
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_WeatherStateError extends _WeatherStateError {
  const _$_WeatherStateError({required this.message}) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'WeatherState.error(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WeatherStateError &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WeatherStateErrorCopyWith<_$_WeatherStateError> get copyWith =>
      __$$_WeatherStateErrorCopyWithImpl<_$_WeatherStateError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(List<Period> periods) data,
    required TResult Function() noLocation,
    required TResult Function() loading,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(List<Period> periods)? data,
    TResult? Function()? noLocation,
    TResult? Function()? loading,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(List<Period> periods)? data,
    TResult Function()? noLocation,
    TResult Function()? loading,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_WeatherStateData value) data,
    required TResult Function(_WeatherStateNoLocation value) noLocation,
    required TResult Function(_WeatherStateLoading value) loading,
    required TResult Function(_WeatherStateError value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_WeatherStateData value)? data,
    TResult? Function(_WeatherStateNoLocation value)? noLocation,
    TResult? Function(_WeatherStateLoading value)? loading,
    TResult? Function(_WeatherStateError value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_WeatherStateData value)? data,
    TResult Function(_WeatherStateNoLocation value)? noLocation,
    TResult Function(_WeatherStateLoading value)? loading,
    TResult Function(_WeatherStateError value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _WeatherStateError extends WeatherState {
  const factory _WeatherStateError({required final String message}) =
      _$_WeatherStateError;
  const _WeatherStateError._() : super._();

  String get message;
  @JsonKey(ignore: true)
  _$$_WeatherStateErrorCopyWith<_$_WeatherStateError> get copyWith =>
      throw _privateConstructorUsedError;
}
