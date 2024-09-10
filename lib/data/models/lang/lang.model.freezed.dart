// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'lang.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LangModel _$LangModelFromJson(Map<String, dynamic> json) {
  return _LangModel.fromJson(json);
}

/// @nodoc
mixin _$LangModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get country => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;
  String get flag => throw _privateConstructorUsedError;

  /// Serializes this LangModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LangModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LangModelCopyWith<LangModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LangModelCopyWith<$Res> {
  factory $LangModelCopyWith(LangModel value, $Res Function(LangModel) then) =
      _$LangModelCopyWithImpl<$Res, LangModel>;
  @useResult
  $Res call({int id, String name, String country, String code, String flag});
}

/// @nodoc
class _$LangModelCopyWithImpl<$Res, $Val extends LangModel>
    implements $LangModelCopyWith<$Res> {
  _$LangModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LangModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? code = null,
    Object? flag = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LangModelImplCopyWith<$Res>
    implements $LangModelCopyWith<$Res> {
  factory _$$LangModelImplCopyWith(
          _$LangModelImpl value, $Res Function(_$LangModelImpl) then) =
      __$$LangModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String name, String country, String code, String flag});
}

/// @nodoc
class __$$LangModelImplCopyWithImpl<$Res>
    extends _$LangModelCopyWithImpl<$Res, _$LangModelImpl>
    implements _$$LangModelImplCopyWith<$Res> {
  __$$LangModelImplCopyWithImpl(
      _$LangModelImpl _value, $Res Function(_$LangModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of LangModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? country = null,
    Object? code = null,
    Object? flag = null,
  }) {
    return _then(_$LangModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      country: null == country
          ? _value.country
          : country // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LangModelImpl extends _LangModel {
  const _$LangModelImpl(
      {required this.id,
      required this.name,
      required this.country,
      required this.code,
      required this.flag})
      : super._();

  factory _$LangModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LangModelImplFromJson(json);

  @override
  final int id;
  @override
  final String name;
  @override
  final String country;
  @override
  final String code;
  @override
  final String flag;

  @override
  String toString() {
    return 'LangModel(id: $id, name: $name, country: $country, code: $code, flag: $flag)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LangModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.country, country) || other.country == country) &&
            (identical(other.code, code) || other.code == code) &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, name, country, code, flag);

  /// Create a copy of LangModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LangModelImplCopyWith<_$LangModelImpl> get copyWith =>
      __$$LangModelImplCopyWithImpl<_$LangModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LangModelImplToJson(
      this,
    );
  }
}

abstract class _LangModel extends LangModel {
  const factory _LangModel(
      {required final int id,
      required final String name,
      required final String country,
      required final String code,
      required final String flag}) = _$LangModelImpl;
  const _LangModel._() : super._();

  factory _LangModel.fromJson(Map<String, dynamic> json) =
      _$LangModelImpl.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  String get country;
  @override
  String get code;
  @override
  String get flag;

  /// Create a copy of LangModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LangModelImplCopyWith<_$LangModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
