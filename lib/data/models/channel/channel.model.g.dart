// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'channel.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$ChannelModelImpl _$$ChannelModelImplFromJson(Map<String, dynamic> json) =>
    _$ChannelModelImpl(
      id: (json['id'] as num).toInt(),
      country: Country.fromJson(json['country'] as Map<String, dynamic>),
      name: json['name'] as String,
      logo: json['logo'] as String,
      createdAt: json['created_at'] as String,
      updatedAt: json['updated_at'] as String,
    );

Map<String, dynamic> _$$ChannelModelImplToJson(_$ChannelModelImpl instance) =>
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
