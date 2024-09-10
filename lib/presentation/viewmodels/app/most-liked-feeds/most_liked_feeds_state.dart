part of 'most_liked_feeds_bloc.dart';

@Freezed()
class MostLikedFeedsState with _$MostLikedFeedsState {
  const MostLikedFeedsState._();

  const factory MostLikedFeedsState({
    dynamic data,
    String? error,
    @Default(BlocState.initial) BlocState state,
  }) = _MostLikedFeedsState;

  factory MostLikedFeedsState.fromJson(Map<String, Object?> json) =>
      _$MostLikedFeedsStateFromJson(json);
}
