// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'base.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BaseModelImpl<T> _$$BaseModelImplFromJson<T>(
  Map<String, dynamic> json,
  T Function(Object? json) fromJsonT,
) =>
    _$BaseModelImpl<T>(
      status: $enumDecode(_$StatusEnumMap, json['status']),
      message: json['message'] as String?,
      errors: json['errors'] as List<dynamic>?,
      data: _$nullableGenericFromJson(json['data'], fromJsonT),
    );

Map<String, dynamic> _$$BaseModelImplToJson<T>(
  _$BaseModelImpl<T> instance,
  Object? Function(T value) toJsonT,
) {
  final val = <String, dynamic>{
    'status': _$StatusEnumMap[instance.status]!,
  };

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('errors', instance.errors);
  writeNotNull('data', _$nullableGenericToJson(instance.data, toJsonT));
  return val;
}

const _$StatusEnumMap = {
  Status.success: 'success',
  Status.error: 'error',
};

T? _$nullableGenericFromJson<T>(
  Object? input,
  T Function(Object? json) fromJson,
) =>
    input == null ? null : fromJson(input);

Object? _$nullableGenericToJson<T>(
  T? input,
  Object? Function(T value) toJson,
) =>
    input == null ? null : toJson(input);
