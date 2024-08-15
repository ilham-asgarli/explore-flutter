// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base_list.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseListModelImpl<T> _$$BaseListModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BaseListModelImpl<T>(
      status: $enumDecode(_$StatusEnumMap, json['status']),
      message: json['message'] as String,
      errors: json['errors'] as List<dynamic>?,
      data: (json['data'] as List<dynamic>).map(fromJsonT).toList(),
    );

Map<String, dynamic> _$$BaseListModelImplToJson<T>(
  _$BaseListModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{
    'status': _$StatusEnumMap[instance.status]!,
    'message': instance.message,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('errors', instance.errors);
  val['data'] = instance.data.map(toJsonT).toList();
  return val;
}

const _$StatusEnumMap = {
  Status.success: 'success',
  Status.error: 'error',
};
