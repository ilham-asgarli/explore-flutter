// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceModelImpl _$$SourceModelImplFromJson(Map<String, dynamic> json) =>
    _$SourceModelImpl(
      rssFeeds: (json['rssFeeds'] as Map<String, dynamic>).map(
        (k, e) => MapEntry(
            k,
            (e as List<dynamic>)
                .map((e) => RssFeed.fromJson(e as Map<String, dynamic>))
                .toList()),
      ),
    );

Map<String, dynamic> _$$SourceModelImplToJson(_$SourceModelImpl instance) =>
    <String, dynamic>{
      'rssFeeds': instance.rssFeeds
          .map((k, e) => MapEntry(k, e.map((e) => e.toJson()).toList())),
    };

_$RssFeedImpl _$$RssFeedImplFromJson(Map<String, dynamic> json) =>
    _$RssFeedImpl(
      id: (json['id'] as num).toInt(),
      channelId: (json['channelId'] as num).toInt(),
      categoryId: (json['categoryId'] as num).toInt(),
      languageId: (json['languageId'] as num).toInt(),
      url: json['url'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      channel: Channel.fromJson(json['channel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$RssFeedImplToJson(_$RssFeedImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channelId': instance.channelId,
      'categoryId': instance.categoryId,
      'languageId': instance.languageId,
      'url': instance.url,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
      'category': instance.category.toJson(),
      'channel': instance.channel.toJson(),
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num).toInt(),
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      icon: json['icon'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name.toJson(),
      'icon': instance.icon,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };

_$NameImpl _$$NameImplFromJson(Map<String, dynamic> json) => _$NameImpl(
      tr: json['tr'] as String,
      ar: json['ar'] as String,
      en: json['en'] as String,
    );

Map<String, dynamic> _$$NameImplToJson(_$NameImpl instance) =>
    <String, dynamic>{
      'tr': instance.tr,
      'ar': instance.ar,
      'en': instance.en,
    };

_$ChannelImpl _$$ChannelImplFromJson(Map<String, dynamic> json) =>
    _$ChannelImpl(
      id: (json['id'] as num).toInt(),
      countryId: (json['countryId'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: DateTime.parse(json['updatedAt'] as String),
    );

Map<String, dynamic> _$$ChannelImplToJson(_$ChannelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'countryId': instance.countryId,
      'name': instance.name,
      'icon': instance.icon,
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt.toIso8601String(),
    };
