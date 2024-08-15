// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detailed_pagination.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$DetailedPaginationModelImpl<T> _$$DetailedPaginationModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$DetailedPaginationModelImpl<T>(
      more: json['more'] as bool,
      page: (json['page'] as num).toInt(),
      pageSize: (json['pageSize'] as num).toInt(),
      total: (json['total'] as num).toInt(),
      collection: (json['collection'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$DetailedPaginationModelImplToJson<T>(
  _$DetailedPaginationModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) =>
    <String, dynamic>{
      'more': instance.more,
      'page': instance.page,
      'pageSize': instance.pageSize,
      'total': instance.total,
      'collection': instance.collection.map(toJsonT).toList(),
    };
