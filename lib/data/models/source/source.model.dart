import 'package:freezed_annotation/freezed_annotation.dart';

part 'source.model.freezed.dart';
part 'source.model.g.dart';

@freezed
class SourceModel with _$SourceModel {
  const factory SourceModel({
    required Map<String, List<RssFeed>> rssFeeds,
  }) = _SourceModel;

  factory SourceModel.fromJson(Map<String, dynamic> json) =>
      _$SourceModelFromJson(json);
}

@freezed
class RssFeed with _$RssFeed {
  const factory RssFeed({
    required int id,
    required int channelId,
    required int categoryId,
    required int languageId,
    required String url,
    required DateTime createdAt,
    required DateTime updatedAt,
    required Category category,
    required Channel channel,
  }) = _RssFeed;

  factory RssFeed.fromJson(Map<String, dynamic> json) =>
      _$RssFeedFromJson(json);
}

@freezed
class Category with _$Category {
  const factory Category({
    required int id,
    required Name name,
    required String icon,
    required DateTime createdAt,
    required DateTime updatedAt,
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
    required int countryId,
    required String name,
    required String icon,
    required DateTime createdAt,
    required DateTime updatedAt,
  }) = _Channel;

  factory Channel.fromJson(Map<String, dynamic> json) =>
      _$ChannelFromJson(json);
}
