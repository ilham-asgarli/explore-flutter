// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pagination.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PaginationModelImpl<T> _$$PaginationModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$PaginationModelImpl<T>(
      more: json['more'] as bool,
      page: (json['page'] as num).toInt(),
      collection: (json['collection'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$PaginationModelImplToJson<T>(
  _$PaginationModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'more': instance.more,
      'page': instance.page,
      'collection': instance.collection.map(toJsonT).toList(),
    };
