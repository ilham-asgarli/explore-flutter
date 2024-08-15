// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseModel<T> _$BaseModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _BaseModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseModel<T> {
  Status get status => throw _privateConstructorUsedError;
  String? get message => throw _privateConstructorUsedError;
  List<dynamic>? get errors => throw _privateConstructorUsedError;
  T? get data => throw _privateConstructorUsedError;

  /// Serializes this BaseModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseModelCopyWith<T, BaseModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseModelCopyWith<T, $Res> {
  factory $BaseModelCopyWith(
          BaseModel<T> value, $Res Function(BaseModel<T>) then) =
      _$BaseModelCopyWithImpl<T, $Res, BaseModel<T>>;
  @useResult
  $Res call({Status status, String? message, List<dynamic>? errors, T? data});
}

/// @nodoc
class _$BaseModelCopyWithImpl<T, $Res, $Val extends BaseModel<T>>
    implements $BaseModelCopyWith<T, $Res> {
  _$BaseModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? errors = freezed,
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseModelImplCopyWith<T, $Res>
    implements $BaseModelCopyWith<T, $Res> {
  factory _$$BaseModelImplCopyWith(
          _$BaseModelImpl<T> value, $Res Function(_$BaseModelImpl<T>) then) =
      __$$BaseModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({Status status, String? message, List<dynamic>? errors, T? data});
}

/// @nodoc
class __$$BaseModelImplCopyWithImpl<T, $Res>
    extends _$BaseModelCopyWithImpl<T, $Res, _$BaseModelImpl<T>>
    implements _$$BaseModelImplCopyWith<T, $Res> {
  __$$BaseModelImplCopyWithImpl(
      _$BaseModelImpl<T> _value, $Res Function(_$BaseModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = freezed,
    Object? errors = freezed,
    Object? data = freezed,
  }) {
    return _then(_$BaseModelImpl<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      message: freezed == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      data: freezed == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as T?,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
@DateTimeConverter()
class _$BaseModelImpl<T> extends _BaseModel<T> {
  const _$BaseModelImpl(
      {required this.status,
      required this.message,
      required final List<dynamic>? errors,
      required this.data})
      : _errors = errors,
        super._();

  factory _$BaseModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BaseModelImplFromJson(json, fromJsonT);

  @override
  final Status status;
  @override
  final String? message;
  final List<dynamic>? _errors;
  @override
  List<dynamic>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  final T? data;

  @override
  String toString() {
    return 'BaseModel<$T>(status: $status, message: $message, errors: $errors, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseModelImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      const DeepCollectionEquality().hash(_errors),
      const DeepCollectionEquality().hash(data));

  /// Create a copy of BaseModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseModelImplCopyWith<T, _$BaseModelImpl<T>> get copyWith =>
      __$$BaseModelImplCopyWithImpl<T, _$BaseModelImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BaseModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _BaseModel<T> extends BaseModel<T> {
  const factory _BaseModel(
      {required final Status status,
      required final String? message,
      required final List<dynamic>? errors,
      required final T? data}) = _$BaseModelImpl<T>;
  const _BaseModel._() : super._();

  factory _BaseModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BaseModelImpl<T>.fromJson;

  @override
  Status get status;
  @override
  String? get message;
  @override
  List<dynamic>? get errors;
  @override
  T? get data;

  /// Create a copy of BaseModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseModelImplCopyWith<T, _$BaseModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
