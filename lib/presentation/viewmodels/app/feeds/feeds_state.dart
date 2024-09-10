part of 'feeds_bloc.dart';

@Freezed()
class FeedsState with _$FeedsState {
  const FeedsState._();

  const factory FeedsState({
    dynamic data,
    String? error,
    @Default(BlocState.initial) BlocState state,
  }) = _FeedsState;

  factory FeedsState.fromJson(Map<String, Object?> json) =>
      _$FeedsStateFromJson(json);
}
