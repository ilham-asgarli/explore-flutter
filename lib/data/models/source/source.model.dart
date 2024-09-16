import 'package:freezed_annotation/freezed_annotation.dart';

part 'source.model.freezed.dart';
part 'source.model.g.dart';

@freezed
class SourceModel with _$SourceModel {
  const factory SourceModel({
    required int id,
    @JsonKey(name: 'channel_id') required int channelId,
    @JsonKey(name: 'category_id') required int categoryId,
    @JsonKey(name: 'language_id') required int languageId,
    required String url,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
    required Category category,
    required Channel channel,
  }) = _SourceModel;

  factory SourceModel.fromJson(Map<String, dynamic> json) =>
      _$SourceModelFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    required Name name,
    required String icon,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
}

@freezed
class Name with _$Name {
  const factory Name({
    required String tr,
    required String ar,
    required String en,
  }) = _Name;

  factory Name.fromJson(Map<String, dynamic> json) => _$NameFromJson(json);
}

@freezed
class Channel with _$Channel {
  const factory Channel({
    required int id,
    @JsonKey(name: 'country_id') required int countryId,
    required String name,
    required String icon,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}
