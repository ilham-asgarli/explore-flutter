part of 'comments_bloc.dart';

@Freezed()
class CommentsState with _$CommentsState {
  const CommentsState._();

  const factory CommentsState({
    List<CommentModel>? data,
    String? error,
    @Default(BlocState.initial) BlocState state,
  }) = _CommentsState;

  factory CommentsState.fromJson(Map<String, Object?> json) =>
      _$CommentsStateFromJson(json);
}
