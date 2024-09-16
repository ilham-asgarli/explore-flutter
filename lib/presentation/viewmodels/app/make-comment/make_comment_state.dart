part of 'make_comment_bloc.dart';

@Freezed()
class MakeCommentState with _$MakeCommentState {
  const MakeCommentState._();

  const factory MakeCommentState({
    dynamic data,
    String? error,
    @Default(BlocState.initial) BlocState state,
  }) = _MakeCommentState;

  factory MakeCommentState.fromJson(Map<String, Object?> json) =>
      _$MakeCommentStateFromJson(json);
}
