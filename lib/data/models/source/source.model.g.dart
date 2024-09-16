// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'source.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SourceModelImpl _$$SourceModelImplFromJson(Map<String, dynamic> json) =>
    _$SourceModelImpl(
      id: (json['id'] as num).toInt(),
      channelId: (json['channel_id'] as num).toInt(),
      categoryId: (json['category_id'] as num).toInt(),
      languageId: (json['language_id'] as num).toInt(),
      url: json['url'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      channel: Channel.fromJson(json['channel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SourceModelImplToJson(_$SourceModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'channel_id': instance.channelId,
      'category_id': instance.categoryId,
      'language_id': instance.languageId,
      'url': instance.url,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
      'category': instance.category.toJson(),
      'channel': instance.channel.toJson(),
    };

_$CategoryImpl _$$CategoryImplFromJson(Map<String, dynamic> json) =>
    _$CategoryImpl(
      id: (json['id'] as num).toInt(),
      name: Name.fromJson(json['name'] as Map<String, dynamic>),
      icon: json['icon'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$CategoryImplToJson(_$CategoryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name.toJson(),
      'icon': instance.icon,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
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
      countryId: (json['country_id'] as num).toInt(),
      name: json['name'] as String,
      icon: json['icon'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$ChannelImplToJson(_$ChannelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country_id': instance.countryId,
      'name': instance.name,
      'icon': instance.icon,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };
