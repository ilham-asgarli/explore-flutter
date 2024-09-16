import 'package:freezed_annotation/freezed_annotation.dart';

part 'comment.model.freezed.dart';
part 'comment.model.g.dart';

@freezed
class CommentModel with _$CommentModel {
  const factory CommentModel({
    required int id,
    @JsonKey(name: 'user_id') required String? userId,
    @JsonKey(name: 'feed_id') required int feedId,
    required String name,
    required String email,
    required String ip,
    required String comment,
    required int status,
    @JsonKey(name: 'created_at') required String createdAt,
    @JsonKey(name: 'updated_at') required String updatedAt,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) =>
      _$CommentModelFromJson(json);
}
