// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'source.model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

SourceModel _$SourceModelFromJson(Map<String, dynamic> json) {
  return _SourceModel.fromJson(json);
}

/// @nodoc
mixin _$SourceModel {
  Map<String, List<RssFeed>> get rssFeeds => throw _privateConstructorUsedError;

  /// Serializes this SourceModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of SourceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SourceModelCopyWith<SourceModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SourceModelCopyWith<$Res> {
  factory $SourceModelCopyWith(
          SourceModel value, $Res Function(SourceModel) then) =
      _$SourceModelCopyWithImpl<$Res, SourceModel>;
  @useResult
  $Res call({Map<String, List<RssFeed>> rssFeeds});
}

/// @nodoc
class _$SourceModelCopyWithImpl<$Res, $Val extends SourceModel>
    implements $SourceModelCopyWith<$Res> {
  _$SourceModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SourceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rssFeeds = null,
  }) {
    return _then(_value.copyWith(
      rssFeeds: null == rssFeeds
          ? _value.rssFeeds
          : rssFeeds // ignore: cast_nullable_to_non_nullable
              as Map<String, List<RssFeed>>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$SourceModelImplCopyWith<$Res>
    implements $SourceModelCopyWith<$Res> {
  factory _$$SourceModelImplCopyWith(
          _$SourceModelImpl value, $Res Function(_$SourceModelImpl) then) =
      __$$SourceModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Map<String, List<RssFeed>> rssFeeds});
}

/// @nodoc
class __$$SourceModelImplCopyWithImpl<$Res>
    extends _$SourceModelCopyWithImpl<$Res, _$SourceModelImpl>
    implements _$$SourceModelImplCopyWith<$Res> {
  __$$SourceModelImplCopyWithImpl(
      _$SourceModelImpl _value, $Res Function(_$SourceModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of SourceModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rssFeeds = null,
  }) {
    return _then(_$SourceModelImpl(
      rssFeeds: null == rssFeeds
          ? _value._rssFeeds
          : rssFeeds // ignore: cast_nullable_to_non_nullable
              as Map<String, List<RssFeed>>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SourceModelImpl implements _SourceModel {
  const _$SourceModelImpl({required final Map<String, List<RssFeed>> rssFeeds})
      : _rssFeeds = rssFeeds;

  factory _$SourceModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$SourceModelImplFromJson(json);

  final Map<String, List<RssFeed>> _rssFeeds;
  @override
  Map<String, List<RssFeed>> get rssFeeds {
    if (_rssFeeds is EqualUnmodifiableMapView) return _rssFeeds;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_rssFeeds);
  }

  @override
  String toString() {
    return 'SourceModel(rssFeeds: $rssFeeds)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SourceModelImpl &&
            const DeepCollectionEquality().equals(other._rssFeeds, _rssFeeds));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_rssFeeds));

  /// Create a copy of SourceModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SourceModelImplCopyWith<_$SourceModelImpl> get copyWith =>
      __$$SourceModelImplCopyWithImpl<_$SourceModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SourceModelImplToJson(
      this,
    );
  }
}

abstract class _SourceModel implements SourceModel {
  const factory _SourceModel(
      {required final Map<String, List<RssFeed>> rssFeeds}) = _$SourceModelImpl;

  factory _SourceModel.fromJson(Map<String, dynamic> json) =
      _$SourceModelImpl.fromJson;

  @override
  Map<String, List<RssFeed>> get rssFeeds;

  /// Create a copy of SourceModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SourceModelImplCopyWith<_$SourceModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

RssFeed _$RssFeedFromJson(Map<String, dynamic> json) {
  return _RssFeed.fromJson(json);
}

/// @nodoc
mixin _$RssFeed {
  int get id => throw _privateConstructorUsedError;
  int get channelId => throw _privateConstructorUsedError;
  int get categoryId => throw _privateConstructorUsedError;
  int get languageId => throw _privateConstructorUsedError;
  String get url => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;
  Category get category => throw _privateConstructorUsedError;
  Channel get channel => throw _privateConstructorUsedError;

  /// Serializes this RssFeed to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of RssFeed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $RssFeedCopyWith<RssFeed> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RssFeedCopyWith<$Res> {
  factory $RssFeedCopyWith(RssFeed value, $Res Function(RssFeed) then) =
      _$RssFeedCopyWithImpl<$Res, RssFeed>;
  @useResult
  $Res call(
      {int id,
      int channelId,
      int categoryId,
      int languageId,
      String url,
      DateTime createdAt,
      DateTime updatedAt,
      Category category,
      Channel channel});

  $CategoryCopyWith<$Res> get category;
  $ChannelCopyWith<$Res> get channel;
}

/// @nodoc
class _$RssFeedCopyWithImpl<$Res, $Val extends RssFeed>
    implements $RssFeedCopyWith<$Res> {
  _$RssFeedCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of RssFeed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? channelId = null,
    Object? categoryId = null,
    Object? languageId = null,
    Object? url = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? category = null,
    Object? channel = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      languageId: null == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel,
    ) as $Val);
  }

  /// Create a copy of RssFeed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res> get category {
    return $CategoryCopyWith<$Res>(_value.category, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }

  /// Create a copy of RssFeed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ChannelCopyWith<$Res> get channel {
    return $ChannelCopyWith<$Res>(_value.channel, (value) {
      return _then(_value.copyWith(channel: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$RssFeedImplCopyWith<$Res> implements $RssFeedCopyWith<$Res> {
  factory _$$RssFeedImplCopyWith(
          _$RssFeedImpl value, $Res Function(_$RssFeedImpl) then) =
      __$$RssFeedImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int channelId,
      int categoryId,
      int languageId,
      String url,
      DateTime createdAt,
      DateTime updatedAt,
      Category category,
      Channel channel});

  @override
  $CategoryCopyWith<$Res> get category;
  @override
  $ChannelCopyWith<$Res> get channel;
}

/// @nodoc
class __$$RssFeedImplCopyWithImpl<$Res>
    extends _$RssFeedCopyWithImpl<$Res, _$RssFeedImpl>
    implements _$$RssFeedImplCopyWith<$Res> {
  __$$RssFeedImplCopyWithImpl(
      _$RssFeedImpl _value, $Res Function(_$RssFeedImpl) _then)
      : super(_value, _then);

  /// Create a copy of RssFeed
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? channelId = null,
    Object? categoryId = null,
    Object? languageId = null,
    Object? url = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? category = null,
    Object? channel = null,
  }) {
    return _then(_$RssFeedImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      channelId: null == channelId
          ? _value.channelId
          : channelId // ignore: cast_nullable_to_non_nullable
              as int,
      categoryId: null == categoryId
          ? _value.categoryId
          : categoryId // ignore: cast_nullable_to_non_nullable
              as int,
      languageId: null == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int,
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category,
      channel: null == channel
          ? _value.channel
          : channel // ignore: cast_nullable_to_non_nullable
              as Channel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$RssFeedImpl implements _RssFeed {
  const _$RssFeedImpl(
      {required this.id,
      required this.channelId,
      required this.categoryId,
      required this.languageId,
      required this.url,
      required this.createdAt,
      required this.updatedAt,
      required this.category,
      required this.channel});

  factory _$RssFeedImpl.fromJson(Map<String, dynamic> json) =>
      _$$RssFeedImplFromJson(json);

  @override
  final int id;
  @override
  final int channelId;
  @override
  final int categoryId;
  @override
  final int languageId;
  @override
  final String url;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final Category category;
  @override
  final Channel channel;

  @override
  String toString() {
    return 'RssFeed(id: $id, channelId: $channelId, categoryId: $categoryId, languageId: $languageId, url: $url, createdAt: $createdAt, updatedAt: $updatedAt, category: $category, channel: $channel)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RssFeedImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.channelId, channelId) ||
                other.channelId == channelId) &&
            (identical(other.categoryId, categoryId) ||
                other.categoryId == categoryId) &&
            (identical(other.languageId, languageId) ||
                other.languageId == languageId) &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.channel, channel) || other.channel == channel));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, id, channelId, categoryId,
      languageId, url, createdAt, updatedAt, category, channel);

  /// Create a copy of RssFeed
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RssFeedImplCopyWith<_$RssFeedImpl> get copyWith =>
      __$$RssFeedImplCopyWithImpl<_$RssFeedImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$RssFeedImplToJson(
      this,
    );
  }
}

abstract class _RssFeed implements RssFeed {
  const factory _RssFeed(
      {required final int id,
      required final int channelId,
      required final int categoryId,
      required final int languageId,
      required final String url,
      required final DateTime createdAt,
      required final DateTime updatedAt,
      required final Category category,
      required final Channel channel}) = _$RssFeedImpl;

  factory _RssFeed.fromJson(Map<String, dynamic> json) = _$RssFeedImpl.fromJson;

  @override
  int get id;
  @override
  int get channelId;
  @override
  int get categoryId;
  @override
  int get languageId;
  @override
  String get url;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;
  @override
  Category get category;
  @override
  Channel get channel;

  /// Create a copy of RssFeed
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RssFeedImplCopyWith<_$RssFeedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  int get id => throw _privateConstructorUsedError;
  Name get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Category to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call(
      {int id, Name name, String icon, DateTime createdAt, DateTime updatedAt});

  $NameCopyWith<$Res> get name;
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NameCopyWith<$Res> get name {
    return $NameCopyWith<$Res>(_value.name, (value) {
      return _then(_value.copyWith(name: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CategoryImplCopyWith<$Res>
    implements $CategoryCopyWith<$Res> {
  factory _$$CategoryImplCopyWith(
          _$CategoryImpl value, $Res Function(_$CategoryImpl) then) =
      __$$CategoryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id, Name name, String icon, DateTime createdAt, DateTime updatedAt});

  @override
  $NameCopyWith<$Res> get name;
}

/// @nodoc
class __$$CategoryImplCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$CategoryImpl>
    implements _$$CategoryImplCopyWith<$Res> {
  __$$CategoryImplCopyWithImpl(
      _$CategoryImpl _value, $Res Function(_$CategoryImpl) _then)
      : super(_value, _then);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? name = null,
    Object? icon = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$CategoryImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as Name,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CategoryImpl implements _Category {
  const _$CategoryImpl(
      {required this.id,
      required this.name,
      required this.icon,
      required this.createdAt,
      required this.updatedAt});

  factory _$CategoryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CategoryImplFromJson(json);

  @override
  final int id;
  @override
  final Name name;
  @override
  final String icon;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Category(id: $id, name: $name, icon: $icon, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CategoryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, name, icon, createdAt, updatedAt);

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      __$$CategoryImplCopyWithImpl<_$CategoryImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CategoryImplToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  const factory _Category(
      {required final int id,
      required final Name name,
      required final String icon,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$CategoryImpl;

  factory _Category.fromJson(Map<String, dynamic> json) =
      _$CategoryImpl.fromJson;

  @override
  int get id;
  @override
  Name get name;
  @override
  String get icon;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Category
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CategoryImplCopyWith<_$CategoryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Name _$NameFromJson(Map<String, dynamic> json) {
  return _Name.fromJson(json);
}

/// @nodoc
mixin _$Name {
  String get tr => throw _privateConstructorUsedError;
  String get ar => throw _privateConstructorUsedError;
  String get en => throw _privateConstructorUsedError;

  /// Serializes this Name to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Name
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $NameCopyWith<Name> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NameCopyWith<$Res> {
  factory $NameCopyWith(Name value, $Res Function(Name) then) =
      _$NameCopyWithImpl<$Res, Name>;
  @useResult
  $Res call({String tr, String ar, String en});
}

/// @nodoc
class _$NameCopyWithImpl<$Res, $Val extends Name>
    implements $NameCopyWith<$Res> {
  _$NameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Name
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tr = null,
    Object? ar = null,
    Object? en = null,
  }) {
    return _then(_value.copyWith(
      tr: null == tr
          ? _value.tr
          : tr // ignore: cast_nullable_to_non_nullable
              as String,
      ar: null == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NameImplCopyWith<$Res> implements $NameCopyWith<$Res> {
  factory _$$NameImplCopyWith(
          _$NameImpl value, $Res Function(_$NameImpl) then) =
      __$$NameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String tr, String ar, String en});
}

/// @nodoc
class __$$NameImplCopyWithImpl<$Res>
    extends _$NameCopyWithImpl<$Res, _$NameImpl>
    implements _$$NameImplCopyWith<$Res> {
  __$$NameImplCopyWithImpl(_$NameImpl _value, $Res Function(_$NameImpl) _then)
      : super(_value, _then);

  /// Create a copy of Name
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tr = null,
    Object? ar = null,
    Object? en = null,
  }) {
    return _then(_$NameImpl(
      tr: null == tr
          ? _value.tr
          : tr // ignore: cast_nullable_to_non_nullable
              as String,
      ar: null == ar
          ? _value.ar
          : ar // ignore: cast_nullable_to_non_nullable
              as String,
      en: null == en
          ? _value.en
          : en // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NameImpl implements _Name {
  const _$NameImpl({required this.tr, required this.ar, required this.en});

  factory _$NameImpl.fromJson(Map<String, dynamic> json) =>
      _$$NameImplFromJson(json);

  @override
  final String tr;
  @override
  final String ar;
  @override
  final String en;

  @override
  String toString() {
    return 'Name(tr: $tr, ar: $ar, en: $en)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NameImpl &&
            (identical(other.tr, tr) || other.tr == tr) &&
            (identical(other.ar, ar) || other.ar == ar) &&
            (identical(other.en, en) || other.en == en));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tr, ar, en);

  /// Create a copy of Name
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      __$$NameImplCopyWithImpl<_$NameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NameImplToJson(
      this,
    );
  }
}

abstract class _Name implements Name {
  const factory _Name(
      {required final String tr,
      required final String ar,
      required final String en}) = _$NameImpl;

  factory _Name.fromJson(Map<String, dynamic> json) = _$NameImpl.fromJson;

  @override
  String get tr;
  @override
  String get ar;
  @override
  String get en;

  /// Create a copy of Name
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$NameImplCopyWith<_$NameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Channel _$ChannelFromJson(Map<String, dynamic> json) {
  return _Channel.fromJson(json);
}

/// @nodoc
mixin _$Channel {
  int get id => throw _privateConstructorUsedError;
  int get countryId => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get icon => throw _privateConstructorUsedError;
  DateTime get createdAt => throw _privateConstructorUsedError;
  DateTime get updatedAt => throw _privateConstructorUsedError;

  /// Serializes this Channel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChannelCopyWith<Channel> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChannelCopyWith<$Res> {
  factory $ChannelCopyWith(Channel value, $Res Function(Channel) then) =
      _$ChannelCopyWithImpl<$Res, Channel>;
  @useResult
  $Res call(
      {int id,
      int countryId,
      String name,
      String icon,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class _$ChannelCopyWithImpl<$Res, $Val extends Channel>
    implements $ChannelCopyWith<$Res> {
  _$ChannelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryId = null,
    Object? name = null,
    Object? icon = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ChannelImplCopyWith<$Res> implements $ChannelCopyWith<$Res> {
  factory _$$ChannelImplCopyWith(
          _$ChannelImpl value, $Res Function(_$ChannelImpl) then) =
      __$$ChannelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      int countryId,
      String name,
      String icon,
      DateTime createdAt,
      DateTime updatedAt});
}

/// @nodoc
class __$$ChannelImplCopyWithImpl<$Res>
    extends _$ChannelCopyWithImpl<$Res, _$ChannelImpl>
    implements _$$ChannelImplCopyWith<$Res> {
  __$$ChannelImplCopyWithImpl(
      _$ChannelImpl _value, $Res Function(_$ChannelImpl) _then)
      : super(_value, _then);

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? countryId = null,
    Object? name = null,
    Object? icon = null,
    Object? createdAt = null,
    Object? updatedAt = null,
  }) {
    return _then(_$ChannelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      countryId: null == countryId
          ? _value.countryId
          : countryId // ignore: cast_nullable_to_non_nullable
              as int,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$ChannelImpl implements _Channel {
  const _$ChannelImpl(
      {required this.id,
      required this.countryId,
      required this.name,
      required this.icon,
      required this.createdAt,
      required this.updatedAt});

  factory _$ChannelImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChannelImplFromJson(json);

  @override
  final int id;
  @override
  final int countryId;
  @override
  final String name;
  @override
  final String icon;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;

  @override
  String toString() {
    return 'Channel(id: $id, countryId: $countryId, name: $name, icon: $icon, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChannelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.countryId, countryId) ||
                other.countryId == countryId) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, countryId, name, icon, createdAt, updatedAt);

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      __$$ChannelImplCopyWithImpl<_$ChannelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$ChannelImplToJson(
      this,
    );
  }
}

abstract class _Channel implements Channel {
  const factory _Channel(
      {required final int id,
      required final int countryId,
      required final String name,
      required final String icon,
      required final DateTime createdAt,
      required final DateTime updatedAt}) = _$ChannelImpl;

  factory _Channel.fromJson(Map<String, dynamic> json) = _$ChannelImpl.fromJson;

  @override
  int get id;
  @override
  int get countryId;
  @override
  String get name;
  @override
  String get icon;
  @override
  DateTime get createdAt;
  @override
  DateTime get updatedAt;

  /// Create a copy of Channel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChannelImplCopyWith<_$ChannelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
