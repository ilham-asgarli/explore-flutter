// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'lang.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LangModelImpl _$$LangModelImplFromJson(Map<String, dynamic> json) =>
    _$LangModelImpl(
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
      country: json['country'] as String,
      code: json['code'] as String,
      flag: json['flag'] as String,
    );

Map<String, dynamic> _$$LangModelImplToJson(_$LangModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'country': instance.country,
      'code': instance.code,
      'flag': instance.flag,
    };
