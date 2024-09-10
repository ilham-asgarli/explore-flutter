import 'package:freezed_annotation/freezed_annotation.dart';

part 'channel.model.freezed.dart';
part 'channel.model.g.dart';

@freezed
class ChannelModel with _$ChannelModel {
  const factory ChannelModel({
    required int id,
    required Country country,
    required String name,
    required String logo,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _ChannelModel;

  factory ChannelModel.fromJson(Map<String, dynamic> json) =>
      _$ChannelModelFromJson(json);
}

@freezed
class Country with _$Country {
  const factory Country({
    required int id,
    required String name,
    required String code,
    required String flag,
  }) = _Country;

  factory Country.fromJson(Map<String, dynamic> json) =>
      _$CountryFromJson(json);
}
