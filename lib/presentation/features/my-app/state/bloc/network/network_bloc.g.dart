// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'network_bloc.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NetworkStateImpl _$$NetworkStateImplFromJson(Map<String, dynamic> json) =>
    _$NetworkStateImpl(
      data: (json['data'] as List<dynamic>?)
          ?.map((e) => $enumDecode(_$ConnectivityResultEnumMap, e))
          .toList(),
      error: json['error'] as String?,
      state: $enumDecodeNullable(_$BlocStateEnumMap, json['state']) ??
          BlocState.initial,
    );

Map<String, dynamic> _$$NetworkStateImplToJson(_$NetworkStateImpl instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('data',
      instance.data?.map((e) => _$ConnectivityResultEnumMap[e]!).toList());
  writeNotNull('error', instance.error);
  val['state'] = _$BlocStateEnumMap[instance.state]!;
  return val;
}

const _$ConnectivityResultEnumMap = {
  ConnectivityResult.bluetooth: 'bluetooth',
  ConnectivityResult.wifi: 'wifi',
  ConnectivityResult.ethernet: 'ethernet',
  ConnectivityResult.mobile: 'mobile',
  ConnectivityResult.none: 'none',
  ConnectivityResult.vpn: 'vpn',
  ConnectivityResult.other: 'other',
};

const _$BlocStateEnumMap = {
  BlocState.initial: 'initial',
  BlocState.loading: 'loading',
  BlocState.success: 'success',
  BlocState.error: 'error',
};
