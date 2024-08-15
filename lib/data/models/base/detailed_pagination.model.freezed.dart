// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'detailed_pagination.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DetailedPaginationModel<T> _$DetailedPaginationModelFromJson<T>(
    Map<String, dynamic> json, T Function(Object?) fromJsonT) {
  return _DetailedPaginationModel<T>.fromJson(json, fromJsonT);
}

/// @nodoc
mixin _$DetailedPaginationModel<T> {
  bool get more => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get total => throw _privateConstructorUsedError;
  List<T> get collection => throw _privateConstructorUsedError;

  /// Serializes this DetailedPaginationModel to a JSON map.
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) =>
      throw _privateConstructorUsedError;

  /// Create a copy of DetailedPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DetailedPaginationModelCopyWith<T, DetailedPaginationModel<T>>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DetailedPaginationModelCopyWith<T, $Res> {
  factory $DetailedPaginationModelCopyWith(DetailedPaginationModel<T> value,
          $Res Function(DetailedPaginationModel<T>) then) =
      _$DetailedPaginationModelCopyWithImpl<T, $Res,
          DetailedPaginationModel<T>>;
  @useResult
  $Res call({bool more, int page, int pageSize, int total, List<T> collection});
}

/// @nodoc
class _$DetailedPaginationModelCopyWithImpl<T, $Res,
        $Val extends DetailedPaginationModel<T>>
    implements $DetailedPaginationModelCopyWith<T, $Res> {
  _$DetailedPaginationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DetailedPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? more = null,
    Object? page = null,
    Object? pageSize = null,
    Object? total = null,
    Object? collection = null,
  }) {
    return _then(_value.copyWith(
      more: null == more
          ? _value.more
          : more // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      collection: null == collection
          ? _value.collection
          : collection // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DetailedPaginationModelImplCopyWith<T, $Res>
    implements $DetailedPaginationModelCopyWith<T, $Res> {
  factory _$$DetailedPaginationModelImplCopyWith(
          _$DetailedPaginationModelImpl<T> value,
          $Res Function(_$DetailedPaginationModelImpl<T>) then) =
      __$$DetailedPaginationModelImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({bool more, int page, int pageSize, int total, List<T> collection});
}

/// @nodoc
class __$$DetailedPaginationModelImplCopyWithImpl<T, $Res>
    extends _$DetailedPaginationModelCopyWithImpl<T, $Res,
        _$DetailedPaginationModelImpl<T>>
    implements _$$DetailedPaginationModelImplCopyWith<T, $Res> {
  __$$DetailedPaginationModelImplCopyWithImpl(
      _$DetailedPaginationModelImpl<T> _value,
      $Res Function(_$DetailedPaginationModelImpl<T>) _then)
      : super(_value, _then);

  /// Create a copy of DetailedPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? more = null,
    Object? page = null,
    Object? pageSize = null,
    Object? total = null,
    Object? collection = null,
  }) {
    return _then(_$DetailedPaginationModelImpl<T>(
      more: null == more
          ? _value.more
          : more // ignore: cast_nullable_to_non_nullable
              as bool,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      pageSize: null == pageSize
          ? _value.pageSize
          : pageSize // ignore: cast_nullable_to_non_nullable
              as int,
      total: null == total
          ? _value.total
          : total // ignore: cast_nullable_to_non_nullable
              as int,
      collection: null == collection
          ? _value._collection
          : collection // ignore: cast_nullable_to_non_nullable
              as List<T>,
    ));
  }
}

/// @nodoc
@JsonSerializable(genericArgumentFactories: true)
@DateTimeConverter()
class _$DetailedPaginationModelImpl<T> extends _DetailedPaginationModel<T> {
  const _$DetailedPaginationModelImpl(
      {required this.more,
      required this.page,
      required this.pageSize,
      required this.total,
      required final List<T> collection})
      : _collection = collection,
        super._();

  factory _$DetailedPaginationModelImpl.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =>
      _$$DetailedPaginationModelImplFromJson(json, fromJsonT);

  @override
  final bool more;
  @override
  final int page;
  @override
  final int pageSize;
  @override
  final int total;
  final List<T> _collection;
  @override
  List<T> get collection {
    if (_collection is EqualUnmodifiableListView) return _collection;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_collection);
  }

  @override
  String toString() {
    return 'DetailedPaginationModel<$T>(more: $more, page: $page, pageSize: $pageSize, total: $total, collection: $collection)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DetailedPaginationModelImpl<T> &&
            (identical(other.more, more) || other.more == more) &&
            (identical(other.page, page) || other.page == page) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.total, total) || other.total == total) &&
            const DeepCollectionEquality()
                .equals(other._collection, _collection));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, more, page, pageSize, total,
      const DeepCollectionEquality().hash(_collection));

  /// Create a copy of DetailedPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DetailedPaginationModelImplCopyWith<T, _$DetailedPaginationModelImpl<T>>
      get copyWith => __$$DetailedPaginationModelImplCopyWithImpl<T,
          _$DetailedPaginationModelImpl<T>>(this, _$identity);

  @override
  Map<String, dynamic> toJson(Object? Function(T) toJsonT) {
    return _$$DetailedPaginationModelImplToJson<T>(this, toJsonT);
  }
}

abstract class _DetailedPaginationModel<T> extends DetailedPaginationModel<T> {
  const factory _DetailedPaginationModel(
      {required final bool more,
      required final int page,
      required final int pageSize,
      required final int total,
      required final List<T> collection}) = _$DetailedPaginationModelImpl<T>;
  const _DetailedPaginationModel._() : super._();

  factory _DetailedPaginationModel.fromJson(
          Map<String, dynamic> json, T Function(Object?) fromJsonT) =
      _$DetailedPaginationModelImpl<T>.fromJson;

  @override
  bool get more;
  @override
  int get page;
  @override
  int get pageSize;
  @override
  int get total;
  @override
  List<T> get collection;

  /// Create a copy of DetailedPaginationModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DetailedPaginationModelImplCopyWith<T, _$DetailedPaginationModelImpl<T>>
      get copyWith => throw _privateConstructorUsedError;
}
