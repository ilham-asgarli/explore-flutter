// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'network_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

NetworkState _$NetworkStateFromJson(Map<String, dynamic> json) {
  return _NetworkState.fromJson(json);
}

/// @nodoc
mixin _$NetworkState {
  List<ConnectivityResult>? get data => throw _privateConstructorUsedError;
  String? get error => throw _privateConstructorUsedError;
  BlocState get state => throw _privateConstructorUsedError;

  /// Serializes this NetworkState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NetworkStateCopyWith<NetworkState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkStateCopyWith<$Res> {
  factory $NetworkStateCopyWith(
          NetworkState value, $Res Function(NetworkState) then) =
      _$NetworkStateCopyWithImpl<$Res, NetworkState>;
  @useResult
  $Res call({List<ConnectivityResult>? data, String? error, BlocState state});
}

/// @nodoc
class _$NetworkStateCopyWithImpl<$Res, $Val extends NetworkState>
    implements $NetworkStateCopyWith<$Res> {
  _$NetworkStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
    Object? state = null,
  }) {
    return _then(_value.copyWith(
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ConnectivityResult>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BlocState,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NetworkStateImplCopyWith<$Res>
    implements $NetworkStateCopyWith<$Res> {
  factory _$$NetworkStateImplCopyWith(
          _$NetworkStateImpl value, $Res Function(_$NetworkStateImpl) then) =
      __$$NetworkStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<ConnectivityResult>? data, String? error, BlocState state});
}

/// @nodoc
class __$$NetworkStateImplCopyWithImpl<$Res>
    extends _$NetworkStateCopyWithImpl<$Res, _$NetworkStateImpl>
    implements _$$NetworkStateImplCopyWith<$Res> {
  __$$NetworkStateImplCopyWithImpl(
      _$NetworkStateImpl _value, $Res Function(_$NetworkStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = freezed,
    Object? error = freezed,
    Object? state = null,
  }) {
    return _then(_$NetworkStateImpl(
      data: freezed == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<ConnectivityResult>?,
      error: freezed == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as String?,
      state: null == state
          ? _value.state
          : state // ignore: cast_nullable_to_non_nullable
              as BlocState,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NetworkStateImpl implements _NetworkState {
  const _$NetworkStateImpl(
      {final List<ConnectivityResult>? data,
      this.error,
      this.state = BlocState.initial})
      : _data = data;

  factory _$NetworkStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NetworkStateImplFromJson(json);

  final List<ConnectivityResult>? _data;
  @override
  List<ConnectivityResult>? get data {
    final value = _data;
    if (value == null) return null;
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final String? error;
  @override
  @JsonKey()
  final BlocState state;

  @override
  String toString() {
    return 'NetworkState(data: $data, error: $error, state: $state)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NetworkStateImpl &&
            const DeepCollectionEquality().equals(other._data, _data) &&
            (identical(other.error, error) || other.error == error) &&
            (identical(other.state, state) || other.state == state));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(_data), error, state);

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NetworkStateImplCopyWith<_$NetworkStateImpl> get copyWith =>
      __$$NetworkStateImplCopyWithImpl<_$NetworkStateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NetworkStateImplToJson(
      this,
    );
  }
}

abstract class _NetworkState implements NetworkState {
  const factory _NetworkState(
      {final List<ConnectivityResult>? data,
      final String? error,
      final BlocState state}) = _$NetworkStateImpl;

  factory _NetworkState.fromJson(Map<String, dynamic> json) =
      _$NetworkStateImpl.fromJson;

  @override
  List<ConnectivityResult>? get data;
  @override
  String? get error;
  @override
  BlocState get state;

  /// Create a copy of NetworkState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NetworkStateImplCopyWith<_$NetworkStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
