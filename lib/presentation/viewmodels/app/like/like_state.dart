part of 'like_bloc.dart';

@Freezed()
class LikeState with _$LikeState {
  const LikeState._();

  const factory LikeState({
    @Default([]) List<int> data,
    String? error,
    @Default(BlocState.initial) BlocState state,
  }) = _LikeState;

  factory LikeState.fromJson(Map<String, Object?> json) =>
      _$LikeStateFromJson(json);
}
