import 'package:freezed_annotation/freezed_annotation.dart';

part 'news.model.freezed.dart';
part 'news.model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel({
    required int id,
    @JsonKey(name: 'news_url') String? newsUrl,
    required Channel channel,
    required Category category,
    required String title,
    required String detail,
    required String thumbnail,
    required String guid,
    required String date,
    required int like,
    required int comment,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}

@freezed
class Channel with _$Channel {
  const factory Channel({
    required int id,
    required Country country,
    required String name,
    required String logo,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
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
