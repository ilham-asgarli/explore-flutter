// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewsModelImpl _$$NewsModelImplFromJson(Map<String, dynamic> json) =>
    _$NewsModelImpl(
      id: (json['id'] as num).toInt(),
      newsUrl: json['news_url'] as String?,
      channel: Channel.fromJson(json['channel'] as Map<String, dynamic>),
      category: Category.fromJson(json['category'] as Map<String, dynamic>),
      title: json['title'] as String,
      detail: json['detail'] as String,
      thumbnail: json['thumbnail'] as String,
      guid: json['guid'] as String,
      date: json['date'] as String,
      like: (json['like'] as num).toInt(),
      comment: (json['comment'] as num).toInt(),
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$NewsModelImplToJson(_$NewsModelImpl instance) {
  final val = <String, dynamic>{
    'id': instance.id,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('news_url', instance.newsUrl);
  val['channel'] = instance.channel.toJson();
  val['category'] = instance.category.toJson();
  val['title'] = instance.title;
  val['detail'] = instance.detail;
  val['thumbnail'] = instance.thumbnail;
  val['guid'] = instance.guid;
  val['date'] = instance.date;
  val['like'] = instance.like;
  val['comment'] = instance.comment;
  val['created_at'] = instance.createdAt;
  val['updated_at'] = instance.updatedAt;
  return val;
}

_$ChannelImpl _$$ChannelImplFromJson(Map<String, dynamic> json) =>
    _$ChannelImpl(
      id: (json['id'] as num).toInt(),
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
      name: json['name'] as String,
      logo: json['logo'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$ChannelImplToJson(_$ChannelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'country': instance.country.toJson(),
      'name': instance.name,
      'logo': instance.logo,
      'created_at': instance.createdAt,
      'updated_at': instance.updatedAt,
    };

_$CountryImpl _$$CountryImplFromJson(Map<String, dynamic> json) =>
    _$CountryImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      code: json['code'] as String,
      flag: json['flag'] as String,
    );

Map<String, dynamic> _$$CountryImplToJson(_$CountryImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'code': instance.code,
      'flag': instance.flag,
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
