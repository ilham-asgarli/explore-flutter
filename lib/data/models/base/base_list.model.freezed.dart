// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'base_list.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

BaseListModel<T> _$BaseListModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _BaseListModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$BaseListModel<T> {
  Status get status => throw _privateConstructorUsedError;
  String get message => throw _privateConstructorUsedError;
  List<dynamic>? get errors => throw _privateConstructorUsedError;
  List<T> get data => throw _privateConstructorUsedError;

  /// Serializes this BaseListModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of BaseListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BaseListModelCopyWith<T, BaseListModel<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BaseListModelCopyWith<T, $Res> {
  factory $BaseListModelCopyWith(
          BaseListModel<T> value, $Res Function(BaseListModel<T>) then) =
      _$BaseListModelCopyWithImpl<T, $Res, BaseListModel<T>>;
  @useResult
  $Res call(
      {Status status, String message, List<dynamic>? errors, List<T> data});
}

/// @nodoc
class _$BaseListModelCopyWithImpl<T, $Res, $Val extends BaseListModel<T>>
    implements $BaseListModelCopyWith<T, $Res> {
  _$BaseListModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BaseListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? errors = freezed,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: freezed == errors
          ? _value.errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$BaseListModelImplCopyWith<T, $Res>
    implements $BaseListModelCopyWith<T, $Res> {
  factory _$$BaseListModelImplCopyWith(_$BaseListModelImpl<T> value,
          $Res Function(_$BaseListModelImpl<T>) then) =
      __$$BaseListModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call(
      {Status status, String message, List<dynamic>? errors, List<T> data});
}

/// @nodoc
class __$$BaseListModelImplCopyWithImpl<T, $Res>
    extends _$BaseListModelCopyWithImpl<T, $Res, _$BaseListModelImpl<T>>
    implements _$$BaseListModelImplCopyWith<T, $Res> {
  __$$BaseListModelImplCopyWithImpl(_$BaseListModelImpl<T> _value,
      $Res Function(_$BaseListModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of BaseListModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? message = null,
    Object? errors = freezed,
    Object? data = null,
  }) {
    return _then(_$BaseListModelImpl<T>(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as Status,
      message: null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
      errors: freezed == errors
          ? _value._errors
          : errors // ignore: cast_nullable_to_non_nullable
              as List<dynamic>?,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
@DateTimeConverter()
class _$BaseListModelImpl<T> extends _BaseListModel<T> {
  const _$BaseListModelImpl(
      {required this.status,
      required this.message,
      required final List<dynamic>? errors,
      required final List<T> data})
      : _errors = errors,
        _data = data,
        super._();

  factory _$BaseListModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$BaseListModelImplFromJson(json, fromJsonT);

  @override
  final Status status;
  @override
  final String message;
  final List<dynamic>? _errors;
  @override
  List<dynamic>? get errors {
    final value = _errors;
    if (value == null) return null;
    if (_errors is EqualUnmodifiableListView) return _errors;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  final List<T> _data;
  @override
  List<T> get data {
    if (_data is EqualUnmodifiableListView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_data);
  }

  @override
  String toString() {
    return 'BaseListModel<$T>(status: $status, message: $message, errors: $errors, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BaseListModelImpl<T> &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.message, message) || other.message == message) &&
            const DeepCollectionEquality().equals(other._errors, _errors) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      status,
      message,
      const DeepCollectionEquality().hash(_errors),
      const DeepCollectionEquality().hash(_data));

  /// Create a copy of BaseListModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BaseListModelImplCopyWith<T, _$BaseListModelImpl<T>> get copyWith =>
      __$$BaseListModelImplCopyWithImpl<T, _$BaseListModelImpl<T>>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$BaseListModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _BaseListModel<T> extends BaseListModel<T> {
  const factory _BaseListModel(
      {required final Status status,
      required final String message,
      required final List<dynamic>? errors,
      required final List<T> data}) = _$BaseListModelImpl<T>;
  const _BaseListModel._() : super._();

  factory _BaseListModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$BaseListModelImpl<T>.fromJson;

  @override
  Status get status;
  @override
  String get message;
  @override
  List<dynamic>? get errors;
  @override
  List<T> get data;

  /// Create a copy of BaseListModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BaseListModelImplCopyWith<T, _$BaseListModelImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
