part of 'most_liked_feed_bloc.dart';

@Freezed()
class MostLikedFeedState with _$MostLikedFeedState {
  const MostLikedFeedState._();

  const factory MostLikedFeedState({
    dynamic data,
    String? error,
    @Default(BlocState.initial) BlocState state,
  }) = _MostLikedFeedState;

  factory MostLikedFeedState.fromJson(Map<String, Object?> json) =>
      _$MostLikedFeedStateFromJson(json);
}
